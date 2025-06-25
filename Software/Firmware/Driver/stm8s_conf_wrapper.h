#ifndef stm8s_conf_wrapper_h
#define stm8s_conf_wrapper_h

#include "stm8s.h"

#ifdef UNIT_TEST_ROBERT
// rgawron hack, think about it
#define enableInterrupts() // Empty macro
// #define wfi()              // Empty macro
#define rim()

#undef wfi()

extern void wfi();
#endif

#endif