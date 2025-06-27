#ifndef interrupt_control_h
#define interrupt_control_h

/**
 * @file interrupt_control.h
 * @brief Facade interface for STM8 interrupt control and low-power waiting.
 *
 * Provides a simplified interface that hides direct STM8 hardware access.
 * This prevents high-level code from calling low-level functions directly.
 */

#include "stm8s.h"

#ifdef DO_NOT_USE_STM8_ASM_MNEMONICS

/*
 * The macros below expand to assembly instructions. Because they come from the
 * STM8 peripheral library, they are STM8 CPU mnemonics, and attempting to run
 * unit tests on the x86 architecture would fail.
 *
 * As a workaround, these mnemonics are undefined and replaced with empty
 * functions. The functions can later be stubbed and used in unit tests.
 *
 * For the target build this block is disabled, so the workaround is completely
 * transparent there.
 *
 * I considered moving the inclusion of stm8s.h and this #define section to a
 * separate wrapper header, but the linter then complains about not directly
 * including what is used. Because this pattern is rare in the codebase, leaving
 * it here is acceptable.
 */

#undef wfi
#undef rim
#undef enableInterrupts

void enableInterrupts(void);
void wfi(void);
void rim(void);

#endif /* DO_NOT_USE_STM8_ASM_MNEMONICS */

/**
 * @brief Enable global interrupts.
 *
 * Provides a high-level interface to enable global interrupts
 * without exposing low-level STM8 functions directly.
 */
static inline void interrupt_control_enable(
    void)
{
    enableInterrupts();
}

/**
 * @brief Enter low-power wait-for-interrupt mode.
 *
 * Provides a high-level interface to enter low-power mode until an interrupt
 * occurs,
 * hiding direct usage of STM8 intrinsic functions.
 */
static inline void interrupt_control_wait(
    void)
{
    wfi();
}

#endif
