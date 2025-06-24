#ifndef radioactivity_measurer_h
#define radioactivity_measurer_h

#include "mcp3425.h"

// facade to hide driver impementation

static inline void radioactivity_measurer_init()
{
    mcp3425_init();
}


static inline bool radioactivity_measurer_get_sample(
    RadioactivityMeasurer_MeasurementData_t *measurementData)
{
    return mcp3425_get_value(measurementData);
}


static inline uint8_t radioactivity_measurer_get_conf()
{
    return mcp3425_get_conf();
}


#endif