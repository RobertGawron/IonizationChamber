#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h> // NOLINT(misc-include-cleaner), needed by <cmocka.h>
#include <cmocka.h>
#include <stdint.h>

#include "timer_conf.h"

// Include production code
#include "stm8s.h"
#include "stm8s_tim1.h"

// =============================================================================
// TEST CONSTANTS
// =============================================================================
/* Timer configuration values from production header */
#define TEST_PRESCALER        0x3D08     // 15624 (15625 divisor)
#define TEST_AUTO_RELOAD      0x03FF     // 1023 (1024 counts)
#define TEST_REPETITION       0          // Repetition counter disabled
#define TEST_COUNTER_MODE     TIM1_COUNTERMODE_UP

// =============================================================================
// MOCK FUNCTIONS
// =============================================================================
void TIM1_DeInit(void)
{
    // No parameters to check, just track call count
    function_called();
}

void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
{
    check_expected(TIM1_FLAG);
}

void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
{
    check_expected(TIM1_IT);
}

void TIM1_TimeBaseInit(
    uint16_t TIM1_Prescaler,
    TIM1_CounterMode_TypeDef TIM1_CounterMode,
    uint16_t TIM1_Period,
    uint8_t TIM1_RepetitionCounter)
{
    check_expected(TIM1_Prescaler);
    check_expected(TIM1_CounterMode);
    check_expected(TIM1_Period);
    check_expected(TIM1_RepetitionCounter);
}

void TIM1_Cmd(FunctionalState NewState)
{
    check_expected(NewState);
}

void TIM1_ITConfig(
    TIM1_IT_TypeDef TIM1_IT,
    FunctionalState NewState)
{
    check_expected(TIM1_IT);
    check_expected(NewState);
}

// =============================================================================
// TEST CASES
// =============================================================================
/**
 * @brief Tests timer initialization parameters
 *
 * Verifies full initialization sequence:
 *  1. Timer disable command
 *  2. Deinitialization
 *  3. Flag/pending bit clearing
 *  4. Timebase configuration
 *  5. Interrupt enablement
 *  6. Timer enable command
 *
 * @param state CMocka state object (unused)
 */
static void test_Init_ConfiguresTimerCorrectly(void **state)
{
    (void)state;

    // Expect initial disable sequence
    expect_value(TIM1_Cmd, NewState, DISABLE);
    expect_function_call(TIM1_DeInit);
    expect_value(TIM1_ClearFlag, TIM1_FLAG, TIM1_FLAG_UPDATE);
    expect_value(TIM1_ClearITPendingBit, TIM1_IT, TIM1_IT_UPDATE);

    // Expect timebase configuration
    expect_value(TIM1_TimeBaseInit, TIM1_Prescaler, TEST_PRESCALER);
    expect_value(TIM1_TimeBaseInit, TIM1_CounterMode, TEST_COUNTER_MODE);
    expect_value(TIM1_TimeBaseInit, TIM1_Period, TEST_AUTO_RELOAD);
    expect_value(TIM1_TimeBaseInit, TIM1_RepetitionCounter, TEST_REPETITION);

    // Expect interrupt enablement
    expect_value(TIM1_ITConfig, TIM1_IT, TIM1_IT_UPDATE);
    expect_value(TIM1_ITConfig, NewState, ENABLE);

    // Expect final enable
    expect_value(TIM1_Cmd, NewState, ENABLE);

    // Execute function under test
    timer_conf_init();
}

// =============================================================================
// TEST RUNNER
// =============================================================================
int main(void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_Init_ConfiguresTimerCorrectly),
    };

    return cmocka_run_group_tests(tests, NULL, NULL);
}
