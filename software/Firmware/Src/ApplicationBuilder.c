/*
 * ApplicationBuilder.c
 *
 *  Created on: 15 cze 2019
 *      Author: robert
 */

#include "ApplicationBuilder.h"

#include "../Inc/Logger.h"
#include "../Inc/PulseCounter.h"
#include "../Inc/UserInterface.h"
#include "PinoutConfiguration.h"
#include "MCP3425A0T.h"

static MCP3425A0TConfig_t adcConfig[]={{ADC_CHIP_1_PIN}, {ADC_CHIP_2_PIN}};


void ApplicationBuilder_Init()
{
	uint8_t amountOfADC = sizeof(adcConfig) / sizeof(adcConfig[0]);

	/*for(uint8_t i = 0U; i < amountOfADC; i++)
	{
		MCP3425A0T_Init(&adcConfig[i]);
	}*/

	Logger_Init();
	PulseCounter_Init(PEAK_DETECTOR_PIN);

    UserInterface_Init();

    UserInterface_ShowMessage(GUI_INFO_MSG);
    UserInterface_ShowMessage(GUI_FAULT_MSG);
}

void ApplicationBuilder_Tick()
{
    Logger_Tick();
}
