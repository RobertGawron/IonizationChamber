#include "app_builder.h"

#include <stdint.h>
#include "assert_impl.h"

#include "user_interface.h"
#include "data_logger.h"
#include "clk_conf.h"
#include "timer_conf.h"
#include "interrupt_control.h"
#include "data_acquisition.h"

volatile unsigned char app_tick_flag = 0;

void app_builder_init(
    void)
{
    clk_conf_init();
    user_interface_init();
    timer_conf_init();
    data_logger_init();
    data_acquisition_init();

    interrupt_control_enable();
}

void app_builder_run(
    void)
{
    interrupt_control_wait();

    if(app_tick_flag)
    {
        app_builder_tick();
        app_tick_flag = 0;
    }
}

void app_builder_tick(
    void)
{
    user_interface_indicate_alive();
    data_acquisition_tick();
}
