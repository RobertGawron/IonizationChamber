#ifndef uart_h
#define uart_h

#include <stdint.h>

/**
 * @defgroup uart_interface UART Communication Interface
 * @brief Hardware abstraction for UART1 communication
 *
 * Provides basic UART functionality for STM8S microcontrollers with fixed
 * configuration:
 * - Baud rate: 9600
 * - Data bits: 8
 * - Stop bits: 1
 * - Parity: None
 * - Flow control: None
 */

/**
 * @brief Initialize UART1 peripheral and GPIO
 *
 * Configures hardware with the following setup:
 * 1. GPIO pins:
 *    - TX: Push-pull output, high speed
 *    - RX: Input with pull-up, no interrupt
 * 2. UART1 peripheral:
 *    - Fixed 9600 baud rate
 *    - 8-bit data length
 *    - 1 stop bit
 *    - No parity
 *    - Transmitter and receiver enabled
 *
 * @note Must be called before any write operations
 * @see setup_gpio(), setup_uart1()
 */
void uart_init(
    void);

/**
 * @brief Transmit data over UART
 * @param[in] output Pointer to data buffer
 * @param[in] length Number of bytes to transmit (max 255)
 *
 * Sends data using blocking I/O with the following characteristics:
 * - Bytes transmitted in sequential order
 * - Busy-waits until each byte is fully transmitted
 * - Maximum reliable payload: 255 bytes
 * - Buffer must remain valid during transmission
 *
 * @warning Blocking function - will stall CPU during transmission
 * @note Transmission time per byte: ~1ms @ 9600 baud
 *
 * Example transmission time:
 * - 5 bytes: ~5ms
 * - 100 bytes: ~100ms
 *
 * @code
 * const uint8_t data[] = "Hello";
 * uart_write(data, sizeof(data)-1);  // Send 5 bytes
 * @endcode
 */
void uart_write(
    const uint8_t *output, uint8_t length);

#endif
