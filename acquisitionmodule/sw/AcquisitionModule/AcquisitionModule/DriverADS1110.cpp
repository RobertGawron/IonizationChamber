/*
* DriverADS1110.cpp
*
* Created: 22.09.2018 16:03:39
* Author: robert
*/


#include "DriverADS1110.h"


DriverADS1110::DriverADS1110(DriverI2C& driverI2C):
    driverI2C(driverI2C),
    meassurementValue(0U)
{
}

bool DriverADS1110::init()
{
    // don't want to read now
    const uint8_t STDRDYValue = 0U;

    // continuous mode
    const uint8_t SCBValue    = 0U;

    // data rate is 30SPS
    const uint8_t DR1Value    = 0U;
    const uint8_t DR0Value    = 1U;

    // gain is 0
    const uint8_t PGA1Value   = 0U;
    const uint8_t PGA0Value   = 0U;

    uint8_t dataToSend = (STDRDYValue << SCBit)
                         | (SCBValue <<SCBit )
                         | (DR1Value << DR1Bit)
                         | (DR0Value << DR0Bit)
                         | (PGA1Value << PGA1Bit)
                         | (PGA0Value << PGA0Bit);

    driverI2C.beginTransmission(i2cAddressADS1110);
    driverI2C.send(dataToSend);
    driverI2C.endTransmission();

    // TODO: how to check if the initialization was unsuccessful?
    // maybe now read the control register and compare it with
    // what was set?
    return true;
}

bool DriverADS1110::doMeassurement()
{
    meassurementValue = 0xff;
    return true;
}

uint16_t DriverADS1110::getMeassurementValue()
{
    return meassurementValue;
}
