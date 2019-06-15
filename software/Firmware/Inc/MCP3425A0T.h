/*
 * MCP3425A0T.h
 *
 *  Created on: 04.06.2019
 *      Author: robert
 */

#ifndef SRC_MCP3425A0T_H_
#define SRC_MCP3425A0T_H_

#include "stm8s.h" // for bool type


typedef struct MCP3425A0TConfig_t {
	int pinId;
} MCP3425A0TConfig_t;

#define  MCP3425A0TMeasurementData_t int

//bool MCP3425A0T_Init(MCP3425A0TConfig_t *config);


bool MCP3425A0T_Init(MCP3425A0TConfig_t *config);

bool MCP3425A0T_GeMeasurementData(/*MCP3425A0TConfig_t *config, MCP3425A0TMeasurementData_t *measurementData*/);


#endif /* SRC_MCP3425A0T_H_ */
