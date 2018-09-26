/*
* DriverUART.h
*
* Created: 22.09.2018 16:03:06
* Author: robert
*/


#ifndef __SERIALPORT_H__
#define __SERIALPORT_H__


class DriverUART
{
public:
    DriverUART();
    ~DriverUART();
    DriverUART( const DriverUART &c ) = delete;
    DriverUART& operator=( const DriverUART &c ) = delete;

    bool init();

private:

};

#endif //__SERIALPORT_H__
