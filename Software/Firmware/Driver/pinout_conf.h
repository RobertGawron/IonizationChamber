#ifndef pinout_conf_h
#define pinout_conf_h

/**
 * @file pinout_conf.h
 * @brief Hardware pin configuration definitions.
 *
 * Defines GPIO port and pin mappings for peripherals including UART, LEDs, and
 * I2C.
 */

/**
 * @name UART Configuration
 * @{
 */
#define PORT_UART GPIOD   /**< UART peripheral GPIO port */
#define PIN_TX GPIO_PIN_5 /**< UART transmit pin number */
#define PIN_RX GPIO_PIN_6 /**< UART receive pin number */
/** @} */

/**
 * @name LED Configuration
 * @{
 */
#define PORT_LED GPIOD           /**< LED GPIO port */
#define PIN_LED_GREEN GPIO_PIN_2 /**< Green LED pin number */
#define PIN_LED_RED GPIO_PIN_3   /**< Red LED pin number */
/** @} */

/**
 * @name I2C Configuration
 * @{
 */
#define PORT_I2C GPIOB         /**< I2C peripheral GPIO port */
#define PIN_I2C_SCL GPIO_PIN_4 /**< I2C clock line pin */
#define PIN_I2C_SDA GPIO_PIN_5 /**< I2C data line pin */
/** @} */

#endif
