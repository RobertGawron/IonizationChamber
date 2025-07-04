#include "status_leds.h"
#include "pinout_conf.h"

#include "stm8s_gpio.h"

// stm8 lib store flag combinations in enum variables
#define PIN_LEDS (PIN_LED_GREEN | PIN_LED_RED)// NOLINT(clang-diagnostic-assign-enum)

void status_leds_init(void)
{
    GPIO_Init(PORT_LED,
        PIN_LEDS,
        GPIO_MODE_OUT_PP_LOW_SLOW);
}

void status_leds_set(const LedId_t led,
                     const LedState_t state)
{
    /*
     * Initialise with a dummy value to silence the linter; it will be
     * overwritten in the first switch–case below.
     */
    GPIO_Pin_TypeDef pin = GPIO_PIN_ALL;

    /*
     * Both switch–case blocks enumerate every value of their respective enums,
     * so a ‘default’ label is unnecessary. If a new value is added later, the
     * linter will flag the missing branch.
     *
     * SDCC emits the same code size whether an empty ‘default’ is present or
     * not, so omitting it gains nothing in binary size; it is done purely for
     * readability and static-analysis cleanliness.
     */

    switch (led)           // NOLINT(clang-diagnostic-switch-default)
    {
    case LED_ID_DATA_ACTIVE:
        pin = PIN_LED_GREEN;
        break;

    case LED_ID_SYSTEM_OK:
        pin = PIN_LED_RED;
        break;
    }

    switch (state)         // NOLINT(clang-diagnostic-switch-default)
    {
    case LED_OFF:
        GPIO_WriteLow(PORT_LED, pin);
        break;

    case LED_ON:
        GPIO_WriteHigh(PORT_LED, pin);
        break;

    case LED_TOGGLE:
        GPIO_WriteReverse(PORT_LED, pin);
        break;
    }
}
