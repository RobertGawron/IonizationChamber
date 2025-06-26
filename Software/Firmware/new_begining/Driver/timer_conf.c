#include "timer_conf.h"
#include "stm8s_tim1.h"
#include "stm8s_clk.h"
// #include "stm8s_itc.h"

void timer_conf_init()
{
    // 1. Disable timer before configuration
    TIM1_Cmd(DISABLE);
    TIM1_DeInit();

    // 2. Clear any pending flags
    TIM1_ClearFlag(TIM1_FLAG_UPDATE);
    TIM1_ClearITPendingBit(TIM1_IT_UPDATE);

    // 3. Configure timebase for 1-second interrupts
    // Prescaler = 15624 (0x3D08) → Clock divisor = 15625
    // Auto-reload = 1023 → 1024 counts (1024 * 15625 = 16,000,000 cycles = 1 second)
    TIM1_TimeBaseInit(
        0x3D08,              // Prescaler 15624 (0x3D08)
        TIM1_COUNTERMODE_UP, // Count up
        0x03FF,              // Auto-reload 1023 (0x03FF)
        0                    // Repetition counter
    );

    // 4. Critical configuration
    // TIM1_ARRPreloadConfig(ENABLE);                       // Enable auto-reload preload buffer
    // TIM1_UpdateRequestConfig(TIM1_UPDATESOURCE_REGULAR); // Update on overflow

    // 5. Enable interrupt
    TIM1_ITConfig(TIM1_IT_UPDATE, ENABLE);

    // 6. Set interrupt priority (medium level)
    // ITC_SetSoftwarePriority(ITC_IRQ_TIM1_OVF, ITC_PRIORITYLEVEL_2);

    // 7. Start timer
    TIM1_Cmd(ENABLE);
}