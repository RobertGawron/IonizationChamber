#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h> // NOLINT(misc-include-cleaner), needed by <cmocka.h>
#include <cmocka.h>
#include <stdint.h>

// Include production code
#include "status_leds.h"
#include "pinout_conf.h"

#include "stm8s.h"
#include "stm8s_gpio.h"

// =============================================================================
// MOCK FUNCTIONS
// =============================================================================
void GPIO_Init(GPIO_TypeDef *    GPIOx,
               GPIO_Pin_TypeDef GPIO_Pin,
               GPIO_Mode_TypeDef GPIO_Mode)
{
    check_expected_ptr(GPIOx);
    check_expected(GPIO_Pin);
    check_expected(GPIO_Mode);
}

void GPIO_WriteLow(GPIO_TypeDef *   GPIOx,
                   GPIO_Pin_TypeDef PortPins)
{
    check_expected_ptr(GPIOx);
    check_expected(PortPins);
}

void GPIO_WriteHigh(GPIO_TypeDef *   GPIOx,
                    GPIO_Pin_TypeDef PortPins)
{
    check_expected_ptr(GPIOx);
    check_expected(PortPins);
}

void GPIO_WriteReverse(GPIO_TypeDef *   GPIOx,
                       GPIO_Pin_TypeDef PortPins)
{
    check_expected_ptr(GPIOx);
    check_expected(PortPins);
}

// =============================================================================
// TEST CASES
// =============================================================================
static void test_init_configures_leds_correctly(void **state)
{
    (void)state;

    // Expect GPIO initialisation only (no LED state changes)
    expect_value(GPIO_Init, GPIOx, PORT_LED);
    expect_value(GPIO_Init, GPIO_Pin, (PIN_LED_GREEN | PIN_LED_RED));
    expect_value(GPIO_Init, GPIO_Mode, GPIO_MODE_OUT_PP_LOW_SLOW);

    status_leds_init();
}

static void test_set_green_led_on(void **state)
{
    (void)state;

    expect_value(GPIO_WriteHigh, GPIOx, PORT_LED);
    expect_value(GPIO_WriteHigh, PortPins, PIN_LED_GREEN);

    status_leds_set(LED_ID_DATA_ACTIVE, LED_ON);
}

static void test_set_green_led_off(void **state)
{
    (void)state;

    expect_value(GPIO_WriteLow, GPIOx, PORT_LED);
    expect_value(GPIO_WriteLow, PortPins, PIN_LED_GREEN);

    status_leds_set(LED_ID_DATA_ACTIVE, LED_OFF);
}

static void test_set_green_led_toggle(void **state)
{
    (void)state;

    expect_value(GPIO_WriteReverse, GPIOx, PORT_LED);
    expect_value(GPIO_WriteReverse, PortPins, PIN_LED_GREEN);

    status_leds_set(LED_ID_DATA_ACTIVE, LED_TOGGLE);
}

static void test_set_red_led_on(void **state)
{
    (void)state;

    expect_value(GPIO_WriteHigh, GPIOx, PORT_LED);
    expect_value(GPIO_WriteHigh, PortPins, PIN_LED_RED);

    status_leds_set(LED_ID_SYSTEM_OK, LED_ON);
}

static void test_set_red_led_off(void **state)
{
    (void)state;

    expect_value(GPIO_WriteLow, GPIOx, PORT_LED);
    expect_value(GPIO_WriteLow, PortPins, PIN_LED_RED);

    status_leds_set(LED_ID_SYSTEM_OK, LED_OFF);
}

static void test_set_red_led_toggle(void **state)
{
    (void)state;

    expect_value(GPIO_WriteReverse, GPIOx, PORT_LED);
    expect_value(GPIO_WriteReverse, PortPins, PIN_LED_RED);

    status_leds_set(LED_ID_SYSTEM_OK, LED_TOGGLE);
}

// =============================================================================
// TEST RUNNER
// =============================================================================
int main(void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_init_configures_leds_correctly),
        cmocka_unit_test(test_set_green_led_on),
        cmocka_unit_test(test_set_green_led_off),
        cmocka_unit_test(test_set_green_led_toggle),
        cmocka_unit_test(test_set_red_led_on),
        cmocka_unit_test(test_set_red_led_off),
        cmocka_unit_test(test_set_red_led_toggle),
    };

    return cmocka_run_group_tests(tests, NULL, NULL);
}
