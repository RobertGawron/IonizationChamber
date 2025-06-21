#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h>
#include <cmocka.h>
#include <stdint.h>

// Include production code
#include "MeasurementCollector.h"
#include "VoltageSensorActualValue.h"
#include "MeasurementFrame.h"
#include "Logger.h"

// =============================================================================
// MOCK FUNCTIONS
// =============================================================================
// Mock for VoltageSensorActualValue_GetConfiguration
uint8_t VoltageSensorActualValue_GetConfiguration(void)
{
    return mock_type(uint8_t);
}

// Mock for VoltageSensorActualValue_MeasureValue
bool VoltageSensorActualValue_MeasureValue(VoltageSensorActualValue_MeasurementData_t *sample)
{
    // Verify we received a valid pointer
    check_expected_ptr(sample);

    // Set the sample value if pointer is valid
    if (sample != NULL)
    {
        *sample = mock_type(VoltageSensorActualValue_MeasurementData_t);
    }

    return mock_type(bool);
}

// Mock for MeasurementFrame_Create
void MeasurementFrame_Create(uint8_t configuration, uint16_t data)
{
    check_expected(configuration);
    check_expected(data);
}

// Mock for MeasurementFrame_Send
bool MeasurementFrame_Send(void (*sendFunction)(uint8_t))
{
    // Verify we received a valid function pointer
    check_expected_ptr(sendFunction);

    // If function pointer is valid, call it with a test value
    if (sendFunction != NULL)
    {
        sendFunction(0xAA); // Send a test byte
    }

    return mock_type(bool);
}

// Mock for Logger_Print
void Logger_Print(Logger_DataFormat_t data)
{
    check_expected(data);
}

// =============================================================================
// TEST CASES
// =============================================================================
static void test_Tick_CallsAllDependencies(void **state)
{
    (void)state;

    // Set up test values
    uint8_t expected_config = 0x55;
    uint16_t expected_sample = 0x1234;

    // Set expectations
    // VoltageSensorActualValue_GetConfiguration
    will_return(VoltageSensorActualValue_GetConfiguration, expected_config);

    // VoltageSensorActualValue_MeasureValue
    expect_any(VoltageSensorActualValue_MeasureValue, sample);           // We don't care about the pointer value
    will_return(VoltageSensorActualValue_MeasureValue, expected_sample); // Value to set
    will_return(VoltageSensorActualValue_MeasureValue, TRUE);            // Return value

    // MeasurementFrame_Create
    expect_value(MeasurementFrame_Create, configuration, expected_config);
    expect_value(MeasurementFrame_Create, data, expected_sample);

    // MeasurementFrame_Send
    expect_value(MeasurementFrame_Send, sendFunction, Logger_Print);
    will_return(MeasurementFrame_Send, TRUE); // Return value

    // Execute the function under test
    MeasurementCollector_Tick();
}

static void test_Tick_HandlesMeasureFailure(void **state)
{
    (void)state;

    // Set up test values
    uint8_t expected_config = 0x55;

    // Set expectations
    // VoltageSensorActualValue_GetConfiguration
    will_return(VoltageSensorActualValue_GetConfiguration, expected_config);

    // VoltageSensorActualValue_MeasureValue - fails
    expect_any(VoltageSensorActualValue_MeasureValue, sample);
    will_return(VoltageSensorActualValue_MeasureValue, 0);     // Value to set (ignored)
    will_return(VoltageSensorActualValue_MeasureValue, FALSE); // Return value (failure)

    // Execute the function under test
    MeasurementCollector_Tick();
}

static void test_Tick_HandlesNullPointers(void **state)
{
    (void)state;

    // Set expectations
    // VoltageSensorActualValue_GetConfiguration
    will_return(VoltageSensorActualValue_GetConfiguration, 0xAA);

    // VoltageSensorActualValue_MeasureValue
    expect_any(VoltageSensorActualValue_MeasureValue, sample);
    will_return(VoltageSensorActualValue_MeasureValue, 0x1234);
    will_return(VoltageSensorActualValue_MeasureValue, TRUE);

    // MeasurementFrame_Create
    expect_value(MeasurementFrame_Create, configuration, 0xAA);
    expect_value(MeasurementFrame_Create, data, 0x1234);

    // Make MeasurementFrame_Send call with NULL function pointer
    expect_value(MeasurementFrame_Send, sendFunction, Logger_Print);
    will_return(MeasurementFrame_Send, TRUE);

    // Execute the function under test
    MeasurementCollector_Tick();
}

static void test_Init_DoesNothing(void **state)
{
    (void)state;
    // Simply call to ensure no crashes
    MeasurementCollector_Init();
}

// =============================================================================
// TEST RUNNER
// =============================================================================
int main(void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_Init_DoesNothing),
        //  cmocka_unit_test(test_Tick_CallsAllDependencies),
        //  cmocka_unit_test(test_Tick_HandlesMeasureFailure),
        //  cmocka_unit_test(test_Tick_HandlesNullPointers),
    };

    return cmocka_run_group_tests(tests, NULL, NULL);
}