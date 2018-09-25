/*
* DriverKeyboard.h
*
* Created: 22.09.2018 16:02:33
* Author: robert
*/


#ifndef __KEYBOARD_H__
#define __KEYBOARD_H__


class DriverKeyboard
{
public:
    DriverKeyboard();
    ~DriverKeyboard();
    DriverKeyboard( const DriverKeyboard &c ) = delete;
    DriverKeyboard& operator=( const DriverKeyboard &c ) = delete;

    bool init();

private:

};

#endif //__KEYBOARD_H__
