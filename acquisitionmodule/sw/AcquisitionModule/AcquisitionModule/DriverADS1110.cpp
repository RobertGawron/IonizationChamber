/*
* DriverADS1110.cpp
*
* Created: 22.09.2018 16:03:39
* Author: robert
*/


#include "DriverADS1110.h"


DriverADS1110::DriverADS1110(DriverI2C& driverI2C):
    driverI2C(driverI2C),
    meassurementValue(0U)
{
}

bool DriverADS1110::init()
{
    return true;
}

void DriverADS1110::doMeassurement()
{
    meassurementValue = 0xff;
}

uint16_t DriverADS1110::getMeassurementValue()
{
    return meassurementValue;
}
