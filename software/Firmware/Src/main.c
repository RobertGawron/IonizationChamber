/*
 * main.c
 *
 *  Created on: 04.06.2019
 *  Author: robert. Based on stm8s-sdcc-template.
 */

#include "stm8s.h"
#include <stdio.h>
#include "ApplicationBuilder.h"

int main( void )
{
	ApplicationBuilder_Init();
	ApplicationBuilder_Run();

	return 0;
}

#ifdef USE_FULL_ASSERT
// TODO move this to logger module
void assert_failed(uint8_t* file, uint32_t line)
{
	(void)file;
	(void)line;

	printf("[error] asset failed %s %d\r\n", file, line);

	while (TRUE)
	{
		// empty
	}
}

#endif
