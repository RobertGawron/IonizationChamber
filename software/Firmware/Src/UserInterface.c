/*
 * GUI.c
 *
 *  Created on: 30.06.2019
 *      Author: robert
 */

#include "UserInterface.h"

#include "PinoutConfiguration.h"

void UserInterface_Init()
{
    GPIO_Init(PORT_GPIO_LED, (PIN_GPIO_LED_GREEN | PIN_GPIO_LED_RED),  GPIO_MODE_OUT_PP_LOW_SLOW);
    GPIO_WriteLow(PORT_GPIO_LED, (PIN_GPIO_LED_GREEN | PIN_GPIO_LED_RED));
}

void UserInterface_ShowMessage(GUI_Status status)
{
    switch(status)
    {
        case GUI_FAULT_MSG:
        {
            GPIO_WriteHigh(PORT_GPIO_LED, PIN_GPIO_LED_RED);
            break;
        }
        case GUI_INFO_MSG:
        {
            GPIO_WriteHigh(PORT_GPIO_LED, PIN_GPIO_LED_GREEN);
            break;
        }
    }
}
