#include "application_builder.h"

#include "clock_configurator.h"
#include "timer_configurator.h"
#include "logger.h"
#include "user_interface.h"
#include "radioactivity_measurer.h"
#include "measurement_collector.h"

#include "interrupt_configurator.h"

// #include "interrupt_handler.h"
//  volatile unsigned char app_tick_flag = 0;

// In interrupt_handler.h
// #pragma save
// #pragma vector = 11
// void TIM1_UPD_OVF_TRG_BRK_IRQHandler(void) __interrupt(11);
// #pragma restore

// In interrupt_handler.c
#include "stm8s.h"
// #include "interrupt_handler.h"

volatile unsigned char app_tick_flag = 0;

void application_builder_init()
{
    user_interface_update_message(
        USER_INTERFACE_COLLECTING_DATA_MSG,
        USER_INTERFACE_ENABLE);

    // clock_configurator_init();
    // enableInterrupts();
    timer_configurator_init();
    // logger_init();
    user_interface_init();

    user_interface_update_message(
        USER_INTERFACE_COLLECTING_DATA_MSG,
        USER_INTERFACE_ENABLE);
    //  radioactivity_measurer_init();

    // interrupt_configurator_enable();
    // TIM1_ClearITPendingBit(TIM1_IT_UPDATE);
    // enableInterrupts();
    //__asm__("rim\n");
    /* Initialization is over, we can enable interrupts */
    // logger_print("dupa", 3);
    /* Show message that the initialization is OK */
    /*   user_interface_update_message(
           USER_INTERFACE_STATE_OK_MSG,
           USER_INTERFACE_ENABLE);
   */
    /*
        user_interface_update_message(
            USER_INTERFACE_COLLECTING_DATA_MSG,
            USER_INTERFACE_ENABLE);
    */
    // while (1)
    //    application_builder_tick();
    //  while (1)
    user_interface_update_message(
        USER_INTERFACE_COLLECTING_DATA_MSG,
        USER_INTERFACE_ENABLE);
    while (1)
    {

        // halt(); // SDCC equivalent of wfi()
        //  wfi(); // Wait for next interrupt

        if (app_tick_flag)
        {

            user_interface_update_message(
                USER_INTERFACE_STATE_OK_MSG,
                USER_INTERFACE_ENABLE);

            app_tick_flag = 0;          // Clear flag first
            application_builder_tick(); // Now call your function
                                        /*
                                                    user_interface_update_message(
                                                        USER_INTERFACE_COLLECTING_DATA_MSG,
                                                        USER_INTERFACE_ENABLE);
                                          */
        }
    }
}

void application_builder_run()
{

    /* Wait in idle state. Business logic is triggered via interrupt. */
    // interrupt_configurator_wait();
    /*wfi();
    application_builder_tick();
*/
    /*
        //  while (!timer_flag)
        {
            wfi(); // Sleep ONLY until timer interrupt
        }
        if (timer_flag)
        {
            timer_flag = 0;
            application_builder_tick();
        }
            */
}

static unsigned char i = 0;

void application_builder_tick()
{
    /*
        user_interface_update_message(
            USER_INTERFACE_COLLECTING_DATA_MSG,
            USER_INTERFACE_ENABLE);
    */
    /*  // static int i = 0;
      i++;

      if ((i % 2) == 0)
      {
          user_interface_update_message(
              USER_INTERFACE_COLLECTING_DATA_MSG,
              USER_INTERFACE_ENABLE);
      }
      else
      {
          user_interface_update_message(
              USER_INTERFACE_COLLECTING_DATA_MSG,
              USER_INTERFACE_DISABLE);
      }
  */
    /*    user_interface_update_message(
            USER_INTERFACE_COLLECTING_DATA_MSG,
            USER_INTERFACE_ENABLE);
    */
    measurement_collector_tick();

    /*  user_interface_update_message(
          USER_INTERFACE_COLLECTING_DATA_MSG,
          USER_INTERFACE_DISABLE);
     */
    /*
         user_interface_update_message(
             USER_INTERFACE_COLLECTING_DATA_MSG,
             USER_INTERFACE_DISABLE);
     */
}
