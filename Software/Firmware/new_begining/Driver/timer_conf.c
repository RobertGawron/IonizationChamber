#include "timer_conf.h"
#include "stm8s_tim1.h"
#include "stm8s_clk.h"

void timer_conf_init()
{
    CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, ENABLE);

    // Prescaler = 125 (actual divisor = 125 + 1 = 126)
    // Period = 63492 (auto-reload value)
    //  TIM1_TimeBaseInit(125, TIM1_COUNTERMODE_UP, 63492, 0);
    //  TIM1_TimeBaseInit(326, TIM1_COUNTERMODE_UP, 6349, 0);

    TIM1_TimeBaseInit(125, TIM1_COUNTERMODE_UP, 1000, 0);

    //  ITC_SetSoftwarePriority(ITC_IRQ_TIM1_OVF, ITC_PRIORITYLEVEL_1); // Medium priority
    // TIM1_TimeBaseInit(125, TIM1_COUNTERMODE_UP, 1000, 0);

    // TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, 1000, 0); // 16e6 / 1 / 1001 = about 16 kHz interrupt rate.

    TIM1_Cmd(ENABLE);
    TIM1_ITConfig(TIM1_IT_UPDATE, ENABLE);
}
