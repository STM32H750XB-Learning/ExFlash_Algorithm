#include "Dev_Inf.h"
#include "dual_w25q256jv.h"
#include "main.h"
#include "quadspi.h"
#include "gpio.h"
#include <stdio.h>

#define QSPI_FLASH_MEM_ADDR 0x90000000U
#define QSPI_PAGE_SIZE		512
#define QSPI_BLOCK_SIZE		(0x20000U)

/* Private variables ---------------------------------------------------------*/
extern void SystemClock_Config(void);
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
    MX_GPIO_Init();
	HAL_QSPI_DeInit(&hqspi);
    MX_QUADSPI_Init();
	
    w25qxx_init();

    w25qxx_memorymapped();

    return 1;
}

//int Read (uint32_t Address, uint32_t Size, uint8_t* Buffer)
//{
//    int i = 0;

//    for (i=0; i < Size; i++)
//    {
//        *(uint8_t*)Buffer++ = *(uint8_t*)Address;
//        Address ++;
//    }

//    return 1;
//}

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
    HAL_QSPI_DeInit(&hqspi);
    MX_QUADSPI_Init();
    w25qxx_init();

	uint32_t end_addr, current_size, current_addr;

	Address -= QSPI_FLASH_MEM_ADDR;

	current_size = QSPI_PAGE_SIZE - (Address % QSPI_PAGE_SIZE);

	if (current_size > Size)
	{
		current_size = Size;
	}

    current_addr = Address;
    end_addr = Address + Size;

    do{
		w25qxx_write(current_addr, Buffer, current_size);

		/* 更新地址 */
		current_addr += current_size;
		Buffer += current_size;
		current_size = ((current_addr + QSPI_PAGE_SIZE) > end_addr) ? (end_addr - current_addr) : QSPI_PAGE_SIZE;
    }while(current_addr < end_addr);

    w25qxx_memorymapped();

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
    EraseStartAddress -= QSPI_FLASH_MEM_ADDR;
    EraseEndAddress -= QSPI_FLASH_MEM_ADDR;
    EraseStartAddress = EraseStartAddress -  EraseStartAddress % QSPI_BLOCK_SIZE;

    while (EraseEndAddress >= EraseStartAddress)
    {
        BlockAddr = EraseStartAddress & 0x07FFFFFF;		// not exceed 64MB
        w25qxx_128k_block_erase(BlockAddr);
        EraseStartAddress += QSPI_BLOCK_SIZE;
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


