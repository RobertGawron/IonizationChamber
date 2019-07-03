/*
 * DataLogger.h
 *
 *  Created on: 16.06.2019
 *      Author: robert
 */

#ifndef INC_LOGGER_H_
#define INC_LOGGER_H_

#include "CommonDataTypes.h"

void Logger_Init();

void Logger_Tick();


// used to redirect printf to UART
void putchar(char c);

#endif /* INC_LOGGER_H_ */
