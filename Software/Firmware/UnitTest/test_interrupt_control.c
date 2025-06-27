#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h> // NOLINT(misc-include-cleaner), needed by <cmocka.h>
#include <cmocka.h>

// Include production header
#include "interrupt_control.h"

void enableInterrupts(void)
{
}
// interrupt_control_wait is inline static, but i calls
// wfi, this is workaround for tests
void wfi(void)
{
}

// =============================================================================
// TEST CASES
// =============================================================================

/**
 * @brief Verify enableInterrupts mapping
 *
 * Ensures that interrupt_control_enable() correctly maps to
 * enableInterrupts macro.
 * Since the macro is empty in test mode, we just verify the function exists and
 * is callable.
 */
static void test_interrupt_control_enable(
    void **state)
{
    (void)state;

    // Should compile and execute without errors
    interrupt_control_enable();

    // If we reach this point, the test passes
    assert_true(1);
}

/**
 * @brief Verify wfi mapping
 *
 * Ensures that interrupt_control_wait() correctly maps to wfi macro.
 * Since the macro is empty in test mode, we just verify the function exists and
 * is callable.
 */
static void test_interrupt_control_wait(
    void **state)
{
    (void)state;

    // Should compile and execute without errors
    interrupt_control_wait();

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
        cmocka_unit_test(test_interrupt_control_enable),
        cmocka_unit_test(test_interrupt_control_wait),
    };

    return cmocka_run_group_tests(tests, NULL, NULL);
}
