/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "quadspi.h"
#include "gpio.h"
#include "w25qxx.h"

/* Private typedef -----------------------------------------------------------*/
#define GPIO_LED_R_PORT     GPIOC
#define GPIO_LED_R_PIN      GPIO_PIN_15
#define GPIO_LED_R_ON()     HAL_GPIO_WritePin(GPIO_LED_R_PORT, GPIO_LED_R_PIN, GPIO_PIN_RESET)
#define GPIO_LED_R_OFF()    HAL_GPIO_WritePin(GPIO_LED_R_PORT, GPIO_LED_R_PIN, GPIO_PIN_SET)

#define GPIO_LED_B_PORT     GPIOI
#define GPIO_LED_B_PIN      GPIO_PIN_8
#define GPIO_LED_B_ON()     HAL_GPIO_WritePin(GPIO_LED_B_PORT, GPIO_LED_B_PIN, GPIO_PIN_RESET)
#define GPIO_LED_B_OFF()    HAL_GPIO_WritePin(GPIO_LED_B_PORT, GPIO_LED_B_PIN, GPIO_PIN_SET)

/* Private macro -------------------------------------------------------------*/
extern void SystemClock_Config(void);

HAL_StatusTypeDef HAL_InitTick(uint32_t TickPriority)
{
    return HAL_OK;
}

uint32_t HAL_GetTick(void)
{
    static uint32_t ticks = 0U;
    uint32_t i;
    /* If Kernel is not running wait approximately 1 ms then increment
     and return auxiliary tick counter value */
    for (i = (SystemCoreClock >> 14U); i > 0U; i--)
    {
        __NOP();	__NOP();	__NOP();	__NOP();	__NOP();    __NOP();
        __NOP(); 	__NOP();	__NOP();	__NOP();	__NOP();	__NOP();
    }
    return ++ticks;
}

/**
 * Override default HAL_InitTick function
 */
void HAL_Delay(uint32_t Delay)
{
    uint32_t tickstart = HAL_GetTick();
    uint32_t wait = Delay;
    /* Add a period to guaranty minimum wait */
    if (wait < HAL_MAX_DELAY)
    {
        wait += (uint32_t)(HAL_TICK_FREQ_DEFAULT);
    }
    while ((HAL_GetTick() - tickstart) < wait)
    {
        __NOP();
    }
}

/*******************************************************************************
 Description :
 Write data to the device
 Inputs :
                Address 	: Write location
                Size 		: Length in bytes
                buffer 		: Address where to get the data to write
 outputs :
                "1" 	        : Operation succeeded
 Info :
 Note : Mandatory for all types except SRAM and PSRAM
********************************************************************************/
int Write(uint32_t Address, uint32_t Size, uint8_t *buffer)
{
	GPIO_LED_B_OFF();
    GPIO_LED_R_ON();
    W25QXX_ExitQPIMode();
    W25QXX_Reset();
    W25QXX_EnterQPIMode();
    W25QXX_Write(buffer, Address & 0x0FFFFFFF, Size);
	GPIO_LED_B_ON();
    GPIO_LED_R_OFF();
    return 1;
}

/*******************************************************************************
 Description :
 Erase a full sector in the device
 Inputs :
                SectrorAddress	: Start of sector
 outputs :
                "1" : Operation succeeded
                "0" : Operation failure
 Note : Not Mandatory for SRAM PSRAM and NOR_FLASH
********************************************************************************/
int SectorErase(uint32_t EraseStartAddress, uint32_t EraseEndAddress)
{

    uint32_t BlockAddr;
    EraseStartAddress = EraseStartAddress - EraseStartAddress % (0x1000);

    while (EraseEndAddress >= EraseStartAddress)
    {
        BlockAddr = EraseStartAddress & 0x0FFFFFFF;
        W25QXX_SectorErase(BlockAddr);
        EraseStartAddress += (0x1000);
    }
    return 1;
}

/*******************************************************************************
 * Description :
 * Erase a full sector in the device
 * Inputs    :
 *     None
 * outputs   :
 *     R0             : "1" : Operation succeeded
 * 			         "0" : Operation failure
 * Note: Not Mandatory for SRAM PSRAM and NOR_FLASH
 ********************************************************************************/
int MassErase(void)
{
    W25QXX_ExitQPIMode();
    W25QXX_Reset();
    W25QXX_EnterQPIMode();
    W25QXX_ChipErase();
    return 1;
}

/*******************************************************************************
 Description :
 Read data from the device
 Inputs :
                Address 	: Write location
                Size 		: Length in bytes
                buffer 		: Address where to get the data to write
 outputs :
                "1" 		: Operation succeeded
                "0" 		: Operation failure
 Note : Not Mandatory
********************************************************************************/
int Read(uint32_t Address, uint32_t Size, uint8_t *Buffer)
{
#ifndef W25QXX_READ_BY_MEMORY_MAP  
    W25QXX_ExitQPIMode();
    W25QXX_Reset();
    W25QXX_EnterQPIMode();
    W25QXX_Read(Buffer, Address & 0x0FFFFFFF, Size);
#else
    W25Q_Memory_Mapped_Enable();
    for (volatile int i = 0; i < Size; i++)
    {
        *(uint8_t *)Buffer = *(uint8_t *)Address;
        Address++;
        Buffer++;
    }
#endif
    return 1;
}

/*******************************************************************************
 Description :
 Verify the data
 Inputs :
                MemoryAddr 	: Write location
                RAMBufferAddr 	: RAM Address
                Size 		: Length in bytes
 outputs :
                "0" 		: Operation succeeded
 Note : Not Mandatory
********************************************************************************/
uint32_t Checksum(uint32_t StartAddress, uint32_t Size, uint32_t InitVal);
uint64_t Verify(uint32_t MemoryAddr, uint32_t RAMBufferAddr, uint32_t Size, uint32_t missalignement)
{
    return 1;
}

/*******************************************************************************
 Description :
 System initialization
 Inputs 	:
                 None
 outputs 	:
                "1" 		: Operation succeeded
                "0" 		: Operation failure
********************************************************************************/
int Init(void)
{
    /* MCU Configuration--------------------------------------------------------*/

    __disable_irq();
    SystemInit();

    /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
    HAL_Init();

    /* Configure the system clock */
    SystemClock_Config();

    /* Initialize all configured peripherals */
    hqspi.Instance = QUADSPI;
    HAL_QSPI_DeInit(&hqspi);
    MX_QUADSPI_Init();
    W25QXX_ExitQPIMode();
    W25QXX_Reset();

	HAL_GPIO_DeInit(GPIO_LED_R_PORT, GPIO_LED_R_PIN);
	HAL_GPIO_DeInit(GPIO_LED_B_PORT, GPIO_LED_B_PIN);
	MX_GPIO_Init();
    GPIO_LED_B_ON();
    GPIO_LED_R_OFF();
    return 1;
}

uint32_t Checksum(uint32_t StartAddress, uint32_t Size, uint32_t InitVal)
{
    uint8_t missalignementAddress = StartAddress % 4;
    uint8_t missalignementSize = Size;
    int cnt;
    uint32_t Val;

    StartAddress -= StartAddress % 4;
    Size += (Size % 4 == 0) ? 0 : 4 - (Size % 4);

    for (cnt = 0; cnt < Size; cnt += 4)
    {
        Val = *(uint32_t *)StartAddress;
        if (missalignementAddress)
        {
            switch (missalignementAddress)
            {
            case 1:
                InitVal += (uint8_t)(Val >> 8 & 0xff);
                InitVal += (uint8_t)(Val >> 16 & 0xff);
                InitVal += (uint8_t)(Val >> 24 & 0xff);
                missalignementAddress -= 1;
                break;
            case 2:
                InitVal += (uint8_t)(Val >> 16 & 0xff);
                InitVal += (uint8_t)(Val >> 24 & 0xff);
                missalignementAddress -= 2;
                break;
            case 3:
                InitVal += (uint8_t)(Val >> 24 & 0xff);
                missalignementAddress -= 3;
                break;
            }
        }
        else if ((Size - missalignementSize) % 4 && (Size - cnt) <= 4)
        {
            switch (Size - missalignementSize)
            {
            case 1:
                InitVal += (uint8_t)Val;
                InitVal += (uint8_t)(Val >> 8 & 0xff);
                InitVal += (uint8_t)(Val >> 16 & 0xff);
                missalignementSize -= 1;
                break;
            case 2:
                InitVal += (uint8_t)Val;
                InitVal += (uint8_t)(Val >> 8 & 0xff);
                missalignementSize -= 2;
                break;
            case 3:
                InitVal += (uint8_t)Val;
                missalignementSize -= 3;
                break;
            }
        }
        else
        {
            InitVal += (uint8_t)Val;
            InitVal += (uint8_t)(Val >> 8 & 0xff);
            InitVal += (uint8_t)(Val >> 16 & 0xff);
            InitVal += (uint8_t)(Val >> 24 & 0xff);
        }
        StartAddress += 4;
    }

    return (InitVal);
}

