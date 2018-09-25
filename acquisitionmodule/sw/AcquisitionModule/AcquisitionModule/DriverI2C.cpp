/*
* DriverI2C.cpp
*
* Created: 25.09.2018 17:38:47
* Author: robert
*/


#include "DriverI2C.h"
#include "TinyWireM/TinyWireM.h"

DriverI2C::DriverI2C()
{
}


DriverI2C::~DriverI2C()
{
}

bool DriverI2C::init()
{
    TinyWireM.begin();

    // no way to check if it pass or failed, but for future I'm adding returning
    // status of initialization in all drivers
    return true;
}