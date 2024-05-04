/* Includes ------------------------------------------------------------------*/
#include <stdint.h>
// #include <string.h>

#include "main.h"
#include "quadspi.h"
// #include "gpio.h"
#define DEBUG_WITH_UART
#if defined(DEBUG_WITH_UART)
#include "usart.h"
#include <stdio.h>
#endif
#include "w25qxx.h"
#include "w25q64jvx.h"
/* Private typedef -----------------------------------------------------------*/
static uint8_t erase_then_write = 0;
static uint8_t w25qxx_buf[4096];
/* Private macro -------------------------------------------------------------*/
#define QSPI_BASE_ADDR 0x90000000

extern void SystemClock_Config(void);

int Init(void);
int Read(uint32_t Address, uint32_t Size, uint8_t *Buffer);

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
        __NOP();
        __NOP();
        __NOP();
        __NOP();
        __NOP();
        __NOP();
        __NOP();
        __NOP();
        __NOP();
        __NOP();
        __NOP();
        __NOP();
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
#define WRITE_PER_TIME 4096
int Write(uint32_t Address, uint32_t Size, uint8_t *buffer)
{
    
    uint32_t addr;
    uint32_t sec_pos;
    uint32_t sec_off;
    uint32_t sec_rem;
    uint32_t i;
    uint8_t *W25QXX_BUF;
    addr = Address & 0x0FFFFFFF;

    W25QXX_BUF = w25qxx_buf;
    sec_pos = addr / 4096;
    sec_off = addr % 4096;
    sec_rem = 4096 - sec_off;
    if (Size <= sec_rem)
    {
        sec_rem = Size;  
    }
#if defined(DEBUG_WITH_UART)
    printf("Write Nocheck %d bytes to 0x%x from 0x%0x\r\n", Size, Address, (unsigned int)buffer);
#endif
    if(erase_then_write == 1)
    {
        while (1)
        {
            Read(sec_pos * 4096 + 0x90000000, 4096, W25QXX_BUF);
#if defined(DEBUG_WITH_UART)          
            printf("-----Read from sector %d \r\n", sec_pos);
#endif
#if defined(DEBUG_WITH_UART)          
            printf("-----sec pos %d, off %d, rem %d \r\n", sec_pos, sec_off, sec_rem);
#endif          
            for (i = 0; i < sec_rem; i++)
            {
                if (W25QXX_BUF[sec_off + i] != buffer[i])
                {
#if defined(DEBUG_WITH_UART)                  
                  printf("-----Read different from sector %d offset %d \r\n", sec_pos, sec_off);
#endif
                  break;
                }
                    
            }
            if (i < sec_rem)
            {
                Init();           
                W25QXX_SectorErase(sec_pos * 4096);
#if defined(DEBUG_WITH_UART)              
                printf("-----Erase sector %d\r\n", sec_pos);
#endif
                for (i = 0; i < sec_rem; i++)
                {
                    W25QXX_BUF[sec_off + i] = buffer[i];
                }
                W25QXX_Write_NoCheck(W25QXX_BUF, sec_pos * 4096, 4096);
#if defined(DEBUG_WITH_UART)                
                printf("-----Write sector %d\r\n", sec_pos);
#endif
            }
            else
            {
                //W25QXX_Write_NoCheck(buffer, Address, sec_rem);
#if defined(DEBUG_WITH_UART)              
                printf("-----Do nothing to sector %d\r\n", sec_pos);
#endif
            }
            if (Size == sec_rem)
            {
                break;
            }
            else
            {
                sec_pos++;
                sec_off = 0;

                buffer += sec_rem;
                addr += sec_rem;
                Size -= sec_rem;
                if (Size > 4096)
                {
                    sec_rem = 4096;
                }
                else
                {
                    sec_rem = Size;
                }
            }
        }
    }
    else
    {
//      W25QXX_Write_NoCheck(buffer, Address & 0x0FFFFFFF, Size);
    }
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
  #define W25Qxx_BLOCK_SIZE (4 * 1024)
  uint32_t BlockAddr;
#if defined(DEBUG_WITH_UART)
  printf("Erase from 0x%x to 0x%x\r\n", EraseStartAddress, EraseEndAddress);
#endif
  if( EraseEndAddress == EraseStartAddress)
  {
    BlockAddr = EraseStartAddress & 0x0FFFFFFF;
    W25QXX_SectorErase(BlockAddr);
    erase_then_write = 0;
  }
  else
  {
    erase_then_write = 1;
  }
#if defined(DEBUG_WITH_UART)  
  printf("erase_then_write is %d, ", erase_then_write);
#endif
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
#if defined(DEBUG_WITH_UART)
    printf("Mass Chip Erase\r\n");
#endif
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
//#if defined(DEBUG_WITH_UART)
//    printf("Read %d Size from 0x%x to 0x%x\r\n", Size, Address, Buffer);
//#endif

#if defined(W25QXX_READ_BY_MEMORY_MAP)
    W25Q_Memory_Mapped_Enable();
    for (volatile int i = 0; i < Size; i++)
    {
        *(uint8_t *)Buffer = *(uint8_t *)Address;
        Address++;
        Buffer++;
    }  
#else
  W25QXX_Read(Buffer, Address & 0x0FFFFFFF, Size);
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
    SystemInit();
    /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
    HAL_Init();
    /* Configure the system clock */
    SystemClock_Config();
    /* Initialize all configured peripherals */
#if defined(DEBUG_WITH_UART)
    /* Clear the huart4 handler and Init UART4*/
    uint8_t *puart = (uint8_t *)&huart4;
    for (volatile uint8_t i = 0; i < sizeof(UART_HandleTypeDef); i++)
    {
        *puart++ = 0;
    }
    huart4.Instance = UART4;
    HAL_UART_DeInit(&huart4);
    MX_UART4_Init();
#endif
    /* Clear the hqspi handler and Init QSPI*/
    uint8_t *pqspi = (uint8_t *)&hqspi;
    for (volatile uint8_t i = 0; i < sizeof(QSPI_HandleTypeDef); i++)
    {
        *pqspi++ = 0;
    }
    hqspi.Instance = QUADSPI;
    HAL_QSPI_DeInit(&hqspi);
    QUADSPI->CCR = QUADSPI->CCR & 0xf7ffffff; /* Indirect read mode */
    QUADSPI->CR = QUADSPI->CR & 0xfffffffe;   /* Disable the QUADSPI */
    MX_QUADSPI_Init();

    int result = -1;
    result = W25QXX_ExitQPIMode();
    W25QXX_Reset();
    W25QXX_EnterQPIMode();
#if defined(DEBUG_WITH_UART)
    printf("Exit QSPI result is %d, ", result);
    printf("erase_then_write is %d, ", erase_then_write);
#endif
    return 1;
}

#if defined(DEBUG_WITH_UART)
#include <stdio.h>
#pragma import(__use_no_semihosting)
void _sys_exit(int x)
{
    x = x;
}

struct __FILE
{
    int handle;
};

FILE __stdout;

int fputc(int ch, FILE *f)
{
    HAL_UART_Transmit(&huart4, (uint8_t *)&ch, 1, 0xffffffff);
    return (ch);
}
#endif

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
