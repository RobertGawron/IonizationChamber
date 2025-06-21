#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h>
#include <cmocka.h>
#include <stdint.h>

// Include production header
#define UART_SPEED 9600

#include "PinoutConfiguration.h"
#include "Logger.h"

// =============================================================================
// MOCK FUNCTIONS
// =============================================================================
void GPIO_DeInit(GPIO_TypeDef *GPIOx)
{
    check_expected(GPIOx);
}

void GPIO_Init(GPIO_TypeDef *GPIOx,
               GPIO_Pin_TypeDef GPIO_Pin,
               GPIO_Mode_TypeDef GPIO_Mode)
{
    check_expected(GPIOx);
    check_expected(GPIO_Pin);
    check_expected(GPIO_Mode);
}

void UART1_DeInit(void)
{
    function_called(); // Track that this was called
}

void UART1_Init(uint32_t BaudRate,
                UART1_WordLength_TypeDef WordLength,
                UART1_StopBits_TypeDef StopBits,
                UART1_Parity_TypeDef Parity,
                UART1_SyncMode_TypeDef SyncMode,
                UART1_Mode_TypeDef Mode)
{
    check_expected(BaudRate);
    check_expected(WordLength);
    check_expected(StopBits);
    check_expected(Parity);
    check_expected(SyncMode);
    check_expected(Mode);
}

void UART1_Cmd(FunctionalState NewState)
{
    check_expected(NewState);
}

void UART1_SendData8(uint8_t Data)
{
    check_expected(Data);
}

FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef Flag)
{
    // Always return SET to prevent blocking
    (void)Flag;
    return SET;
}

// =============================================================================
// TEST CASES
// =============================================================================
static void test_Logger_Init_ConfiguresHardware(void **state)
{
    (void)state;

    // GPIO_DeInit expectations
    expect_value(GPIO_DeInit, GPIOx, PORT_UART);

    // GPIO_Init expectations
    expect_value(GPIO_Init, GPIOx, PORT_UART);
    expect_value(GPIO_Init, GPIO_Pin, PIN_TX);
    expect_value(GPIO_Init, GPIO_Mode, GPIO_MODE_OUT_PP_HIGH_FAST);

    expect_value(GPIO_Init, GPIOx, PORT_UART);
    expect_value(GPIO_Init, GPIO_Pin, PIN_RX);
    expect_value(GPIO_Init, GPIO_Mode, GPIO_MODE_IN_PU_NO_IT);

    // UART1 expectations
    expect_function_call(UART1_DeInit);

    expect_value(UART1_Init, BaudRate, UART_SPEED);
    expect_value(UART1_Init, WordLength, UART1_WORDLENGTH_8D);
    expect_value(UART1_Init, StopBits, UART1_STOPBITS_1);
    expect_value(UART1_Init, Parity, UART1_PARITY_NO);
    expect_value(UART1_Init, SyncMode, UART1_SYNCMODE_CLOCK_DISABLE);
    expect_value(UART1_Init, Mode, UART1_MODE_TXRX_ENABLE);

    expect_value(UART1_Cmd, NewState, ENABLE);

    Logger_Init();
}

static void test_Logger_Print_SendsSingleByte(void **state)
{
    (void)state;

    // Expect UART send operation
    expect_value(UART1_SendData8, Data, 0x55);

    // Expect status check (prevents blocking)
    // Handled by mock always returning SET

    Logger_Print(0x55);
}

static void test_Logger_Print_SendsMultipleBytes(void **state)
{
    (void)state;

    // Sequence of bytes to send
    uint8_t test_data[] = {0x01, 0xAA, 0xFF, 0x00};

    for (int i = 0; i < sizeof(test_data); i++)
    {
        expect_value(UART1_SendData8, Data, test_data[i]);
        Logger_Print(test_data[i]);
    }
}

static void test_Logger_Print_HandlesFullRange(void **state)
{
    (void)state;

    // Test min, mid, and max values
    expect_value(UART1_SendData8, Data, 0x00);
    Logger_Print(0x00);

    expect_value(UART1_SendData8, Data, 0x7F);
    Logger_Print(0x7F);

    expect_value(UART1_SendData8, Data, 0xFF);
    Logger_Print(0xFF);
}

// =============================================================================
// TEST RUNNER
// =============================================================================
int main(void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_Logger_Init_ConfiguresHardware),
        cmocka_unit_test(test_Logger_Print_SendsSingleByte),
        cmocka_unit_test(test_Logger_Print_SendsMultipleBytes),
        cmocka_unit_test(test_Logger_Print_HandlesFullRange),
    };

    return cmocka_run_group_tests(tests, NULL, NULL);
}