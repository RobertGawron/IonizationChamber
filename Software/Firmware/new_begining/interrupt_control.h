#ifndef InterruptConfigurator_h
#define InterruptConfigurator_h

/**
 * @file interrupt_control.h
 * @brief Facade interface for STM8 interrupt control and low-power waiting.
 *
 * Provides a simplified interface that hides direct STM8 hardware access.
 * This prevents high-level code from calling low-level functions directly.
 */

#include "stm8s_conf_wrapper.h"

/**
 * @brief Enable global interrupts.
 *
 * Provides a high-level interface to enable global interrupts
 * without exposing low-level STM8 functions directly.
 */
static inline void interrupt_control_enable()
{
    enableInterrupts();
}

/**
 * @brief Enter low-power wait-for-interrupt mode.
 *
 * Provides a high-level interface to enter low-power mode until an interrupt
 *occurs,
 * hiding direct usage of STM8 intrinsic functions.
 */
static inline void interrupt_control_wait(
    void)
{
    wfi();
}

#endif
