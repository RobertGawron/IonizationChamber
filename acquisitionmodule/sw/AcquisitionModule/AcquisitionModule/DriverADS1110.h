/*
* AnalogToDigitalConverter.h
*
* Created: 22.09.2018 16:03:39
* Author: robert
*/


#ifndef __ADS1110Converter_H__
#define __ADS1110Converter_H__


class DriverADS1110
{
public:
    DriverADS1110();
    ~DriverADS1110();
    DriverADS1110( const DriverADS1110 &c ) =  delete;
    DriverADS1110& operator=( const DriverADS1110 &c ) = delete;;

    bool init();
private:


};

#endif //__ADS1110_H__
