/*
*********************************************************************************************************
*
*	ģ������ : DHT11 ����ģ��(1-wire �����¶ȴ�������
*	�ļ����� : bsp_dht11.c
*	��    �� : V1.0
*	˵    �� : DHT11��CPU֮�����1��GPIO�ӿڡ�������� DHT11_ReadData()��Ƶ�ʲ�Ҫ����1Hz��
*
*	�޸ļ�¼ :
*		�汾��  ����         ����     ˵��
*		V1.0    2014-01-24  armfly  ��ʽ����
*
*	Copyright (C), 2013-2014, ���������� www.armfly.com
*
*********************************************************************************************************
*/

#include "bsp.h"

/*
	DHT11 ����ֱ�Ӳ鵽STM32-V5�������U22 (4P) ����. ��ע�ⷽ������巴�ˣ��ض��ջ�DHT11��

     DHT11      STM32F407������
	  VCC   ------  3.3V
	  DQ    ------  PB1   (���������� 4.7K ��������)
	  GND   ------  GND
*/

/* ����GPIO�˿� */
#define DQ_CLK_ENABLE()		__HAL_RCC_GPIOB_CLK_ENABLE()
#define DQ_GPIO		GPIOB
#define DQ_PIN		GPIO_PIN_1

#define DQ_0()		DQ_GPIO->BSRRH = DQ_PIN
#define DQ_1()		DQ_GPIO->BSRRL = DQ_PIN

/* �ж�DQ�����Ƿ�Ϊ�� */
#define DQ_IS_LOW()	((DQ_GPIO->IDR & DQ_PIN) == 0)

static uint8_t DHT11_ReadByte(void);

/*
*********************************************************************************************************
*	�� �� ��: bsp_InitDHT11
*	����˵��: ����STM32��GPIO��SPI�ӿڣ��������� DHT11
*	��    ��: ��
*	�� �� ֵ: ��
*********************************************************************************************************
*/
void bsp_InitDHT11(void)
{
	GPIO_InitTypeDef gpio_init;

	/* ��GPIOʱ�� */
	DQ_CLK_ENABLE();

	DQ_1();

	/* ����DQΪ��©��� */
	gpio_init.Mode = GPIO_MODE_OUTPUT_OD;	/* ���ÿ�©��� */
	gpio_init.Pull = GPIO_NOPULL;			/* ���������費ʹ�� */
	gpio_init.Speed = GPIO_SPEED_FREQ_LOW;  /* GPIO�ٶȵȼ� */	
	gpio_init.Pin = DQ_PIN;	
	HAL_GPIO_Init(DQ_GPIO, &gpio_init);	
}

/*
*********************************************************************************************************
*	�� �� ��: DHT11_ReadData
*	����˵��: ��λDHT11�� ����DQΪ�ͣ���������480us��Ȼ��ȴ�
*	��    ��: ��
*	�� �� ֵ: 0 ʧ�ܣ� 1 ��ʾ�ɹ�
*********************************************************************************************************
*/
uint8_t DHT11_ReadData(DHT11_T *_pDTH)
{
	/*
		ʱ��:
		1. MCU����QD����ʱ����� 18ms, Ȼ���ͷ�QD = 1
	*/
	uint8_t i;
	uint8_t k;
	uint8_t sum;

	/* 1. ����������ʼ�ź�, DQ����ʱ�� �� 18ms */
	DQ_0();		/* DQ = 0 */
	bsp_DelayMS(20);
	DQ_1();		/* DQ = 1 */

	bsp_DelayUS(15);	/* �ȴ�15us */

	/* 2. �ȴ�DQ��ƽ��� ( ��ʱ100us) */
	for (k = 0; k < 10; k++)
	{
		if (DQ_IS_LOW())
		{
			break;
		}
		bsp_DelayUS(10);
	}
	if (k >= 10)
	{
		goto quit;		/* ��ʱ��Ӧ��ʧ�� */
	}

	/* 3.�ȴ�DQ��ƽ��� (��ʱ100us) */
	for (k = 0; k < 10; k++)
	{
		if (!DQ_IS_LOW())
		{
			break;
		}
		bsp_DelayUS(10);
	}
	if (k >= 10)
	{
		goto quit;		/* ��ʱ��Ӧ��ʧ�� */
	}

	/* 4.�ȴ�DQ��ƽ��� (��ʱ100us) */
	for (k = 0; k < 10; k++)
	{
		if (DQ_IS_LOW())
		{
			break;
		}
		bsp_DelayUS(10);
	}
	if (k >= 10)
	{
		goto quit;		/* ��ʱ��Ӧ��ʧ�� */
	}

	/* ��40bit ���� */
	for (i = 0; i < 5; i++)
	{
		_pDTH->Buf[i] = DHT11_ReadByte();
	}
	bsp_DelayUS(100);

	/* ����У��� */
	sum = _pDTH->Buf[0] + _pDTH->Buf[1] + _pDTH->Buf[2] + _pDTH->Buf[3];
	if (sum == _pDTH->Buf[4])
	{
		_pDTH->Temp = _pDTH->Buf[2];	/* �¶��������� */
		_pDTH->Hum = _pDTH->Buf[0];	/* ʪ���������� */
		return 1;
	}
quit:
	return 0;
}

/*
*********************************************************************************************************
*	�� �� ��: DHT11_ReadByte
*	����˵��: ��DHT11��ȡ1�ֽ�����
*	��    ��: ��
*	�� �� ֵ: ��
*********************************************************************************************************
*/
static uint8_t DHT11_ReadByte(void)
{
	/*
		д����ʱ��, ��DHT11 page 16
	*/
	uint8_t i,k;
	uint8_t read = 0;

	for (i = 0; i < 8; i++)
	{
		read <<= 1;
		/* �ȴ�DQ��ƽ��� (��ʱ100us) */
		for (k = 0; k < 10; k++)
		{
			if (!DQ_IS_LOW())
			{
				break;
			}
			bsp_DelayUS(10);
		}
		if (k >= 10)
		{
			goto quit;		/* ��ʱ��Ӧ��ʧ�� */
		}

		/* �ȴ�DQ��ƽ��ͣ�ͳ��DQ�ߵ�ƽʱ�� (��ʱ100us) */
		for (k = 0; k < 10; k++)
		{
			if (DQ_IS_LOW())
			{
				break;
			}
			bsp_DelayUS(10);
		}

		if (k > 3)		/* ���������ʱ�����40us ����Ϊ��1��������0 */
		{
			read++;
		}
	}

	return read;

quit:
	return 0xFF;
}

/***************************** ���������� www.armfly.com (END OF FILE) *********************************/
