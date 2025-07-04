/**
 * @file data_acquisition.h
 * @brief Sensor data acquisition and framing module
 *
 * Handles sensor data retrieval, encapsulation into framed packets with
 * metadata and transmission to external devices via output interface.
 */

#ifndef data_acquisition_h
#define data_acquisition_h

/**
 * @brief Initializes the data acquisition module.
 *
 * This function initializes the underlying hardware for radioactivity measurement.
 * It must be called before any data acquisition operations.
 *
 * @see radioactivity_measurer_init()
 */
void data_acquisition_init(
    void);

/**
 * @brief Performs periodic data acquisition and transmission
 *
 * Executes one complete acquisition cycle:
 * 1. Retrieves raw sensor data.
 * 2. Encapsulates data into framed format with:
 * - Data length
 * - Configuration metadata
 * - CRC error checking
 * 3. Transmits framed packet to output device (UART).
 *
 * @note Should be called periodically from main loop.
 * @warning Transmission is blocking - ensure adequate timing margins.
 */
void data_acquisition_tick(
    void);

#endif
