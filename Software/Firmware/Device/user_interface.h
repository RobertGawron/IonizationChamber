/**
 * @file user_interface.h
 * @brief Facade layer for abstracting low-level LED driver operations
 *
 * Provides a simplified interface for business logic to interact with status
 * LEDs
 * without directly accessing hardware-specific drivers.
 */

#ifndef user_interface_h
#define user_interface_h

#include "status_leds.h"

/**
 * @brief Initializes the user interface subsystem
 *
 * @note Wraps the underlying status_leds_init() function
 * @see status_leds_init()
 */
#define user_interface_init() status_leds_init()

/**
 * @brief Toggles the system alive indicator LED
 *
 * Provides visual alive indication by toggling the SYSTEM_OK LED.
 * Should be called periodically to indicate system liveness.
 *
 * @note Uses LED_ID_SYSTEM_OK with LED_TOGGLE action
 * @see status_leds_set()
 */
#define user_interface_indicate_alive() status_leds_set(LED_ID_SYSTEM_OK, LED_TOGGLE)

#endif
