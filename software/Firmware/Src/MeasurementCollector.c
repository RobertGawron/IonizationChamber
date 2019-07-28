/*
 * MeasurementCollector.c
 *
 *  Created on: 15 cze 2019
 *      Author: robert
 */

#include "MeasurementCollector.h"
#include "VoltageSensorActualValue.h"
#
void MeasurementCollector_Init()
{

}


void MeasurementCollector_Tick()
{
    VoltageSensorActualValue_GetMeasurementData(0);
}
