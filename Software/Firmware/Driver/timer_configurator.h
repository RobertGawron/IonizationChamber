#ifndef TimerConfigurator_h
#define TimerConfigurator_h

/**
 * @file timer_configurator.h
 * @brief Interface for timer configuration on STM8 microcontrollers.
 *
 * Provides a function to initialize a hardware timer to generate periodic
 * interrupts. The timer is configured to call `application_builder_tick()`
 * via its interrupt handler, which manages device state and measurement data.
 */

/**
 * @brief Initialize the hardware timer.
 *
 * Configures the timer to generate periodic update interrupts and enables
 * the timer and its interrupt.
 */
void timer_configurator_init();

#endif
