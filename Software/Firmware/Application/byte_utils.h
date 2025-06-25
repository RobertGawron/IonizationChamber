#ifndef BYTE_UTILS_H
#define BYTE_UTILS_H

#include <stdint.h> // For uint8_t, uint16_t

/**
 * @file byte_utils.h
 * @brief Utility functions for basic byte manipulation.
 *
 * Provides inline functions to extract the most significant byte (MSB)
 * and least significant byte (LSB) from a 16-bit value.
 */

#define BYTE_UTILS_MSB_SHIFT 8U
#define BYTE_UTILS_LSB_MASK 0xFFU

/**
 * @brief Extract the most significant byte (MSB) from a 16-bit value.
 *
 * @param value The 16-bit value to extract the MSB from.
 * @return The most significant 8 bits of the input value.
 */
static inline uint8_t byte_utils_get_msb(
    const uint16_t value
    )
{
    return (uint8_t)(value >> BYTE_UTILS_MSB_SHIFT);
}

/**
 * @brief Extract the least significant byte (LSB) from a 16-bit value.
 *
 * @param value The 16-bit value to extract the LSB from.
 * @return The least significant 8 bits of the input value.
 */
static inline uint8_t byte_utils_get_lsb(
    const uint16_t value
    )
{
    return (uint8_t)(value & BYTE_UTILS_LSB_MASK);
}

#endif // BYTE_UTILS_H
