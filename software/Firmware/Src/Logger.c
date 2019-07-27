/*
 * DataLogger.c
 *
 *  Created on: 16.06.2019
 *      Author: robert
 */

#include "Logger.h"
//#include <stdio.h>
#include "stm8s_uart1.h"
#include "PinoutConfiguration.h"

static void GPIO_setup(void);
static void UART1_setup(void);

#ifdef USE_FULL_ASSERT

void assert_failed(uint8_t* file, uint32_t line)
{
    (void)file;
    (void)line;

    //printf("[error] asset failed %s %d\r\n", file, line);

    while (TRUE)
    {
        // empty
    }
}

#endif


void Logger_Init()
{
    GPIO_setup();
    UART1_setup();
}


void Logger_Tick()
{
    // printf ("ok ");
}


void putchar(char c)
{
    /* Write a character to the UART1 */
    UART1_SendData8(c);
    /* Loop until the end of transmission */
    while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET);
}


void GPIO_setup(void)
{
    GPIO_DeInit(PORT_UART);

    GPIO_Init(PORT_UART, PIN_TX, GPIO_MODE_OUT_PP_HIGH_FAST);
    GPIO_Init(PORT_UART, PIN_RX, GPIO_MODE_IN_PU_NO_IT);
}


void UART1_setup(void)
{
    // TODO: magic numbers
    UART1_DeInit();

    UART1_Init(9600,
               UART1_WORDLENGTH_8D,
               UART1_STOPBITS_1,
               UART1_PARITY_NO,
               UART1_SYNCMODE_CLOCK_DISABLE,
               UART1_MODE_TXRX_ENABLE);

    UART1_Cmd(ENABLE);
}


