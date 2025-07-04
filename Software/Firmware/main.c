#include "main.h"

#include "app_builder.h"
#include "stm8s_tim1.h"

void tim1_isr(
    void) __interrupt(11)
{
    app_tick_flag = 1;

    TIM1_ClearFlag(TIM1_FLAG_UPDATE);
    TIM1_ClearITPendingBit(TIM1_IT_UPDATE);
}

int main()
{
    app_builder_init();

    for(;;)
    {
        app_builder_run();
    }

    return 0;
}
