/*
 * MCP3425A0T.c
 *
 *  Created on: 04.06.2019
 *      Author: robert
 */

#include "MCP3425A0T.h"

#include "stm8s_gpio.h"

bool MCP3425A0T_Init(MCP3425A0TConfig_t *config)
{
	GPIO_Init(GPIOD, config->pinId, GPIO_MODE_OUT_PP_LOW_FAST);

	GPIOD->ODR |= GPIO_PIN_7;

	GPIOD->ODR ^= GPIO_PIN_7;

	// TODO
	return TRUE;
}



bool MCP3425A0T_GeMeasurementData(/*MCP3425A0TConfig_t *config, MCP3425A0TMeasurementData_t *measurementData*/)
{
	return TRUE;
}

