/*
 * GUI.c
 *
 *  Created on: 30.06.2019
 *      Author: robert
 */

#include "../Inc/UserInterface.h"

#include "PinoutConfiguration.h"

void UserInterface_Init()
{
    GPIO_Init(LED_GPIO_PORT, (LED_GREEN_GPIO_PIN | LED_RED_GPIO_PIN),  GPIO_MODE_OUT_PP_LOW_SLOW);
    GPIO_WriteLow(LED_GPIO_PORT, (LED_GREEN_GPIO_PIN | LED_RED_GPIO_PIN));
}

void UserInterface_ShowMessage(GUI_Status status)
{
    switch(status)
    {
        case GUI_FAULT_MSG:
        {
            GPIO_WriteHigh(LED_GPIO_PORT, LED_RED_GPIO_PIN);
            break;
        }
        case GUI_INFO_MSG:
        {
            GPIO_WriteHigh(LED_GPIO_PORT, LED_GREEN_GPIO_PIN);
            break;
        }
    }
}
