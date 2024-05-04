
#ifndef __W25Q64JV_H__
#define __W25Q64JV_H__

#define W25Q64JV_FLASH_SIZE (8 * 1024 * 1024 * 2)
#define W25Q64JV_BLOCK_SIZE (32 * 1024 * 2)
#define W25Q64JV_SECTOR_SIZE (4096 * 2)
#define W25Q64JV_PAGE_SIZE (256 * 2)

#define QSPI_ERROR (-1)
#define QSPI_OK (0)

#define W25Q64JV_WRITE_ENABLE (0x06)
#define W25Q64JV_INPUT_FAST_READ (0xeb)
#define W25Q64JV_PAGE_PROGRAM (0x02)
#define W25Q64JV_STATUS_REG1 (0x05)
#define W25Q64JV_ENABLE_RESET (0x66)
#define W25Q64JV_RESET_DEVICE (0x99)
#define W25Q64JV_DEVICE_ID (0x90)
#define W25Q64JV_ID_NUMBER (0x4b)
#define W25Q64JV_ERASE_SECTOR (0x20)
#define W25Q64JV_ERASE_Block32K (0x52)
#define W25Q64JV_ERASE_Block64K (0xD8)
#define W25Q64JV_ERASE_CHIP (0xc7)

extern int QSPI_W25Q64JV_WriteEnable(void);
extern int QSPI_W25Q64JV_Reset(void);
extern int QSPI_W25Q64JV_DeviceID(uint8_t *v);
extern int QSPI_W25Q64JV_IDNumber(uint8_t *v);
extern int QSPI_W25Q64JV_EraseBlock_32Kx2(uint32_t BlockAddress);
extern int QSPI_W25Q64JV_EraseChip(void);
extern int QSPI_W25Q64JV_Read(uint8_t *pData, uint32_t ReadAddr, uint32_t Size);
extern int QSPI_W25Q64JV_PageProgram(uint8_t *pData, uint32_t ReadAddr, uint32_t Size);
extern int QSPI_W25Q64JV_Write(uint8_t *pData, uint32_t WriteAddr, uint32_t Size);
extern int QSPI_W25Q64JV_EnableMemoryMappedMode(void);

#endif
