/**
 * @file data_frame.h
 * @brief Data frame creation and formatting functionality for sensor
 * measurements.
 *
 * This header defines structures and functions for creating measurement data
 * frames
 * with preamble, configuration, data payload, and CRC verification.
 */

#ifndef data_frame_h
#define data_frame_h

#include <stdint.h>

#define MAX_FRAME_LENGTH 5 ///< Total length of the data frame in bytes
// (preamble + config + MSB + LSB + CRC)

/**
 * @brief Creates a measurement data frame with CRC protection
 *
 * Constructs a complete data frame according to the following structure:
 * | Byte Index | Content         | Description
 * |------------|-----------------|----------------------------------------------|
 * | 0          | Preamble        | Frame ID (4b) and frame length (4b)
 * | 1          | Configuration   | Device/sensor configuration byte
 * | 2          | Measurement MSB | Most significant byte of measurement data
 * | 3          | Measurement LSB | Least significant byte of measurement data
 * | 4          | CRC-8           | CRC checksum of bytes 0-3

 *
 * @note The frame will only be generated if:
 *       - Output pointer is not NULL
 *       - Buffer has capacity for at least MAX_FRAME_LENGTH (5) bytes
 *       - Frame ID in preamble is hardcoded to FRAME_SEND_MEASSUREMENT_ID (1)
 *
 * @param[out] output          Pre-allocated buffer for frame data (min 5 bytes)
 * @param[in]  maxLength       Capacity of the output buffer
 * @param[in]  configuration   Device/sensor configuration byte
 * @param[in]  measurement_msb High byte of 16-bit measurement value
 * @param[in]  measurement_lsb Low byte of 16-bit measurement value
 *
 * @see GET_CRC_4_BYTES() for CRC implementation details
 */
void data_frame_create(
    uint8_t *output,
    uint8_t maxLength,
    uint8_t configuration,
    uint8_t measurement_msb,
    uint8_t measurement_lsb);

#endif
