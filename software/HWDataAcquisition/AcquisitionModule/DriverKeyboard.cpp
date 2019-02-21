/*
* DriverKeyboard.cpp
*
* Created: 22.09.2018 16:02:33
* Author: robert
*/


#include "DriverKeyboard.h"
#include <avr/io.h>
#include <avr/interrupt.h>

ISR(PCINT0_vect)
{
    // TODO: check which pin raised an interrupt.
}

DriverKeyboard::DriverKeyboard()
{
}

bool DriverKeyboard::init()
{
    GIMSK = 0b00100000;    // turns on pin change interrupts
    PCMSK0 = 0b00010011;    // turn on interrupts on pins PB0, PB1, &amp;amp; PB4
    sei();

    // TODO is there a way to check if initialization was succesfull?
    return true;
}