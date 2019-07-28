/*
 * MCP3425A0T.h
 *
 *  Created on: 04.06.2019
 *      Author: robert
 */

#ifndef SRC_VOLTAGESENSORACTUALVALUE_H_
#define SRC_VOLTAGESENSORACTUALVALUE_H_

#include "CommonDataTypes.h"

#define  VoltageSensorActualValue_MeasurementData_t uint8_t

typedef struct MCP3425A0TConfig_t {
    int i2cAddress;
} MCP3425A0TConfig_t;


void VoltageSensorActualValue_Init();

bool VoltageSensorActualValue_GetMeasurementData(VoltageSensorActualValue_MeasurementData_t *measurementData);


#endif /* SRC_VOLTAGESENSORACTUALVALUE_H_ */
