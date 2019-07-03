/*
 * DataLogger.c
 *
 *  Created on: 16.06.2019
 *      Author: robert
 */

#include "../Inc/Logger.h"

#include "stm8s_uart1.h"
#include "stm8s_clk.h"


void clock_setup(void)
{
      CLK_DeInit();

      CLK_HSECmd(DISABLE);
      CLK_LSICmd(DISABLE);
      CLK_HSICmd(ENABLE);
      while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);

      CLK_ClockSwitchCmd(ENABLE);
      CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV8);
      CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);

      CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI,
      DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);

//      CLK_PeripheralClockConfig(CLK_PERIPHERAL_I2C, DISABLE);
//      CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);
//      CLK_PeripheralClockConfig(CLK_PERIPHERAL_ADC, DISABLE);
      CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
      CLK_PeripheralClockConfig(CLK_PERIPHERAL_UART1, ENABLE);
      CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, DISABLE);
      CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, DISABLE);
      CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, DISABLE);
}


void GPIO_setup(void)
{
     GPIO_DeInit(GPIOD);

     GPIO_Init(GPIOD, GPIO_PIN_5, GPIO_MODE_OUT_PP_HIGH_FAST);
     GPIO_Init(GPIOD, GPIO_PIN_6, GPIO_MODE_IN_PU_NO_IT);
}


void UART1_setup(void)
{
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
    clock_setup();
    GPIO_setup();
    UART1_setup();
}

void Logger_Tick()
{
    //        if(UART1_GetFlagStatus(UART1_FLAG_RXNE) == TRUE)
              {
    //             ch = UART1_ReceiveData8();
                 UART1_ClearFlag(UART1_FLAG_RXNE);
                 UART1_SendData8('r');
                 UART1_SendData8('o');
                 UART1_SendData8('b');
                 UART1_SendData8('e');
                 UART1_SendData8('r');
                 UART1_SendData8('t');
              }

              if(UART1_GetFlagStatus(UART1_FLAG_TXE) == FALSE)
              {
              }
}
