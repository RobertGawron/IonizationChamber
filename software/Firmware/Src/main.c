/*
 * main.c
 *
 *  Created on: 04.06.2019
 *  Author: robert. Based on stm8s-sdcc-template.
 */

#include "stm8s.h"
#include "stm8s_it.h"
#include "stm8s_gpio.h"
#include "stm8s_beep.h"

#include "MCP3425A0T.h"

int main( void )
{
	//MCP3425A0T_Init();

	while(1)
	{

	}
}

#ifdef USE_FULL_ASSERT

void assert_failed(uint8_t* file, uint32_t line)
{ 
	(void)file;
	(void)line;

	while (1)
	{
		// empty
	}
}

#endif
