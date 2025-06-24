#include "measurement_frame.h"
#include "byte_utils.h"

#define FRAME_SEND_MEASSUREMENT_ID 1

#define GET_CRC(configuration, data) (configuration ^ byte_utils_get_msb(data) ^ byte_utils_get_lsb(data))

enum FrameOffsets
{
    FRAME_PREAMBLE = 0,
    FRAME_CONFIGURATION = 1,
    FRAME_DATA_MSB = 2,
    FRAME_DATA_LSB = 3,
    FRAME_CRC = 4
};

void measurement_frame_create(
    uint8_t *      output,
    const uint8_t  maxLength,
    const uint8_t  configuration,
    const uint16_t measurement)
{
    if((output != 0) && (maxLength >= MAX_FRAME_LENGTH))
    {
        output[FRAME_PREAMBLE] = (FRAME_SEND_MEASSUREMENT_ID << 4) | MAX_FRAME_LENGTH;
        output[FRAME_CONFIGURATION] = configuration;
        output[FRAME_DATA_MSB] = byte_utils_get_msb(measurement);
        output[FRAME_DATA_LSB] = byte_utils_get_lsb(measurement);
        output[FRAME_CRC] = GET_CRC(configuration, measurement); // todo calculate crc from whole buffe
    }
}

