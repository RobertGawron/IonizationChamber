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
	ApplicationBuilder_Init();
	ApplicationBuilder_Run();

	return 0;
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
