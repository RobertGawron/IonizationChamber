#ifndef ByteUtils_h
#define ByteUtils_h

/**
 * @file byte_utils.h
 * @brief Utility functions for basic byte manipulation.
 *
 * Provides inline functions to extract the most significant byte (MSB)
 * and least significant byte (LSB) from a 16-bit value.
 */

/**
 * @brief Extract the most significant byte (MSB) from a 16-bit value.
 *
 * @param byte The 16-bit value to extract the MSB from.
 * @return The most significant 8 bits of the input value.
 */
static inline uint8_t byte_utils_get_msb(const uint16_t byte)
{
    return (byte >> 8);
}

/**
 * @brief Extract the least significant byte (LSB) from a 16-bit value.
 *
 * @param byte The 16-bit value to extract the LSB from.
 * @return The least significant 8 bits of the input value.
 */
static inline uint8_t byte_utils_get_lsb(const uint16_t byte)
{
    return (byte & 0xff);
}

#endif
