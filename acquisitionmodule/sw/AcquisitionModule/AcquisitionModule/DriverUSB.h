/*
* DriverUSB.h
*
* Created: 22.09.2018 16:03:06
* Author: robert
*/


#ifndef __SERIALPORT_H__
#define __SERIALPORT_H__


class DriverUSB
{
public:
    DriverUSB();
    ~DriverUSB();
    DriverUSB( const DriverUSB &c ) = delete;
    DriverUSB& operator=( const DriverUSB &c ) = delete;

    bool init();

private:

};

#endif //__SERIALPORT_H__
