#ifndef ApplicationBuilder_h
#define ApplicationBuilder_h

/**
 * @file application_builder.h
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
void application_builder_init();

/**
 * @brief Main application loop body.
 *
 * This function waits for the next interrupt from a timer
 * and does not perform any active work itself.
 */
void application_builder_run(void);

/**
 * @brief Periodic tick handler.
 *
 * Called from a timer.
 */
void application_builder_tick(void);

extern volatile unsigned char app_tick_flag;

#endif
