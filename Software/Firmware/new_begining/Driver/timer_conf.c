#include "timer_conf.h"
#include "stm8s_tim1.h"
#include "user_interface.h"
#include "stm8s_clk.h"
#include "stm8s_itc.h"
void timer_conf_init()
{

    // 1. Disable timer first
    TIM1_Cmd(DISABLE);

    // 2. Full deinit
    TIM1_DeInit();

    // 4. Clear any pending flags
    TIM1_ClearFlag(TIM1_FLAG_UPDATE);
    TIM1_ClearITPendingBit(TIM1_IT_UPDATE);

    // 5. Enable with minimal configuration
    TIM1_ARRPreloadConfig(ENABLE);
    TIM1_ITConfig(TIM1_IT_UPDATE, ENABLE);

    // 6. Set priority AFTER configuration
    ITC_SetSoftwarePriority(ITC_IRQ_TIM1_OVF, ITC_PRIORITYLEVEL_3);

    // 7. Enable timer last
    TIM1_Cmd(ENABLE);
    //  user_interface_update_message(USER_INTERFACE_COLLECTING_DATA_MSG, USER_INTERFACE_ENABLE);
}