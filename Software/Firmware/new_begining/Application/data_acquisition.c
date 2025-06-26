#include "data_acquisition.h"
#include "radioactivity_measurer.h"
// #include "measurement_frame.h"
// #include "logger.h"

void data_acquisition_tick()
{

    // uint8_t buffer[MAX_FRAME_LENGTH];
    /*
        const uint8_t conf = radioactivity_measurer_get_conf();

        RadioactivityMeasurer_MeasurementData_t sample;
        radioactivity_measurer_get_sample(&sample);
    */
    const uint8_t conf = 0x22;

    RadioactivityMeasurer_MeasurementData_t sample = 0xab;

    // measurement_frame_create(buffer, MAX_FRAME_LENGTH, conf, sample);
    // logger_print(buffer, MAX_FRAME_LENGTH);
}
