#include "Dev_Inf.h"

/* This structure containes information used by ST-LINK Utility to program and erase the device */
#if defined(__ICCARM__)
__root struct StorageInfo const StorageInfo = {
#else
struct StorageInfo const StorageInfo = {
#endif
    "STM32H750XB_V1.0",    // Device Name + EVAL Borad name
    NOR_FLASH,                 // Device Type
    0x90000000,                // Device Start Address
    0x02000000,                // Device Size in Bytes (32MBytes)
    0x0100,                    // Programming Page Size 256Bytes
    0xFF,                      // Initial Content of Erased Memory
                               // Specify Size and Address of Sectors (view example below)
    {{0x00000200, 0x00010000,},     // Sector Num : 512 ,Sector Size: 64KBytes
    {0x00000000, 0x00000000,}}
};

