/*
 * PeakDetector.h
 *
 *  Created on: 15 cze 2019
 *      Author: robert
 */

#ifndef INC_PEAKDETECTOR_H_
#define INC_PEAKDETECTOR_H_

#include "CommonDataTypes.h"

bool PeakDetector_Init(uint8_t pin);

void PeakDetector_Tick();

#endif /* INC_PEAKDETECTOR_H_ */
