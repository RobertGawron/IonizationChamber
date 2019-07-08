/*
 * ApplicationBuilder.c
 *
 *  Created on: 15 cze 2019
 *      Author: robert
 */

#include "ApplicationBuilder.h"
#include "PinoutConfiguration.h"
#include "ClockConfigurator.h"
#include "TimerConfigurator.h"
#include "Logger.h"
#include "PulseCounter.h"
#include "UserInterface.h"
#include "VoltageSensorActualValue.h"
#include "VoltageSensorPeakValue.h"

static MCP3425A0TConfig_t adcConfig[]={{PIN_ADC_CHIP_1}, {PIN_ADC_CHIP_2}};


void ApplicationBuilder_Init()
{
    ClockConfigurator_Init();
    TimerConfigurator_Init();

    Logger_Init();
    PulseCounter_Init(PIN_PULSE_COUNTER);
    UserInterface_Init();

    enableInterrupts();

    UserInterface_ShowMessage(USER_INTERFAE_STATE_OK_MSG);
}

void ApplicationBuilder_Run()
{
    while(TRUE)
    {
        /* Wait in idle state. Business logic is triggered via interrupt. */
        wfi();
    }
}


void ApplicationBuilder_Tick()
{
    Logger_Tick();
}
