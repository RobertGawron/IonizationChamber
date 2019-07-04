/*
 * ApplicationBuilder.c
 *
 *  Created on: 15 cze 2019
 *      Author: robert
 */

#include "ApplicationBuilder.h"
#include "PinoutConfiguration.h"
#include "ClockConfigurator.h"
#include "AutoWakeupConfigurator.h"
#include "Logger.h"
#include "PulseCounter.h"
#include "UserInterface.h"
#include "MCP3425A0T.h"

static MCP3425A0TConfig_t adcConfig[]={{PIN_ADC_CHIP_1}, {PIN_ADC_CHIP_2}};

static void ApplicationBuilder_Tick();

void ApplicationBuilder_Init()
{
	/*uint8_t amountOfADC = sizeof(adcConfig) / sizeof(adcConfig[0]);

	for(uint8_t i = 0U; i < amountOfADC; i++)
	{
		MCP3425A0T_Init(&adcConfig[i]);
	}*/

	ClockConfigurator_Init();
	//AutoWakeupConfigurator_Init();

	Logger_Init();
	PulseCounter_Init(PIN_PULSE_COUNTER);

    UserInterface_Init();


    UserInterface_ShowMessage(GUI_FAULT_MSG);
}

void ApplicationBuilder_Run()
{
    while(TRUE)
    {
        ApplicationBuilder_Tick();
        //halt();
        UserInterface_ShowMessage(GUI_INFO_MSG);
    }
}


void ApplicationBuilder_Tick()
{
    Logger_Tick();
}
