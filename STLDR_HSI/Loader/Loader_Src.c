/* Includes ------------------------------------------------------------------*/
#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include "main.h"
#include "quadspi.h"
#include "gpio.h"
#include "w25q64jv.h"

/* Private typedef -----------------------------------------------------------*/
#define GPIO_LED_R_PORT     GPIOC
#define GPIO_LED_R_PIN      GPIO_PIN_15
#define GPIO_LED_R_ON()     HAL_GPIO_WritePin(GPIO_LED_R_PORT, GPIO_LED_R_PIN, GPIO_PIN_RESET)
#define GPIO_LED_R_OFF()    HAL_GPIO_WritePin(GPIO_LED_R_PORT, GPIO_LED_R_PIN, GPIO_PIN_SET)

#define GPIO_LED_B_PORT     GPIOI
#define GPIO_LED_B_PIN      GPIO_PIN_8
#define GPIO_LED_B_ON()     HAL_GPIO_WritePin(GPIO_LED_B_PORT, GPIO_LED_B_PIN, GPIO_PIN_RESET)
#define GPIO_LED_B_OFF()    HAL_GPIO_WritePin(GPIO_LED_B_PORT, GPIO_LED_B_PIN, GPIO_PIN_SET)

#define QSPI_BASE_ADDR      (0x90000000UL)

/* Private macro -------------------------------------------------------------*/
extern void SystemClock_Config(void);
static uint32_t Checksum(uint32_t StartAddress, uint32_t Size, uint32_t InitVal);

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
    MX_QUADSPI_Init();
	
    GPIO_LED_B_ON();
    GPIO_LED_R_OFF();
	
	if(W25QXX_Reset() != QSPI_OK)
	{
		return 0;
	}
		
    return 1;
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

    if(Address >= QSPI_BASE_ADDR)    Address -= QSPI_BASE_ADDR;
	if(W25QXX_Write(Address, buffer, Size) != QSPI_OK)
	{
		return 0;
	}

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
    uint32_t SectorAddr;

    GPIO_LED_B_OFF();
    GPIO_LED_R_ON();

    if (EraseStartAddress >= QSPI_BASE_ADDR)    EraseStartAddress -= QSPI_BASE_ADDR;
    if (EraseEndAddress >= QSPI_BASE_ADDR)      EraseEndAddress -= QSPI_BASE_ADDR;

    EraseStartAddress = ALIGN_DOWN(EraseStartAddress, W25Q64JV_SECTOR_SIZE);

    while (EraseEndAddress >= EraseStartAddress)
    {
        SectorAddr = EraseStartAddress & 0x0FFFFFFF;
        if(W25QXX_Erase_Sector(SectorAddr) != QSPI_OK)
        {
            return 0;
        }
        EraseStartAddress += W25Q64JV_SECTOR_SIZE;
    }

    GPIO_LED_B_ON();
    GPIO_LED_R_OFF();

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
    GPIO_LED_B_OFF();
    GPIO_LED_R_ON();

    if(W25QXX_Erase_Chip() != QSPI_OK)
    {
        return 0;
    }

    GPIO_LED_B_ON();
    GPIO_LED_R_OFF();

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
	uint32_t i = 0;

	GPIO_LED_B_OFF();
    GPIO_LED_R_ON();
	if(W25QXX_Enable_Memory_Mapped() != QSPI_OK)
	{
		return 0;
	}

	for(i = 0; i < Size; i++)
	{
        *(uint8_t*)Buffer = *(uint8_t*)Address;
        Buffer++;
        Address ++;
	}
	
	GPIO_LED_B_ON();
    GPIO_LED_R_OFF();
	
    return 1;
}

/**
  * Description :
  * Verify flash memory with RAM buffer and calculates checksum value of
  * the programmed memory
  * Inputs    :
  *      FlashAddr     : Flash address
  *      RAMBufferAddr : RAM buffer address
  *      Size          : Size (in WORD)
  *      InitVal       : Initial CRC value
  * outputs   :
  *     R0             : Operation failed (address of failure)
  *     R1             : Checksum value
  * Note: Optional for all types of device
  */
 uint64_t Verify (uint32_t MemoryAddr, uint32_t RAMBufferAddr, uint32_t Size, uint32_t missalignement)
 {
    uint32_t NumOfVerified = 0, InitVal = 0;
    uint64_t CheckSumOfVerified = 0;
    
    Size *= 4;

    if(W25QXX_Enable_Memory_Mapped() != QSPI_OK)
	{
        GPIO_LED_B_OFF();
        GPIO_LED_R_ON();
		return 0;
	}

    CheckSumOfVerified = Checksum((uint32_t)MemoryAddr + (missalignement & 0xF), Size - ((missalignement >> 16) & 0xF), InitVal);
	while (Size > NumOfVerified)
	{
		if ( *(uint8_t*)MemoryAddr++ != *((uint8_t*)RAMBufferAddr + NumOfVerified))
			return ((CheckSumOfVerified << 32) + (MemoryAddr + NumOfVerified));

		NumOfVerified++;
	}

	return (CheckSumOfVerified<<32);
 }


uint32_t Checksum(uint32_t StartAddress, uint32_t Size, uint32_t InitVal)
{
    uint8_t missalignementAddress = StartAddress % 4;
    uint8_t missalignementSize = Size;
    int cnt;
    uint32_t Val;

    StartAddress -= StartAddress % 4;
    Size += (Size % 4 == 0) ? 0 : 4 - (Size % 4);

    for(cnt = 0; cnt < Size ; cnt += 4)
    {
        Val = *(uint32_t*)StartAddress;
        if(missalignementAddress)
        {
            switch (missalignementAddress)
            {
            case 1:
                InitVal += (uint8_t) (Val >> 8 & 0xff);
                InitVal += (uint8_t) (Val >> 16 & 0xff);
                InitVal += (uint8_t) (Val >> 24 & 0xff);
                missalignementAddress -= 1;
                break;
            case 2:
                InitVal += (uint8_t) (Val >> 16 & 0xff);
                InitVal += (uint8_t) (Val >> 24 & 0xff);
                missalignementAddress -= 2;
                break;
            case 3:
                InitVal += (uint8_t) (Val >> 24 & 0xff);
                missalignementAddress -= 3;
                break;
            }
        }
        else if((Size-missalignementSize) % 4 && (Size - cnt) <= 4)
        {
            switch (Size-missalignementSize)
            {
            case 1:
                InitVal += (uint8_t) Val;
                InitVal += (uint8_t) (Val >> 8 & 0xff);
                InitVal += (uint8_t) (Val >> 16 & 0xff);
                missalignementSize -= 1;
                break;
            case 2:
                InitVal += (uint8_t) Val;
                InitVal += (uint8_t) (Val >> 8 & 0xff);
                missalignementSize -= 2;
                break;
            case 3:
                InitVal += (uint8_t) Val;
                missalignementSize -= 3;
                break;
            }
        }
        else
        {
            InitVal += (uint8_t) Val;
            InitVal += (uint8_t) (Val >> 8 & 0xff);
            InitVal += (uint8_t) (Val >> 16 & 0xff);
            InitVal += (uint8_t) (Val >> 24 & 0xff);
        }
        StartAddress += 4;
    }

    return (InitVal);
}
