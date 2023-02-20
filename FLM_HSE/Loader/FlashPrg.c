/* -----------------------------------------------------------------------------
 * Copyright (c) 2014 ARM Ltd.
 *
 * This software is provided 'as-is', without any express or implied warranty.
 * In no event will the authors be held liable for any damages arising from
 * the use of this software. Permission is granted to anyone to use this
 * software for any purpose, including commercial applications, and to alter
 * it and redistribute it freely, subject to the following restrictions:
 *
 * 1. The origin of this software must not be misrepresented; you must not
 *    claim that you wrote the original software. If you use this software in
 *    a product, an acknowledgment in the product documentation would be
 *    appreciated but is not required.
 *
 * 2. Altered source versions must be plainly marked as such, and must not be
 *    misrepresented as being the original software.
 *
 * 3. This notice may not be removed or altered from any source distribution.
 *
 *
 * $Date:        15. April 2014
 * $Revision:    V1.00
 *
 * Project:      Flash Programming Functions for STMicroelectronics STM32F4xx Flash
 * --------------------------------------------------------------------------- */

/* History:
 *  Version 1.00
 *    Initial release
 */

#include "FlashOS.H" // FlashOS Structures

#include <stdint.h>
#include <string.h>

#include "main.h"
#include "quadspi.h"
#include "gpio.h"
#include "w25q64jv.h"

/* Private define -----------------------------------------------------------*/
#define FlashProg_Use_Verify

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

/* Private variables -------------------------------------------------------------*/
uint32_t base_adr = 0;

/*
 *  Initialize Flash Programming Functions
 *    Parameter:      adr:  Device Base Address
 *                    clk:  Clock Frequency (Hz)
 *                    fnc:  Function Code (1 - Erase, 2 - Program, 3 - Verify)
 *    Return Value:   0 - OK,  1 - Failed
 */
int Init(unsigned long adr, unsigned long clk, unsigned long fnc)
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

	GPIO_LED_B_OFF();
	GPIO_LED_R_ON();
	
	base_adr = adr;
	
	if(W25QXX_Reset() != QSPI_OK)
	{
		return 1;
	}
	
	if(fnc == 3)
	{
		if(W25QXX_Enable_Memory_Mapped() != QSPI_OK)
		{
			return 1;
		}
	}
	
    GPIO_LED_B_ON();
    GPIO_LED_R_OFF();

    return 0;
}

/*
 *  De-Initialize Flash Programming Functions
 *    Parameter:      fnc:  Function Code (1 - Erase, 2 - Program, 3 - Verify)
 *    Return Value:   0 - OK,  1 - Failed
 */
int UnInit(unsigned long fnc)
{
    return 0;
}

/*
 *  Erase complete Flash Memory
 *    Return Value:   0 - OK,  1 - Failed
 */

int EraseChip(void)
{
	GPIO_LED_B_OFF();
    GPIO_LED_R_ON();

    if(W25QXX_Erase_Chip() != QSPI_OK)
    {
        return 1;
    }

    GPIO_LED_B_ON();
    GPIO_LED_R_OFF();
	
    return 0;
}

/*
 *  Erase Sector in Flash Memory
 *    Parameter:      adr:  Sector Address
 *    Return Value:   0 - OK,  1 - Failed
 */

int EraseSector(unsigned long adr)
{
	GPIO_LED_B_OFF();
    GPIO_LED_R_ON();
	
	if (adr < base_adr || adr >= (base_adr + W25Q64JV_FLASH_SIZE))
	{
		return 1;
	}

    adr -= base_adr;
    adr = ALIGN_DOWN(adr, W25Q64JV_SECTOR_SIZE);

    if(W25QXX_Erase_Sector(adr) != QSPI_OK)
    {
        return 1;
    }
	
	GPIO_LED_B_ON();
    GPIO_LED_R_OFF();

    return 0;
}

/*
 *  Blank Check Checks if Memory is Blank
 *    Parameter:      adr:  Block Start Address
 *                    sz:   Block Size (in bytes)
 *                    pat:  Block Pattern
 *    Return Value:   0 - OK,  1 - Failed
 */
int BlankCheck (unsigned long adr, unsigned long sz, unsigned char pat)
{
	return 1; /* Always Force Erase */
}

/*
 *  Program Page in Flash Memory
 *    Parameter:      adr:  Page Start Address
 *                    sz:   Page Size
 *                    buf:  Page Data
 *    Return Value:   0 - OK,  1 - Failed
 */
int ProgramPage(unsigned long adr, unsigned long sz, unsigned char *buf)
{
    GPIO_LED_B_OFF();
    GPIO_LED_R_ON();

    if(adr >= base_adr)    adr -= base_adr;
	if(W25QXX_Write(adr, buf, sz) != QSPI_OK)
	{
		return 1;
	}
	
	GPIO_LED_B_ON();
    GPIO_LED_R_OFF();
	
    return 0;
}

#ifdef FlashProg_Use_Verify
unsigned long Verify(unsigned long adr, unsigned long sz, unsigned char *buf)
{
    uint8_t *p = (uint8_t *)adr;

    for (int i = 0; i < sz; i++)
    {
        if (*p != buf[i])
        {
            return ((unsigned long)p);
        }
        p++;
    }

    return (adr + sz);
}
#endif
