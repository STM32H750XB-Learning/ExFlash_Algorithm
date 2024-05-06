#include "Dev_Inf.h"
#include "dual_w25q256jv.h"
#include "main.h"
#include "quadspi.h"
#include "gpio.h"


/* Private variables ---------------------------------------------------------*/


extern void SystemClock_Config(void);
static uint32_t Checksum(uint32_t StartAddress, uint32_t Size, uint32_t InitVal);
uint64_t Verify(uint32_t MemoryAddr, uint32_t RAMBufferAddr, uint32_t Size, uint32_t missalignement);

/**
  * @brief  System initialization.
  * @param  None
  * @retval  1      : Operation succeeded
  * @retval  0      : Operation failed
  */
int Init(void)
{
	__disable_irq();
	
    SystemInit();
	
	hqspi.Instance = QUADSPI;
	HAL_QSPI_DeInit(&hqspi);
	HAL_DeInit();

    /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
    HAL_Init();

    /* Configure the system clock */
    SystemClock_Config();

    /* Initialize all configured peripherals */
    HAL_QSPI_DeInit(&hqspi);

    MX_GPIO_Init();
    MX_QUADSPI_Init();

    w25qxx_init();
	
//	w25qxx_memorymapped();

    return (1);
}

int Read (uint32_t Address, uint32_t Size, uint8_t* Buffer)
{
    int i = 0;

    w25qxx_memorymapped();
        
    for (i=0; i < Size;i++)
    {
        *(uint8_t*)Buffer++ = *(uint8_t*)Address;
        Address ++;
    }

    return 1;
}

/**
  * @brief   Program memory.
  * @param   Address: page address
  * @param   Size   : size of data
  * @param   buffer : pointer to data buffer
  * @retval  1      : Operation succeeded
  * @retval  0      : Operation failed
  */
int Write(uint32_t Address, uint32_t Size, uint8_t *Buffer)
{
    unsigned long end_addr, current_size, current_addr;

    /* Calculation of the size between the write address and the end of the page */
    current_addr = 0;

    while (current_addr <= Address)
        current_addr += 0x200;

    current_size = current_addr - Address;

    /* Check if the size of the data is less than the remaining place in the page */
    if (current_size > Size)
        current_size = Size;

    /* Initialize the adress variables */
    current_addr = Address;
    end_addr = Address + Size;

    /* Perform the write page by page */
    do
    {
        w25qxx_page_program(current_addr, Buffer, current_size);
        /* Update the address and size variables for next page programming */
        Buffer += current_size;
        current_addr += current_size;
        current_size = ((current_addr + 0x200) > end_addr) ? (end_addr - current_addr) : 0x200;
    }
    while (current_addr < end_addr);

    return 1;
}


/**
  * @brief   Sector erase.
  * @param   EraseStartAddress :  erase start address
  * @param   EraseEndAddress   :  erase end address
  * @retval  None
  */
int SectorErase(uint32_t EraseStartAddress, uint32_t EraseEndAddress)
{
    HAL_QSPI_DeInit(&hqspi);
    MX_QUADSPI_Init();
    w25qxx_init();

    uint32_t BlockAddr;
    EraseStartAddress -= 0x90000000;
    EraseEndAddress -= EraseEndAddress;
    EraseStartAddress = EraseStartAddress -  EraseStartAddress % 0x20000;

    while (EraseEndAddress >= EraseStartAddress)
    {
        BlockAddr = EraseStartAddress & 0x0FFFFFFF;
        w25qxx_128k_block_erase(BlockAddr);
        EraseStartAddress += 0x20000;
    }

    w25qxx_memorymapped();
    return 1;
}

/**
  * @brief   Full erase of the device
  * @param   Parallelism : 0
  * @retval  1           : Operation succeeded
  * @retval  0           : Operation failed
  */
int MassErase(uint32_t Parallelism)
{
    HAL_QSPI_DeInit(&hqspi);
    MX_QUADSPI_Init();
    w25qxx_init();

    w25qxx_chip_erase();

    w25qxx_memorymapped();
    return 1;
}


