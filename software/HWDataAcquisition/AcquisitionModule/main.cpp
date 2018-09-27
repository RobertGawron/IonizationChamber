/*
 * AcquisitionModule.cpp
 *
 * Created: 22.09.2018 15:57:26
 * Author : robert
 */

#include "ApplicationBuilder.h"

int main(void)
{
    ApplicationBuilder application;

    if(application.init())
    {
        // runs forever in its loop
        application.run();
    }
}

