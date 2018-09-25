/*
* DriverLCD.h
*
* Created: 22.09.2018 16:02:48
* Author: robert
*/


#ifndef __DISPLAY_H__
#define __DISPLAY_H__


class DriverLCD
{
public:
    DriverLCD();
    ~DriverLCD();
    DriverLCD( const DriverLCD &c ) = delete;
    DriverLCD& operator=( const DriverLCD &c ) = delete;

    bool init();

private:


};

#endif //__DISPLAY_H__
