#ifndef radioactivity_measurer_h
#define radioactivity_measurer_h

#include "mcp3425.h"

// Macro-based facade to hide driver implementation
// Avoids function call overhead while maintaining abstraction

#define radioactivity_measurer_init() \
    mcp3425_init()

#define radioactivity_measurer_get_sample(measurementData) \
    mcp3425_get_value(measurementData)

#define radioactivity_measurer_get_conf() \
    mcp3425_get_conf()

#endif
