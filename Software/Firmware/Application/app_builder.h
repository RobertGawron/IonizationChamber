#ifndef app_builder_h
#define app_builder_h

/**
 * @file app_builder.h
 * @brief Application builder interface.
 *
 * Provides initialization and runtime functions to manage the main
 * application lifecycle and periodic tasks in the embedded system.
 */

/**
 * @brief Initialize the application components.
 *
 * Sets up peripherals, drivers, and modules required for the application.
 */
void app_builder_init(
    void);

/**
 * @brief Main application loop body.
 *
 * This function waits for the next interrupt from a timer
 * and does not perform any active work itself.
 */
void app_builder_run(
    void);

/**
 * @brief Periodic tick handler.
 *
 * Called from a timer.
 */
void app_builder_tick(
    void);

/**
 * @brief Application tick timer interrupt flag
 *
 * This volatile flag is set by the system tick timer interrupt service routine
 *(ISR)
 * to indicate a tick event has occurred. The main application loop should:
 * 1. Monitor this flag
 * 2. Perform periodic tasks when flag is set
 * 3. Clear the flag after processing
 *
 * @note Marked volatile because it's modified in ISR context and accessed in
 * main loop
 * @warning Must be cleared explicitly after handling to prevent duplicate
 * processing
 */
extern volatile unsigned char app_tick_flag;

#endif
