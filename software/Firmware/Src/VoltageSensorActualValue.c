/*
 * MCP3425A0T.c
 *
 *  Created on: 04.06.2019
 *      Author: robert
 */

#include "VoltageSensorActualValue.h"

#include "stm8s_i2c.h"

void MCP3425A0T_Init()
{
    I2C_DeInit();
}



bool MCP3425A0T_GeMeasurementData(MCP3425A0TMeasurementData_t *measurementData)
{
	return TRUE;
}

