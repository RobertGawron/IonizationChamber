/*
 * MeasurementCollector.c
 *
 *  Created on: 15 cze 2019
 *      Author: robert
 */

#include "MeasurementCollector.h"
#include "VoltageSensorActualValue.h"
#include "MeassurementFrame.h"
#include "Logger.h"


void MeasurementCollector_Init()
{
}


void MeasurementCollector_Tick()
{
    uint8_t configuration = VoltageSensorActualValue_GetConfiguration();
    
    VoltageSensorActualValue_MeasurementData_t sample;
    VoltageSensorActualValue_MeasureValue(&sample);

    MeassurementFrame_Create(configuration, sample);
    MeassurementFrame_Send(&Logger_Print);
}

