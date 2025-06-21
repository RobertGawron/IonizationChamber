#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h>
#include <cmocka.h>

// Include production header
#include "ApplicationBuilder.h"
#include "UserInterface.h"

// =============================================================================
// MOCK IMPLEMENTATIONS
// =============================================================================

/**
 * @brief Mock implementation of ClockConfigurator_Init
 *
 * Verifies that clock initialization is called during application setup.
 */
void ClockConfigurator_Init(void)
{
    function_called();
}

/**
 * @brief Mock implementation of TimerConfigurator_Init
 *
 * Verifies that timer initialization is called during application setup.
 */
void TimerConfigurator_Init(void)
{
    function_called();
}

/**
 * @brief Mock implementation of Logger_Init
 *
 * Verifies that logger initialization is called during application setup.
 */
void Logger_Init(void)
{
    function_called();
}

/**
 * @brief Mock implementation of UserInterface_Init
 *
 * Verifies that UI initialization is called during application setup.
 */
void UserInterface_Init(void)
{
    function_called();
}

/**
 * @brief Mock implementation of VoltageSensorActualValue_Init
 *
 * Verifies that voltage sensor initialization is called during application setup.
 */
void VoltageSensorActualValue_Init(void)
{
    function_called();
}

/**
 * @brief Mock implementation of MeasurementCollector_Init
 *
 * Verifies that measurement collector initialization is called during application setup.
 */
void MeasurementCollector_Init(void)
{
    function_called();
}

/**
 * @brief Mock implementation of UserInterface_ShowMessage
 * @param message The message to display
 *
 * Verifies that the correct startup message is shown.
 * Uses the ACTUAL enum type from production code.
 */
void UserInterface_ShowMessage(UserInterface_Status message)
{
    check_expected(message);
}

/**
 * @brief Mock implementation of MeasurementCollector_Tick
 *
 * Verifies that the measurement collector tick is called.
 */
void MeasurementCollector_Tick(void)
{
    function_called();
}

/**
 * @brief Mock implementation of UserInterface_Tick
 *
 * Verifies that the user interface tick is called.
 */
void UserInterface_Tick(void)
{
    function_called();
}

// =============================================================================
// TEST CASES
// =============================================================================

/**
 * @test
 * @brief Tests application initialization sequence
 *
 * Verifies that ApplicationBuilder_Init performs all required initialization steps
 * in the correct order and shows the startup message:
 *
 * Test Steps:
 * 1. Expect all module initialization calls
 * 2. Verify enableInterrupts is executed
 * 3. Verify correct startup message is shown
 *
 * @param state CMocka state object (unused)
 */
static void test_ApplicationBuilder_Init_Sequence(void **state)
{
    (void)state;

    // Step 1: Expect all initialization calls
    expect_function_call(ClockConfigurator_Init);
    expect_function_call(TimerConfigurator_Init);
    expect_function_call(Logger_Init);
    expect_function_call(UserInterface_Init);
    expect_function_call(VoltageSensorActualValue_Init);
    expect_function_call(MeasurementCollector_Init);

    // Step 3: Verify startup message
    // Using the ACTUAL enum value from production code
    expect_value(UserInterface_ShowMessage, message, USER_INTERFAE_STATE_OK_MSG);

    // Step 2: enableInterrupts is a macro - nothing to verify
    ApplicationBuilder_Init();
}

/**
 * @test
 * @brief Tests application tick functionality
 *
 * Verifies that ApplicationBuilder_Tick triggers all required periodic tasks:
 *
 * Test Steps:
 * 1. Expect measurement collector tick
 * 2. Expect user interface tick
 *
 * @param state CMocka state object (unused)
 */
static void test_ApplicationBuilder_Tick_Functionality(void **state)
{
    (void)state;

    // Step 1: Verify measurement collector tick
    expect_function_call(MeasurementCollector_Tick);

    // Step 2: Verify user interface tick
    expect_function_call(UserInterface_Tick);

    ApplicationBuilder_Tick();
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
int main(void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_ApplicationBuilder_Init_Sequence),
        cmocka_unit_test(test_ApplicationBuilder_Tick_Functionality),
    };

    return cmocka_run_group_tests(tests, NULL, NULL);
}