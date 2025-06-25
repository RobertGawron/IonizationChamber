#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h>
#include <cmocka.h>
#include <stdint.h>

// Mocks
#include "system_mock.h"

// Include production code
#include "stm8s.h"
#include "timer_configurator.h"

// =============================================================================
// MOCK FUNCTIONS
// =============================================================================
/**
 * @brief Mock implementation of TIM1_TimeBaseInit
 *
 * Verifies timer base initialization parameters.
 *
 * @param TIM1_Prescaler Timer prescaler value
 * @param TIM1_CounterMode Timer counting mode
 * @param TIM1_Period Timer period value
 * @param TIM1_RepetitionCounter Repetition counter value
 */
void TIM1_TimeBaseInit(
    uint16_t                 TIM1_Prescaler,
    TIM1_CounterMode_TypeDef TIM1_CounterMode,
    uint16_t                 TIM1_Period,
    uint8_t                  TIM1_RepetitionCounter
    )
{
    check_expected(TIM1_Prescaler);
    check_expected(TIM1_CounterMode);
    check_expected(TIM1_Period);
    check_expected(TIM1_RepetitionCounter);
}

/**
 * @brief Mock implementation of TIM1_Cmd
 *
 * Verifies timer enable/disable commands.
 *
 * @param NewState ENABLE or DISABLE command
 */
void TIM1_Cmd(
    FunctionalState NewState
    )
{
    check_expected(NewState);
}

/**
 * @brief Mock implementation of TIM1_ITConfig
 *
 * Verifies timer interrupt configuration.
 *
 * @param TIM1_IT Interrupt type to configure
 * @param NewState ENABLE or DISABLE command for the interrupt
 */
void TIM1_ITConfig(
    TIM1_IT_TypeDef TIM1_IT,
    FunctionalState NewState
    )
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
 * Verifies that the timer is configured with the correct parameters:
 * 1. Prescaler value of 512
 * 2. Counter mode set to UP
 * 3. Maximum period value (65535)
 * 4. Repetition counter set to 0
 * 5. Timer is enabled
 * 6. Update interrupt is enabled
 *
 * @param state CMocka state object (unused)
 */
static void test_Init_ConfiguresTimerCorrectly(
    void **state
    )
{
    (void)state;

    // Set expectations for timer configuration
    expect_value(TIM1_TimeBaseInit, TIM1_Prescaler, 512);
    expect_value(TIM1_TimeBaseInit, TIM1_CounterMode, TIM1_COUNTERMODE_UP);
    expect_value(TIM1_TimeBaseInit, TIM1_Period, 65535);
    expect_value(TIM1_TimeBaseInit, TIM1_RepetitionCounter, 0);

    // Verify timer enable
    expect_value(TIM1_Cmd, NewState, ENABLE);

    // Verify update interrupt enable
    expect_value(TIM1_ITConfig, TIM1_IT, TIM1_IT_UPDATE);
    expect_value(TIM1_ITConfig, NewState, ENABLE);

    // Execute function under test
    timer_configurator_init();
}

/**
 * @brief Tests interrupt configuration exclusivity
 *
 * Verifies that only the update interrupt is enabled:
 * 1. Ensures no other interrupts are configured
 * 2. Confirms update interrupt is specifically enabled
 *
 * @param state CMocka state object (unused)
 */
static void test_Init_OnlyEnablesUpdateInterrupt(
    void **state
    )
{
    (void)state;

    // Set expectations for timer configuration
    expect_value(TIM1_TimeBaseInit, TIM1_Prescaler, 512);
    expect_value(TIM1_TimeBaseInit, TIM1_CounterMode, TIM1_COUNTERMODE_UP);
    expect_value(TIM1_TimeBaseInit, TIM1_Period, 65535);
    expect_value(TIM1_TimeBaseInit, TIM1_RepetitionCounter, 0);

    // Verify timer enable
    expect_value(TIM1_Cmd, NewState, ENABLE);

    // Verify only update interrupt is enabled
    expect_value(TIM1_ITConfig, TIM1_IT, TIM1_IT_UPDATE);
    expect_value(TIM1_ITConfig, NewState, ENABLE);

    // Execute function under test
    timer_configurator_init();
}

// =============================================================================
// TEST RUNNER
// =============================================================================
/**
 * @brief Test runner entry point
 *
 * Executes all timer configuration tests:
 * 1. Timer parameter configuration test
 * 2. Interrupt exclusivity test
 *
 * @return int Number of failed tests (0 if all pass)
 */
int main(
    void
    )
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_Init_ConfiguresTimerCorrectly),
        cmocka_unit_test(test_Init_OnlyEnablesUpdateInterrupt),
    };

    return cmocka_run_group_tests(tests, NULL, NULL);
}
