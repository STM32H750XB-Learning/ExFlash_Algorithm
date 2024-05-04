/*
*********************************************************************************************************
*
*	ģ������ : ����ͷ����BSPģ��(For OV7670)
*	�ļ����� : bsp_camera.c
*	��    �� : V1.0
*	˵    �� : OV7670�������򡣱����������� guanfu_wang  ��OV7670����ͷ������FIFO,����LDO������24M����)
*			  ������STM32-V5�����弯����3.0V LDO��OV7670���磬���弯����24M��Դ�����ṩ������ͷ��
*
*			  ������ο��� guanfu_wang �ṩ�����ӡ�http://mcudiy.taobao.com/
*
*	�޸ļ�¼ :
*		�汾��  ����        ����     ˵��
*		V1.0    2013-03-01 armfly  ��ʽ����
*
*	Copyright (C), 2013-2014, ���������� www.armfly.com
*
*********************************************************************************************************
*/

#include "bsp.h"

/*
	������STM32-V7����������ͷ�ӿ�GPIO���壺 ��DCIM�豸�� ����ͷ  �ʹ���6, AD7606 ģ�鲻��ͬʱʹ�á�
	PA6/DCMI_PIXCLK
	PA4/DCMI_HSYNC/DAC_OUT1
	PC6/DCMI_D0/AD7606_CONVST
	PC7/DCMI_D1/USART6_RX
	PG10/DCMI_D2/NRF24L01_CSN
	PG11/DCMI_D3/ETH_RMII_TX_EN
	PE4/DCMI_D4/NRF24L01_IRQ
	PD3/DCMI_D5
	PE5/DCMI_D6/AD7606_BUSY
	PE6/DCMI_D7/NRF905_CD
	PB7/DCMI_VSYNC
	
	--- I2C���߿�������ͷ
	PB6/I2C2_SCL
	PB9/I2C2_SDA
*/

#define DCMI_DR_ADDRESS       	0x50050028
#define OV_REG_NUM  	116  //OV7670


/*��DMAͨ������,��ѡ���� DMA2_Stream1 +  DMA_Channel_1�� DMA2_Stream7 +  DMA_Channel_1  */

#define DMA_CLOCK              RCC_AHB1Periph_DMA2
#define DMA_STREAM             DMA2_Stream7
#define DMA_CHANNEL            DMA_Channel_1
#define DMA_IRQ                DMA2_Stream7_IRQn
#define DMA_IT_TCIF            DMA_IT_TCIF7
#define DMA_IRQHandler         DMA2_Stream7_IRQHandler


/* ���ֱ���

12 17 18 19 1A 03������

*/

/*
	����ΪOV7670 QVGA RGB565����  (by guanfu_wang)  http://mcudiy.taobao.com

	����RA8875ͼ��ģʽ�£�ɨ�跽��Ϊ�����ң����ϵ��¡�
	��wang_guanfu�ṩ��ȱʡֵ��ͬ����������ʵ��ĵ�����
*/
static const unsigned char  OV_reg[][2] =
{

	{0x3a, 0x0c},
	{0x67, 0xc0},
	{0x68, 0x80},

	{0x40, 0xd0},
	{0x12, 0x14},

	{0x32, 0x80},
	
	#if 1  //320*240ʹ��
		{0x17, 0x17},//HSTART start high 8-bit MSB         
		{0x18, 0x05},//5 HSTOP end high 8-bit
		
	#else  //640*480ʹ��
		{0x17, 0x14},//HSTART start high 8-bit MSB         
		{0x18, 0x02},//5 HSTOP end high 8-bit
	#endif
		
	{0x19, 0x03},
	{0x1a, 0x7b},
	{0x03, 0x05},

	{0x0c, 0x00},
	{0x15, 0x00},
	{0x3e, 0x00},
	{0x70, 0x3a},
	{0x71, 0x35},
	{0x72, 0x11},
	{0x73, 0x00},
			
	{0xa2, 0x02},
	{0x7a, 0x20},
	{0x7b, 0x1c},
	{0x7c, 0x28},
			
	{0x7d, 0x3c},
	{0x7e, 0x55},
	{0x7f, 0x68},
	{0x80, 0x76},
	{0x81, 0x80},
			
	{0x82, 0x88},
	{0x83, 0x8f},
	{0x84, 0x96},
	{0x85, 0xa3},
	{0x86, 0xaf},
			
	{0x87, 0xc4},
	{0x88, 0xd7},
	{0x89, 0xe8},
	{0x13, 0xe0},
	{0x00, 0x00},
			
	{0x10, 0x00},
	{0x0d, 0x00},
	{0x14, 0x28},
	{0xa5, 0x05},
	{0xab, 0x07},
			
	{0x24, 0x75},
	{0x25, 0x63},
	{0x26, 0xA5},
	{0x9f, 0x78},
	{0xa0, 0x68},
			
	{0xa1, 0x03},
	{0xa6, 0xdf},
	{0xa7, 0xdf},
	{0xa8, 0xf0},
	{0xa9, 0x90},
			
	{0xaa, 0x94},
	{0x13, 0xe5},
	{0x0e, 0x61},
	{0x0f, 0x4b},
	{0x16, 0x02},
	 
	{0x1e, 0x37},
	{0x21, 0x02},
	{0x22, 0x91},
	{0x29, 0x07},
	{0x33, 0x0b},
			
	{0x35, 0x0b},
	{0x37, 0x1d},
	{0x38, 0x71},
	{0x39, 0x2a},
	{0x3c, 0x78},
			
	{0x4d, 0x40},
	{0x4e, 0x20},
	{0x69, 0x00},
	/*
	emWin�������64MHz��48MHz�ȶ���72MHz���У����ˣ����״���
	6B�Ĵ���  bit6:7 
			00 bypass PLL
			01 X4
			10 X6
			11 X8

	11�Ĵ���  bit7 ����
			  bit6 ֱ��ʹ���ⲿʱ��
			  bit5:0
			  ʵ���ڲ�ʱ�ӵ���� = Finputclk / (bit[5:0] + 1)

	����ͷ������24MHz ����ǰ����24 * 8 / 3 = 64MHz
	*/
	{0x11, 0x02},
	{0x6b, 0xc0},
	{0x74, 0x19},
	{0x8d, 0x4f},
			
	{0x8e, 0x00},
	{0x8f, 0x00},
	{0x90, 0x00},
	{0x91, 0x00},
	{0x92, 0x00},

			
	{0x96, 0x00},
	{0x9a, 0x80},
	{0xb0, 0x84},
	{0xb1, 0x0c},
	{0xb2, 0x0e},
			
	{0xb3, 0x82},
	{0xb8, 0x0a},
	{0x43, 0x14},
	{0x44, 0xf0},
	{0x45, 0x34},
			
	{0x46, 0x58},
	{0x47, 0x28},
	{0x48, 0x3a},
	{0x59, 0x88},
	{0x5a, 0x88},
			
	{0x5b, 0x44},
	{0x5c, 0x67},
	{0x5d, 0x49},
	{0x5e, 0x0e},
	{0x64, 0x04},
	{0x65, 0x20},
			
	{0x66, 0x05},
	{0x94, 0x04},
	{0x95, 0x08},
	{0x6c, 0x0a},
	{0x6d, 0x55},
			
			
	{0x4f, 0x80},
	{0x50, 0x80},
	{0x51, 0x00},
	{0x52, 0x22},
	{0x53, 0x5e},
	{0x54, 0x80},	
			
			
	{0x09, 0x03},

	{0x6e, 0x11},
	{0x6f, 0x9f},
	{0x55, 0x00},
	{0x56, 0x40},
	{0x57, 0x40},

	{0x6a, 0x40},
	{0x01, 0x40},
	{0x02, 0x40},
	{0x13, 0xe7},
	{0x15, 0x00},  


	{0x58, 0x9e},

	{0x41, 0x08},
	{0x3f, 0x00},
	{0x75, 0x05},
	{0x76, 0xe1},
	{0x4c, 0x00},
	{0x77, 0x01},
	{0x3d, 0xc2}, 
	{0x4b, 0x09},
	{0xc9, 0x60},
	{0x41, 0x38},

	{0x34, 0x11},
	{0x3b, 0x02}, 

	{0xa4, 0x89},
	{0x96, 0x00},
	{0x97, 0x30},
	{0x98, 0x20},
	{0x99, 0x30},
	{0x9a, 0x84},
	{0x9b, 0x29},
	{0x9c, 0x03},
	{0x9d, 0x4c},
	{0x9e, 0x3f},
	{0x78, 0x04},

	{0x79, 0x01},
	{0xc8, 0xf0},
	{0x79, 0x0f},
	{0xc8, 0x00},
	{0x79, 0x10},
	{0xc8, 0x7e},
	{0x79, 0x0a},
	{0xc8, 0x80},
	{0x79, 0x0b},
	{0xc8, 0x01},
	{0x79, 0x0c},
	{0xc8, 0x0f},
	{0x79, 0x0d},
	{0xc8, 0x20},
	{0x79, 0x09},
	{0xc8, 0x80},
	{0x79, 0x02},
	{0xc8, 0xc0},
	{0x79, 0x03},
	{0xc8, 0x40},
	{0x79, 0x05},
	{0xc8, 0x30},
	{0x79, 0x26}, 
	{0x09, 0x00}, 
};

static void CAM_ConfigCPU(void);
static uint8_t OV_InitReg(void);
static void OV_WriteReg(uint8_t _ucRegAddr, uint8_t _ucRegValue);
static uint8_t OV_ReadReg(uint8_t _ucRegAddr);

CAM_T g_tCam;

DCMI_HandleTypeDef hdcmi = {0};
DMA_HandleTypeDef  hdma_dcmi = {0};

/*
*********************************************************************************************************
*	�� �� ��: bsp_InitCamera
*	����˵��: ��������ͷGPIO��CAMERA�豸.
*	��    ��:  ��
*	�� �� ֵ: ��
*********************************************************************************************************
*/
void bsp_InitCamera(void)
{
	CAM_ConfigCPU();

	#if 1	/* ����Ĵ��룬��֤��д�Ĵ����Ƿ���ȷ */
	{
		uint8_t read;

		read = OV_ReadReg(0x3A);

		OV_WriteReg(0x3A, read + 1);

		read = OV_ReadReg(0x3A);

		OV_WriteReg(0x3A, read + 1);

		read = OV_ReadReg(0x3A);
	}
	#endif

	OV_InitReg();
}

/*
*********************************************************************************************************
*	�� �� ��: CAM_ConfigCPU
*	����˵��: ��������ͷGPIO��CAMERA�豸��0V7670��I2C�ӿ������� bsp_gpio_i2c.c �ļ�ʵ�֡�
*	��    ��: ��
*	�� �� ֵ: ��
*********************************************************************************************************
*/
static void CAM_ConfigCPU(void)
{
 	/* ������STM32-V7�����������Դ�����ṩ24Mʱ�ӣ���˲���PA8����ʱ�� */

	/*
		��DCMI��ص�GPIO����Ϊ����ģʽ  - STM32-V7
			PA4/DCMI_HSYNC/DAC_OUT1		
			PA6/DCMI_PIXCLK
			PB7/DCMI_VSYNC			
			PC6/DCMI_D0/AD7606_CONVST
			PC7/DCMI_D1/USART6_RX
			PD3/DCMI_D5
			PE4/DCMI_D4/NRF24L01_IRQ
			PE5/DCMI_D6/AD7606_BUSY
			PE6/DCMI_D7/NRF905_CD			
			PG10/DCMI_D2/NRF24L01_CSN
			PG11/DCMI_D3/ETH_RMII_TX_EN
	*/
	{  	
		GPIO_InitTypeDef GPIO_InitStruct;
		
		/* ʹ��DCMIʱ�� */
		__HAL_RCC_DCMI_CLK_ENABLE();
		
		__HAL_RCC_GPIOA_CLK_ENABLE();
		__HAL_RCC_GPIOB_CLK_ENABLE();
		__HAL_RCC_GPIOC_CLK_ENABLE();
		__HAL_RCC_GPIOD_CLK_ENABLE();
		__HAL_RCC_GPIOE_CLK_ENABLE();
		__HAL_RCC_GPIOG_CLK_ENABLE();
		
		GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
		GPIO_InitStruct.Pull = GPIO_NOPULL;
		GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
		GPIO_InitStruct.Alternate = GPIO_AF13_DCMI;
		
		GPIO_InitStruct.Pin = GPIO_PIN_4 | GPIO_PIN_6;
		HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);		
		
		GPIO_InitStruct.Pin = GPIO_PIN_7;
		HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

		GPIO_InitStruct.Pin = GPIO_PIN_6 | GPIO_PIN_7;
		HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);	

		GPIO_InitStruct.Pin = GPIO_PIN_3;
		HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);

		GPIO_InitStruct.Pin = GPIO_PIN_4 | GPIO_PIN_5 | GPIO_PIN_6;
		HAL_GPIO_Init(GPIOE, &GPIO_InitStruct);	
		
		GPIO_InitStruct.Pin = GPIO_PIN_10 | GPIO_PIN_11;
		HAL_GPIO_Init(GPIOG, &GPIO_InitStruct);	
	}

	/* ���� DCMIC ���� */
	{
		/* ��ʼDCMI */
		hdcmi.Instance = DCMI;
		hdcmi.Init.SynchroMode = DCMI_SYNCHRO_HARDWARE;
		hdcmi.Init.PCKPolarity = DCMI_PCKPOLARITY_RISING;   
		hdcmi.Init.VSPolarity = DCMI_VSPOLARITY_HIGH;              
		hdcmi.Init.HSPolarity = DCMI_HSPOLARITY_LOW;    
		hdcmi.Init.CaptureRate = DCMI_CR_ALL_FRAME;
		hdcmi.Init.ExtendedDataMode = DCMI_EXTEND_DATA_8B;                  
		hdcmi.Init.JPEGMode = DCMI_JPEG_DISABLE;  
		hdcmi.Init.ByteSelectMode = DCMI_BSM_ALL;
		hdcmi.Init.ByteSelectStart = DCMI_OEBS_ODD;
		hdcmi.Init.LineSelectMode = DCMI_LSM_ALL;
		hdcmi.Init.LineSelectStart = DCMI_OELS_ODD; 
		if (HAL_DCMI_Init(&hdcmi) != HAL_OK)
		{
			Error_Handler(__FILE__, __LINE__);
		}		
	}
}

/*
*********************************************************************************************************
*	�� �� ��: OV_InitReg
*	����˵��: ��λOV7670, ����OV7670�ļĴ�����QVGA
*	��    ��: ��
*	�� �� ֵ: 0 ��ʾ��ȷ��1��ʾʧ��
*********************************************************************************************************
*/
static uint8_t OV_InitReg(void)
{
	uint8_t i;

  	CAM_ConfigCPU();
	
	//bsp_InitI2C();		/* ����I2C����, �� bsp.c �ļ�ִ���� */

	OV_WriteReg(0x12, 0x80); 	/* Reset SCCB */

	bsp_DelayMS(5);

	for (i = 0; i < sizeof(OV_reg)/sizeof(OV_reg[0]); i++)
  	{
		OV_WriteReg(OV_reg[i][0], OV_reg[i][1]);
  	}
	
	return 0;
}

/*
*********************************************************************************************************
*	�� �� ��: CAM_Start
*	����˵��: ����DMA��DCMI����ʼ����ͼ�����ݵ�LCD�Դ�
*	��    ��: _uiDispMemAddr �Դ��ַ
*	�� �� ֵ: ��
*********************************************************************************************************
*/
void CAM_Start(uint32_t _uiDispMemAddr)
{	
	/* ʹ��DCMI */
	__HAL_RCC_DMA1_CLK_ENABLE();

	hdma_dcmi.Instance                 = DMA1_Stream7;           /* ʹ�õ�DMA1 Stream7 */
	hdma_dcmi.Init.Request             = DMA_REQUEST_DCMI;       /* DMA��������DCMI */  
	hdma_dcmi.Init.Direction           = DMA_PERIPH_TO_MEMORY;   /* ���䷽���Ǵ�DCMI���洢�� */ 
	hdma_dcmi.Init.PeriphInc           = DMA_PINC_DISABLE;       /* �����ַ������ֹ */  
	hdma_dcmi.Init.MemInc              = DMA_MINC_ENABLE;        /* �洢����ַ����ʹ�� */  
	hdma_dcmi.Init.PeriphDataAlignment = DMA_PDATAALIGN_WORD;    /* �������ݴ���λ��ѡ���֣���32bit */  
	hdma_dcmi.Init.MemDataAlignment    = DMA_MDATAALIGN_WORD;    /* �洢�����ݴ���λ��ѡ���֣���32bit */
	hdma_dcmi.Init.Mode                = DMA_NORMAL;             /* ����ģʽģʽ������һ֡��ֹͣ */   
	hdma_dcmi.Init.Priority            = DMA_PRIORITY_LOW;       /* ���ȼ��� */  
	hdma_dcmi.Init.FIFOMode            = DMA_FIFOMODE_DISABLE;   /* ʹ��FIFO*/
	hdma_dcmi.Init.FIFOThreshold       = DMA_FIFO_THRESHOLD_FULL;/* �������÷�ֵ */
	hdma_dcmi.Init.MemBurst            = DMA_MBURST_SINGLE;      /* ����ͻ�������ڴ洢��ͻ�� */
	hdma_dcmi.Init.PeriphBurst         = DMA_PBURST_SINGLE;      /* ����ͻ������������ͻ�� */
	
	/* ��ʼ��DMA */
	if (HAL_DMA_Init(&hdma_dcmi) != HAL_OK)
	{
		Error_Handler(__FILE__, __LINE__);
	}

	/* ����ͷ�������DMA��� */
	__HAL_LINKDMA(&hdcmi, DMA_Handle, hdma_dcmi);

	/* ʹ��DMA1 Stream7 �ж� */
	HAL_NVIC_SetPriority(DMA1_Stream7_IRQn, 1, 0);
	HAL_NVIC_EnableIRQ(DMA1_Stream7_IRQn);		
	
	/* 
	   ����DCMI��DMA���䣬����һ֡��ֹͣ��һ֡��С120*320*4�ֽ� = 153600�ֽ�
       ע��DMA1��DMA2�����65536�Σ�������120*320 = 38400�Σ�ÿ��λ��4�ֽڡ�
	*/
	HAL_DCMI_Start_DMA(&hdcmi, DCMI_MODE_SNAPSHOT, (uint32_t)_uiDispMemAddr, 120*320);

	g_tCam.CaptureOk = 0;		/* ȫ�ֱ�־ */
}

/* �����������䣬������ú���HAL_DCMI_Start_DMA���� */
void CAM_Start1(uint32_t _uiDispMemAddr)
{
	HAL_DCMI_Start_DMA(&hdcmi, DCMI_MODE_SNAPSHOT, (uint32_t)_uiDispMemAddr, 120*320);	

	g_tCam.CaptureOk = 0;		/* ȫ�ֱ�־ */
}

/*
*********************************************************************************************************
*	�� �� ��: CAM_Stop
*	����˵��: ֹͣDMA��DCMI
*	��    ��: ��
*	�� �� ֵ: ��
*********************************************************************************************************
*/
void CAM_Stop(void)
{
	HAL_DCMI_Stop(&hdcmi);
}

void DMA1_Stream7_IRQHandler(void)
{
	/* ��������ж� */
	if((DMA1->HISR & DMA_FLAG_TCIF3_7) != RESET)
	{
		
		/* �ر����� */
		CAM_Stop();
		g_tCam.CaptureOk = 1;		/* ��ʾDMA������� */

		/* �����־ */
		DMA1->HIFCR = DMA_FLAG_TCIF3_7;
	}

	/* �봫������ж� */    
	if((DMA1->HISR & DMA_FLAG_HTIF3_7) != RESET)
	{

		/* �����־ */
		DMA1->HIFCR = DMA_FLAG_HTIF3_7;
	}

	/* ��������ж� */
	if((DMA1->HISR & DMA_FLAG_TEIF3_7) != RESET)
	{
		/* �����־ */
		DMA1->HIFCR = DMA_FLAG_TEIF3_7;
	}

	/* ֱ��ģʽ�����ж� */
	if((DMA1->HISR & DMA_FLAG_DMEIF3_7) != RESET)
	{
		/* �����־ */
		DMA1->HIFCR = DMA_FLAG_DMEIF3_7;
	}
}

/*
*********************************************************************************************************
*	�� �� ��: OV_WriteReg
*	����˵��: д0V7670�Ĵ���
*	��    ��: _ucRegAddr  : �Ĵ�����ַ
*			  _ucRegValue : �Ĵ���ֵ
*	�� �� ֵ: ��
*********************************************************************************************************
*/
static void OV_WriteReg(uint8_t _ucRegAddr, uint8_t _ucRegValue)
{
    i2c_Start();							/* ���߿�ʼ�ź� */

    i2c_SendByte(OV7670_SLAVE_ADDRESS);		/* �����豸��ַ+д�ź� */
	i2c_WaitAck();

    i2c_SendByte(_ucRegAddr);				/* ���ͼĴ�����ַ */
	i2c_WaitAck();

    i2c_SendByte(_ucRegValue);				/* ���ͼĴ�����ֵ */
	i2c_WaitAck();

    i2c_Stop();                   			/* ����ֹͣ�ź� */
}

/*
*********************************************************************************************************
*	�� �� ��: OV_ReadReg
*	����˵��: ��0V7670�Ĵ���
*	��    ��: _ucRegAddr  : �Ĵ�����ַ
*	�� �� ֵ: �Ĵ���ֵ
*********************************************************************************************************
*/
static uint8_t OV_ReadReg(uint8_t _ucRegAddr)
{
	uint16_t usRegValue;

	i2c_Start();                  			/* ���߿�ʼ�ź� */
	i2c_SendByte(OV7670_SLAVE_ADDRESS);		/* �����豸��ַ+д�ź� */
	i2c_WaitAck();
	i2c_SendByte(_ucRegAddr);				/* ���͵�ַ */
	i2c_WaitAck();

	i2c_Stop();			/* 0V7670 ��Ҫ���� stop, �����ȡ�Ĵ���ʧ�� */

	i2c_Start();                  			/* ���߿�ʼ�ź� */
	i2c_SendByte(OV7670_SLAVE_ADDRESS + 1);/* �����豸��ַ+���ź� */
	i2c_WaitAck();

	usRegValue = i2c_ReadByte();       		/* �������ֽ����� */
	i2c_NAck();
	i2c_Stop();                  			/* ����ֹͣ�ź� */

	return usRegValue;
}

/*
*********************************************************************************************************
*	�� �� ��: OV_ReadID
*	����˵��: ��0V7670��оƬID
*	��    ��: ��
*	�� �� ֵ: оƬID. ����Ӧ�÷��� 0x7673
*********************************************************************************************************
*/
uint16_t OV_ReadID(void)
{
	uint8_t idh,idl;

	idh = OV_ReadReg(0x0A);
	idl = OV_ReadReg(0x0B);
	return (idh << 8) + idl;
}

/***************************** ���������� www.armfly.com (END OF FILE) *********************************/
