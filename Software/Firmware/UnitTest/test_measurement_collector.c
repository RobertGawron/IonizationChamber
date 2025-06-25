#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h>
#include <cmocka.h>
#include <stdint.h>

// Include production code
#include "measurement_collector.h"
#include "mcp3425.h"
#include "measurement_frame.h"
#include "logger.h"

// =============================================================================
// MOCK FUNCTIONS
// =============================================================================
/**
 * @brief Mock implementation of mcp3425_get_conf
 *
 * Simulates reading the MCP3425 configuration register
 *
 * @return uint8_t Mocked configuration value
 */
uint8_t mcp3425_get_conf(
    void)
{
    return mock_type(uint8_t);
}

/**
 * @brief Mock implementation of mcp3425_get_value
 *
 * Simulates reading a measurement sample from the MCP3425
 *
 * @param sample Pointer to store the measurement value
 * @return bool True if read was successful, false otherwise
 */
bool mcp3425_get_value(
    RadioactivityMeasurer_MeasurementData_t *sample)
{
    check_expected_ptr(sample);

    if (sample != NULL)
    {
        *sample = mock_type(RadioactivityMeasurer_MeasurementData_t);
    }

    return mock_type(bool);
}

/**
 * @brief Mock implementation of measurement_frame_create
 *
 * Verifies parameters passed to frame creation function
 *
 * @param output Output buffer pointer
 * @param maxLength Buffer size
 * @param configuration Measurement configuration
 * @param measurement Measurement value
 */
void measurement_frame_create(
    uint8_t *output,
    const uint8_t maxLength,
    const uint8_t configuration,
    const uint16_t measurement)
{
    // Only check parameters we care about
    check_expected(maxLength);
    check_expected(configuration);
    check_expected(measurement);
}

/**
 * @brief Mock implementation of logger_print
 *
 * Verifies parameters passed to logging function
 *
 * @param output Data buffer to log
 * @param length Number of bytes to log
 */
void logger_print(
    const uint8_t *output,
    const uint8_t length)
{
    check_expected(length); // Only check length since pointer value is
                            // unpredictable
}

// =============================================================================
// TEST CASES
// =============================================================================
/**
 * @brief Tests measurement collection workflow
 *
 * Verifies that the measurement collector tick function:
 * 1. Reads the current configuration from the MCP3425
 * 2. Obtains a new measurement sample
 * 3. Creates a measurement frame with correct parameters
 * 4. Logs the frame with the correct length
 *
 * Test Steps:
 * 1. Set up expected configuration and sample values
 * 2. Configure mocks to return these values
 * 3. Set expectations for frame creation parameters
 * 4. Set expectation for logger output length
 * 5. Execute measurement_collector_tick()
 *
 * @param state CMocka state object (unused)
 */
static void test_Tick_CallsAllDependencies(
    void **state)
{
    (void)state;

    // Set up test values
    const uint8_t expected_config = 0x55;
    const uint16_t expected_sample = 0x1234;

    // Set expectations
    // 1. Expect configuration read
    will_return(mcp3425_get_conf, expected_config);

    // 2. Expect measurement read
    expect_any(mcp3425_get_value, sample);
    will_return(mcp3425_get_value, expected_sample);
    will_return(mcp3425_get_value, TRUE); // Read success

    // 3. Verify frame creation parameters
    expect_value(measurement_frame_create, maxLength, MAX_FRAME_LENGTH);
    expect_value(measurement_frame_create, configuration, expected_config);
    expect_value(measurement_frame_create, measurement, expected_sample);

    // 4. Verify logging output length
    expect_value(logger_print, length, MAX_FRAME_LENGTH);

    // 5. Execute function under test
    measurement_collector_tick();
}

// =============================================================================
// TEST RUNNER
// =============================================================================
/**
 * @brief Test runner entry point
 *
 * Executes the measurement collector workflow test:
 * 1. Initializes the CMocka test environment
 * 2. Runs the dependency verification test
 *
 * @return int Number of failed tests (0 if all pass)
 */
int main(
    void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_Tick_CallsAllDependencies)};

    return cmocka_run_group_tests(tests, NULL, NULL);
}
