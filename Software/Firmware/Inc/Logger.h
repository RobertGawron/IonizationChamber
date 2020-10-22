#ifndef INC_LOGGER_H_
#define INC_LOGGER_H_

#include "CommonDataTypes.h"

typedef uint8_t Logger_DataFormat_t;

void Logger_Init();

void Logger_Print(Logger_DataFormat_t data);

#endif
