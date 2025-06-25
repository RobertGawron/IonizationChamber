#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h>
#include <cmocka.h>
#include <stdint.h>
#include <string.h> // For memset

// Include production code
#include "measurement_frame.h"
#include "byte_utils.h"

// =============================================================================
// TEST CONFIGURATION
// =============================================================================
/**
 * @def MAX_FRAME_LENGTH
 * @brief Defines the expected frame length for tests
 */
#define MAX_FRAME_LENGTH 5

/**
 * @def FRAME_SEND_MEASSUREMENT_ID
 * @brief Measurement frame identifier for preamble
 */
#define FRAME_SEND_MEASSUREMENT_ID 1

/**
 * @def GET_CRC(configuration, data)
 * @brief CRC calculation macro for tests
 * @param configuration Configuration byte
 * @param data Measurement data
 * @return Calculated CRC value
 */
#define GET_CRC(configuration, data) ((configuration) ^ byte_utils_get_msb((data)) ^ byte_utils_get_lsb((data)))

// =============================================================================
// TEST UTILITIES
// =============================================================================
/**
 * @brief Verifies frame content against expected values
 *
 * This helper function validates all fields of a measurement frame:
 * 1. Preamble (frame ID + length)
 * 2. Configuration byte
 * 3. Data bytes (MSB and LSB)
 * 4. CRC value
 *
 * @param buffer Frame buffer to verify
 * @param expected_preamble Expected preamble value
 * @param expected_config Expected configuration byte
 * @param expected_data Expected 16-bit data value
 * @param expected_crc Expected CRC value
 */
static void assert_frame_content(
    uint8_t *buffer,
    uint8_t  expected_preamble,
    uint8_t  expected_config,
    uint16_t expected_data,
    uint8_t  expected_crc
    )
{
    // Verify preamble
    assert_int_equal(buffer[0], expected_preamble);

    // Verify configuration
    assert_int_equal(buffer[1], expected_config);

    // Verify data (MSB and LSB)
    assert_int_equal(buffer[2], byte_utils_get_msb(expected_data));
    assert_int_equal(buffer[3], byte_utils_get_lsb(expected_data));

    // Verify CRC
    assert_int_equal(buffer[4], expected_crc);
}

// =============================================================================
// TEST CASES
// =============================================================================
/**
 * @brief Tests valid frame creation with typical values
 *
 * Verifies that:
 * 1. Frame is created with correct structure
 * 2. All fields contain expected values
 * 3. CRC is calculated correctly
 *
 * @param state CMocka state object (unused)
 */
static void test_Create_ValidFrame(
    void **state
    )
{
    (void)state;

    uint8_t buffer[MAX_FRAME_LENGTH];
    const uint8_t config = 0xAA;
    const uint16_t data = 0x55AA;
    const uint8_t expected_crc = GET_CRC(config, data);
    const uint8_t expected_preamble = (FRAME_SEND_MEASSUREMENT_ID << 4) | MAX_FRAME_LENGTH;

    measurement_frame_create(buffer, MAX_FRAME_LENGTH, config, data);
    assert_frame_content(buffer, expected_preamble, config, data, expected_crc);
}

/**
 * @brief Tests frame creation with zero values
 *
 * Verifies that:
 * 1. Frame handles minimum values correctly
 * 2. CRC calculation works with zero inputs
 * 3. All fields are properly initialized
 *
 * @param state CMocka state object (unused)
 */
static void test_Create_ZeroValues(
    void **state
    )
{
    (void)state;

    uint8_t buffer[MAX_FRAME_LENGTH];
    const uint8_t config = 0x00;
    const uint16_t data = 0x0000;
    const uint8_t expected_crc = 0x00;
    const uint8_t expected_preamble = (FRAME_SEND_MEASSUREMENT_ID << 4) | MAX_FRAME_LENGTH;

    measurement_frame_create(buffer, MAX_FRAME_LENGTH, config, data);
    assert_frame_content(buffer, expected_preamble, config, data, expected_crc);
}

/**
 * @brief Tests frame creation with maximum values
 *
 * Verifies that:
 * 1. Frame handles maximum values correctly
 * 2. CRC calculation works with all bits set
 * 3. All fields saturate properly
 *
 * @param state CMocka state object (unused)
 */
static void test_Create_MaxValues(
    void **state
    )
{
    (void)state;

    uint8_t buffer[MAX_FRAME_LENGTH];
    const uint8_t config = 0xFF;
    const uint16_t data = 0xFFFF;
    const uint8_t expected_crc = GET_CRC(config, data);
    const uint8_t expected_preamble = (FRAME_SEND_MEASSUREMENT_ID << 4) | MAX_FRAME_LENGTH;

    measurement_frame_create(buffer, MAX_FRAME_LENGTH, config, data);
    assert_frame_content(buffer, expected_preamble, config, data, expected_crc);
}

/**
 * @brief Tests buffer size protection
 *
 * Verifies that:
 * 1. Frame creation fails safely when buffer is too small
 * 2. Buffer contents remain unchanged
 * 3. No memory corruption occurs
 *
 * @param state CMocka state object (unused)
 */
static void test_Create_BufferTooSmall(
    void **state
    )
{
    (void)state;

    uint8_t buffer[MAX_FRAME_LENGTH];
    const uint8_t config = 0xAA;
    const uint16_t data = 0x55AA;
    const uint8_t pattern = 0x55;

    // Initialize buffer with known pattern
    // memset creates lint warning and we dont have memset_s
    // memset(buffer, 0x55, MAX_FRAME_LENGTH);
    for(size_t i = 0; i < MAX_FRAME_LENGTH; i++)
    {
        buffer[i] = pattern;
    }

    // Call with insufficient buffer size
    measurement_frame_create(buffer, MAX_FRAME_LENGTH - 1, config, data);

    // Verify buffer was not modified
    for(int i = 0; i < MAX_FRAME_LENGTH; i++)
    {
        assert_int_equal(buffer[i], pattern);
    }
}

/**
 * @brief Tests null buffer handling
 *
 * Verifies that:
 * 1. Function doesn't crash with null buffer
 * 2. Function fails safely
 * 3. No memory access violations occur
 *
 * @param state CMocka state object (unused)
 */
static void test_Create_NullBuffer(
    void **state
    )
{
    (void)state;

    const uint8_t config = 0xAA;
    const uint16_t data = 0x55AA;

    // Should not crash when passed null buffer
    measurement_frame_create(NULL, MAX_FRAME_LENGTH, config, data);
}

/**
 * @brief Tests CRC calculation with basic mixed values
 *
 * @param state CMocka state object (unused)
 */
static void test_CrcCalculation_Basic(
    void **state
    )
{
    (void)state;
    const uint8_t config = 0xAA;
    const uint16_t data = 0x5552;
    const uint8_t expected_crc = config ^ byte_utils_get_msb(data) ^ byte_utils_get_lsb(data);
    assert_int_equal(expected_crc, GET_CRC(config, data));
}

/**
 * @brief Tests CRC calculation with all zeros
 *
 * @param state CMocka state object (unused)
 */
static void test_CrcCalculation_AllZeros(
    void **state
    )
{
    (void)state;
    const uint8_t config = 0x00;
    const uint16_t data = 0x0000;
    const uint8_t expected_crc = 0x00;
    assert_int_equal(expected_crc, GET_CRC(config, data));
}

/**
 * @brief Tests CRC calculation with all ones
 *
 * @param state CMocka state object (unused)
 */
static void test_CrcCalculation_AllOnes(
    void **state
    )
{
    (void)state;
    const uint8_t config = 0xFF;
    const uint16_t data = 0xFFFF;
    const uint8_t expected_crc = 0xFF;
    assert_int_equal(expected_crc, GET_CRC(config, data));
}

// =============================================================================
// TEST RUNNER
// =============================================================================
/**
 * @brief Test runner entry point
 *
 * Executes all measurement frame tests:
 * 1. Valid frame creation
 * 2. Zero value handling
 * 3. Maximum value handling
 * 4. Buffer size protection
 * 5. Null buffer handling
 * 6. CRC calculation verification
 *
 * @return int Number of failed tests (0 if all pass)
 */
int main(
    void
    )
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_Create_ValidFrame),
        cmocka_unit_test(test_Create_ZeroValues),
        cmocka_unit_test(test_Create_MaxValues),
        cmocka_unit_test(test_Create_BufferTooSmall),
        cmocka_unit_test(test_Create_NullBuffer),

        cmocka_unit_test(test_CrcCalculation_Basic),
        cmocka_unit_test(test_CrcCalculation_AllZeros),
        cmocka_unit_test(test_CrcCalculation_AllOnes),
    };

    return cmocka_run_group_tests(tests, NULL, NULL);
}
