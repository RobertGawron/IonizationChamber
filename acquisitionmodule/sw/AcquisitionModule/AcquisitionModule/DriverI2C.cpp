/*
* DriverI2C.cpp
*
* Created: 25.09.2018 17:38:47
* Author: robert
*/


#include "DriverI2C.h"

USI_TWI DriverI2C::tinyWire;

bool DriverI2C::init()
{
    tinyWire.begin();

    // There is no way to check if initialization was successfully,
    // but to keep consistency with other drivers this method returns
    // status, for now it's always true, might be useful in future.
    return true;
}

void DriverI2C::beginTransmission(uint8_t slaveAddr)
{
    tinyWire.beginTransmission(slaveAddr);
}

void DriverI2C::send(uint8_t data)
{
    tinyWire.send(data);
}

uint8_t DriverI2C::endTransmission()
{
    return tinyWire.endTransmission();
}

uint8_t DriverI2C::requestFrom(uint8_t slaveAddr, uint8_t numBytes)
{
    return tinyWire.requestFrom(slaveAddr, numBytes);
}

uint8_t DriverI2C::availableData()
{
    return tinyWire.available();
}

uint8_t DriverI2C::receive()
{
    return tinyWire.receive();
}
