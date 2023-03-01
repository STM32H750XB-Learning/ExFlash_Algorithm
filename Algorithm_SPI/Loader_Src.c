/* Includes ------------------------------------------------------------------*/
#include <stdint.h>
#include <string.h>

#include "main.h"
#include "spi.h"
#include "gpio.h"
#include "w25q128jv.h"

/* Private typedef -----------------------------------------------------------*/

/* Private macro -------------------------------------------------------------*/

extern void SystemClock_Config(void);

HAL_StatusTypeDef HAL_InitTick(uint32_t TickPriority)
{
    return HAL_OK;
}

uint32_t HAL_GetTick(void)
{
    return 10;
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
    SPI_W25Q128JV_Write(buffer, Address & 0x0FFFFFFF, Size);

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
    EraseStartAddress = EraseStartAddress - EraseStartAddress % W25Q128JV_BLOCK_SIZE;

    while (EraseEndAddress >= EraseStartAddress)
    {
        BlockAddr = EraseStartAddress & 0x0FFFFFFF;
        SPI_W25Q128JV_EraseBlock(BlockAddr);
        EraseStartAddress += W25Q128JV_BLOCK_SIZE;
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
    SPI_W25Q128JV_EraseChip();

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
    SPI_W25Q128JV_Read(Buffer, Address & 0x0fffffff, Size);

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
static uint8_t buf[W25Q128JV_SECTOR_SIZE];
int Verify(uint32_t MemoryAddr, uint32_t RAMBufferAddr, uint32_t Size)
{
    uint32_t VerifiedData = 0;
    uint32_t CurrentData = 0;
    Size *= 4;

    while (Size > VerifiedData)
    {
        CurrentData = ((Size - VerifiedData) >= W25Q128JV_SECTOR_SIZE) ? W25Q128JV_SECTOR_SIZE : (Size - VerifiedData);
        SPI_W25Q128JV_Read(buf, MemoryAddr & 0x0fffffff, CurrentData);

        for (int i = 0; i < CurrentData; i++)
        {
            if (buf[i] != *((uint8_t *)RAMBufferAddr + VerifiedData + i))
                return (MemoryAddr + VerifiedData + i);
        }

        VerifiedData += CurrentData;
        MemoryAddr += CurrentData;
    }

    return 0;
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
    SystemInit();
    // HAL_Init();

    SystemClock_Config();
    MX_GPIO_Init();
    MX_SPI1_Init();

    //QSPI_W25Q64JV_Reset();
    //QSPI_W25Q64JV_EnableMemoryMappedMode();

    return 1;
}
