#ifndef Logger_h
#define Logger_h

#include <stdint.h>

void logger_init();

void logger_print(const uint8_t *output,
                  const uint8_t length);

#endif
