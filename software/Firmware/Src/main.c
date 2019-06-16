/*
 * main.c
 *
 *  Created on: 04.06.2019
 *  Author: robert. Based on stm8s-sdcc-template.
 */

#include "stm8s.h"
#include "stm8s_it.h"
#include "ApplicationBuilder.h"

#define LED_GPIO_PORT  (GPIOD)
#define LED_GPIO_PINS  (GPIO_PIN_2 | GPIO_PIN_3)

int main( void )
{
	// just to test if the firmware is alive
	 GPIO_Init(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PINS, GPIO_MODE_OUT_PP_LOW_FAST);
	 GPIO_WriteReverse(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PINS);

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
