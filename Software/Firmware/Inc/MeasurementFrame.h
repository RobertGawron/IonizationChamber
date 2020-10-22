#ifndef INC_MEASUREMENTFRAME_H_
#define INC_MEASUREMENTFRAME_H_

#include "CommonDataTypes.h"

void MeasurementFrame_Create(uint8_t configuration, uint16_t data);

/* Dependency injection. This module require a function that take character as an argument and print it somewhere. */
bool MeasurementFrame_Send(void (*sendFunction)(uint8_t));

#endif
