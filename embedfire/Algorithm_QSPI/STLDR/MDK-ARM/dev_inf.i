# 1 "../Core/Src/Dev_Inf.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 392 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "../Core/Src/Dev_Inf.c" 2
# 1 "../Core/Inc\\Dev_Inf.h" 1
# 14 "../Core/Inc\\Dev_Inf.h"
struct DeviceSectors
{
    unsigned long SectorNum;
    unsigned long SectorSize;
};

struct StorageInfo
{
    char DeviceName[100];
    unsigned short DeviceType;
    unsigned long DeviceStartAddress;
    unsigned long DeviceSize;
    unsigned long PageSize;
    unsigned char EraseValue;
    struct DeviceSectors sectors[10];
};
# 2 "../Core/Src/Dev_Inf.c" 2





struct StorageInfo const StorageInfo = {

    "STM32H750XB_V1.0",
    3,
    0x90000000,
    0x02000000,
    0x0100,
    0xFF,

    {{0x00000200, 0x00010000,},
    {0x00000000, 0x00000000,}}
};
