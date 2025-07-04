#include "data_acquisition.h"
#include "radioactivity_measurer.h"
#include "data_frame.h"
#include "data_logger.h"

#include "stm8s.h"

void data_acquisition_init(void)
{
    radioactivity_measurer_init();
}

void data_acquisition_tick(void)
{
    uint8_t buffer[MAX_FRAME_LENGTH];

    /* Dummy values */
    MeasurementBytes_t meassurement = {.msb = 0x05, .lsb = 0xff, .conf = 0x55};
    const AcqResult_t result = radioactivity_measurer_get_sample(&meassurement);

    data_frame_create(buffer,
        MAX_FRAME_LENGTH,
        meassurement.conf,
        meassurement.msb,
        meassurement.lsb);

    data_logger_write(buffer, MAX_FRAME_LENGTH);
}
