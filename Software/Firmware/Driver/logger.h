#ifndef Logger_h
#define Logger_h

#include <stdint.h>

void logger_init(
    void);

void logger_print(
    const uint8_t *output,
    uint8_t        length);

#endif
