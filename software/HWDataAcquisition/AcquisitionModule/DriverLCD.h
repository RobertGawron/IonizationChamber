/*
* DriverLCD.h
*
* Created: 22.09.2018 16:02:48
* Author: robert
*/


#ifndef __DISPLAY_H__
#define __DISPLAY_H__
#include "DriverI2C.h"

class DriverLCD
{
public:
    DriverLCD(DriverI2C& driverI2C);
    ~DriverLCD();
    DriverLCD( const DriverLCD &c ) = delete;
    DriverLCD& operator=( const DriverLCD &c ) = delete;

    bool init();

private:
    DriverI2C& driverI2C;

};

#endif //__DISPLAY_H__
