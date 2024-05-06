/* History:
 *  Version 1.01
 *    Initial release
 */

#include "FlashOS.H" // FlashOS Structures

#include <stdint.h>
#include <string.h>

#include "main.h"
#include "quadspi.h"
#include "gpio.h"
#include "dual_w25q256jv.h"

/* Private define -----------------------------------------------------------*/
//#define FlashProg_Use_Verify

/* Private typedef -----------------------------------------------------------*/

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
int  Init        (unsigned long adr,   // Initialize Flash
				  unsigned long clk,
				  unsigned long fnc)
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
	
	base_adr = adr;
	
	w25qxx_init();
	
	w25qxx_memorymapped();
	
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

int  EraseChip   (void)
{
	w25qxx_chip_erase();

    return 0;
}

/*
 *  Erase Sector in Flash Memory
 *    Parameter:      adr:  Sector Address
 *    Return Value:   0 - OK,  1 - Failed
 */

int  EraseSector (unsigned long adr)
{
	HAL_QSPI_DeInit(&hqspi);
    MX_QUADSPI_Init();
	w25qxx_init();
	
	if (adr < base_adr || adr >= (base_adr + 0x04000000))
	{
		return 1;
	}

    adr -= base_adr;
	w25qxx_128k_block_erase(adr);
	
	w25qxx_memorymapped();

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
int  ProgramPage (unsigned long adr,   // Program Page Function
				  unsigned long sz,
				  unsigned char *buf)
{
	HAL_QSPI_DeInit(&hqspi);
    MX_QUADSPI_Init();
	w25qxx_init();
	
	if (adr < base_adr || adr >= (base_adr + 0x04000000))
	{
		return 1;
	}

    adr -= base_adr;
	
	w25qxx_write(adr, buf, sz);
	
	w25qxx_memorymapped();

    return 0;
}

#ifdef FlashProg_Use_Verify
unsigned long Verify	(unsigned long adr,   // Verify Function
					  unsigned long sz,
					  unsigned char *buf)
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
