/*
 * VoltageSensorActualValue.h
 *
 *  Created on: 04.06.2019
 *      Author: robert
 */

#ifndef SRC_VOLTAGESENSORACTUALVALUE_H_
#define SRC_VOLTAGESENSORACTUALVALUE_H_

#include "CommonDataTypes.h"

typedef uint8_t VoltageSensorActualValue_MeasurementData_t;

void VoltageSensorActualValue_Init();

bool VoltageSensorActualValue_MeasureValue(VoltageSensorActualValue_MeasurementData_t *measurementData);


#endif /* SRC_VOLTAGESENSORACTUALVALUE_H_ */
