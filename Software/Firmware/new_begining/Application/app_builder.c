#include "app_builder.h"

#include <stdint.h>
#include "assert_impl.h"
#include "clk_conf.h"
#include "timer_conf.h"
#include "interrupt_control.h"
#include "user_interface.h"
#include "data_acquisition.h"

volatile int app_tick_flag = 0;

/*
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
*/
void app_builder_init(void)
{

    clk_conf_init();
    user_interface_init();
    timer_conf_init();
    interrupt_control_enable();
}

void app_builder_run(void)
{
    interrupt_control_wait();

    if (app_tick_flag)
    {
        app_builder_tick();
        app_tick_flag = 0;
    }
}

void app_builder_tick(void)
{
    static int i = 0;
    i = ~i;
    user_interface_update_message(USER_INTERFACE_COLLECTING_DATA_MSG, (i == 0) ? USER_INTERFACE_ENABLE : USER_INTERFACE_DISABLE);
    user_interface_update_message(USER_INTERFACE_STATE_OK_MSG, (i == 0) ? USER_INTERFACE_DISABLE : USER_INTERFACE_ENABLE);

    data_acquisition_tick();
}
