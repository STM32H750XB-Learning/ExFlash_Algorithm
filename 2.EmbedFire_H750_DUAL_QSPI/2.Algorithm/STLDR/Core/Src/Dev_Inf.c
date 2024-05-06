#include "Dev_Inf.h"

/* This structure containes information used by STM32 CubeProgrammer to program and erase the device */
#if defined (__ICCARM__)
__root struct StorageInfo const StorageInfo  =
{
#else
struct StorageInfo const StorageInfo  =
{
#endif
    "DUAL-W25Q256JV_H750Pro",                	// Device Name + version number
    NOR_FLASH,                                   	// Device Type
    0x90000000,                            			// Device Start Address
    0x04000000,                                   	// Device Size in Bytes (64MBytes)
    0x200,                                  		// Programming Page Size 512Bytes
    0xFF,                                         	// Initial Content of Erased Memory

    /* Specify Size and Address of Sectors (view example below) */
    0x00000200, 0x20000,                      	// Sector Num : 256 ,Sector Size: 8KBytes
    0x00000000, 0x00000000,
};
