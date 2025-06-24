#ifndef RadioactivityMeasurer_h
#define RadioactivityMeasurer_h

#include "stm8s.h"

typedef uint16_t RadioactivityMeasurer_MeasurementData_t;

void mcp3425_init(void);

bool mcp3425_get_value(
    RadioactivityMeasurer_MeasurementData_t *measurementData);

uint8_t mcp3425_get_conf(void);

#endif
