/*
 * main.c
 *
 *  Created on: 04.06.2019
 *  Author: robert. Based on stm8s-sdcc-template.
 */

#include "stm8s.h"
#include "ApplicationBuilder.h"

int main( void )
{
    GUI_Init();

	ApplicationBuilder_Init();

	while(TRUE)
	{
		ApplicationBuilder_Tick();
	}
}

#ifdef USE_FULL_ASSERT

void assert_failed(uint8_t* file, uint32_t line)
{
	(void)file;
	(void)line;

	while (TRUE)
	{
		// empty

	}
}

#endif
