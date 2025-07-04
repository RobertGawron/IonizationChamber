#ifndef radioactivity_measurer_h
#define radioactivity_measurer_h

#include "mcp3425.h"

/**
 * @defgroup radioactivity_measurer Radioactivity Measurement Facade
 * @brief Hardware abstraction layer for radiation sensor operations
 *
 * Provides macro-based interface to MCP3425 ADC functions with zero
 * function call overhead.
 * This facade maintains type safety while optimizing performance for
 * time-critical sampling.
 */

/**
 * @brief Initialize radiation measurement hardware
 *
 * Configures MCP3425 ADC with default settings:
 * - Channel: 1
 * - Sample rate: 15 SPS (240ms conversion)
 * - PGA gain: 1x
 * - Continuous conversion mode
 *
 * Must be called before any measurement operations.
 *
 * @see mcp3425_init()
 */
#define radioactivity_measurer_init()\
        mcp3425_init()

/**
 * @brief Acquire radiation measurement sample
 * @param[out] measurement Pointer to MeasurementBytes_t for raw ADC result
 * @return AcqResult_t Acquisition status code
 *
 * Retrieves 16-bit radiation measurement with status information:
 * - On success: Stores MSB/LSB in measurement struct
 * - On failure: Returns ACQ_SENSOR_ERROR
 *
 * Blocking call with typical 240ms delay at 15 samples/second.
 *
 * Usage example:
 * @code
 * MeasurementBytes_t sample;
 * if(radioactivity_measurer_get_sample(&sample) == ACQ_SUCCESS) {
 *     // Process valid measurement
 * }
 * @endcode
 *
 * @see MeasurementBytes_t, AcqResult_t, mcp3425_get_value()
 */
#define radioactivity_measurer_get_sample(measurement)\
        mcp3425_get_value(measurement)

#endif
