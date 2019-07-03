/*
 * PeakDetector.h
 *
 *  Created on: 15 cze 2019
 *      Author: robert
 */

#ifndef INC_PULSECOUNTER_H_
#define INC_PULSECOUNTER_H_

#include "CommonDataTypes.h"

bool PulseCounter_Init(uint8_t pin);

void PulseCounter_Tick();

#endif /* INC_PULSECOUNTER_H_ */
