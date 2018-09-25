/*
 * AcquisitionModule.cpp
 *
 * Created: 22.09.2018 15:57:26
 * Author : robert
 */

//#include <avr/io.h>
#include "ApplicationBuilder.h"
//#include "i2cmaster/i2cmaster.h"


int main(void)
{
    ApplicationBuilder application;

    if(application.init())
    {
        // runs forever in a loop
        application.run();
    }
}

