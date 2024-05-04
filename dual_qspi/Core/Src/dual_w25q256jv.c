#include <dual_w25q256jv.h>
#include <quadspi.h>
#include <stdio.h>

static w25qxx_interface_t w25qxx_mode = W25QXX_INTERFACE_QPI;


int w25qxx_init(void)
{
	w25qxx_exit_qpi_mode();
	
	w25qxx_reset();
	
	return QSPI_OK;
}

int w25qxx_autopolling_ready(void)
{
    QSPI_CommandTypeDef cmd = {0};
    QSPI_AutoPollingTypeDef config = {0};

    cmd.InstructionMode = QSPI_INSTRUCTION_1_LINE;
    cmd.Instruction = W25QXX_CMD_READ_STATUS_REG1;

    cmd.DataMode = QSPI_DATA_1_LINE;

    config.Mask = 0x0101;
    config.Match = 0x0000;
    config.MatchMode = QSPI_MATCH_MODE_AND;
    config.StatusBytesSize = 2;
    config.Interval = 10;
    config.AutomaticStop = QSPI_AUTOMATIC_STOP_ENABLE;

    if (HAL_QSPI_AutoPolling(&hqspi, &cmd, &config, 10000) != HAL_OK)
    {
        Error_Handler();
    }

    return QSPI_OK;
}

int w25qxx_memorymapped(void)
{
    QSPI_CommandTypeDef cmd = {0};
    QSPI_MemoryMappedTypeDef config = {0};

    w25qxx_autopolling_ready();

    cmd.Instruction = W25QXX_CMD_FAST_READ_QUAD_OUTPUT_WITH_4_BYTES;
    cmd.InstructionMode = QSPI_INSTRUCTION_1_LINE;

    cmd.AddressMode = QSPI_ADDRESS_4_LINES;
    cmd.AddressSize = QSPI_ADDRESS_32_BITS;
    cmd.Address = 0x00;

    cmd.AlternateByteMode = QSPI_ALTERNATE_BYTES_4_LINES;
    cmd.AlternateBytesSize = QSPI_ALTERNATE_BYTES_8_BITS;
    cmd.AlternateBytes = 0xFF;

    cmd.DummyCycles = 4;

    cmd.DataMode =  QSPI_DATA_4_LINES;

    config.TimeOutActivation = QSPI_TIMEOUT_COUNTER_DISABLE;
    config.TimeOutPeriod = 0;

    if (HAL_QSPI_MemoryMapped(&hqspi, &cmd, &config) != HAL_OK)
    {
        Error_Handler();
    }

    return QSPI_OK;
}

int w25qxx_exit_qpi_mode(void)
{
    QSPI_CommandTypeDef cmd = {0};

    cmd.Instruction = W25QXX_CMD_EXIT_QPI_MODE;
    cmd.InstructionMode = QSPI_INSTRUCTION_4_LINES;

	if(HAL_OK == HAL_QSPI_Command(&hqspi, &cmd, 1000))
	{
		return QSPI_OK;
	}
	
	return QSPI_ERROR;
}

int w25qxx_enter_qpi_mode(void)
{
    QSPI_CommandTypeDef cmd = {0};

    cmd.Instruction = W25QXX_CMD_ENTER_QPI_MODE;
    cmd.InstructionMode = QSPI_INSTRUCTION_1_LINE;

	if(HAL_OK == HAL_QSPI_Command(&hqspi, &cmd, 1000))
	{
		return QSPI_OK;
	}
	
	return QSPI_ERROR;
}

int w25qxx_write_enable(void)
{
    QSPI_CommandTypeDef cmd = {0};

    cmd.InstructionMode = QSPI_INSTRUCTION_1_LINE;
    cmd.Instruction = W25QXX_CMD_WRITE_ENABLE;

    if (HAL_OK == HAL_QSPI_Command(&hqspi, &cmd, 1000))
    {
        return HAL_OK;
    }
    else return HAL_ERROR;

    w25qxx_autopolling_ready();

    return 0;
}

int w25qxx_reset(void)
{
	QSPI_CommandTypeDef cmd = {0};
	
	cmd.InstructionMode = QSPI_INSTRUCTION_1_LINE;
	cmd.Instruction = W25QXX_CMD_ENABLE_RESET;

	if(HAL_OK != HAL_QSPI_Command(&hqspi, &cmd, 1000))
	{
		return QSPI_ERROR;
	}
	
	cmd.Instruction = W25QXX_CMD_RESET_DEVICE;
	if(HAL_OK != HAL_QSPI_Command(&hqspi, &cmd, 1000))
	{
		return QSPI_ERROR;
	}
	
	return QSPI_OK;
}

int w25qxx_write_enable_for_volatile_status_reg(void)
{
    QSPI_CommandTypeDef cmd = {0};

    cmd.InstructionMode = QSPI_INSTRUCTION_1_LINE;
    cmd.Instruction = W25QXX_CMD_VOLATILE_SR_WRITE_ENABLE;

    HAL_QSPI_Command(&hqspi, &cmd, 1000);

    return 0;
}

int w25qxx_read_status_reg(uint8_t reg, uint16_t *status)
{
    QSPI_CommandTypeDef cmd = {0};

    cmd.InstructionMode = QSPI_INSTRUCTION_1_LINE;

    switch (reg)
    {
    case 1:
        cmd.Instruction = W25QXX_CMD_READ_STATUS_REG1;
        break;
    case 2:
        cmd.Instruction = W25QXX_CMD_READ_STATUS_REG2;
        break;
    case 3:
        cmd.Instruction = W25QXX_CMD_READ_STATUS_REG3;
        break;
    default:
        cmd.Instruction = W25QXX_CMD_READ_STATUS_REG1;
        break;
    }

    cmd.DataMode = QSPI_DATA_1_LINE;
    cmd.NbData = 2;

    HAL_QSPI_Command(&hqspi, &cmd, 1000);

    uint16_t data = 0;
    HAL_QSPI_Receive(&hqspi, (uint8_t *)&data, 1000);

    *status = data;

    return 0;
}

int w25qxx_write_status_reg(uint8_t reg, uint16_t status)
{
    QSPI_CommandTypeDef cmd = {0};

    cmd.InstructionMode = QSPI_INSTRUCTION_1_LINE;

    switch (reg)
    {
    case 1:
        cmd.Instruction = W25QXX_CMD_WRITE_STATUS_REG1;
        break;
    case 2:
        cmd.Instruction = W25QXX_CMD_WRITE_STATUS_REG2;
        break;
    case 3:
        cmd.Instruction = W25QXX_CMD_WRITE_STATUS_REG3;
        break;
    default:
        cmd.Instruction = W25QXX_CMD_WRITE_STATUS_REG1;
        break;
    }

    cmd.DataMode = QSPI_DATA_1_LINE;
    cmd.NbData = 2;

    HAL_QSPI_Command(&hqspi, &cmd, 1000);

    HAL_QSPI_Transmit(&hqspi, (uint8_t *)&status, 1000);

    w25qxx_autopolling_ready();

    return 0;
}

int w25qxx_8k_sector_erase(uint32_t addr)
{
    QSPI_CommandTypeDef cmd = {0};

    w25qxx_write_enable();

    cmd.Instruction = W25QXX_CMD_4K_SECTOR_WITH_4_BYTES;
    cmd.InstructionMode = QSPI_INSTRUCTION_1_LINE;

    cmd.Address = addr;
    cmd.AddressMode = QSPI_ADDRESS_1_LINE;
    cmd.AddressSize = QSPI_ADDRESS_32_BITS;

	HAL_QSPI_Command(&hqspi, &cmd, 1000);
	
	w25qxx_autopolling_ready();
	
	return 0;
}

int w25qxx_page_program(uint32_t addr, uint8_t *data, uint32_t len)
{
    QSPI_CommandTypeDef cmd = {0};

    w25qxx_write_enable();

    cmd.Instruction = W25QXX_CMD_QUAD_PAGE_PROGRAM_WITH_4_BYTES;
    cmd.InstructionMode = QSPI_INSTRUCTION_1_LINE;

    cmd.Address = addr;
    cmd.AddressMode = QSPI_ADDRESS_1_LINE;
    cmd.AddressSize = QSPI_ADDRESS_32_BITS;

    cmd.DataMode = QSPI_DATA_4_LINES;
    cmd.NbData = len;

    HAL_QSPI_Command(&hqspi, &cmd, 1000);

    HAL_QSPI_Transmit(&hqspi, data, 10000);

    w25qxx_autopolling_ready();

    return 0;
}