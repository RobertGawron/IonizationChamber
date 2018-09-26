/*
* DriverUART.h
*
* Created: 22.09.2018 16:03:06
* Author: robert
*/


#ifndef __DRIVERUART_H__
#define __DRIVERUART_H__


class DriverUART
{
public:
    DriverUART();
    ~DriverUART() = default;

    DriverUART( const DriverUART &c ) = delete;
    DriverUART& operator=( const DriverUART &c ) = delete;

    bool init();

private:

};

#endif //__DRIVERUART_H__
