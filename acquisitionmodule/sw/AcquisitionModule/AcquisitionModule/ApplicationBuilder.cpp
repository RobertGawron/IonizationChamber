/*
* ApplicationBuilder.cpp
*
* Created: 25.09.2018 14:13:53
* Author: robert
*/


#include "ApplicationBuilder.h"

ApplicationBuilder::ApplicationBuilder():
    driverI2C(),
    driverADS1110(driverI2C),
    driverKeyboard(),
    driverLCD(driverI2C),
    driverUSB()
{
}

ApplicationBuilder::~ApplicationBuilder()
{
}

bool ApplicationBuilder::init()
{
    bool status = true;

    status = driverI2C.init();

    if(status)
    {
        status = driverADS1110.init();
    }

    if(status)
    {
        status = driverKeyboard.init();
    }

    if(status)
    {
        status = driverLCD.init();
    }

    if(status)
    {
        status = driverUSB.init();
    }

    return status;
}

void ApplicationBuilder::run()
{

}