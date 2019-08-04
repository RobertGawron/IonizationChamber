/*
 * MeasurementCollector.c
 *
 *  Created on: 15 cze 2019
 *      Author: robert
 */

#include "MeasurementCollector.h"
#include "VoltageSensorActualValue.h"
#include "Logger.h"


void MeasurementCollector_Init()
{
}


void MeasurementCollector_Tick()
{
    VoltageSensorActualValue_MeasurementData_t sample;
    VoltageSensorActualValue_MeasureValue(&sample);

    Logger_Print(sample);
}

