/*
 * MeassurementFrame.h
 *
 *  Created on: 06.07.2019
 *      Author: robert
 */

#ifndef INC_MEASSUREMENTFRAME_H_
#define INC_MEASSUREMENTFRAME_H_

#include "CommonDataTypes.h"

void MeassurementFrame_Create(uint8_t configuration, uint16_t data);

/* Dependency injection. This module require a function that take character as an argument and print it somewhere. */
bool MeassurementFrame_Send(void (*sendFunction)(uint8_t));

#endif /* INC_MEASSUREMENTFRAME_H_ */
