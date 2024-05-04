

#include <string.h>
#include <stdint.h>

#include "quadspi.h"
#include "w25q64jvx.h"


static int QSPI_W25Q64JV_AutoPollingMemReady(uint32_t timeout)
{
  QSPI_CommandTypeDef sCmd;
  QSPI_AutoPollingTypeDef sConf;
  memset(&sCmd, 0, sizeof(sCmd));
  memset(&sConf, 0, sizeof(sConf));

  sCmd.InstructionMode = QSPI_INSTRUCTION_1_LINE;
  sCmd.Instruction = W25Q64JV_STATUS_REG1;

  sCmd.DataMode = QSPI_DATA_1_LINE;
  sCmd.DummyCycles = 0;

  sConf.Match = 0x0000;
  sConf.Mask = 0x0101;
  sConf.MatchMode = QSPI_MATCH_MODE_AND;
  sConf.StatusBytesSize = 2;
  sConf.Interval = 0x10;
  sConf.AutomaticStop = QSPI_AUTOMATIC_STOP_ENABLE;

  if (HAL_QSPI_AutoPolling(&hqspi, &sCmd, &sConf, timeout) != HAL_OK) return QSPI_ERROR;

  return QSPI_OK;
}

int QSPI_W25Q64JV_DeviceID(uint8_t *v)
{
  QSPI_CommandTypeDef sCmd;
  memset(&sCmd, 0, sizeof(sCmd));

  sCmd.InstructionMode = QSPI_INSTRUCTION_1_LINE;
  sCmd.Instruction = W25Q64JV_DEVICE_ID;

  sCmd.AddressMode = QSPI_ADDRESS_1_LINE;
  sCmd.AddressSize = QSPI_ADDRESS_24_BITS;
  sCmd.Address = 0;

  sCmd.DataMode = QSPI_DATA_1_LINE;
  sCmd.DummyCycles = 0;
  sCmd.NbData = 4;

  if (HAL_QSPI_Command(&hqspi, &sCmd, HAL_MAX_DELAY) != HAL_OK) return QSPI_ERROR;
  if (HAL_QSPI_Receive(&hqspi, (uint8_t *)v, HAL_MAX_DELAY) != HAL_OK) return QSPI_ERROR;

  return QSPI_OK;
}

int QSPI_W25Q64JV_WriteEnable(void)
{
  QSPI_CommandTypeDef sCmd;
  QSPI_AutoPollingTypeDef sConf;
  memset(&sCmd, 0, sizeof(sCmd));
  memset(&sConf, 0, sizeof(sConf));

  sCmd.InstructionMode = QSPI_INSTRUCTION_1_LINE;
  sCmd.Instruction = W25Q64JV_WRITE_ENABLE;

  if (HAL_QSPI_Command(&hqspi, &sCmd, HAL_MAX_DELAY) != HAL_OK) return QSPI_ERROR;

  /* Configure automatic polling mode to wait for write enabling */
  sCmd.InstructionMode = QSPI_INSTRUCTION_1_LINE;
  sCmd.Instruction = W25Q64JV_STATUS_REG1;

  sCmd.DataMode = QSPI_DATA_1_LINE;
  sCmd.DummyCycles = 0;

  sConf.Match = 0x0202;
  sConf.Mask = 0x0202;
  sConf.MatchMode = QSPI_MATCH_MODE_AND;
  sConf.StatusBytesSize = 2;
  sConf.Interval = 0x10;
  sConf.AutomaticStop = QSPI_AUTOMATIC_STOP_ENABLE;

  if (HAL_QSPI_AutoPolling(&hqspi, &sCmd, &sConf, HAL_MAX_DELAY) != HAL_OK) return QSPI_ERROR;

  return QSPI_OK;
}

int QSPI_W25Q64JV_Reset(void)
{
  QSPI_CommandTypeDef sCmd;
  memset(&sCmd, 0, sizeof(sCmd));

  sCmd.InstructionMode = QSPI_INSTRUCTION_1_LINE;
  sCmd.Instruction = W25Q64JV_ENABLE_RESET;
  if (HAL_QSPI_Command(&hqspi, &sCmd, 0) != HAL_OK) return QSPI_ERROR;

  sCmd.InstructionMode = QSPI_INSTRUCTION_1_LINE;
  sCmd.Instruction = W25Q64JV_RESET_DEVICE;
  if (HAL_QSPI_Command(&hqspi, &sCmd, 0) != HAL_OK) return QSPI_ERROR;

  if (QSPI_W25Q64JV_AutoPollingMemReady(HAL_MAX_DELAY) != QSPI_OK) return QSPI_ERROR;

  return QSPI_OK;
}

int QSPI_W25Q64JV_IDNumber(uint8_t *v)
{
  QSPI_CommandTypeDef sCmd;
  memset(&sCmd, 0, sizeof(sCmd));

  sCmd.InstructionMode = QSPI_INSTRUCTION_1_LINE;
  sCmd.Instruction = W25Q64JV_ID_NUMBER;

  sCmd.DataMode = QSPI_DATA_1_LINE;
  sCmd.DummyCycles = 0;
  sCmd.NbData = 24;

  if (HAL_QSPI_Command(&hqspi, &sCmd, HAL_MAX_DELAY) != HAL_OK) return QSPI_ERROR;

  if (HAL_QSPI_Receive(&hqspi, (uint8_t *)v, HAL_MAX_DELAY) != HAL_OK) return QSPI_ERROR;

  return QSPI_OK;
}

int QSPI_W25Q64JV_Read(uint8_t *pData, uint32_t ReadAddr, uint32_t Size)
{
  QSPI_CommandTypeDef sCmd;
  memset(&sCmd, 0, sizeof(sCmd));

  sCmd.InstructionMode = QSPI_INSTRUCTION_1_LINE;
  sCmd.Instruction = W25Q64JV_INPUT_FAST_READ;

  sCmd.AddressMode = QSPI_ADDRESS_4_LINES;
  sCmd.AddressSize = QSPI_ADDRESS_24_BITS;
  sCmd.Address = ReadAddr;

  //sCmd.AlternateByteMode = QSPI_ALTERNATE_BYTES_4_LINES;
  //sCmd.AlternateBytesSize = QSPI_ALTERNATE_BYTES_8_BITS;
  //sCmd.AlternateBytes = 0;

  sCmd.DataMode = QSPI_DATA_4_LINES;
  sCmd.DummyCycles = 6;
  sCmd.NbData = Size;

  if (HAL_QSPI_Command(&hqspi, &sCmd, HAL_MAX_DELAY) != HAL_OK) return QSPI_ERROR;
  if (HAL_QSPI_Receive(&hqspi, pData, HAL_MAX_DELAY) != HAL_OK) return QSPI_ERROR;
  if (QSPI_W25Q64JV_AutoPollingMemReady(HAL_MAX_DELAY) != QSPI_OK) return QSPI_ERROR;

  return QSPI_OK;
}

int QSPI_W25Q64JV_EraseBlock_32Kx2(uint32_t BlockAddress)
{
  QSPI_CommandTypeDef sCmd;
  memset(&sCmd, 0, sizeof(sCmd));

  if (QSPI_W25Q64JV_WriteEnable() != QSPI_OK) return QSPI_ERROR;

  sCmd.InstructionMode = QSPI_INSTRUCTION_1_LINE;
  sCmd.Instruction = W25Q64JV_ERASE_Block32K;

  sCmd.AddressMode = QSPI_ADDRESS_1_LINE;
  sCmd.AddressSize = QSPI_ADDRESS_24_BITS;
  sCmd.Address = BlockAddress;

  if (HAL_QSPI_Command(&hqspi, &sCmd, HAL_MAX_DELAY) != HAL_OK) return QSPI_ERROR;
  if (QSPI_W25Q64JV_AutoPollingMemReady(HAL_MAX_DELAY) != QSPI_OK) return QSPI_ERROR;

  return QSPI_OK;
}

int QSPI_W25Q64JV_EraseChip(void)
{
  QSPI_CommandTypeDef sCmd;
  memset(&sCmd, 0, sizeof(sCmd));

  if (QSPI_W25Q64JV_WriteEnable() != QSPI_OK) return QSPI_ERROR;

  sCmd.InstructionMode = QSPI_INSTRUCTION_1_LINE;
  sCmd.Instruction = W25Q64JV_ERASE_CHIP;

  if (HAL_QSPI_Command(&hqspi, &sCmd, HAL_MAX_DELAY) != HAL_OK) return QSPI_ERROR;
  if (QSPI_W25Q64JV_AutoPollingMemReady(HAL_MAX_DELAY) != QSPI_OK) return QSPI_ERROR;

  return QSPI_OK;
}

int QSPI_W25Q64JV_PageProgram(uint8_t *pData, uint32_t ReadAddr, uint32_t Size)
{
  QSPI_CommandTypeDef sCmd;
  memset(&sCmd, 0, sizeof(sCmd));

  if (QSPI_W25Q64JV_WriteEnable() != QSPI_OK) return QSPI_ERROR;

  sCmd.InstructionMode = QSPI_INSTRUCTION_1_LINE;
  sCmd.Instruction = W25Q64JV_PAGE_PROGRAM;

  sCmd.AddressMode = QSPI_ADDRESS_1_LINE;
  sCmd.AddressSize = QSPI_ADDRESS_24_BITS;
  sCmd.Address = ReadAddr;

  sCmd.DataMode = QSPI_DATA_1_LINE;
  sCmd.DummyCycles = 0;
  sCmd.NbData = Size;

  if (HAL_QSPI_Command(&hqspi, &sCmd, HAL_MAX_DELAY) != HAL_OK) return QSPI_ERROR;
  if (HAL_QSPI_Transmit(&hqspi, pData, HAL_MAX_DELAY) != HAL_OK) return QSPI_ERROR;
  if (QSPI_W25Q64JV_AutoPollingMemReady(HAL_MAX_DELAY) != QSPI_OK) return QSPI_ERROR;

  return QSPI_OK;
}

int QSPI_W25Q64JV_Write(uint8_t *pData, uint32_t WriteAddr, uint32_t Size)
{
  int ret = QSPI_OK;
  uint32_t end_addr, current_size, current_addr;
  uint8_t *write_data;

  /* Calculation of the size between the write address and the end of the page */
  current_size = W25Q64JV_PAGE_SIZE - (WriteAddr % W25Q64JV_PAGE_SIZE);

  /* Check if the size of the data is less than the remaining place in the page */
  if (current_size > Size)
  {
    current_size = Size;
  }

  /* Initialize the address variables */
  current_addr = WriteAddr;
  end_addr = WriteAddr + Size;
  write_data = pData;

  /* Perform the write page by page */
  do
  {
    /* Issue page program command */
    if (QSPI_W25Q64JV_PageProgram(write_data, current_addr, current_size) != QSPI_OK)
    {
        ret = QSPI_ERROR;
    }
    else
    {
      /* Update the address and size variables for next page programming */
      current_addr += current_size;
      write_data += current_size;
      current_size = ((current_addr + W25Q64JV_PAGE_SIZE) > end_addr) ? (end_addr - current_addr) : W25Q64JV_PAGE_SIZE;
    }
  } while ((current_addr < end_addr) && (ret == QSPI_OK));

  /* Return BSP status */
  return ret;
}

int QSPI_W25Q64JV_EnableMemoryMappedMode(void)
{
  QSPI_CommandTypeDef sCmd;
  QSPI_MemoryMappedTypeDef sMapCfg;
  memset(&sCmd, 0, sizeof(sCmd));
  memset(&sMapCfg, 0, sizeof(sMapCfg));

  sCmd.InstructionMode = QSPI_INSTRUCTION_1_LINE;
  sCmd.Instruction = W25Q64JV_INPUT_FAST_READ;

  sCmd.AddressMode = QSPI_ADDRESS_4_LINES;
  sCmd.AddressSize = QSPI_ADDRESS_24_BITS;
  sCmd.Address = 0;

  //sCmd.AlternateByteMode = QSPI_ALTERNATE_BYTES_4_LINES;
  //sCmd.AlternateBytesSize = QSPI_ALTERNATE_BYTES_8_BITS;
  //sCmd.AlternateBytes = 0;

  sCmd.DataMode = QSPI_DATA_4_LINES;
  sCmd.DummyCycles = 6;
  sCmd.NbData = 0;

  sMapCfg.TimeOutActivation = QSPI_TIMEOUT_COUNTER_DISABLE;
  if (HAL_QSPI_MemoryMapped(&hqspi, &sCmd, &sMapCfg) != HAL_OK) return QSPI_ERROR;

  return QSPI_OK;
}
