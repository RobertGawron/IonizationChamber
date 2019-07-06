/*
 * TimerConfigurator.c
 *
 *  Created on: 06.07.2019
 *      Author: robert
 */

#include "TimerConfigurator.h"
#include "stm8s_tim1.h"

#define CLK_DIVR    (*(volatile uint8_t *)0x50C6)

#define TIM1_CR1    (*(volatile uint8_t *)0x5250)
#define TIM1_IER    (*(volatile uint8_t *)0x5254)
#define TIM1_SR1    (*(volatile uint8_t *)0x5255)
#define TIM1_CNTRH    (*(volatile uint8_t *)0x525E)
#define TIM1_CNTRL    (*(volatile uint8_t *)0x525F)
#define TIM1_PSCRH    (*(volatile uint8_t *)0x5260)
#define TIM1_PSCRL    (*(volatile uint8_t *)0x5261)

#define PD_ODR    (*(volatile uint8_t *)0x500f)
#define PD_DDR    (*(volatile uint8_t *)0x5011)
#define PD_CR1    (*(volatile uint8_t *)0x5012)

void TimerConfigurator_Init()
{
    CLK_DIVR = 0x00; // Set the frequency to 16 MHz

    TIM1_PSCRH = 0x00; // Configure timer
    TIM1_PSCRL = 0x80;
   // TIM1_DeInit();


    TIM1_Cmd(ENABLE);
    TIM1_ITConfig(TIM1_IT_UPDATE, ENABLE);
}
