#ifndef __DUAL_W25Q256JV_H
#define __DUAL_W25Q256JV_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif


/**
 * @brief chip mode definition
 */
#define W25QXX_MODE_SPI		0
#define W25QXX_MODE_QPI		1

/**
 * @brief return mode
 */
#define QSPI_OK 	0
#define QSPI_ERROR	(-1)

#define QSPI_TIMEOUT	(10000U)

/**
 * @brief chip command definition
 */
#define W25QXX_CMD_WRITE_ENABLE                      0x06        /**< write enable */
#define W25QXX_CMD_VOLATILE_SR_WRITE_ENABLE          0x50        /**< sr write enable */
#define W25QXX_CMD_WRITE_DISABLE                     0x04        /**< write disable */
#define W25QXX_CMD_RELEASE_POWER_DOWN                0xAB        /**< release power down */
#define W25QXX_CMD_READ_MANUFACTURER                 0x90        /**< manufacturer */
#define W25QXX_CMD_JEDEC_ID                          0x9F        /**< jedec id */
#define W25QXX_CMD_READ_UNIQUE_ID                    0x4B        /**< read unique id */
#define W25QXX_CMD_READ								 0x03		 /**< read */
#define W25QXX_CMD_FAST_READ                         0x0B        /**< fast read */
#define W25QXX_CMD_PAGE_PROGRAM                      0x02        /**< page program */
#define W25QXX_CMD_SECTOR_ERASE_4K                   0x20        /**< sector erase */
#define W25QXX_CMD_BLOCK_ERASE_32K                   0x52        /**< block erase */
#define W25QXX_CMD_BLOCK_ERASE_64K                   0xD8        /**< block erase */
#define W25QXX_CMD_CHIP_ERASE                        0xC7        /**< chip erase, 0x60 */
#define W25QXX_CMD_READ_STATUS_REG1                  0x05        /**< read status register-1 */
#define W25QXX_CMD_READ_STATUS_REG2                  0x35        /**< read status register-2 */
#define W25QXX_CMD_READ_STATUS_REG3                  0x15        /**< read status register-3 */
#define W25QXX_CMD_WRITE_STATUS_REG1                 0x01        /**< write status register-1 */
#define W25QXX_CMD_WRITE_STATUS_REG2                 0x31        /**< write status register-2 */
#define W25QXX_CMD_WRITE_STATUS_REG3                 0x11        /**< write status register-3 */
#define W25QXX_CMD_SFDP_REGISTER					 0x5A		 /**< read sfdp */
#define W25QXX_CMD_ERASE_SECURITY_REGISTER			 0x44		 /**< erase security register */
#define W25QXX_CMD_PROGRAM_SECURITY_REGISTER		 0x42		 /**< program security register */
#define W25QXX_CMD_READ_SECURITY_REGISTER		 	 0x48		 /**< read security register */
#define W25QXX_CMD_GLOBAL_BLOCK_SECTOR_LOCK          0x7E        /**< global block lock */
#define W25QXX_CMD_GLOBAL_BLOCK_SECTOR_UNLOCK        0x98        /**< global block unlock */
#define W25QXX_CMD_READ_BLOCK_LOCK					 0x3D
#define W25QXX_CMD_INDIVIDUAL_BLOCK_LOCK			 0x36
#define W25QXX_CMD_INDIVIDUAL_BLOCK_UNLOCK			 0x39
#define W25QXX_CMD_ERASE_PROGRAM_SUSPEND             0x75        /**< erase suspend */
#define W25QXX_CMD_ERASE_PROGRAM_RESUME              0x7A        /**< erase resume */
#define W25QXX_CMD_POWER_DOWN                        0xB9        /**< power down */
#define W25QXX_CMD_ENTER_4_BYTES_ADDRESS_MODE		 0xB7
#define W25QXX_CMD_EXIT_4_BYTES_ADDRESS_MODE		 0xE9
#define W25QXX_CMD_ENABLE_RESET                      0x66        /**< enable reset */
#define W25QXX_CMD_RESET_DEVICE                      0x99        /**< reset device */

#define W25QXX_CMD_FAST_READ_DUAL_OUTPUT			 0x3B
#define W25QXX_CMD_READ_MANUFACTURER_DUAL_IO         0x92        /**< manufacturer */
#define W25QXX_CMD_FAST_READ_DUAL_IO			 	 0xBB
#define W25QXX_CMD_QUAD_INPUT_PAGE_PROGRAM			 0x32
#define W25QXX_CMD_FAST_READ_QUAD_OUTPUT			 0x6B
#define W25QXX_CMD_FAST_READ_QUAD_IO			 	 0xEB


/**
 * @brief w25qxx interface enumeration definition
 */
typedef enum
{
    W25QXX_INTERFACE_SPI  = 0x00,        	/**< spi dual quad spi interface */
    W25QXX_INTERFACE_QPI  = 0x01,        	/**< qpi interface */
} w25qxx_interface_t;

/**
 * @brief w25qxx address mode enumeration definition
 */
typedef enum
{
    W25QXX_ADDRESS_MODE_3_BYTE = 0x00,        /**< 3 byte mode */
    W25QXX_ADDRESS_MODE_4_BYTE = 0x01,        /**< 4 byte mode */
} w25qxx_address_mode_t;

int w25qxx_init(void);

int w25qxx_reset(void);
int w25qxx_write_enable(void);
int w25qxx_write_enable_for_volatile_status_reg(void);
int w25qxx_read_status_reg(uint8_t reg, uint16_t *status);
int w25qxx_write_status_reg(uint8_t reg, uint16_t status);
int w25qxx_8k_sector_erase(uint32_t addr);
int w25qxx_page_program(uint32_t addr, uint8_t *data, uint32_t len);
int w25qxx_memorymapped(void);
int w25qxx_write(uint32_t addr, uint8_t *data, uint32_t len);
	
#ifdef __cplusplus
}
#endif

#endif /* __DUAL_W25Q256JV_H */
