/*
* DriverLCD.cpp
*
* Created: 22.09.2018 16:02:47
* Author: robert
*/


#include "DriverLCD.h"


DriverLCD::DriverLCD(DriverI2C& driverI2C):
    driverI2C(driverI2C)
{
}

DriverLCD::~DriverLCD()
{
}

bool DriverLCD::init()
{
    return true;
}