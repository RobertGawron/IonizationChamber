#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h>
#include <cmocka.h>
#include <stdint.h>
#include <string.h> // For memset and memcmp

// Include production header
#define UART_SPEED 9600

#include "stm8s_gpio.h"
#include "pinout_configuration.h"
#include "logger.h"

// =============================================================================
// TEST UTILITIES
// =============================================================================
/**
 * @var uart_output
 * @brief Buffer to capture UART output during tests
 */
static uint8_t uart_output[32];

/**
 * @var uart_output_index
 * @brief Current index in the UART output buffer
 */
static size_t uart_output_index = 0;

/**
 * @brief Resets the UART capture buffer
 *
 * Clears captured UART output and resets the index pointer.
 * Should be called before each print test to ensure clean state.
 */
static void reset_uart_capture(void)
{
    uart_output_index = 0;

    // memset creates lint warning and we dont have memset_s
    for (size_t i = 0; i < sizeof(uart_output); i++)
    {
        uart_output[i] = 0x00;
    }
}

// =============================================================================
// MOCK FUNCTION IMPLEMENTATIONS
// =============================================================================
/**
 * @brief Mock implementation of GPIO_DeInit
 *
 * Verifies GPIO deinitialization calls.
 *
 * @param GPIOx GPIO port pointer
 */
void GPIO_DeInit(GPIO_TypeDef *GPIOx)
{
    check_expected_ptr(GPIOx);
}

/**
 * @brief Mock implementation of GPIO_Init
 *
 * Verifies GPIO initialization parameters.
 *
 * @param GPIOx GPIO port pointer
 * @param GPIO_Pin Pin selection
 * @param GPIO_Mode Pin mode configuration
 */
void GPIO_Init(GPIO_TypeDef *GPIOx,
               GPIO_Pin_TypeDef GPIO_Pin,
               GPIO_Mode_TypeDef GPIO_Mode)
{
    check_expected_ptr(GPIOx);
    check_expected(GPIO_Pin);
    check_expected(GPIO_Mode);
}

/**
 * @brief Mock implementation of UART1_DeInit
 *
 * Tracks UART deinitialization calls.
 */
void UART1_DeInit(void)
{
    function_called();
}

/**
 * @brief Mock implementation of UART1_Init
 *
 * Verifies UART initialization parameters.
 *
 * @param BaudRate Communication baud rate
 * @param WordLength Data word length
 * @param StopBits Number of stop bits
 * @param Parity Parity mode
 * @param SyncMode Synchronous mode configuration
 * @param Mode Operation mode
 */
void UART1_Init(uint32_t BaudRate,
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

/**
 * @brief Mock implementation of UART1_Cmd
 *
 * Verifies UART enable/disable commands.
 *
 * @param NewState ENABLE or DISABLE command
 */
void UART1_Cmd(FunctionalState NewState)
{
    check_expected(NewState);
}

/**
 * @brief Mock implementation of UART1_SendData8
 *
 * Captures bytes sent to UART for verification.
 *
 * @param Data Byte to send
 */
void UART1_SendData8(uint8_t Data)
{
    if (uart_output_index < sizeof(uart_output))
    {
        uart_output[uart_output_index++] = Data;
    }
}

/**
 * @brief Mock implementation of UART1_GetFlagStatus
 *
 * Simulates UART status flags. Always returns SET to prevent blocking.
 *
 * @param Flag Flag to check
 * @return FlagStatus Always returns SET
 */
FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef Flag)
{
    (void)Flag;
    return SET;
}

// =============================================================================
// TEST CASES
// =============================================================================
/**
 * @test
 * @brief Tests logger hardware initialization
 *
 * Verifies that logger_init() correctly configures:
 * 1. GPIO pins for UART TX and RX
 * 2. UART peripheral with expected parameters:
 *    - 9600 baud rate
 *    - 8 data bits, 1 stop bit, no parity
 *    - Asynchronous mode
 *    - Transmitter and receiver enabled
 *
 * Test Steps:
 * 1. Set expectations for GPIO deinitialization
 * 2. Set expectations for TX and RX pin configurations
 * 3. Expect UART deinitialization call
 * 4. Verify UART initialization parameters
 * 5. Verify UART is enabled
 *
 * @param state CMocka state object (unused)
 */
static void test_Logger_Init_ConfiguresHardware(void **state)
{
    (void)state;

    // 1. Expect GPIO deinitialization
    expect_value(GPIO_DeInit, GPIOx, PORT_UART);

    // 2. Expect TX pin configuration
    expect_value(GPIO_Init, GPIOx, PORT_UART);
    expect_value(GPIO_Init, GPIO_Pin, PIN_TX);
    expect_value(GPIO_Init, GPIO_Mode, GPIO_MODE_OUT_PP_HIGH_FAST);

    // 2. Expect RX pin configuration
    expect_value(GPIO_Init, GPIOx, PORT_UART);
    expect_value(GPIO_Init, GPIO_Pin, PIN_RX);
    expect_value(GPIO_Init, GPIO_Mode, GPIO_MODE_IN_PU_NO_IT);

    // 3. Expect UART deinitialization
    expect_function_call(UART1_DeInit);

    // 4. Verify UART parameters
    expect_value(UART1_Init, BaudRate, UART_SPEED);
    expect_value(UART1_Init, WordLength, UART1_WORDLENGTH_8D);
    expect_value(UART1_Init, StopBits, UART1_STOPBITS_1);
    expect_value(UART1_Init, Parity, UART1_PARITY_NO);
    expect_value(UART1_Init, SyncMode, UART1_SYNCMODE_CLOCK_DISABLE);
    expect_value(UART1_Init, Mode, UART1_MODE_TXRX_ENABLE);

    // 5. Verify UART enable
    expect_value(UART1_Cmd, NewState, ENABLE);

    // Execute function under test
    logger_init();
}

/**
 * @test
 * @brief Tests single byte logging
 *
 * Verifies that logger_print():
 * 1. Sends exactly one byte to UART
 * 2. The byte matches the input value
 *
 * Test Steps:
 * 1. Reset UART capture buffer
 * 2. Call logger_print() with a single byte
 * 3. Verify one byte was captured
 * 4. Verify captured byte matches input
 *
 * @param state CMocka state object (unused)
 */
static void test_Logger_Print_SendsSingleByte(void **state)
{
    (void)state;
    reset_uart_capture(); // 1. Reset capture buffer

    // 2. Create and send test data
    uint8_t test_data = 0x55;
    uint8_t expected[] = {test_data};
    logger_print(&test_data, sizeof(test_data));

    // 3-4. Verify output
    assert_int_equal(uart_output_index, sizeof(test_data));
    assert_memory_equal(uart_output, expected, sizeof(expected));
}

/**
 * @test
 * @brief Tests multi-byte logging
 *
 * Verifies that logger_print():
 * 1. Sends multiple bytes in order
 * 2. All bytes match the input buffer
 *
 * Test Steps:
 * 1. Reset UART capture buffer
 * 2. Create test data array
 * 3. Call logger_print() with the array
 * 4. Verify correct number of bytes captured
 * 5. Verify captured bytes match input
 *
 * @param state CMocka state object (unused)
 */
static void test_Logger_Print_SendsMultipleBytes(void **state)
{
    (void)state;
    reset_uart_capture(); // 1. Reset capture buffer

    // 2. Create test data
    uint8_t test_data[] = {0x01, 0xAA, 0xFF, 0x00};

    // 3. Send data
    logger_print(test_data, sizeof(test_data));

    // 4-5. Verify output
    assert_int_equal(uart_output_index, sizeof(test_data));
    assert_memory_equal(uart_output, test_data, sizeof(test_data));
}

/**
 * @test
 * @brief Tests full byte range logging
 *
 * Verifies that logger_print() handles:
 * 1. Minimum value (0x00)
 * 2. Mid-range value (0x7F)
 * 3. Maximum value (0xFF)
 *
 * Test Steps:
 * 1. Reset UART capture buffer
 * 2. Create test data with min, mid, and max values
 * 3. Call logger_print() with the data
 * 4. Verify correct number of bytes captured
 * 5. Verify captured bytes match input
 *
 * @param state CMocka state object (unused)
 */
static void test_Logger_Print_HandlesFullRange(void **state)
{
    (void)state;
    reset_uart_capture(); // 1. Reset capture buffer

    // 2. Create test data
    uint8_t min_val = 0x00;
    uint8_t mid_val = 0x7F;
    uint8_t max_val = 0xFF;
    uint8_t test_data[] = {min_val, mid_val, max_val};

    // 3. Send data
    logger_print(test_data, sizeof(test_data));

    // 4-5. Verify output
    assert_int_equal(uart_output_index, sizeof(test_data));
    assert_memory_equal(uart_output, test_data, sizeof(test_data));
}

/**
 * @test
 * @brief Tests empty buffer handling
 *
 * Verifies that logger_print():
 * 1. Handles zero-length buffers safely
 * 2. Doesn't send any data to UART
 *
 * Test Steps:
 * 1. Reset UART capture buffer
 * 2. Create dummy buffer
 * 3. Call logger_print() with length 0
 * 4. Verify no bytes were captured
 *
 * @param state CMocka state object (unused)
 */
static void test_Logger_Print_EmptyBuffer(void **state)
{
    (void)state;
    reset_uart_capture(); // 1. Reset capture buffer

    // 2. Create dummy data
    uint8_t test_data[] = {0xAA};

    // 3. Send with zero length
    logger_print(test_data, 0);

    // 4. Verify nothing was sent
    assert_int_equal(uart_output_index, 0);
}

// =============================================================================
// TEST RUNNER
// =============================================================================
/**
 * @brief Test runner entry point
 *
 * Executes all logger tests:
 * 1. Hardware initialization test
 * 2. Single byte logging test
 * 3. Multi-byte logging test
 * 4. Full byte range test
 * 5. Empty buffer handling test
 *
 * @return int Number of failed tests (0 if all pass)
 */
int main(void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_Logger_Init_ConfiguresHardware),
        cmocka_unit_test(test_Logger_Print_SendsSingleByte),
        cmocka_unit_test(test_Logger_Print_SendsMultipleBytes),
        cmocka_unit_test(test_Logger_Print_HandlesFullRange),
        cmocka_unit_test(test_Logger_Print_EmptyBuffer),
    };

    return cmocka_run_group_tests(tests, NULL, NULL);
}