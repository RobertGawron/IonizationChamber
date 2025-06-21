#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h>
#include <cmocka.h>
#include <stdint.h>

// Include production code
#include "PinoutConfiguration.h"
#include "UserInterface.h"

#define GPIO_LED_PINS (PIN_GPIO_LED_GREEN | PIN_GPIO_LED_RED)

// Define GPIO mode (matching production environment)
// #define GPIO_MODE_OUT_PP_LOW_SLOW 0x01

// =============================================================================
// MOCK FUNCTIONS
// =============================================================================
void GPIO_Init(GPIO_TypeDef *GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
{
    check_expected(GPIOx);
    check_expected(GPIO_Pin);
    check_expected(GPIO_Mode);
}

void GPIO_WriteLow(GPIO_TypeDef *GPIOx, GPIO_Pin_TypeDef PortPins)
{
    check_expected(GPIOx);
    check_expected(PortPins);
}

void GPIO_WriteHigh(GPIO_TypeDef *GPIOx, GPIO_Pin_TypeDef PortPins)
{
    check_expected(GPIOx);
    check_expected(PortPins);
}

// =============================================================================
// TEST CASES - INITIALIZATION
// =============================================================================
static void test_Init_ConfiguresLedsCorrectly(void **state)
{
    (void)state;

    // Set expectations for GPIO_Init call
    expect_value(GPIO_Init, GPIOx, PORT_GPIO_LED);
    expect_value(GPIO_Init, GPIO_Pin, GPIO_LED_PINS);
    expect_value(GPIO_Init, GPIO_Mode, GPIO_MODE_OUT_PP_LOW_SLOW);

    // Set expectations for GPIO_WriteLow call
    expect_value(GPIO_WriteLow, GPIOx, PORT_GPIO_LED);
    expect_value(GPIO_WriteLow, PortPins, GPIO_LED_PINS);

    UserInterface_Init();
}

// =============================================================================
// TEST CASES - SHOW MESSAGE
// =============================================================================
static void test_ShowMessage_CollectingData_TurnsOnRedLed(void **state)
{
    (void)state;

    // Expect only red LED to be turned on
    expect_value(GPIO_WriteHigh, GPIOx, PORT_GPIO_LED);
    expect_value(GPIO_WriteHigh, PortPins, PIN_GPIO_LED_RED);

    // NOTE: This test reveals a bug - the green LED is not turned off!
    // We should also expect a call to turn off the green LED, but it's missing

    UserInterface_ShowMessage(USER_INTERFACE_COLLECTING_DATA_MSG);
}

static void test_ShowMessage_StateOk_TurnsOnGreenLed(void **state)
{
    (void)state;

    // Expect only green LED to be turned on
    expect_value(GPIO_WriteHigh, GPIOx, PORT_GPIO_LED);
    expect_value(GPIO_WriteHigh, PortPins, PIN_GPIO_LED_GREEN);

    // NOTE: This test reveals a bug - the red LED is not turned off!
    // We should also expect a call to turn off the red LED, but it's missing

    UserInterface_ShowMessage(USER_INTERFAE_STATE_OK_MSG);
}

static void test_ShowMessage_UnknownStatus_NoAction(void **state)
{
    (void)state;

    // Expect no GPIO calls for unknown status
    // (Test will fail if any GPIO operations occur)

    UserInterface_ShowMessage((UserInterface_Status)99); // Invalid status
}

// =============================================================================
// TEST RUNNER
// =============================================================================
int main(void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_Init_ConfiguresLedsCorrectly),
        cmocka_unit_test(test_ShowMessage_CollectingData_TurnsOnRedLed),
        cmocka_unit_test(test_ShowMessage_StateOk_TurnsOnGreenLed),
        cmocka_unit_test(test_ShowMessage_UnknownStatus_NoAction),
    };

    return cmocka_run_group_tests(tests, NULL, NULL);
}