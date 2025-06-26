#include "stm8s.h"
#include "app_builder.h"

#include <stdint.h>
#include "assert_impl.h"
#include "clk_conf.h"
#include "timer_conf.h"
#include "interrupt_control.h"
#include "user_interface.h"

void tim1_isr(void) __interrupt(11)
{
    app_tick_flag = 1;

    TIM1_ClearFlag(TIM1_FLAG_UPDATE);
    TIM1_ClearITPendingBit(TIM1_IT_UPDATE);
}

int main()
{
    app_builder_init();

    for (;;)
    {
        app_builder_run();
    }

    return 0;
}
