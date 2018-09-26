/*
* DriverI2C.h
*
* Created: 25.09.2018 17:38:48
* Author: robert
*/


#ifndef __DRIVERI2C_H__
#define __DRIVERI2C_H__
#include "TinyWireM/TinyWireM.h"

class DriverI2C
{
public:
    DriverI2C() = default;
    ~DriverI2C() = default;
    DriverI2C( const DriverI2C &c ) = delete;
    DriverI2C& operator=( const DriverI2C &c ) = delete;

    bool init();
    void beginTransmission(uint8_t slaveAddr);
    void send(uint8_t data);
    uint8_t endTransmission();
    uint8_t requestFrom(uint8_t, uint8_t);
    uint8_t receive();

private:
    static USI_TWI tinyWire;
};

#endif //__DRIVERI2C_H__
