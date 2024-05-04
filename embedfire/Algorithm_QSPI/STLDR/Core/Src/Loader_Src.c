/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "quadspi.h"
#include "gpio.h"
#include "w25q256jv.h"
#include "usart.h"

extern void SystemClock_Config(void);

/**
  * Description :
  * Initilize the MCU Clock, the GPIO Pins corresponding to the
  * device and initilize the FSMC with the chosen configuration 
  * Inputs    :
  *      None
  * outputs   :
  *      R0             : "1" 			: Operation succeeded
  * 			  "0" 			: Operation failure
  * Note: Mandatory for all types of device 
  */
int Init (void)
{  
	__disable_irq();
	SystemInit();
	
	HAL_DeInit();

	/* Reset of all peripherals, Initializes the Flash interface and the Systick. */
    HAL_Init();

    /* Configure the system clock */
    SystemClock_Config();
	
	/* Clear the hqspi handler and Init QSPI, Neccessary!!!!!*/
    uint8_t *pqspi = (uint8_t *)&hqspi;
    for (volatile uint8_t i = 0; i < sizeof(QSPI_HandleTypeDef); i++)
    {
        *pqspi++ = 0;
    }
    hqspi.Instance = QUADSPI;
    HAL_QSPI_DeInit(&hqspi);

    /* Initialize all configured peripherals */
    MX_GPIO_Init();
	MX_QUADSPI_Init();
	MX_USART1_UART_Init();
	
	W25QXX_Init();
	
	HAL_UART_Transmit(&huart1, (uint8_t *)"init\r\n", 6, 100);

	return 1;
}

		
/**
  * Description :
  * Read data from the device 
  * Inputs    :
  *      Address       : Write location
  *      Size          : Length in bytes  
  *      buffer        : Address where to get the data to write
  * outputs   :
  *      R0             : "1" 			: Operation succeeded
  * 			  "0" 			: Operation failure
  * Note: Mandatory for all types except SRAM and PSRAM	
  */
int Read (uint32_t Address, uint32_t Size, uint8_t* buffer)
{ 
//	W25QXX_FastRead(Address, buffer, Size);
	W25QXX_MemoryMapped();
	for (volatile int i = 0; i < Size; i++)
    {
        *(uint8_t *)buffer = *(uint8_t *)Address;
        Address++;
        buffer++;
    }
	return 1;
} 

	
/**
  * Description :
  * Write data from the device 
  * Inputs    :
  *      Address       : Write location
  *      Size          : Length in bytes  
  *      buffer        : Address where to get the data to write
  * outputs   :
  *      R0           : "1" 			: Operation succeeded
  *                     "0" 			: Operation failure
  * Note: Mandatory for all types except SRAM and PSRAM	
  */
//int Write (uint32_t Address, uint32_t Size, uint8_t* buffer)
//{
//	W25QXX_Init();
//	W25QXX_Write(Address, buffer, Size);
//	return 1;
//} 
int Write (uint32_t Address, uint32_t Size, uint8_t* buffer)
{
	uint32_t adr =  Address & 0xffffffff;
	unsigned long end_addr, current_size, current_addr;

    /* Calculation of the size between the write address and the end of the page */
    current_addr = 0;

    while (current_addr <= adr)
        current_addr += W25QXX_PAGE_SIZE;
	
    current_size = current_addr - adr;

    /* Check if the size of the data is less than the remaining place in the page */
    if (current_size > Size)
        current_size = Size;

    /* Initialize the adress variables */
    current_addr = adr;
    end_addr = adr + Size;

    /* Perform the write page by page */
    do
    {
		printf("writing\r\n");
        W25QXX_ProgramPage(current_addr, buffer, current_size);
        /* Update the address and size variables for next page programming */
        buffer += current_size;
        current_addr += current_size;
        current_size = ((current_addr + W25QXX_PAGE_SIZE) > end_addr) ? (end_addr - current_addr) : W25QXX_PAGE_SIZE;
    }
    while (current_addr < end_addr);
	
    return 1;
}


/**
  * Description :
  * Erase a full sector in the device
  * Inputs    :
  *     None
  * outputs   :
  *     R0             : "1" : Operation succeeded
  * 			 "0" : Operation failure
  * Note: Not Mandatory for SRAM PSRAM and NOR_FLASH
  */
int MassErase (void)
{  
	W25QXX_Erase_Chip();
	return 1;	
}

/**
  * Description :
  * Erase a full sector in the device
  * Inputs    :
  *      SectrorAddress	: Start of sector
  *      Size          : Size (in WORD)  
  *      InitVal       : Initial CRC value
  * outputs   :
  *     R0             : "1" : Operation succeeded
  * 			 "0" : Operation failure
  * Note: Not Mandatory for SRAM PSRAM and NOR_FLASH
  */
int SectorErase (uint32_t EraseStartAddress ,uint32_t EraseEndAddress)
{      
	uint32_t BlockAddr;
	EraseStartAddress = EraseStartAddress - EraseStartAddress % (W25QXX_SECTOR_SIZE);
	
	while(EraseStartAddress < EraseEndAddress)
	{
		BlockAddr = EraseStartAddress & 0xFFFFFFFF;
		W25QXX_Erase_64KB_Block(BlockAddr);
		EraseStartAddress += W25QXX_SECTOR_SIZE;
	}

	return 1;	
}
