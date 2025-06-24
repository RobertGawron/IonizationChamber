#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h>
#include <cmocka.h>

// Define unit test environment before including header
#define UNIT_TEST_ROBERT

// Include production header
#include "interrupt_configurator.h"

// interrupt_configurator_wait is inline static, but i calls
// wfi, this is workaround for tests
void wfi()
{
}


// =============================================================================
// TEST CASES
// =============================================================================

/**
 * @test
 * @brief Verify enableInterrupts mapping
 *
 * Ensures that interrupt_configurator_enable() correctly maps to enableInterrupts macro.
 * Since the macro is empty in test mode, we just verify the function exists and is callable.
 */
static void test_interrupt_configurator_enable(
    void **state)
{
    (void)state;

    // Should compile and execute without errors
    interrupt_configurator_enable();

    // If we reach this point, the test passes
    assert_true(1);
}


/**
 * @test
 * @brief Verify wfi mapping
 *
 * Ensures that interrupt_configurator_wait() correctly maps to wfi macro.
 * Since the macro is empty in test mode, we just verify the function exists and is callable.
 */
static void test_interrupt_configurator_wait(
    void **state)
{
    (void)state;

    // Should compile and execute without errors
    interrupt_configurator_wait();

    // If we reach this point, the test passes
    assert_true(1);
}


// =============================================================================
// TEST RUNNER
// =============================================================================

int main(
    void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_interrupt_configurator_enable),
        cmocka_unit_test(test_interrupt_configurator_wait),
    };

    return cmocka_run_group_tests(tests, NULL, NULL);
}