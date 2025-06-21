#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h>
#include <cmocka.h>
#include <stdint.h>

// Mocks
#include "SystemMock.h"

// Include production code
#include "stm8s.h"
#include "TimerConfigurator.h"

// =============================================================================
// MOCK FUNCTIONS
// =============================================================================
void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
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

void TIM1_ITConfig(TIM1_IT_TypeDef TIM1_IT, FunctionalState NewState)
{
    check_expected(TIM1_IT);
    check_expected(NewState);
}

// Minimal stubs for other TIM1 functions
void TIM1_DeInit(void) {}
void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                  TIM1_OutputState_TypeDef TIM1_OutputState,
                  TIM1_OutputNState_TypeDef TIM1_OutputNState,
                  uint16_t TIM1_Pulse, TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
                  TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
                  TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
                  TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState) {}

// =============================================================================
// TEST CASES (FIXED PARAMETER NAMES)
// =============================================================================
static void test_Init_ConfiguresTimerCorrectly(void **state)
{
    (void)state;

    expect_value(TIM1_TimeBaseInit, TIM1_Prescaler, 512);
    expect_value(TIM1_TimeBaseInit, TIM1_CounterMode, TIM1_COUNTERMODE_UP);
    expect_value(TIM1_TimeBaseInit, TIM1_Period, 65535);
    expect_value(TIM1_TimeBaseInit, TIM1_RepetitionCounter, 0);

    expect_value(TIM1_Cmd, NewState, ENABLE);

    expect_value(TIM1_ITConfig, TIM1_IT, TIM1_IT_UPDATE);
    expect_value(TIM1_ITConfig, NewState, ENABLE);

    TimerConfigurator_Init();
}

static void test_Init_OnlyEnablesUpdateInterrupt(void **state)
{
    (void)state;

    // FIX: Use exact parameter names
    expect_value(TIM1_TimeBaseInit, TIM1_Prescaler, 512);
    expect_value(TIM1_TimeBaseInit, TIM1_CounterMode, TIM1_COUNTERMODE_UP);
    expect_value(TIM1_TimeBaseInit, TIM1_Period, 65535);
    expect_value(TIM1_TimeBaseInit, TIM1_RepetitionCounter, 0);

    expect_value(TIM1_Cmd, NewState, ENABLE);

    // Capture TIM1_ITConfig calls
    expect_value(TIM1_ITConfig, TIM1_IT, TIM1_IT_UPDATE);
    expect_value(TIM1_ITConfig, NewState, ENABLE);

    TimerConfigurator_Init();
}

// =============================================================================
// TEST RUNNER
// =============================================================================
int main(void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_Init_ConfiguresTimerCorrectly),
        cmocka_unit_test(test_Init_OnlyEnablesUpdateInterrupt),
    };

    return cmocka_run_group_tests(tests, NULL, NULL);
}