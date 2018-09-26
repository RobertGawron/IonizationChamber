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
    void doMeassurement();

    // to get the measurement value, first it's needed to perform the measurement
    // using doMeassurement() method.
    uint16_t getMeassurementValue();

private:
    DriverI2C& driverI2C;
    static const uint8_t i2cAddress = 0b1001000;

    uint16_t meassurementValue;
};

#endif //__ADS1110_H__
