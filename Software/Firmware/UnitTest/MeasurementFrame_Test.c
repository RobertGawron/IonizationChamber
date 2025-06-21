#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h>
#include <cmocka.h>
#include <stdint.h>

// Include production code
#include "MeasurementFrame.h"
#include "BitHandler.h"

#define GET_CRC(configuration, data) (configuration ^ GET_MSB(data) ^ GET_LSB(data))

// =============================================================================
// TEST CONFIGURATION
// =============================================================================
#define MAX_FRAME_LENGTH 5
#define FRAME_SEND_MEASSUREMENT_ID 1

// Static state tracking for mock send function
static uint8_t sent_bytes[MAX_FRAME_LENGTH];
static uint8_t send_count = 0;
static uint8_t send_overflow = 0;

// =============================================================================
// MOCK FUNCTIONS
// =============================================================================
void mock_send_function(uint8_t byte)
{
    if (send_count < MAX_FRAME_LENGTH)
    {
        sent_bytes[send_count++] = byte;
    }
    else
    {
        send_overflow++;
    }
}

// =============================================================================
// TEST UTILITIES
// =============================================================================
static void reset_send_state(void)
{
    send_count = 0;
    send_overflow = 0;
    for (int i = 0; i < MAX_FRAME_LENGTH; i++)
    {
        sent_bytes[i] = 0;
    }
}

static void assert_frame_content(uint8_t expected_preamble,
                                 uint8_t expected_config,
                                 uint16_t expected_data,
                                 uint8_t expected_crc)
{
    // Verify preamble
    assert_int_equal(sent_bytes[0], expected_preamble);

    // Verify configuration
    assert_int_equal(sent_bytes[1], expected_config);

    // Verify data (MSB and LSB)
    assert_int_equal(sent_bytes[2], GET_MSB(expected_data));
    assert_int_equal(sent_bytes[3], GET_LSB(expected_data));

    // Verify CRC
    assert_int_equal(sent_bytes[4], expected_crc);
}

// =============================================================================
// TEST CASES
// =============================================================================
static void test_CreateAndSend_ValidFrame(void **state)
{
    (void)state;
    reset_send_state();

    uint8_t config = 0xAA;
    uint16_t data = 0x55AA;
    uint8_t expected_crc = config ^ GET_MSB(data) ^ GET_LSB(data);
    uint8_t expected_preamble = (FRAME_SEND_MEASSUREMENT_ID << 4) | MAX_FRAME_LENGTH;

    MeasurementFrame_Create(config, data);
    bool result = MeasurementFrame_Send(mock_send_function);

    assert_true(result);
    assert_int_equal(send_count, MAX_FRAME_LENGTH);
    assert_int_equal(send_overflow, 0);
    assert_frame_content(expected_preamble, config, data, expected_crc);
}

static void test_CreateAndSend_ZeroValues(void **state)
{
    (void)state;
    reset_send_state();

    uint8_t config = 0x00;
    uint16_t data = 0x0000;
    uint8_t expected_crc = 0x00;
    uint8_t expected_preamble = (FRAME_SEND_MEASSUREMENT_ID << 4) | MAX_FRAME_LENGTH;

    MeasurementFrame_Create(config, data);
    bool result = MeasurementFrame_Send(mock_send_function);

    assert_true(result);
    assert_int_equal(send_count, MAX_FRAME_LENGTH);
    assert_int_equal(send_overflow, 0);
    assert_frame_content(expected_preamble, config, data, expected_crc);
}

static void test_CreateAndSend_MaxValues(void **state)
{
    (void)state;
    reset_send_state();

    uint8_t config = 0xFF;
    uint16_t data = 0xFFFF;
    uint8_t expected_crc = config ^ GET_MSB(data) ^ GET_LSB(data);
    uint8_t expected_preamble = (FRAME_SEND_MEASSUREMENT_ID << 4) | MAX_FRAME_LENGTH;

    MeasurementFrame_Create(config, data);
    bool result = MeasurementFrame_Send(mock_send_function);

    assert_true(result);
    assert_int_equal(send_count, MAX_FRAME_LENGTH);
    assert_int_equal(send_overflow, 0);
    assert_frame_content(expected_preamble, config, data, expected_crc);
}

static void test_CreateAndSend_DataRollover(void **state)
{
    (void)state;
    reset_send_state();

    // First frame
    uint8_t config1 = 0x11;
    uint16_t data1 = 0x1234;
    MeasurementFrame_Create(config1, data1);
    MeasurementFrame_Send(mock_send_function);

    // Second frame (should overwrite the buffer)
    reset_send_state();
    uint8_t config2 = 0x22;
    uint16_t data2 = 0x5678;
    uint8_t expected_crc = config2 ^ GET_MSB(data2) ^ GET_LSB(data2);
    uint8_t expected_preamble = (FRAME_SEND_MEASSUREMENT_ID << 4) | MAX_FRAME_LENGTH;

    MeasurementFrame_Create(config2, data2);
    bool result = MeasurementFrame_Send(mock_send_function);

    assert_true(result);
    assert_int_equal(send_count, MAX_FRAME_LENGTH);
    assert_int_equal(send_overflow, 0);
    assert_frame_content(expected_preamble, config2, data2, expected_crc);
}

static void test_CrcCalculation_VariousValues(void **state)
{
    (void)state;

    // Test 1: Basic calculation
    uint8_t config = 0b10101010;
    uint16_t data = 0b1100110011001100;
    uint8_t expected_crc = config ^ GET_MSB(data) ^ GET_LSB(data);
    assert_int_equal(expected_crc, GET_CRC(config, data));

    // Test 2: All zeros
    config = 0x00;
    data = 0x0000;
    expected_crc = 0x00;
    assert_int_equal(expected_crc, GET_CRC(config, data));

    // Test 3: All ones
    config = 0xFF;
    data = 0xFFFF;
    expected_crc = 0xFF ^ 0xFF ^ 0xFF; // 0xFF
    assert_int_equal(expected_crc, GET_CRC(config, data));

    // Test 4: Mixed values
    config = 0b11001100;
    data = 0b1010101010101010;
    expected_crc = config ^ 0b10101010 ^ 0b10101010; // 0xCC ^ 0xAA ^ 0xAA = 0xCC
    assert_int_equal(expected_crc, GET_CRC(config, data));
}

// =============================================================================
// TEST RUNNER
// =============================================================================
int main(void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_CreateAndSend_ValidFrame),
        cmocka_unit_test(test_CreateAndSend_ZeroValues),
        cmocka_unit_test(test_CreateAndSend_MaxValues),
        cmocka_unit_test(test_CreateAndSend_DataRollover),
        cmocka_unit_test(test_CrcCalculation_VariousValues),
    };

    return cmocka_run_group_tests(tests, NULL, NULL);
}