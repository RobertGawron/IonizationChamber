#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h> // NOLINT(misc-include-cleaner), needed by <cmocka.h>
#include <cmocka.h>

// Include production header
#include "stm8s.h"
#include "stm8s_clk.h"
#include "clk_conf.h"

// =============================================================================
// MOCK IMPLEMENTATIONS
// =============================================================================

void CLK_DeInit(void)
{
    function_called();
}

void CLK_HSECmd(FunctionalState NewState)
{
    check_expected(NewState);
}

void CLK_HSICmd(FunctionalState NewState)
{
    check_expected(NewState);
}

void CLK_LSICmd(FunctionalState NewState)
{
    check_expected(NewState);
}

void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
{
    check_expected(CLK_Prescaler);
}

void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
{
    check_expected(HSIPrescaler);
}

void CLK_PeripheralClockConfig(
    CLK_Peripheral_TypeDef CLK_Peripheral,
    FunctionalState NewState)
{
    check_expected(CLK_Peripheral);
    check_expected(NewState);
}

FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
{
    check_expected(CLK_FLAG);
    return mock_type(FlagStatus);
}

// =============================================================================
// TEST CASES
// =============================================================================

/**
 * @brief Tests correct clock configuration sequence
 *
 * Verifies that clk_conf_init performs all required initialization steps:
 * 1. Clock deinitialization
 * 2. Disable HSE and LSI
 * 3. Enable HSI and wait until ready
 * 4. Set HSI and CPU prescalers to DIV1
 * 5. Enable peripheral clocks for I2C, AWU, UART1, and TIMER1
 *
 * @param state CMocka state object (unused)
 */
static void test_ClockConfigurator_Init_ConfiguresClockCorrectly(void **state)
{
    (void)state;

    // Step 1: Expect clock deinitialization
    expect_function_call(CLK_DeInit);

    // Step 2: Verify HSE/LSI disabled
    expect_value(CLK_HSECmd, NewState, DISABLE);
    expect_value(CLK_LSICmd, NewState, DISABLE);

    // Step 3: Verify HSI enabled and readiness
    expect_value(CLK_HSICmd, NewState, ENABLE);
    expect_value(CLK_GetFlagStatus, CLK_FLAG, CLK_FLAG_HSIRDY);
    will_return(CLK_GetFlagStatus, SET); // HSI ready immediately

    // Step 4: Verify prescaler configurations
    expect_value(CLK_HSIPrescalerConfig, HSIPrescaler, CLK_PRESCALER_HSIDIV1);
    expect_value(CLK_SYSCLKConfig, CLK_Prescaler, CLK_PRESCALER_CPUDIV1);

    // Step 5: Verify peripheral clock enables
    expect_value(CLK_PeripheralClockConfig, CLK_Peripheral, CLK_PERIPHERAL_I2C);
    expect_value(CLK_PeripheralClockConfig, NewState, ENABLE);
    expect_value(CLK_PeripheralClockConfig, CLK_Peripheral, CLK_PERIPHERAL_AWU);
    expect_value(CLK_PeripheralClockConfig, NewState, ENABLE);
    expect_value(CLK_PeripheralClockConfig, CLK_Peripheral, CLK_PERIPHERAL_UART1);
    expect_value(CLK_PeripheralClockConfig, NewState, ENABLE);
    expect_value(CLK_PeripheralClockConfig, CLK_Peripheral, CLK_PERIPHERAL_TIMER1);
    expect_value(CLK_PeripheralClockConfig, NewState, ENABLE);

    clk_conf_init();
}

/**
 * @brief Tests HSI readiness polling behavior
 *
 * Verifies that clk_conf_init properly waits for HSI to become ready
 * before proceeding with configuration.
 *
 * @param state CMocka state object (unused)
 */
static void test_ClockConfigurator_Init_WaitsForHSIReady(void **state)
{
    (void)state;

    // Step 1: Expect clock deinitialization
    expect_function_call(CLK_DeInit);

    // Step 2: Verify HSE/LSI disabled
    expect_value(CLK_HSECmd, NewState, DISABLE);
    expect_value(CLK_LSICmd, NewState, DISABLE);

    // Step 3: Verify HSI enabled and delayed readiness
    expect_value(CLK_HSICmd, NewState, ENABLE);

    // Simulate delayed readiness (2 not ready, then ready)
    expect_value(CLK_GetFlagStatus, CLK_FLAG, CLK_FLAG_HSIRDY);
    will_return(CLK_GetFlagStatus, RESET); // First check: not ready
    expect_value(CLK_GetFlagStatus, CLK_FLAG, CLK_FLAG_HSIRDY);
    will_return(CLK_GetFlagStatus, RESET); // Second check: still not ready
    expect_value(CLK_GetFlagStatus, CLK_FLAG, CLK_FLAG_HSIRDY);
    will_return(CLK_GetFlagStatus, SET); // Third check: ready

    // Step 4: Verify prescaler configurations
    expect_value(CLK_HSIPrescalerConfig, HSIPrescaler, CLK_PRESCALER_HSIDIV1);
    expect_value(CLK_SYSCLKConfig, CLK_Prescaler, CLK_PRESCALER_CPUDIV1);

    // Step 5: Verify peripheral clock enables
    expect_value(CLK_PeripheralClockConfig, CLK_Peripheral, CLK_PERIPHERAL_I2C);
    expect_value(CLK_PeripheralClockConfig, NewState, ENABLE);
    expect_value(CLK_PeripheralClockConfig, CLK_Peripheral, CLK_PERIPHERAL_AWU);
    expect_value(CLK_PeripheralClockConfig, NewState, ENABLE);
    expect_value(CLK_PeripheralClockConfig, CLK_Peripheral, CLK_PERIPHERAL_UART1);
    expect_value(CLK_PeripheralClockConfig, NewState, ENABLE);
    expect_value(CLK_PeripheralClockConfig, CLK_Peripheral, CLK_PERIPHERAL_TIMER1);
    expect_value(CLK_PeripheralClockConfig, NewState, ENABLE);

    clk_conf_init();
}

// =============================================================================
// TEST RUNNER
// =============================================================================

int main(void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_ClockConfigurator_Init_ConfiguresClockCorrectly),
        cmocka_unit_test(test_ClockConfigurator_Init_WaitsForHSIReady),
    };

    return cmocka_run_group_tests(tests, NULL, NULL);
}
