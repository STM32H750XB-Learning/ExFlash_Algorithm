#ifndef W25Q256JV_H__
#define W25Q256JV_H__

#include <stdint.h>
#include <stdio.h>

#ifdef __cplusplus
extern "C" {
#endif

void W25QXX_ReadSR(uint8_t srx, uint8_t *flash1_dat, uint8_t *flash2_dat);
void W25QXX_WriteSR(uint8_t srx, uint8_t flash1_dat, uint8_t flash2_dat);
void W25QXX_Enter4ByteAddrMode(void);

void W25QXX_Init(void);
void W25QXX_Erase_Chip(void);
void W25QXX_Erase_Sector(uint32_t addr);
void W25QXX_Erase_64KB_Block(uint32_t addr);
void W25QXX_ProgramPage(uint32_t addr, uint8_t *buf, uint16_t size);
void W25QXX_FastRead(uint32_t addr, uint8_t *buf, uint16_t size);

void W25QXX_MemoryMapped(void);

#ifdef __cplusplus
}
#endif

#endif