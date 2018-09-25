/*
* DriverI2C.h
*
* Created: 25.09.2018 17:38:48
* Author: robert
*/


#ifndef __DRIVERI2C_H__
#define __DRIVERI2C_H__


class DriverI2C
{
public:
    DriverI2C();
    ~DriverI2C();
    DriverI2C( const DriverI2C &c ) = delete;
    DriverI2C& operator=( const DriverI2C &c ) = delete;

    bool init();

private:


};

#endif //__DRIVERI2C_H__
