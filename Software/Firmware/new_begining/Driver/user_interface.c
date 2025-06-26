#include "user_interface.h"

#include "stm8s_gpio.h"
#include "pinout_conf.h"

#define GPIO_LED_PINS (PIN_GPIO_LED_GREEN | PIN_GPIO_LED_RED)

void user_interface_init(void)
{
    GPIO_Init(PORT_GPIO_LED, GPIO_LED_PINS, GPIO_MODE_OUT_PP_LOW_SLOW);
    GPIO_WriteLow(PORT_GPIO_LED, GPIO_LED_PINS);
}

void user_interface_update_message(
    const UserInterface_Message_t message,
    const UserInterface_MessageAction_t state)
{
    /// GPIO_WriteReverse
    GPIO_Pin_TypeDef pin = 0;
    bool status = TRUE;

    switch (message)
    {
    case USER_INTERFACE_STATE_OK_MSG:
        pin = PIN_GPIO_LED_GREEN;
        break;

    case USER_INTERFACE_COLLECTING_DATA_MSG:
        pin = PIN_GPIO_LED_RED;
        break;

    default:
        status = FALSE;
        break;
    }

    if (status)
    {
        switch (state)
        {
        case USER_INTERFACE_ENABLE:
            GPIO_WriteHigh(PORT_GPIO_LED, pin);
            break;

        case USER_INTERFACE_DISABLE:
            GPIO_WriteLow(PORT_GPIO_LED, pin);
            break;
        }
    }
}
