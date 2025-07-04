#ifndef data_logger_h
#define data_logger_h

#include "uart.h"

/**
 * @defgroup data_logger Data Logger Facade
 * @brief Abstraction layer for UART-based data logging
 *
 * Provides macro-based interface to simplify UART operations for logging
 * purposes.
 * This facade hides hardware-specific details while maintaining performance.
 */

/**
 * @brief Initialize data logging subsystem
 *
 * Configures underlying UART hardware for communication. Must be called before
 * any write operations.
 *
 * @see uart_init()
 */
#define data_logger_init() uart_init()

/**
 * @brief Write data to logging output
 * @param[in] data Pointer to data buffer
 * @param[in] len Number of bytes to write
 *
 * Transmits raw data through UART interface. Blocks until entire buffer is
 * queued
 * for transmission. TODO: Number of bytes actually transmitted (always equals
 * len parameter)
 *
 * @note Buffer must remain valid until transmission completes
 *
 * @see uart_write()
 */
#define data_logger_write(data, len) uart_write(data, len)

#endif
