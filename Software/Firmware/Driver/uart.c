#include <assert.h>
#include <stdint.h>

#include "uart.h"
#include "pinout_conf.h"

#include "stm8s.h"
#include "stm8s_uart1.h"
#include "stm8s_gpio.h"

#define UART_SPEED 9600

static_assert(IS_UART1_BAUDRATE_OK(UART_SPEED), "UART_SPEED is NOK for STM8S_StdPeriph_Lib");

static void setup_gpio(void);
static void setup_uart1(void);

void uart_init(void)
{
    setup_gpio();
    setup_uart1();
}

void uart_write(
    const uint8_t *output,
    const uint8_t length)
{
    for(uint8_t i = 0; i < length; i++)
    {
        /* Write a character to the UART1 */
        UART1_SendData8(output[i]);

        /* Loop until the end of transmission */
        while(UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET)
        {
            /* Busy-wait until the function returns a status that signifies it's
               done */
        }
    }
}

void setup_gpio(
    void)
{
    GPIO_Init(PORT_UART, PIN_TX, GPIO_MODE_OUT_PP_HIGH_FAST);
    GPIO_Init(PORT_UART, PIN_RX, GPIO_MODE_IN_PU_NO_IT);
}

void setup_uart1(
    void)
{
    UART1_Init(UART_SPEED,
        UART1_WORDLENGTH_8D,
        UART1_STOPBITS_1,
        UART1_PARITY_NO,
        UART1_SYNCMODE_CLOCK_DISABLE,
        UART1_MODE_TXRX_ENABLE);

    UART1_Cmd(ENABLE);
}
