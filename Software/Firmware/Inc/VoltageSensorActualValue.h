#ifndef SRC_VOLTAGESENSORACTUALVALUE_H_
#define SRC_VOLTAGESENSORACTUALVALUE_H_

#include "CommonDataTypes.h"

typedef uint16_t VoltageSensorActualValue_MeasurementData_t;

void VoltageSensorActualValue_Init();

bool VoltageSensorActualValue_MeasureValue(VoltageSensorActualValue_MeasurementData_t *measurementData);

uint8_t VoltageSensorActualValue_GetConfiguration();

#endif
