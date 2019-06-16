/*
 * ApplicationBuilder.c
 *
 *  Created on: 15 cze 2019
 *      Author: robert
 */

#include "ApplicationBuilder.h"
#include "PinoutConfiguration.h"
#include "MCP3425A0T.h"
#include "PeakDetector.h"
#include "DataLogger.h"


static MCP3425A0TConfig_t adcConfig[]={{ADC_CHIP_1_PIN}, {ADC_CHIP_2_PIN}};


bool ApplicationBuilder_Init()
{
	uint8_t amountOfADC = sizeof(adcConfig) / sizeof(adcConfig[0]);

	for(uint8_t i = 0U; i < amountOfADC; i++)
	{
		MCP3425A0T_Init(&adcConfig[i]);
	}

	PeakDetector_Init(PEAK_DETECTOR_PIN);


	return TRUE;
}

void ApplicationBuilder_Tick()
{

}
