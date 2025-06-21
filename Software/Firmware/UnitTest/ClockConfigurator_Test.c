#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h>
#include <cmocka.h>

// Include production header
#include "stm8s_clk.h"
#include "ClockConfigurator.h"

// =============================================================================
// MOCK IMPLEMENTATIONS
// =============================================================================

/**
 * @brief Mock implementation of CLK_DeInit
 *
 * Tracks that this function was called during initialization.
 */
void CLK_DeInit(void)
{
    function_called();
}

/**
 * @brief Mock implementation of CLK_HSECmd
 * @param NewState The state to set (ENABLE/DISABLE)
 *
 * Verifies the HSE enable/disable command parameter.
 */
void CLK_HSECmd(FunctionalState NewState)
{
    check_expected(NewState);
}

/**
 * @brief Mock implementation of CLK_HSICmd
 * @param NewState The state to set (ENABLE/DISABLE)
 *
 * Verifies the HSI enable command parameter.
 */
void CLK_HSICmd(FunctionalState NewState)
{
    check_expected(NewState);
}

/**
 * @brief Mock implementation of CLK_LSICmd
 * @param NewState The state to set (ENABLE/DISABLE)
 *
 * Verifies the LSI disable command parameter.
 */
void CLK_LSICmd(FunctionalState NewState)
{
    check_expected(NewState);
}

/**
 * @brief Mock implementation of CLK_ClockSwitchCmd
 * @param NewState The state to set (ENABLE/DISABLE)
 *
 * Verifies the clock switch enable command parameter.
 */
void CLK_ClockSwitchCmd(FunctionalState NewState)
{
    check_expected(NewState);
}

/**
 * @brief Mock implementation of CLK_HSIPrescalerConfig
 * @param HSIPrescaler The prescaler value to set
 *
 * Verifies the HSI prescaler configuration parameter.
 */
void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
{
    check_expected(HSIPrescaler);
}

/**
 * @brief Mock implementation of CLK_ClockSwitchConfig
 * @param CLK_SwitchMode The clock switch mode
 * @param CLK_NewClock The new clock source
 * @param ITState Interrupt state
 * @param CLK_CurrentClockState Current clock state setting
 * @return ErrorStatus Always returns SUCCESS
 *
 * Verifies all parameters for clock switch configuration.
 */
ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode,
                                  CLK_Source_TypeDef CLK_NewClock,
                                  FunctionalState ITState,
                                  CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
{
    check_expected(CLK_SwitchMode);
    check_expected(CLK_NewClock);
    check_expected(ITState);
    check_expected(CLK_CurrentClockState);
    return SUCCESS;
}

/**
 * @brief Mock implementation of CLK_PeripheralClockConfig
 * @param CLK_Peripheral The peripheral to configure
 * @param NewState The state to set (ENABLE/DISABLE)
 *
 * Verifies peripheral clock configuration parameters.
 */
void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
{
    check_expected(CLK_Peripheral);
    check_expected(NewState);
}

/**
 * @brief Mock implementation of CLK_GetFlagStatus
 * @param CLK_FLAG The flag to check
 * @return FlagStatus Mocked status (SET/RESET)
 *
 * Simulates HSI readiness status and verifies the flag parameter.
 */
FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
{
    check_expected(CLK_FLAG);
    return mock_type(FlagStatus);
}

// =============================================================================
// TEST CASES
// =============================================================================

/**
 * @test
 * @brief Tests correct clock configuration sequence
 *
 * Verifies that ClockConfigurator_Init performs all required initialization steps
 * in the correct order with the correct parameters:
 *
 * Test Steps:
 * 1. Expect clock deinitialization
 * 2. Verify HSE and LSI are disabled
 * 3. Verify HSI is enabled
 * 4. Simulate immediate HSI readiness
 * 5. Verify HSI prescaler configurations (DIV8 then DIV1)
 * 6. Verify clock switch is enabled and configured for HSI in AUTO mode
 * 7. Verify all required peripherals are clocked
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

    // Step 3: Verify HSI enabled
    expect_value(CLK_HSICmd, NewState, ENABLE);

    // Step 4: Simulate immediate HSI readiness
    expect_value(CLK_GetFlagStatus, CLK_FLAG, CLK_FLAG_HSIRDY);
    will_return(CLK_GetFlagStatus, TRUE);

    // Step 5: Verify HSI prescaler configurations
    expect_value(CLK_HSIPrescalerConfig, HSIPrescaler, CLK_PRESCALER_HSIDIV8);
    expect_value(CLK_HSIPrescalerConfig, HSIPrescaler, CLK_PRESCALER_HSIDIV1);

    // Step 6: Verify clock switch configuration
    expect_value(CLK_ClockSwitchCmd, NewState, ENABLE);
    expect_value(CLK_ClockSwitchConfig, CLK_SwitchMode, CLK_SWITCHMODE_AUTO);
    expect_value(CLK_ClockSwitchConfig, CLK_NewClock, CLK_SOURCE_HSI);
    expect_value(CLK_ClockSwitchConfig, ITState, DISABLE);
    expect_value(CLK_ClockSwitchConfig, CLK_CurrentClockState, CLK_CURRENTCLOCKSTATE_ENABLE);

    // Step 7: Verify peripheral clock enables
    expect_value(CLK_PeripheralClockConfig, CLK_Peripheral, CLK_PERIPHERAL_I2C);
    expect_value(CLK_PeripheralClockConfig, NewState, ENABLE);
    expect_value(CLK_PeripheralClockConfig, CLK_Peripheral, CLK_PERIPHERAL_AWU);
    expect_value(CLK_PeripheralClockConfig, NewState, ENABLE);
    expect_value(CLK_PeripheralClockConfig, CLK_Peripheral, CLK_PERIPHERAL_UART1);
    expect_value(CLK_PeripheralClockConfig, NewState, ENABLE);
    expect_value(CLK_PeripheralClockConfig, CLK_Peripheral, CLK_PERIPHERAL_TIMER1);
    expect_value(CLK_PeripheralClockConfig, NewState, ENABLE);

    ClockConfigurator_Init();
}

/**
 * @test
 * @brief Tests HSI readiness polling behavior
 *
 * Verifies that ClockConfigurator_Init properly waits for HSI to become ready
 * before proceeding with configuration:
 *
 * Test Steps:
 * 1. Expect clock deinitialization
 * 2. Verify HSE/LSI disabled
 * 3. Verify HSI enabled
 * 4. Simulate HSI not ready (twice)
 * 5. Simulate HSI ready (third check)
 * 6. Verify prescaler configurations
 * 7. Verify clock switch configuration
 * 8. Verify peripheral clock enables
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

    // Step 3: Verify HSI enabled
    expect_value(CLK_HSICmd, NewState, ENABLE);

    // Step 4: Simulate delayed HSI readiness
    expect_value(CLK_GetFlagStatus, CLK_FLAG, CLK_FLAG_HSIRDY);
    will_return(CLK_GetFlagStatus, FALSE); // First check: not ready
    expect_value(CLK_GetFlagStatus, CLK_FLAG, CLK_FLAG_HSIRDY);
    will_return(CLK_GetFlagStatus, FALSE); // Second check: still not ready
    expect_value(CLK_GetFlagStatus, CLK_FLAG, CLK_FLAG_HSIRDY);
    will_return(CLK_GetFlagStatus, TRUE); // Third check: ready

    // Step 6: Verify prescaler configurations
    expect_value(CLK_HSIPrescalerConfig, HSIPrescaler, CLK_PRESCALER_HSIDIV8);
    expect_value(CLK_HSIPrescalerConfig, HSIPrescaler, CLK_PRESCALER_HSIDIV1);

    // Step 7: Verify clock switch configuration
    expect_value(CLK_ClockSwitchCmd, NewState, ENABLE);
    expect_value(CLK_ClockSwitchConfig, CLK_SwitchMode, CLK_SWITCHMODE_AUTO);
    expect_value(CLK_ClockSwitchConfig, CLK_NewClock, CLK_SOURCE_HSI);
    expect_value(CLK_ClockSwitchConfig, ITState, DISABLE);
    expect_value(CLK_ClockSwitchConfig, CLK_CurrentClockState, CLK_CURRENTCLOCKSTATE_ENABLE);

    // Step 8: Verify peripheral clock enables
    expect_value(CLK_PeripheralClockConfig, CLK_Peripheral, CLK_PERIPHERAL_I2C);
    expect_value(CLK_PeripheralClockConfig, NewState, ENABLE);
    expect_value(CLK_PeripheralClockConfig, CLK_Peripheral, CLK_PERIPHERAL_AWU);
    expect_value(CLK_PeripheralClockConfig, NewState, ENABLE);
    expect_value(CLK_PeripheralClockConfig, CLK_Peripheral, CLK_PERIPHERAL_UART1);
    expect_value(CLK_PeripheralClockConfig, NewState, ENABLE);
    expect_value(CLK_PeripheralClockConfig, CLK_Peripheral, CLK_PERIPHERAL_TIMER1);
    expect_value(CLK_PeripheralClockConfig, NewState, ENABLE);

    ClockConfigurator_Init();
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
        cmocka_unit_test(test_ClockConfigurator_Init_ConfiguresClockCorrectly),
        cmocka_unit_test(test_ClockConfigurator_Init_WaitsForHSIReady),
    };

    return cmocka_run_group_tests(tests, NULL, NULL);
}