#ifndef INC_COMMONDATATYPES_H_
#define INC_COMMONDATATYPES_H_

#ifdef bool
#error bool is already defined
#endif

#include "stm8s.h"

#ifdef UNIT_TEST_ROBERT
// rgawron hack, think about it
#define enableInterrupts() // Empty macro
#define wfi()              // Empty macro
#define rim()
#endif

#endif
