/*
* AnalogToDigitalConverter.h
*
* Created: 22.09.2018 16:03:39
* Author: robert
*/


#ifndef __ADS1110Converter_H__
#define __ADS1110Converter_H__
#include "DriverI2C.h"

class DriverADS1110
{
public:
    DriverADS1110(DriverI2C& driverI2C);
    ~DriverADS1110() = default;

    DriverADS1110( const DriverADS1110 &c ) =  delete;
    DriverADS1110& operator=( const DriverADS1110 &c ) = delete;;

    bool init();

    // logic of getting meassurement is splitted into doMeassurement() and
    // getMeassurementValue(), because first one will be probably done
    // periodically, in some constant time intervals, however, data can be needed
    // later, not exactly in the time of measurement.

    // if there is no data to read, the return value is false, otherwise it's true
    bool doMeassurement();

    // to get the measurement value, first it's needed to perform the measurement
    // using doMeassurement() method.
    uint16_t getMeassurementValue();

private:
    DriverI2C& driverI2C;

    // ADS1110 has only one available address.
    static const uint8_t i2cAddressADS1110 = 0b1001000;

    // I2C control register bits
    static const uint8_t STDRDYBit = (2U << 7U);
    // 5 and 6 are reserved by chip manufacturer.
    static const uint8_t SCBit     = (2U << 4U);
    static const uint8_t DR1Bit    = (2U << 3U);
    static const uint8_t DR0Bit    = (2U << 2U);
    static const uint8_t PGA1Bit   = (2U << 1U);
    static const uint8_t PGA0Bit   = (2U << 0U);

    uint16_t meassurementValue;
};

#endif //__ADS1110_H__
