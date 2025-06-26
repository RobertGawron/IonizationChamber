#include "app_builder.h"

#include <stdint.h>
#include "assert_impl.h"
#include "clk_conf.h"
#include "user_interface.h"

void delay_ms(uint16_t ms)
{
    // More accurate delay for 16MHz HSI
    for (uint16_t i = 0; i < ms; i++)
    {
        for (uint16_t j = 0; j < 1600; j++)
        { // Calibrated for ~1ms
            __asm__("nop");
        }
    }
}

void app_builder_init(void)
{
    clk_conf_init();
    user_interface_init();
}

void app_builder_run(void)
{
    user_interface_update_message(USER_INTERFACE_COLLECTING_DATA_MSG, USER_INTERFACE_ENABLE);

    delay_ms(500); // 1 second delay
    user_interface_update_message(USER_INTERFACE_COLLECTING_DATA_MSG, USER_INTERFACE_DISABLE);
    delay_ms(500); // 1 second delay
}

static unsigned char i = 0;

void app_builder_tick(void)
{
    user_interface_update_message(USER_INTERFACE_COLLECTING_DATA_MSG, USER_INTERFACE_ENABLE);

    delay_ms(500); // 1 second delay
    user_interface_update_message(USER_INTERFACE_COLLECTING_DATA_MSG, USER_INTERFACE_DISABLE);
    delay_ms(500); // 1 second delay
}
