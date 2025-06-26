#include "application_builder.h"

/**
 * @file main.c
 * @brief Entry point for the Ionization Chamber application.
 *
 * The Ionization Chamber project implements a radiation detection system
 * using an STM8 microcontroller and a custom ionization chamber sensor.
 * It measures ionizing radiation levels, transmits data over UART, and
 * integrates with a Raspberry Pi for logging and analysis.
 *
 * This main function initializes the system and runs the application
 * logic in an infinite loop.
 */

/**
 * @brief Main entry point for the embedded application.
 *
 * Initializes application components and enters an infinite loop
 * that repeatedly executes the main application logic.
 *
 * @return Always returns 0, though in embedded systems this is
 * typically unreachable since main does not exit.
 */
int main(void)
{
    application_builder_init();

    for (;;)
    {
        //      application_builder_run();
        volatile int i = 0;
    }

    return 0;
}
