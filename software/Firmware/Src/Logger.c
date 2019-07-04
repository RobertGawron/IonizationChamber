/*
 * DataLogger.c
 *
 *  Created on: 16.06.2019
 *      Author: robert
 */

#include "Logger.h"
#include <stdio.h>
#include "stm8s_uart1.h"


void GPIO_setup(void)
{
    // TODO: magic numbers
    GPIO_DeInit(GPIOD);

    GPIO_Init(GPIOD, GPIO_PIN_5, GPIO_MODE_OUT_PP_HIGH_FAST);
    GPIO_Init(GPIOD, GPIO_PIN_6, GPIO_MODE_IN_PU_NO_IT);
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


void Logger_Init()
{
    GPIO_setup();
    UART1_setup();
}


void Logger_Tick()
{
    printf ("xyz");
    //printf ('y');
    //printf ('z');
}


void putchar(char c)
{
    /* Write a character to the UART1 */
    UART1_SendData8(c);
    /* Loop until the end of transmission */
    while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET);
}
