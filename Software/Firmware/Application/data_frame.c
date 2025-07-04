#include <assert.h>
#include <stdint.h>

#include "data_frame.h"
#include "crc.h"

#define FRAME_SEND_MEASSUREMENT_ID 1

#define CALCULATE_PREAMBLE(frame_id, msg_len) (((frame_id) << 4) | (msg_len))

typedef enum
{
    FRAME_PREAMBLE = 0,
    FRAME_CONFIGURATION = 1,
    FRAME_DATA_MSB = 2,
    FRAME_DATA_LSB = 3,
    FRAME_CRC = 4
} FrameOffsets_t;

static_assert((FRAME_PREAMBLE < MAX_FRAME_LENGTH),
    "MAX_FRAME_LENGTH will not fit into MAX_FRAME_LENGTH");
static_assert((FRAME_CONFIGURATION < MAX_FRAME_LENGTH),
    "FRAME_CONFIGURATION will not fit into MAX_FRAME_LENGTH");
static_assert((FRAME_DATA_MSB < MAX_FRAME_LENGTH),
    "FRAME_DATA_MSB will not fit into MAX_FRAME_LENGTH");
static_assert((FRAME_DATA_LSB < MAX_FRAME_LENGTH),
    "FRAME_DATA_LSB will not fit into MAX_FRAME_LENGTH");
static_assert((FRAME_CRC < MAX_FRAME_LENGTH), "FRAME_CRC will not fit into MAX_FRAME_LENGTH");

void data_frame_create(
    uint8_t *     output,
    const uint8_t maxLength,
    const uint8_t configuration,
    const uint8_t measurement_msb,
    const uint8_t measurement_lsb)
{
    if((output != 0) && (maxLength >= MAX_FRAME_LENGTH))
    {
        /* clang-diagnostic-unsafe-buffer-usage lint warnings
           are not applicable; the code is correct and the use of static_assert
           ensures this. Note: I don't want to disable these warnings in the file globally,
           even though that would make the code less cluttered (currently there
           are many comments disabling the linter). In the future, disabling
           them globally could hide real warnings. */

        // NOLINTNEXTLINE(clang-diagnostic-unsafe-buffer-usage)
        output[FRAME_PREAMBLE] = CALCULATE_PREAMBLE(FRAME_SEND_MEASSUREMENT_ID,
            MAX_FRAME_LENGTH);

        // NOLINTNEXTLINE(clang-diagnostic-unsafe-buffer-usage)
        output[FRAME_CONFIGURATION] = configuration;

        // NOLINTNEXTLINE(clang-diagnostic-unsafe-buffer-usage)
        output[FRAME_DATA_MSB] = measurement_msb;

        // NOLINTNEXTLINE(clang-diagnostic-unsafe-buffer-usage)
        output[FRAME_DATA_LSB] = measurement_lsb;

        // NOLINTNEXTLINE(clang-diagnostic-unsafe-buffer-usage)
        output[FRAME_CRC] = GET_CRC_4_BYTES(
            output[FRAME_PREAMBLE],
            output[FRAME_CONFIGURATION],
            output[FRAME_DATA_MSB],
            output[FRAME_DATA_LSB]);
    }
}
