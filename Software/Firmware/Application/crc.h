#ifndef crc_h
#define crc_h

/**
 * @brief Computes a simple XOR-based checksum for 4 bytes
 *
 * Calculates a 8-bit checksum using XOR (exclusive OR) operation across
 * four input bytes.
 *
 * @param byte_1 First byte of data
 * @param byte_2 Second byte of data
 * @param byte_3 Third byte of data
 * @param byte_4 Fourth byte of data
 * @return Checksum value calculated as: byte_1 XOR byte_2 XOR byte_3 XOR byte_4
 *
 * @note This is a simple checksum suitable for basic error detection.
 * @warning Not cryptographically secure. Limited error detection capability.
 */
#define GET_CRC_4_BYTES(byte_1, byte_2, byte_3, byte_4) ((byte_1) ^ (byte_2) ^ (byte_3) ^ (byte_4))

#endif
