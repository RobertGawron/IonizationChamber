#include "timer_conf.h"

#include "stm8s.h"
#include "stm8s_tim1.h"

/**
 * @brief Prescaler value for 1-second timer configuration
 *
 * Value: 15624 (0x3D08) -> Clock divisor = 15625 (0x3D08 + 1)
 *
 * Calculation:
 *   Prescaler = (CPU_Frequency / Desired_Input_Frequency) - 1
 *             = (16,000,000 / 1024) - 1
 *             = 15625 - 1 = 15624
 */
#define TIMER_PRESCALER       0x3D08

/**
 * @brief Timer counting direction configuration
 *
 * Set to up-counting mode where counter increments from 0 to auto-reload value
 */
#define TIMER_COUNTER_MODE    TIM1_COUNTERMODE_UP

/**
 * @brief Auto-reload value for timer period
 *
 * Value: 1023 (0x03FF) -> Timer period = 1024 counts
 *
 * Calculation:
 *   Period = (AutoReload + 1) / Input_Frequency
 *          = 1024 / 1024Hz = 1 second
 */
#define TIMER_AUTO_RELOAD     0x03FF

/**
 * @brief Repetition counter value
 *
 * Set to 0 (disabled) since not used in this configuration
 */
#define TIMER_REPETITION      0

void timer_conf_init(
    void)
{
    /* Disable timer before reconfiguration */
    TIM1_Cmd(DISABLE);
    TIM1_DeInit();

    /* Clear any pending timer flags */
    TIM1_ClearFlag(TIM1_FLAG_UPDATE);
    TIM1_ClearITPendingBit(TIM1_IT_UPDATE);

    /* Configure timebase for 1-second interrupts */
    TIM1_TimeBaseInit(
        TIMER_PRESCALER,
        TIMER_COUNTER_MODE,
        TIMER_AUTO_RELOAD,
        TIMER_REPETITION);

    /* Enable update interrupt */
    TIM1_ITConfig(TIM1_IT_UPDATE, ENABLE);

    /* Start timer */
    TIM1_Cmd(ENABLE);
}
