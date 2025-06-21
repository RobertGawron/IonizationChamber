#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h>
#include <cmocka.h>
#include <stdint.h>

// Mocks
#include "SystemMock.h"

#include "stm8s_it.h"
#include "stm8s.h"
#include "VoltageSensorActualValue.h"
#include "stm8s_i2c.h"

// =============================================================================
// MOCK CONFIGURATION
// =============================================================================
#define I2C_SLAVE_ADDRESS (0x68u << 1)
#define MCP3425_CONFIGURATION (0x88) // Default configuration value

// Simulate I2C event flags
#define I2C_EVENT_MASTER_MODE_SELECT (0x0001)
#define I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED (0x0082)
#define I2C_EVENT_MASTER_BYTE_TRANSMITTED (0x0084)
#define I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED (0x0002)
#define I2C_EVENT_MASTER_BYTE_RECEIVED (0x0040)
#define I2C_FLAG_BUSBUSY (0x0002)

#define I2C_MASTER_ADDRESS 0x10

// Mock I2C state tracking
static bool i2c_bus_busy = FALSE;
static uint8_t i2c_last_sent_data = 0;
static uint8_t i2c_receive_data[8] = {0};
static uint8_t i2c_receive_index = 0;
static uint8_t i2c_event_status = 0;

// =============================================================================
// UPDATED MOCK FUNCTIONS (MATCHING SIGNATURES)
// =============================================================================
void GPIO_Init(GPIO_TypeDef *GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
{
    (void)GPIOx;
    (void)GPIO_Pin;
    (void)GPIO_Mode;
}

void I2C_DeInit(void)
{
    i2c_bus_busy = FALSE;
    i2c_last_sent_data = 0;
    i2c_receive_index = 0;
    i2c_event_status = 0;
}

void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress,
              I2C_DutyCycle_TypeDef I2C_DutyCycle, I2C_Ack_TypeDef Ack,
              I2C_AddMode_TypeDef AddMode, uint8_t InputClockFrequencyMHz)
{
    check_expected(OutputClockFrequencyHz);
    check_expected(OwnAddress);
    check_expected(I2C_DutyCycle);
    check_expected(Ack);
    check_expected(AddMode);
    check_expected(InputClockFrequencyMHz);
}

void I2C_Cmd(FunctionalState NewState)
{
    check_expected(NewState);
}

void I2C_GenerateSTART(FunctionalState NewState)
{
    if (NewState == ENABLE)
    {
        i2c_event_status |= I2C_EVENT_MASTER_MODE_SELECT;
        i2c_bus_busy = TRUE;
    }
}

ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
{
    return (i2c_event_status & I2C_Event) ? 1 : 0;
}

void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
{
    check_expected(Address);
    check_expected(Direction);

    if (Direction == I2C_DIRECTION_TX)
    {
        i2c_event_status |= I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED;
    }
    else
    {
        i2c_event_status |= I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED;
    }
}

void I2C_SendData(uint8_t Data)
{
    i2c_last_sent_data = Data;
    i2c_event_status |= I2C_EVENT_MASTER_BYTE_TRANSMITTED;
    check_expected(Data);
}

void I2C_GenerateSTOP(FunctionalState NewState)
{
    if (NewState == ENABLE)
    {
        i2c_bus_busy = FALSE;
        i2c_event_status = 0;
    }
}

FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
{
    if (I2C_Flag == I2C_FLAG_BUSBUSY)
    {
        return i2c_bus_busy ? 1 : 0;
    }
    return 0;
}

uint8_t I2C_ReceiveData(void)
{
    if (i2c_receive_index < sizeof(i2c_receive_data))
    {
        return i2c_receive_data[i2c_receive_index++];
    }
    return 0;
}

void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
{
    (void)Ack;
}

uint32_t CLK_GetClockFreq(void)
{
    return (uint32_t)mock(); // Use mock() to return expected value
}

// =============================================================================
// TEST CASES (UPDATED)
// =============================================================================
static void test_Init_ConfiguresGPIOAndI2C(void **state)
{
    (void)state;

    // Set clock frequency expectation
    will_return(CLK_GetClockFreq, 16000000); // 16MHz clock

    // Set I2C_Init expectations
    expect_value(I2C_Init, OutputClockFrequencyHz, 100000);
    expect_value(I2C_Init, OwnAddress, I2C_MASTER_ADDRESS);
    expect_value(I2C_Init, I2C_DutyCycle, I2C_DUTYCYCLE_2);
    expect_value(I2C_Init, Ack, I2C_ACK_CURR);
    expect_value(I2C_Init, AddMode, I2C_ADDMODE_7BIT);
    expect_value(I2C_Init, InputClockFrequencyMHz, 16); // 16MHz / 1,000,000

    // Set I2C_Cmd expectation
    expect_value(I2C_Cmd, NewState, ENABLE);

    VoltageSensorActualValue_Init();
}
#if 0
static void test_GetConfiguration_ReturnsCorrectValue(void **state)
{
    (void)state;
    assert_int_equal(VoltageSensorActualValue_GetConfiguration(), MCP3425_CONFIGURATION);
}

static void test_MeasureValue_SuccessfulRead_ReturnsTrueAndValue(void **state)
{
    (void)state;

    // Setup mock I2C receive data
    i2c_receive_data[0] = 0x12; // MSB
    i2c_receive_data[1] = 0x34; // LSB

    // Expect configuration write
    expect_value(I2C_SendData, Data, MCP3425_CONFIGURATION);

    VoltageSensorActualValue_MeasurementData_t measurement = 0;
    bool result = VoltageSensorActualValue_MeasureValue(&measurement);

    assert_true(result);
    assert_int_equal(measurement, 0x1234);
}

static void test_MeasureValue_TimeoutOnStart_ReturnsFalse(void **state)
{
    (void)state;
    i2c_event_status = 0;

    VoltageSensorActualValue_MeasurementData_t measurement = 0;
    bool result = VoltageSensorActualValue_MeasureValue(&measurement);

    assert_false(result);
}

static void test_MeasureValue_TimeoutOnAddress_ReturnsFalse(void **state)
{
    (void)state;
    i2c_event_status = I2C_EVENT_MASTER_MODE_SELECT;

    VoltageSensorActualValue_MeasurementData_t measurement = 0;
    bool result = VoltageSensorActualValue_MeasureValue(&measurement);

    assert_false(result);
}

static void test_MeasureValue_TimeoutOnData_ReturnsFalse(void **state)
{
    (void)state;
    i2c_event_status = I2C_EVENT_MASTER_MODE_SELECT |
                       I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED;

    VoltageSensorActualValue_MeasurementData_t measurement = 0;
    bool result = VoltageSensorActualValue_MeasureValue(&measurement);

    assert_false(result);
}
#endif
// =============================================================================
// TEST RUNNER
// =============================================================================
int main(void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_Init_ConfiguresGPIOAndI2C),
#if 0
        cmocka_unit_test(test_GetConfiguration_ReturnsCorrectValue),
        cmocka_unit_test(test_MeasureValue_SuccessfulRead_ReturnsTrueAndValue),
        cmocka_unit_test(test_MeasureValue_TimeoutOnStart_ReturnsFalse),
        cmocka_unit_test(test_MeasureValue_TimeoutOnAddress_ReturnsFalse),
        cmocka_unit_test(test_MeasureValue_TimeoutOnData_ReturnsFalse),
#endif
    };

    return cmocka_run_group_tests(tests, NULL, NULL);
}