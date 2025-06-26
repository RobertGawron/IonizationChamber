#include "logger.h"
#include "stm8s_uart1.h"
#include "pinout_configuration.h"
#include "user_interface.h"
// #define USE_PRINTF
#if defined USE_PRINTF
#include <stdio.h>
#endif

#define UART_SPEED 9600

// Just to silence cppcheck, we need forever loop here
#define FOREVER_LOOP_CONDITION TRUE

static void GPIO_setup(
    void);
static void UART1_setup(
    void);

#if defined USE_PRINTF
int putchar(
    int c)
#else
void putchar(
    char c)
#endif
{
    logger_print(&c, 1);
}

void logger_init()
{
    GPIO_setup();
    UART1_setup();
}

void logger_print(
    const uint8_t *output,
    const uint8_t length)
{
    for (uint8_t i = 0; i < length; i++)
    {
        /* Write a character to the UART1 */
        // UART1_SendData8(output[i]);
        UART1_SendData8(55);

        /* Loop until the end of transmission */
        while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET)
        {
            /* Busy-wait until the function returns a status that signifies it's done */
        }
    }
}

#ifdef USE_FULL_ASSERT
// cppcheck-suppress unusedFunction
void assert_failed(
    uint8_t *file,
    uint32_t line)
{
    (void)file;
    (void)line;
    // putchar('x');
    //  printf("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");

#if defined USE_PRINTF
    // printf("[error] asset failed %s %u\r\n", file, line);
#endif

    /*    int len = 0;
        int i = 0;

        for (int len = 0;; len++)
        {
            if (file[len] == '\0')
            {
                break;
            }
            else
            {
                logger_print('x', 1);
            }
            //        break;
        }
        //  logger_print(file, len);
    */
    /* user_interface_update_message(
         USER_INTERFACE_COLLECTING_DATA_MSG,
         USER_INTERFACE_DISABLE);
    */

    user_interface_update_message(
        USER_INTERFACE_COLLECTING_DATA_MSG,
        USER_INTERFACE_ENABLE);

    while (FOREVER_LOOP_CONDITION)
    {
        // Failed, wait forever
    }
}

#endif

void GPIO_setup(
    void)
{
    GPIO_DeInit(PORT_UART);

    GPIO_Init(PORT_UART, PIN_TX, GPIO_MODE_OUT_PP_HIGH_FAST);
    GPIO_Init(PORT_UART, PIN_RX, GPIO_MODE_IN_PU_NO_IT);
}

void UART1_setup(
    void)
{
    UART1_DeInit();

    UART1_Init(UART_SPEED,
               UART1_WORDLENGTH_8D,
               UART1_STOPBITS_1,
               UART1_PARITY_NO,
               UART1_SYNCMODE_CLOCK_DISABLE,
               UART1_MODE_TXRX_ENABLE);

    UART1_Cmd(ENABLE);
}
