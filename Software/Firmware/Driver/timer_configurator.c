#include "timer_configurator.h"
#include "stm8s_tim1.h"

void timer_configurator_init()
{
    TIM1_TimeBaseInit(512, TIM1_COUNTERMODE_UP, 65535, 0);
    TIM1_Cmd(ENABLE);
    TIM1_ITConfig(TIM1_IT_UPDATE, ENABLE);
}
