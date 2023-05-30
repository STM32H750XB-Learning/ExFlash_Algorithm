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
 * Project:      Flash Device Description for STMicroelectronics STM32F4xx Flash
 * --------------------------------------------------------------------------- */

/* History:
 *  Version 1.00
 *    Initial release
 */

#include "FlashOS.H" // FlashOS Structures

struct FlashDevice const FlashDevice = {
    FLASH_DRV_VERS,         // Driver Version, do not modify!
    "STM32H750_ArtPi_W25Q64JV",	// Device Name (8MB)
    EXTSPI,                 // Device Type
    0x90000000,             // Device Start Address
    0x00800000,             // Device Size in Bytes (8MB)
    0x100,           		// Programming Page Size
    0,                      // Reserved, must be 0
    0xFF,                   // Initial Content of Erased Memory
    1000,                	// Program Page Timeout 1000 mSec, 3ms in datasheet
    3000,                   // Erase Sector Timeout 3000 mSec, 400ms in datasheet

    // Specify Size and Address of Sectors
    0x1000, 0x000000, // Sector Size  4kB (2048 Sectors)
    SECTOR_END
};
