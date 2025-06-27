/**
 * @file status_leds.h
 * @brief LED status management interface
 *
 * Defines LED identifiers and control operations for system status indication.
 */

#ifndef status_leds_h
#define status_leds_h

/**
 * @brief Enumeration of available system LEDs
 */
typedef enum {
    LED_ID_SYSTEM_OK, /**< System status indicator LED */
    LED_ID_DATA_ACTIVE /**< Data activity indicator LED */
} LedId_t;

/**
 * @brief Enumeration of possible LED states
 */
typedef enum {
    LED_OFF, /**< Turn LED off */
    LED_ON, /**< Turn LED on */
    LED_TOGGLE /**< Toggle current LED state */
} LedState_t;

/**
 * @brief Initializes LED control hardware
 *
 * Configures GPIO pins and peripherals required for status LED control.
 * Must be called before any other status_leds functions.
 */
void status_leds_init(
    void);

/**
 * @brief Sets the state of a specified LED
 *
 * @param led   Identifier of the LED to control
 * @param state Desired state to set (OFF, ON, or TOGGLE)
 */
void status_leds_set(
    LedId_t led,
    LedState_t state);

#endif
