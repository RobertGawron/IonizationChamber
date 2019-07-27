/*
 * MCP3425A0T.h
 *
 *  Created on: 04.06.2019
 *      Author: robert
 */

#ifndef SRC_VOLTAGESENSORACTUALVALUE_H_
#define SRC_VOLTAGESENSORACTUALVALUE_H_

#include "CommonDataTypes.h"

#define  VoltageSensorActualValue_MeasurementData_t int

typedef struct MCP3425A0TConfig_t {
    int pinId;
} MCP3425A0TConfig_t;



void VoltageSensorActualValue_Init();

bool VoltageSensorActualValue_GeMeasurementData(VoltageSensorActualValue_MeasurementData_t *measurementData);


#endif /* SRC_VOLTAGESENSORACTUALVALUE_H_ */
