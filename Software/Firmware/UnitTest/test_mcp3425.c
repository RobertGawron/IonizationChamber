#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h>
#include <cmocka.h>
#include <stdint.h>

// Mocks
#include "system_mock.h"

// Include production code
#include "mcp3425.h"
#include "stm8s_i2c.h"

// =============================================================================
// TEST CONFIGURATION
// =============================================================================
/**
 * @def I2C_SLAVE_ADDRESS
 * @brief I2C slave address for MCP3425 (shifted for 7-bit addressing)
 */
#define I2C_SLAVE_ADDRESS (0x68u << 1)

/**
 * @def MCP3425_CONFIGURATION
 * @brief Default configuration value for MCP3425
 */
#define MCP3425_CONFIGURATION (0x88)

/**
 * @def I2C_MASTER_ADDRESS
 * @brief I2C master address for testing
 */
#define I2C_MASTER_ADDRESS 0x10

// =============================================================================
// MOCK STATE TRACKING
// =============================================================================
/**
 * @var i2c_bus_busy
 * @brief Tracks I2C bus busy status
 */
static bool i2c_bus_busy = FALSE;

/**
 * @var i2c_last_sent_data
 * @brief Stores the last byte sent via I2C
 */
static uint8_t i2c_last_sent_data = 0;

/**
 * @var i2c_receive_data
 * @brief Buffer for simulated I2C receive data
 */
static uint8_t i2c_receive_data[8] = {0};

/**
 * @var i2c_receive_index
 * @brief Index for reading from receive buffer
 */
static uint8_t i2c_receive_index = 0;

/**
 * @var i2c_event_status
 * @brief Simulates I2C event status register
 */
static uint8_t i2c_event_status = 0;

// =============================================================================
// MOCK FUNCTION IMPLEMENTATIONS
// =============================================================================
/**
 * @brief Mock implementation of GPIO_Init
 *
 * Stub function to satisfy linker requirements.
 *
 * @param GPIOx GPIO port pointer
 * @param GPIO_Pin Pin selection
 * @param GPIO_Mode Pin mode configuration
 */
void GPIO_Init(
    GPIO_TypeDef *    GPIOx,
    GPIO_Pin_TypeDef  GPIO_Pin,
    GPIO_Mode_TypeDef GPIO_Mode
    )
{
    (void)GPIOx;
    (void)GPIO_Pin;
    (void)GPIO_Mode;
}

/**
 * @brief Mock implementation of I2C_DeInit
 *
 * Resets all I2C mock state variables to default values.
 */
void I2C_DeInit(
    void
    )
{
    i2c_bus_busy = FALSE;
    i2c_last_sent_data = 0;
    i2c_receive_index = 0;
    i2c_event_status = 0;
}

/**
 * @brief Mock implementation of I2C_Init
 *
 * Verifies I2C initialization parameters.
 *
 * @param OutputClockFrequencyHz Desired I2C clock frequency
 * @param OwnAddress Master device address
 * @param I2C_DutyCycle I2C duty cycle mode
 * @param Ack Acknowledge enable/disable
 * @param AddMode Addressing mode
 * @param InputClockFrequencyMHz Input clock frequency in MHz
 */
void I2C_Init(
    uint32_t              OutputClockFrequencyHz,
    uint16_t              OwnAddress,
    I2C_DutyCycle_TypeDef I2C_DutyCycle,
    I2C_Ack_TypeDef       Ack,
    I2C_AddMode_TypeDef   AddMode,
    uint8_t               InputClockFrequencyMHz
    )
{
    check_expected(OutputClockFrequencyHz);
    check_expected(OwnAddress);
    check_expected(I2C_DutyCycle);
    check_expected(Ack);
    check_expected(AddMode);
    check_expected(InputClockFrequencyMHz);
}

/**
 * @brief Mock implementation of I2C_Cmd
 *
 * Verifies I2C enable/disable commands.
 *
 * @param NewState ENABLE or DISABLE command
 */
void I2C_Cmd(
    FunctionalState NewState
    )
{
    check_expected(NewState);
}

/**
 * @brief Mock implementation of I2C_GenerateSTART
 *
 * Simulates START condition generation and updates bus state.
 *
 * @param NewState ENABLE to generate START condition
 */
void I2C_GenerateSTART(
    FunctionalState NewState
    )
{
    if(NewState == ENABLE)
    {
        i2c_event_status |= I2C_EVENT_MASTER_MODE_SELECT;
        i2c_bus_busy = TRUE;
    }
}

/**
 * @brief Mock implementation of I2C_CheckEvent
 *
 * Simulates I2C event status checking.
 *
 * @param I2C_Event Event to check
 * @return ErrorStatus SUCCESS if event occurred, ERROR otherwise
 */
ErrorStatus I2C_CheckEvent(
    I2C_Event_TypeDef I2C_Event
    )
{
    return (i2c_event_status & I2C_Event) ? SUCCESS : ERROR;
}

/**
 * @brief Mock implementation of I2C_Send7bitAddress
 *
 * Verifies address transmission and simulates address ACK event.
 *
 * @param Address Slave address to send
 * @param Direction Transmission direction (TX/RX)
 */
void I2C_Send7bitAddress(
    uint8_t               Address,
    I2C_Direction_TypeDef Direction
    )
{
    check_expected(Address);
    check_expected(Direction);

    if(Direction == I2C_DIRECTION_TX)
    {
        i2c_event_status |= I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED;
    }
    else
    {
        i2c_event_status |= I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED;
    }
}

/**
 * @brief Mock implementation of I2C_SendData
 *
 * Stores sent data and simulates byte transmission event.
 *
 * @param Data Byte to send
 */
void I2C_SendData(
    uint8_t Data
    )
{
    i2c_last_sent_data = Data;
    i2c_event_status |= I2C_EVENT_MASTER_BYTE_TRANSMITTED;
    check_expected(Data);
}

/**
 * @brief Mock implementation of I2C_GenerateSTOP
 *
 * Simulates STOP condition generation and resets bus state.
 *
 * @param NewState ENABLE to generate STOP condition
 */
void I2C_GenerateSTOP(
    FunctionalState NewState
    )
{
    if(NewState == ENABLE)
    {
        i2c_bus_busy = FALSE;
        i2c_event_status = 0;
    }
}

/**
 * @brief Mock implementation of I2C_GetFlagStatus
 *
 * Simulates I2C flag status checking.
 *
 * @param I2C_Flag Flag to check
 * @return FlagStatus SET if flag is set, RESET otherwise
 */
FlagStatus I2C_GetFlagStatus(
    I2C_Flag_TypeDef I2C_Flag
    )
{
    if(I2C_Flag == I2C_FLAG_BUSBUSY)
    {
        return i2c_bus_busy ? SET : RESET;
    }
    return RESET;
}

/**
 * @brief Mock implementation of I2C_ReceiveData
 *
 * Simulates data reception from I2C bus.
 *
 * @return uint8_t Received data byte
 */
uint8_t I2C_ReceiveData(
    void
    )
{
    if(i2c_receive_index < sizeof(i2c_receive_data))
    {
        return i2c_receive_data[i2c_receive_index++];
    }
    return 0;
}

/**
 * @brief Mock implementation of I2C_AcknowledgeConfig
 *
 * Stub function to satisfy linker requirements.
 *
 * @param Ack ACK configuration
 */
void I2C_AcknowledgeConfig(
    I2C_Ack_TypeDef Ack
    )
{
    (void)Ack;
}

/**
 * @brief Mock implementation of CLK_GetClockFreq
 *
 * Simulates clock frequency retrieval.
 *
 * @return uint32_t Current clock frequency
 */
uint32_t CLK_GetClockFreq(
    void
    )
{
    return (uint32_t)mock();     // Use mock() to return expected value
}

// =============================================================================
// TEST CASES
// =============================================================================
/**
 * @brief Tests MCP3425 initialization sequence
 *
 * Verifies that the MCP3425 initialization:
 * 1. Retrieves the correct system clock frequency
 * 2. Configures I2C peripheral with correct parameters:
 *    - 100kHz output clock
 *    - 7-bit addressing mode
 *    - Standard duty cycle
 *    - Acknowledge enabled
 * 3. Enables the I2C peripheral
 *
 * @param state CMocka state object (unused)
 */
static void test_Init_ConfiguresGPIOAndI2C(
    void **state
    )
{
    (void)state;

    // 1. Set clock frequency expectation
    will_return(CLK_GetClockFreq, 16000000);     // 16MHz clock

    // 2. Set I2C_Init expectations
    expect_value(I2C_Init, OutputClockFrequencyHz, 100000);
    expect_value(I2C_Init, OwnAddress, I2C_MASTER_ADDRESS);
    expect_value(I2C_Init, I2C_DutyCycle, I2C_DUTYCYCLE_2);
    expect_value(I2C_Init, Ack, I2C_ACK_CURR);
    expect_value(I2C_Init, AddMode, I2C_ADDMODE_7BIT);
    expect_value(I2C_Init, InputClockFrequencyMHz, 16);     // 16MHz / 1,000,000

    // 3. Set I2C_Cmd expectation
    expect_value(I2C_Cmd, NewState, ENABLE);

    // Execute function under test
    mcp3425_init();
}

// =============================================================================
// TEST RUNNER
// =============================================================================
/**
 * @brief Test runner entry point
 *
 * Executes the MCP3425 initialization test:
 * 1. Initializes the CMocka test environment
 * 2. Runs the I2C configuration test
 *
 * @return int Number of failed tests (0 if all pass)
 */
int main(
    void
    )
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_Init_ConfiguresGPIOAndI2C)
    };

    return cmocka_run_group_tests(tests, NULL, NULL);
}
