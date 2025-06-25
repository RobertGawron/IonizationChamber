#include "measurement_collector.h"
#include "radioactivity_measurer.h"
#include "measurement_frame.h"
#include "logger.h"

void measurement_collector_tick()
{
    uint8_t buffer[MAX_FRAME_LENGTH];

    const uint8_t configuration = radioactivity_measurer_get_conf();

    RadioactivityMeasurer_MeasurementData_t sample;
    radioactivity_measurer_get_sample(&sample);

    measurement_frame_create(buffer, MAX_FRAME_LENGTH, configuration, sample);
    logger_print(buffer, MAX_FRAME_LENGTH);
}
