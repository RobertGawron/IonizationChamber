#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h>
#include <cmocka.h>
#include <stdint.h>

// Include production code
#include "stm8s_gpio.h"
#include "pinout_configuration.h"
#include "user_interface.h"

// =============================================================================
// MOCK FUNCTIONS
// =============================================================================
/**
 * @brief Mock implementation of GPIO_Init
 *
 * Verifies parameters passed to GPIO initialization function.
 *
 * @param GPIOx GPIO port pointer
 * @param GPIO_Pin Pin selection
 * @param GPIO_Mode Pin mode configuration
 */
void GPIO_Init(
    GPIO_TypeDef *    GPIOx,
    GPIO_Pin_TypeDef  GPIO_Pin,
    GPIO_Mode_TypeDef GPIO_Mode)
{
    check_expected_ptr(GPIOx);
    check_expected(GPIO_Pin);
    check_expected(GPIO_Mode);
}


/**
 * @brief Mock implementation of GPIO_WriteLow
 *
 * Verifies parameters passed to GPIO write low function.
 *
 * @param GPIOx GPIO port pointer
 * @param PortPins Pins to set low
 */
void GPIO_WriteLow(
    GPIO_TypeDef *   GPIOx,
    GPIO_Pin_TypeDef PortPins)
{
    check_expected_ptr(GPIOx);
    check_expected(PortPins);
}


/**
 * @brief Mock implementation of GPIO_WriteHigh
 *
 * Verifies parameters passed to GPIO write high function.
 *
 * @param GPIOx GPIO port pointer
 * @param PortPins Pins to set high
 */
void GPIO_WriteHigh(
    GPIO_TypeDef *   GPIOx,
    GPIO_Pin_TypeDef PortPins)
{
    check_expected_ptr(GPIOx);
    check_expected(PortPins);
}


// =============================================================================
// TEST CASES
// =============================================================================
/**
 * @test
 * @brief Tests user interface initialization
 *
 * Verifies that the user interface initialization correctly configures the LEDs:
 * 1. GPIO initialization for both LEDs is called with correct parameters
 * 2. Both LEDs are turned off after initialization
 *
 * @param state CMocka state object (unused)
 */
static void test_init_configures_leds_correctly(
    void **state)
{
    (void)state;

    // Expect GPIO initialization
    expect_value(GPIO_Init, GPIOx, PORT_GPIO_LED);
    expect_value(GPIO_Init, GPIO_Pin, (PIN_GPIO_LED_GREEN | PIN_GPIO_LED_RED));
    expect_value(GPIO_Init, GPIO_Mode, GPIO_MODE_OUT_PP_LOW_SLOW);

    // Expect both LEDs turned off
    expect_value(GPIO_WriteLow, GPIOx, PORT_GPIO_LED);
    expect_value(GPIO_WriteLow, PortPins, (PIN_GPIO_LED_GREEN | PIN_GPIO_LED_RED));

    user_interface_init();
}


/**
 * @test
 * @brief Tests enabling the collecting data message
 *
 * Verifies that enabling the collecting data message:
 * 1. Turns on the red LED
 * 2. Doesn't affect the green LED
 *
 * @param state CMocka state object (unused)
 */
static void test_enable_collecting_data_message_turns_on_red_led(
    void **state)
{
    (void)state;

    expect_value(GPIO_WriteHigh, GPIOx, PORT_GPIO_LED);
    expect_value(GPIO_WriteHigh, PortPins, PIN_GPIO_LED_RED);

    user_interface_update_message(
        USER_INTERFACE_COLLECTING_DATA_MSG,
        USER_INTERFACE_ENABLE);
}


/**
 * @test
 * @brief Tests disabling the collecting data message
 *
 * Verifies that disabling the collecting data message:
 * 1. Turns off the red LED
 * 2. Doesn't affect the green LED
 *
 * @param state CMocka state object (unused)
 */
static void test_disable_collecting_data_message_turns_off_red_led(
    void **state)
{
    (void)state;

    expect_value(GPIO_WriteLow, GPIOx, PORT_GPIO_LED);
    expect_value(GPIO_WriteLow, PortPins, PIN_GPIO_LED_RED);

    user_interface_update_message(
        USER_INTERFACE_COLLECTING_DATA_MSG,
        USER_INTERFACE_DISABLE);
}


/**
 * @test
 * @brief Tests enabling the state OK message
 *
 * Verifies that enabling the state OK message:
 * 1. Turns on the green LED
 * 2. Doesn't affect the red LED
 *
 * @param state CMocka state object (unused)
 */
static void test_enable_state_ok_message_turns_on_green_led(
    void **state)
{
    (void)state;

    expect_value(GPIO_WriteHigh, GPIOx, PORT_GPIO_LED);
    expect_value(GPIO_WriteHigh, PortPins, PIN_GPIO_LED_GREEN);

    user_interface_update_message(
        USER_INTERFACE_STATE_OK_MSG,
        USER_INTERFACE_ENABLE);
}


/**
 * @test
 * @brief Tests disabling the state OK message
 *
 * Verifies that disabling the state OK message:
 * 1. Turns off the green LED
 * 2. Doesn't affect the red LED
 *
 * @param state CMocka state object (unused)
 */
static void test_disable_state_ok_message_turns_off_green_led(
    void **state)
{
    (void)state;

    expect_value(GPIO_WriteLow, GPIOx, PORT_GPIO_LED);
    expect_value(GPIO_WriteLow, PortPins, PIN_GPIO_LED_GREEN);

    user_interface_update_message(
        USER_INTERFACE_STATE_OK_MSG,
        USER_INTERFACE_DISABLE);
}


/**
 * @test
 * @brief Tests handling of unknown message types
 *
 * Verifies that passing an unknown message type:
 * 1. Doesn't trigger any GPIO operations
 * 2. Fails safely without hardware access
 *
 * @param state CMocka state object (unused)
 */
static void test_unknown_message_type(
    void **state)
{
    (void)state;

    // Unknown message shouldn't touch physical pins
    // No expectations set - test will fail if any GPIO operations occur

    user_interface_update_message(
        (UserInterface_Message_t)99, // Invalid message
        USER_INTERFACE_ENABLE);
}


// =============================================================================
// TEST RUNNER
// =============================================================================
/**
 * @brief Test runner entry point
 *
 * Executes all test cases using CMocka framework
 *
 * @return int Number of failed tests
 */
int main(
    void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_init_configures_leds_correctly),
        cmocka_unit_test(test_enable_collecting_data_message_turns_on_red_led),
        cmocka_unit_test(test_disable_collecting_data_message_turns_off_red_led),
        cmocka_unit_test(test_enable_state_ok_message_turns_on_green_led),
        cmocka_unit_test(test_disable_state_ok_message_turns_off_green_led),
        cmocka_unit_test(test_unknown_message_type),
    };

    return cmocka_run_group_tests(tests, NULL, NULL);
}