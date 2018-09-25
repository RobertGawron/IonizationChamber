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
    ~DriverADS1110();
    DriverADS1110( const DriverADS1110 &c ) =  delete;
    DriverADS1110& operator=( const DriverADS1110 &c ) = delete;;

    bool init();

private:
    DriverI2C& driverI2C;

};

#endif //__ADS1110_H__
