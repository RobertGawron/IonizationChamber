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

    uint8_t dataToSend = (STDRDYValue << I2CControlRegisterBits.SCBit)
                         | (SCBValue  << I2CControlRegisterBits.SCBit)
                         | (DR1Value  << I2CControlRegisterBits.DR1Bit)
                         | (DR0Value  << I2CControlRegisterBits.DR0Bit)
                         | (PGA1Value << I2CControlRegisterBits.PGA1Bit)
                         | (PGA0Value << I2CControlRegisterBits.PGA0Bit);

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
    bool readMeassurementStatus = false;

    driverI2C.beginTransmission(i2cAddressADS1110);
    driverI2C.requestFrom(i2cAddressADS1110, i2cResponseSizeInBytes);

    // TODO: should check if data is available in controll register
    if(driverI2C.availableData() == i2cResponseSizeInBytes)
    {
        uint8_t controlRegisterData = driverI2C.receive();
        uint8_t aDCValueLowByte = driverI2C.receive();
        uint8_t aDCValueHighByte = driverI2C.receive();

        meassurementValue = (aDCValueHighByte << 8U) | aDCValueLowByte;
        readMeassurementStatus = true;
    }
    else
    {
        meassurementValue = 0xff;
        readMeassurementStatus = false;

    }

    return readMeassurementStatus;
}

uint16_t DriverADS1110::getMeassurementValue()
{
    return meassurementValue;
}
