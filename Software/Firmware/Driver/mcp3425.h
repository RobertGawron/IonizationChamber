#ifndef mcp3425_h
#define mcp3425_h

#include "stm8s.h"

/**
 * @file mcp3425.h
 * @brief Driver for the MCP3425 16-bit I2C ADC.
 *
 * This file provides the interface for interacting with the MCP3425 analog-to-digital converter
 * via the I2C bus. It includes structures for measurement data and acquisition results,
 * along with functions for initializing the ADC and retrieving measurement values.
 */

/**
 * @brief Structure to hold the raw bytes of a measurement from the MCP3425.
 */
typedef struct {
    uint8_t msb;  /**< Most significant byte of the ADC measurement. */
    uint8_t lsb;  /**< Least significant byte of the ADC measurement. */
    uint8_t conf; /**< Configuration byte from the ADC at the time of measurement. */
} MeasurementBytes_t;

/**
 * @brief Enumeration for the acquisition result status.
 */
typedef enum {
    ACQ_SUCCESS,      /**< Measurement acquisition was successful. */
    ACQ_RDY_BIT,      /**< Conversion not ready (RDY bit was set). */
    ACQ_READ_FAILURE, /**< An error occurred during the I2C read operation. */
    ACQ_READ_BUSSY,   /**< I2C bus was busy when attempting to read. */
    ACQ_ERROR         /**< A generic error occurred during acquisition (e.g., I2C write
                         failure). */
} AcqResult_t;

/**
 * @brief Initializes the MCP3425 ADC.
 *
 * This function configures the necessary GPIO pins for I2C communication
 * and initializes the I2C peripheral on the microcontroller to communicate with the MCP3425.
 */
void mcp3425_init(
    void);

/**
 * @brief Acquires a measurement value from the MCP3425 ADC.
 *
 * This function initiates a conversion, waits for it to complete, and then reads
 * the 16-bit measurement data along with the configuration byte from the MCP3425.
 *
 * @param[out] measurement Pointer to a MeasurementBytes_t structure where the
 * raw MSB, LSB, and configuration bytes will be stored.
 * @return AcqResult_t indicating the success or type of failure of the acquisition.
 */
AcqResult_t mcp3425_get_value(
    MeasurementBytes_t *measurement);

#endif
