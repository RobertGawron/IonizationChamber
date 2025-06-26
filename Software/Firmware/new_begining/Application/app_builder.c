#include "app_builder.h"

#include <stdint.h>
#include "assert_impl.h"
#include "clk_conf.h"
#include "timer_conf.h"
#include "interrupt_control.h"
#include "user_interface.h"

volatile int app_tick_flag = 0;

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
    //
    user_interface_init();
    timer_conf_init();

    // interrupt_control_enable();
    // Disable all interrupts first
    disableInterrupts();

    // Clear any pending interrupts
    __asm__("sim");

    // Now enable
    enableInterrupts();

    while (1)
    {
        // wfi();
        if (app_tick_flag)
            user_interface_update_message(USER_INTERFACE_COLLECTING_DATA_MSG, USER_INTERFACE_ENABLE);
    }
}

void app_builder_run(void)
{
    // user_interface_update_message(USER_INTERFACE_COLLECTING_DATA_MSG, USER_INTERFACE_ENABLE);
    /*
    user_interface_update_message(USER_INTERFACE_COLLECTING_DATA_MSG, USER_INTERFACE_ENABLE);

    delay_ms(500); // 1 second delay
    user_interface_update_message(USER_INTERFACE_COLLECTING_DATA_MSG, USER_INTERFACE_DISABLE);
    delay_ms(500); // 1 second delay
    */
    // interrupt_control_wait();
    /* wfi();
     if (app_tick_flag == 1)
     {
         app_builder_tick();
     }*/
    wfi();
    if (app_tick_flag)
    {
        // app_builder_tick();
        app_tick_flag = 0; // Reset flag
    }
}

void app_builder_tick(void)
{
    user_interface_update_message(USER_INTERFACE_COLLECTING_DATA_MSG, USER_INTERFACE_ENABLE);

    delay_ms(500); // 1 second delay
    user_interface_update_message(USER_INTERFACE_COLLECTING_DATA_MSG, USER_INTERFACE_DISABLE);
    delay_ms(500); // 1 second delay
}
