#include "application_builder.h"

#include "clock_configurator.h"
#include "timer_configurator.h"
#include "logger.h"
#include "user_interface.h"
#include "radioactivity_measurer.h"
#include "measurement_collector.h"

#include "interrupt_configurator.h"

void application_builder_init()
{
    clock_configurator_init();
    timer_configurator_init();
    logger_init();
    user_interface_init();
    radioactivity_measurer_init();

    // Initialization is over, we can enable interrupts
    interrupt_configurator_enable();

    // Show message that the initialization is OK
    user_interface_update_message(
        USER_INTERFACE_STATE_OK_MSG,
        USER_INTERFACE_ENABLE);
}


void application_builder_run()
{
    /* Wait in idle state. Business logic is triggered via interrupt. */
    interrupt_configurator_wait();
}


void application_builder_tick()
{
    measurement_collector_tick();
}

