#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h> // NOLINT(misc-include-cleaner), needed by <cmocka.h>
#include <cmocka.h>
#include <stdint.h>
#include <string.h>

// Include production header
#include "uart.h"
#include "pinout_conf.h"

#include "stm8s.h"
#include "stm8s_gpio.h"
#include "stm8s_uart1.h"

// =============================================================================
// TEST UTILITIES
// =============================================================================

#define UART_SPEED 9600

#define UART_OUTPUT_SIZE 32
/** @brief Buffer to capture UART output during tests */
static uint8_t uart_output[UART_OUTPUT_SIZE];

/** @brief Current index in the UART output buffer */
static size_t uart_output_index = 0;

/**
 * @brief Resets the UART capture buffer
 *
 * Clears captured UART output and resets the index pointer.
 * Should be called before each write test to ensure clean state.
 */
static void reset_uart_capture(void)
{
    uart_output_index = 0;

    memset(uart_output, 0, sizeof(uart_output));
}

// =============================================================================
// MOCK FUNCTION IMPLEMENTATIONS
// =============================================================================
void GPIO_DeInit(GPIO_TypeDef *GPIOx)
{
    check_expected_ptr(GPIOx);
}

void GPIO_Init(
    GPIO_TypeDef *GPIOx,
    GPIO_Pin_TypeDef GPIO_Pin,
    GPIO_Mode_TypeDef GPIO_Mode)
{
    check_expected_ptr(GPIOx);
    check_expected(GPIO_Pin);
    check_expected(GPIO_Mode);
}

void UART1_DeInit(void)
{
    function_called();
}

void UART1_Init(
    uint32_t BaudRate,
    UART1_WordLength_TypeDef WordLength,
    UART1_StopBits_TypeDef StopBits,
    UART1_Parity_TypeDef Parity,
    UART1_SyncMode_TypeDef SyncMode,
    UART1_Mode_TypeDef Mode)
{
    check_expected(BaudRate);
    check_expected(WordLength);
    check_expected(StopBits);
    check_expected(Parity);
    check_expected(SyncMode);
    check_expected(Mode);
}

void UART1_Cmd(FunctionalState NewState)
{
    check_expected(NewState);
}

void UART1_SendData8(uint8_t Data)
{
    if(uart_output_index < UART_OUTPUT_SIZE)
    {
        uart_output[uart_output_index] = Data;
        uart_output_index++;
    }
}

FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef Flag)
{
    (void)Flag;
    return SET; // Always ready to prevent blocking
}

// =============================================================================
// TEST CASES
// =============================================================================
/**
 * @brief Tests UART hardware initialization
 *
 * Verifies that uart_init() correctly configures:
 * 1. GPIO pins for UART TX and RX
 * 2. UART peripheral with expected parameters
 *
 * @param state CMocka state object (unused)
 */
static void test_Uart_Init_ConfiguresHardware(void **state)
{
    (void)state;

    // 1. Expect TX pin configuration
    expect_value(GPIO_Init, GPIOx, PORT_UART);
    expect_value(GPIO_Init, GPIO_Pin, PIN_TX);
    expect_value(GPIO_Init, GPIO_Mode, GPIO_MODE_OUT_PP_HIGH_FAST);

    // 2. Expect RX pin configuration
    expect_value(GPIO_Init, GPIOx, PORT_UART);
    expect_value(GPIO_Init, GPIO_Pin, PIN_RX);
    expect_value(GPIO_Init, GPIO_Mode, GPIO_MODE_IN_PU_NO_IT);

    // 3. Verify UART parameters
    expect_value(UART1_Init, BaudRate, UART_SPEED);
    expect_value(UART1_Init, WordLength, UART1_WORDLENGTH_8D);
    expect_value(UART1_Init, StopBits, UART1_STOPBITS_1);
    expect_value(UART1_Init, Parity, UART1_PARITY_NO);
    expect_value(UART1_Init, SyncMode, UART1_SYNCMODE_CLOCK_DISABLE);
    expect_value(UART1_Init, Mode, UART1_MODE_TXRX_ENABLE);

    // 4. Verify UART enable
    expect_value(UART1_Cmd, NewState, ENABLE);

    // Execute function under test
    uart_init();
}

/**
 * @brief Tests single byte UART transmission
 *
 * Verifies that uart_write():
 * 1. Sends exactly one byte to UART
 * 2. The byte matches the input value
 *
 * @param state CMocka state object (unused)
 */
static void test_Uart_Write_SendsSingleByte(void **state)
{
    (void)state;
    reset_uart_capture();

    const uint8_t test_data = 0x55;
    const uint8_t expected[] = {test_data};

    uart_write(&test_data, sizeof(test_data));

    assert_int_equal(uart_output_index, sizeof(test_data));
    assert_memory_equal(uart_output, expected, sizeof(expected));
}

/**
 * @brief Tests multi-byte UART transmission
 *
 * Verifies that uart_write():
 * 1. Sends multiple bytes in order
 * 2. All bytes match the input buffer
 *
 * @param state CMocka state object (unused)
 */
static void test_Uart_Write_SendsMultipleBytes(void **state)
{
    (void)state;
    reset_uart_capture();

    const uint8_t test_data[] = {0x01, 0xAA, 0xFF, 0x00};
    uart_write(test_data, sizeof(test_data));

    assert_int_equal(uart_output_index, sizeof(test_data));
    assert_memory_equal(uart_output, test_data, sizeof(test_data));
}

/**
 * @brief Tests full byte range transmission
 *
 * Verifies that uart_write() handles:
 * 1. Minimum value (0x00)
 * 2. Mid-range value (0x7F)
 * 3. Maximum value (0xFF)
 *
 * @param state CMocka state object (unused)
 */
static void test_Uart_Write_HandlesFullRange(void **state)
{
    (void)state;
    reset_uart_capture();

    const uint8_t test_data[] = {0x00, 0x7F, 0xFF};
    uart_write(test_data, sizeof(test_data));

    assert_int_equal(uart_output_index, sizeof(test_data));
    assert_memory_equal(uart_output, test_data, sizeof(test_data));
}

/**
 * @brief Tests empty buffer handling
 *
 * Verifies that uart_write():
 * 1. Handles zero-length buffers safely
 * 2. Doesn't send any data to UART
 *
 * @param state CMocka state object (unused)
 */
static void test_Uart_Write_EmptyBuffer(void **state)
{
    (void)state;
    reset_uart_capture();

    const uint8_t test_data[] = {0xAA};
    uart_write(test_data, 0);

    assert_int_equal(uart_output_index, 0);
}

// =============================================================================
// TEST RUNNER
// =============================================================================
int main(void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_Uart_Init_ConfiguresHardware),
        cmocka_unit_test(test_Uart_Write_SendsSingleByte),
        cmocka_unit_test(test_Uart_Write_SendsMultipleBytes),
        cmocka_unit_test(test_Uart_Write_HandlesFullRange),
        cmocka_unit_test(test_Uart_Write_EmptyBuffer),
    };

    return cmocka_run_group_tests(tests, NULL, NULL);
}
