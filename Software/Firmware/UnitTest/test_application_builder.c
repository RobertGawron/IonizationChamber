#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h>
#include <cmocka.h>

// Include production header
#include "application_builder.h"
#include "user_interface.h"

// =============================================================================
// MOCK IMPLEMENTATIONS
// =============================================================================
/**
 * @brief Mock implementation of clock_configurator_init
 *
 * Tracks calls to clock initialization function.
 */
void clock_configurator_init(
    void)
{
    function_called();
}


/**
 * @brief Mock implementation of timer_configurator_init
 *
 * Tracks calls to timer initialization function.
 */
void timer_configurator_init(
    void)
{
    function_called();
}


/**
 * @brief Mock implementation of logger_init
 *
 * Tracks calls to logger initialization function.
 */
void logger_init(
    void)
{
    function_called();
}


/**
 * @brief Mock implementation of user_interface_init
 *
 * Tracks calls to user interface initialization function.
 */
void user_interface_init(
    void)
{
    function_called();
}


/**
 * @brief Mock implementation of mcp3425_init
 *
 * Tracks calls to MCP3425 ADC initialization function.
 */
void mcp3425_init(
    void)
{
    function_called();
}


/**
 * @brief Mock implementation of measurement_collector_tick
 *
 * Tracks calls to measurement collector periodic task.
 */
void measurement_collector_tick(
    void)
{
    function_called();
}


/**
 * @brief Mock implementation of wfi()
 *
 * Simulates the wait-for-interrupt instruction for testing.
 * This mock replaces the inline static function in production code.
 */
void wfi()
{
    function_called();
}


/**
 * @brief Mock implementation of user_interface_update_message
 *
 * Verifies UI message update parameters.
 *
 * @param message Message type to display
 * @param state Enable/disable state for the message
 */
void user_interface_update_message(
    const UserInterface_Message_t       message,
    const UserInterface_MessageAction_t state)
{
    check_expected(message);
    check_expected(state);
}


// =============================================================================
// TEST CASES
// =============================================================================
/**
 * @test
 * @brief Tests application initialization sequence
 *
 * Verifies that application_builder_init():
 * 1. Initializes all required modules in the correct order:
 *    - Clock configuration
 *    - Timer configuration
 *    - Logger
 *    - User interface
 *    - MCP3425 ADC
 * 2. Enables interrupts (not directly verifiable)
 * 3. Shows the startup OK message
 *
 * Test Steps:
 * 1. Set expectations for all initialization function calls
 * 2. Set expectation for startup message display
 * 3. Execute application_builder_init()
 *
 * @param state CMocka state object (unused)
 */
static void test_ApplicationBuilder_Init_Sequence(
    void **state)
{
    (void)state;

    // 1. Expect initialization sequence
    expect_function_call(clock_configurator_init);
    expect_function_call(timer_configurator_init);
    expect_function_call(logger_init);
    expect_function_call(user_interface_init);
    expect_function_call(mcp3425_init);

    // 2. Verify startup message
    expect_value(user_interface_update_message, message, USER_INTERFACE_STATE_OK_MSG);
    expect_value(user_interface_update_message, state, USER_INTERFACE_ENABLE);

    // 3. Execute function under test
    application_builder_init();
}


/**
 * @test
 * @brief Tests application tick functionality
 *
 * Verifies that application_builder_tick():
 * 1. Executes the measurement collector periodic task
 * 2. Does not execute unrelated tasks
 *
 * Test Steps:
 * 1. Set expectation for measurement_collector_tick()
 * 2. Execute application_builder_tick()
 *
 * @param state CMocka state object (unused)
 */
static void test_ApplicationBuilder_Tick(
    void **state)
{
    (void)state;
    // 1. Expect measurement collector tick
    expect_function_call(measurement_collector_tick);

    // 2. Execute function under test
    application_builder_tick();
}


/**
 * @test
 * @brief Tests application run functionality
 *
 * Verifies that application_builder_run():
 * 1. Enters low-power mode by calling wfi()
 * 2. Implements the main application loop
 *
 * Test Steps:
 * 1. Set expectation for wfi() call
 * 2. Execute application_builder_run()
 *
 * @param state CMocka state object (unused)
 */
static void test_ApplicationBuilder_Run_CallsWait(
    void **state)
{
    (void)state;
    // 1. Expect wfi call
    expect_function_call(wfi);

    // 2. Execute function under test
    application_builder_run();
}


// =============================================================================
// TEST RUNNER
// =============================================================================
/**
 * @brief Test runner entry point
 *
 * Executes all application builder tests:
 * 1. Initialization sequence verification
 * 2. Tick functionality test
 * 3. Run functionality test
 *
 * @return int Number of failed tests (0 if all pass)
 */
int main(
    void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_ApplicationBuilder_Init_Sequence),
        cmocka_unit_test(test_ApplicationBuilder_Tick),
        cmocka_unit_test(test_ApplicationBuilder_Run_CallsWait),
    };
    return cmocka_run_group_tests(tests, NULL, NULL);
}