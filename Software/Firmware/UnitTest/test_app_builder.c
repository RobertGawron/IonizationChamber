#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h> // NOLINT(misc-include-cleaner), needed by <cmocka.h>
#include <cmocka.h>

// Include production header
#include "app_builder.h"

// =============================================================================
// MOCK IMPLEMENTATIONS
// =============================================================================
void clk_conf_init(void)
{
    function_called();
}

void user_interface_init(void)
{
    function_called();
}

void timer_conf_init(void)
{
    function_called();
}

void data_logger_init(void)
{
    function_called();
}

void interrupt_control_enable(void)
{
    function_called();
}

void interrupt_control_wait(void)
{
    function_called();
}

void user_interface_indicate_alive(void)
{
    function_called();
}

void data_acquisition_tick(void)
{
    function_called();
}

// =============================================================================
// TEST CASES
// =============================================================================
/**
 * @brief Tests application initialization sequence
 *
 * Verifies that app_builder_init() initializes all required modules
 * in the correct order and enables interrupts.
 */
static void test_ApplicationBuilder_Init_Sequence(void **state)
{
    (void)state;

    // Expect initialization sequence in correct order
    expect_function_call(clk_conf_init);
    expect_function_call(user_interface_init);
    expect_function_call(timer_conf_init);
    expect_function_call(data_logger_init);
    expect_function_call(interrupt_control_enable);

    app_builder_init();
}

/**
 * @brief Tests application tick functionality
 *
 * Verifies that app_builder_tick() executes both:
 * 1. User interface alive indication
 * 2. Data acquisition tick
 */
static void test_ApplicationBuilder_Tick(void **state)
{
    (void)state;

    expect_function_call(user_interface_indicate_alive);
    expect_function_call(data_acquisition_tick);

    app_builder_tick();
}

/**
 * @brief Tests application run functionality without tick
 *
 * Verifies that app_builder_run():
 * 1. Waits for interrupts
 * 2. Doesn't process tick when flag is not set
 */
static void test_ApplicationBuilder_Run_NoTick(void **state)
{
    (void)state;

    // Clear tick flag and expect only wait call
    app_tick_flag = 0;
    expect_function_call(interrupt_control_wait);

    app_builder_run();
}

/**
 * @brief Tests application run functionality with tick
 *
 * Verifies that app_builder_run():
 * 1. Waits for interrupts
 * 2. Processes tick when flag is set
 * 3. Clears tick flag after processing
 */
static void test_ApplicationBuilder_Run_WithTick(void **state)
{
    (void)state;

    // Set tick flag and expect both wait and tick
    app_tick_flag = 1;
    expect_function_call(interrupt_control_wait);
    expect_function_call(user_interface_indicate_alive);
    expect_function_call(data_acquisition_tick);

    app_builder_run();

    // Verify flag was cleared
    assert_int_equal(app_tick_flag, 0);
}

// =============================================================================
// TEST RUNNER
// =============================================================================
int main(void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_ApplicationBuilder_Init_Sequence),
        cmocka_unit_test(test_ApplicationBuilder_Tick),
        cmocka_unit_test(test_ApplicationBuilder_Run_NoTick),
        cmocka_unit_test(test_ApplicationBuilder_Run_WithTick),
    };
    return cmocka_run_group_tests(tests, NULL, NULL);
}
