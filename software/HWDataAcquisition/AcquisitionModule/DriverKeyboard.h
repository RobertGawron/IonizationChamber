/*
* DriverKeyboard.h
*
* Created: 22.09.2018 16:02:33
* Author: robert
*/


#ifndef __DRIVERKEYBOARD_H__
#define __DRIVERKEYBOARD_H__


class DriverKeyboard
{
public:
    DriverKeyboard();
    ~DriverKeyboard() = default;

    DriverKeyboard( const DriverKeyboard &c ) = delete;
    DriverKeyboard& operator=( const DriverKeyboard &c ) = delete;

    bool init();

private:

};

#endif //__DRIVERKEYBOARD_H__
