/* 
* AnalogToDigitalConverter.h
*
* Created: 22.09.2018 16:03:39
* Author: robert
*/


#ifndef __ADS1110Converter_H__
#define __ADS1110Converter_H__


class ADS1110Converter
{
//variables
public:
protected:
private:

//functions
public:
	ADS1110Converter();
	~ADS1110Converter();
	
	ADS1110Converter( const ADS1110Converter &c ) =  delete;
protected:
private:
	
	ADS1110Converter& operator=( const ADS1110Converter &c );

}; //ADS1110

#endif //__ADS1110_H__
