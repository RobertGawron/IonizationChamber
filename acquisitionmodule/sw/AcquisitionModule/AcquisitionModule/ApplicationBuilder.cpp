/*
* ApplicationBuilder.cpp
*
* Created: 25.09.2018 14:13:53
* Author: robert
*/


#include "ApplicationBuilder.h"
#include "usbdrv/usbdrv.h"

ApplicationBuilder::ApplicationBuilder():
    driverADS1110(),
    driverKeyboard(),
    driverLCD(),
    driverUSB()
{
}

ApplicationBuilder::~ApplicationBuilder()
{
}

bool ApplicationBuilder::init()
{
    bool status = true;

    status = driverADS1110.init();

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