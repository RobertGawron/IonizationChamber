#ifndef ClockConfigurator_h
#define ClockConfigurator_h

/**
 * @file clk_conf.h
 * @brief Interface for STM8 clock configuration utilities.
 *
 * Provides a function to initialize the system clock and enable
 * required peripheral clocks.
 */

/**
 * @brief Initialize the system clock and peripheral clocks.
 *
 * Configures the STM8 clock sources, prescalers, and enables
 * clocks for specific peripherals such as I2C, UART, and timers.
 */
void clk_conf_init(
    void);

#endif
