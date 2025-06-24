#ifndef MeasurementFrame_h
#define MeasurementFrame_h

#include <stdint.h>
// #include <stdbool.h>
#include "stm8s.h"

#define MAX_FRAME_LENGTH 5

void measurement_frame_create(
    uint8_t *      output,
    const uint8_t  maxLength,
    const uint8_t  configuration,
    const uint16_t measurement);

#endif
