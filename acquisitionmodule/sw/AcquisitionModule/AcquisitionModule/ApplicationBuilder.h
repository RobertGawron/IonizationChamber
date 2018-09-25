/*
* ApplicationBuilder.h
*
* Created: 25.09.2018 14:13:53
* Author: robert
*/


#ifndef __APPLICATIONBUILDER_H__
#define __APPLICATIONBUILDER_H__

#include "DriverADS1110.h"
#include "DriverKeyboard.h"
#include "DriverLCD.h"
#include "DriverUSB.h"

class ApplicationBuilder
{
public:
    ApplicationBuilder();
    ~ApplicationBuilder();
    ApplicationBuilder( const ApplicationBuilder &c ) = delete;
    ApplicationBuilder& operator=( const ApplicationBuilder &c ) = delete;

    // all object creation logic that can fail should be here, not in the ctor
    bool init();

    // runs forever
    void run();

private:
    DriverADS1110 driverADS1110;
    DriverKeyboard driverKeyboard;
    DriverLCD driverLCD;
    DriverUSB driverUSB;
};;

#endif //__APPLICATIONBUILDER_H__
