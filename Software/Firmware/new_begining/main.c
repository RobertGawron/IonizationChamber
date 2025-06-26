#include "stm8s.h"
#include "app_builder.h"

#include <stdint.h>
#include "assert_impl.h"
#include "clk_conf.h"
#include "timer_conf.h"
#include "interrupt_control.h"
#include "user_interface.h"

static int i = 0;
void timer_isr(void) __interrupt(11)
{
    TIM1->SR1 = 0;
    GPIOD->ODR ^= GPIO_PIN_4;
    i = ~i;
    user_interface_update_message(USER_INTERFACE_COLLECTING_DATA_MSG, (i == 0) ? USER_INTERFACE_ENABLE : USER_INTERFACE_DISABLE);
    user_interface_update_message(USER_INTERFACE_STATE_OK_MSG, (i == 0) ? USER_INTERFACE_DISABLE : USER_INTERFACE_ENABLE);

    TIM1_ClearFlag(TIM1_FLAG_UPDATE);
    TIM1_ClearITPendingBit(TIM1_IT_UPDATE);
}

void main()
{
    // Enable clock to GPIOD and TIM1
    clk_conf_init();
    //
    user_interface_init();
    timer_conf_init();
    // Configure PD4
    GPIOD->DDR |= GPIO_PIN_4;
    GPIOD->CR1 |= GPIO_PIN_4;

    // Configure TIM1
    TIM1->PSCRL = 125;
    TIM1->ARRH = 1000 >> 8;
    TIM1->ARRL = 1000 & 0xFF;
    TIM1->CR1 = TIM1_CR1_ARPE | TIM1_CR1_CEN;
    TIM1->IER = TIM1_IER_UIE;

    // Enable interrupts
    __asm rim
        __endasm;

    while (1)
    {
        wfi();
    }
}

/*
#include "app_builder.h"
#include "stm8s.h"
int main()
{
    app_builder_init();
    enableInterrupts();
    for (;;)
    {
        app_builder_run();
    }

    return 0;
}*/