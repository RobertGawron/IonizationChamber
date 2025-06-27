/**
 * @file test_data_frame.c
 * @brief Unit tests for data frame creation functionality
 * @defgroup test_data_frame Data Frame Unit Tests
 * @{
 *
 * This test suite verifies the behavior of the data_frame_create function,
 * ensuring it correctly constructs frames with proper formatting, handles
 * edge cases, and calculates CRCs accurately according to the specification.
 */

#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h> // NOLINT(misc-include-cleaner), needed by <cmocka.h>
#include <cmocka.h>
#include <stdint.h>
#include <string.h>
#include <assert.h>

// Include production code
#include "data_frame.h"
#include "crc.h"  // For GET_CRC_4_BYTES macro

// =============================================================================
// TEST CONFIGURATION
// =============================================================================

/** @brief Measurement frame identifier for preamble */
#define FRAME_SEND_MEASSUREMENT_ID 1

/** @brief Preamble calculation macro */
#define CALCULATE_PREAMBLE(frame_id, msg_len) (((frame_id) << 4) | (msg_len))

/**
 * @brief Frame field offsets (copied from production code)
 *
 * These offsets define the positions of each field within the data frame.
 */
enum {
    FRAME_PREAMBLE = 0,   /**< Preamble position (frame ID + length) */
    FRAME_CONFIGURATION = 1, /**< Configuration byte position */
    FRAME_DATA_MSB = 2,   /**< Measurement data MSB position */
    FRAME_DATA_LSB = 3,   /**< Measurement data LSB position */
    FRAME_CRC = 4         /**< CRC checksum position */
};

// MAX_FRAME_LENGTH is declared in data_frame.h
static_assert((FRAME_PREAMBLE < MAX_FRAME_LENGTH),
    "MAX_FRAME_LENGTH wil not fit into MAX_FRAME_LENGTH");
static_assert((FRAME_CONFIGURATION < MAX_FRAME_LENGTH),
    "FRAME_CONFIGURATION wil not fit into MAX_FRAME_LENGTH");
static_assert((FRAME_DATA_MSB < MAX_FRAME_LENGTH),
    "FRAME_DATA_MSB wil not fit into MAX_FRAME_LENGTH");
static_assert((FRAME_DATA_LSB < MAX_FRAME_LENGTH),
    "FRAME_DATA_LSB wil not fit into MAX_FRAME_LENGTH");
static_assert((FRAME_CRC < MAX_FRAME_LENGTH), "FRAME_CRC wil not fit into MAX_FRAME_LENGTH");

// =============================================================================
// TEST UTILITIES
// =============================================================================
/**
 * @brief Verifies frame content against expected values
 *
 * This helper function validates all fields of a data frame by comparing each
 * byte position to its expected value. It uses CMocka assertions to report
 * any discrepancies.
 *
 * @param buffer Frame buffer to verify
 * @param expected_preamble Expected preamble value
 * @param expected_config Expected configuration byte
 * @param expected_msb Expected measurement MSB value
 * @param expected_lsb Expected measurement LSB value
 * @param expected_crc Expected CRC checksum value
 */
static void assert_frame_content(
    uint8_t *buffer,
    uint8_t expected_preamble,
    uint8_t expected_config,
    uint8_t expected_msb,
    uint8_t expected_lsb,
    uint8_t expected_crc)
{
    // Verify preamble (frame ID + length)
    assert_int_equal(buffer[FRAME_PREAMBLE], expected_preamble);

    // Verify configuration byte
    assert_int_equal(buffer[FRAME_CONFIGURATION], expected_config);

    // Verify data bytes
    assert_int_equal(buffer[FRAME_DATA_MSB], expected_msb);
    assert_int_equal(buffer[FRAME_DATA_LSB], expected_lsb);

    // Verify CRC checksum
    assert_int_equal(buffer[FRAME_CRC], expected_crc);
}

// =============================================================================
// TEST CASES
// =============================================================================
/**
 * @brief Tests frame creation with typical values
 *
 * Verifies that:
 * - Frame is created with correct structure
 * - All fields contain expected values
 * - CRC is calculated correctly
 *
 * @param state CMocka state object (unused)
 */
static void test_Create_ValidFrame(void **state)
{
    (void)state;

    uint8_t buffer[MAX_FRAME_LENGTH] = {0};
    const uint8_t config = 0xAA;
    const uint8_t msb = 0x55;
    const uint8_t lsb = 0xAA;
    const uint8_t expected_preamble = CALCULATE_PREAMBLE(FRAME_SEND_MEASSUREMENT_ID,
        MAX_FRAME_LENGTH);
    const uint8_t expected_crc = GET_CRC_4_BYTES(
        expected_preamble, config, msb, lsb);

    data_frame_create(buffer, MAX_FRAME_LENGTH, config, msb, lsb);
    assert_frame_content(buffer, expected_preamble, config, msb, lsb, expected_crc);
}

/**
 * @brief Tests frame creation with zero values
 *
 * Verifies that:
 * - Frame handles minimum values correctly
 * - CRC calculation works with zero inputs
 * - All fields are properly initialized
 *
 * @param state CMocka state object (unused)
 */
static void test_Create_ZeroValues(void **state)
{
    (void)state;

    uint8_t buffer[MAX_FRAME_LENGTH] = {0};
    const uint8_t config = 0x00;
    const uint8_t msb = 0x00;
    const uint8_t lsb = 0x00;
    const uint8_t expected_preamble = CALCULATE_PREAMBLE(FRAME_SEND_MEASSUREMENT_ID,
        MAX_FRAME_LENGTH);
    const uint8_t expected_crc = GET_CRC_4_BYTES(
        expected_preamble, config, msb, lsb);

    data_frame_create(buffer, MAX_FRAME_LENGTH, config, msb, lsb);
    assert_frame_content(buffer, expected_preamble, config, msb, lsb, expected_crc);
}

/**
 * @brief Tests frame creation with maximum values
 *
 * Verifies that:
 * - Frame handles maximum values correctly
 * - CRC calculation works with all bits set
 * - All fields saturate properly
 *
 * @param state CMocka state object (unused)
 */
static void test_Create_MaxValues(void **state)
{
    (void)state;

    uint8_t buffer[MAX_FRAME_LENGTH] = {0};
    const uint8_t config = 0xFF;
    const uint8_t msb = 0xFF;
    const uint8_t lsb = 0xFF;
    const uint8_t expected_preamble = CALCULATE_PREAMBLE(FRAME_SEND_MEASSUREMENT_ID,
        MAX_FRAME_LENGTH);
    const uint8_t expected_crc = GET_CRC_4_BYTES(
        expected_preamble, config, msb, lsb);

    data_frame_create(buffer, MAX_FRAME_LENGTH, config, msb, lsb);
    assert_frame_content(buffer, expected_preamble, config, msb, lsb, expected_crc);
}

/**
 * @brief Tests buffer size protection
 *
 * Verifies that:
 * - Frame creation fails safely when buffer is too small
 * - Buffer contents remain unchanged
 * - No memory corruption occurs
 *
 * @param state CMocka state object (unused)
 */
static void test_Create_BufferTooSmall(void **state)
{
    (void)state;

    uint8_t buffer[MAX_FRAME_LENGTH];
    const uint8_t config = 0xAA;
    const uint8_t msb = 0x55;
    const uint8_t lsb = 0xAA;
    const uint8_t pattern = 0x55;

    // Initialize buffer with known pattern
    for(size_t i = 0; i < MAX_FRAME_LENGTH; i++)
    {
        buffer[i] = pattern;
    }

    // Call with insufficient buffer size
    data_frame_create(buffer, MAX_FRAME_LENGTH - 1, config, msb, lsb);

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
 * - Function doesn't crash with null buffer
 * - Function fails safely
 * - No memory access violations occur
 *
 * @param state CMocka state object (unused)
 */
static void test_Create_NullBuffer(void **state)
{
    (void)state;

    const uint8_t config = 0xAA;
    const uint8_t msb = 0x55;
    const uint8_t lsb = 0xAA;

    // Should not crash when passed null buffer
    data_frame_create(NULL, MAX_FRAME_LENGTH, config, msb, lsb);
}

// =============================================================================
// TEST RUNNER
// =============================================================================
/**
 * @brief Test runner entry point
 *
 * Executes all data frame tests:
 * 1. Valid frame creation
 * 2. Zero value handling
 * 3. Maximum value handling
 * 4. Buffer size protection
 * 5. Null buffer handling
 *
 * @return int Number of failed tests (0 if all pass)
 */
int main(void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_Create_ValidFrame),
        cmocka_unit_test(test_Create_ZeroValues),
        cmocka_unit_test(test_Create_MaxValues),
        cmocka_unit_test(test_Create_BufferTooSmall),
        cmocka_unit_test(test_Create_NullBuffer),
    };

    return cmocka_run_group_tests(tests, NULL, NULL);
}

/** @} */ // End of test_data_frame group
