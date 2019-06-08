/**
  ******************************************************************************
  * @file    main.c
  * @author  Bao Son Le
  * @version V1.0.0
  * @date    23-January-2017
  * @brief   Template main file.
  *
  * @warning Please check crystal frequency in stm8s.h
  ******************************************************************************
  */

//#include <stdio.h>
//#include <math.h>
//#include <sdcc-lib.h>

#include "stm8s.h"
#include "stm8s_it.h"
#include "stm8s_gpio.h"
#include "stm8s_beep.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/**
  * \brief  Delay function.
  *
  * \param  [in] t: Time delay.
  * \retval None
  */
static void delay(uint32_t t)
{
    while(t--);
}

/**
  * @brief  Main function.
  *
  * @param  None.
  * @retval int
  */
int main( void )
{
    GPIO_Init(GPIOD, GPIO_PIN_7, GPIO_MODE_OUT_PP_LOW_FAST);
    //GPIOD->DDR |= GPIO_PIN_7;
    //GPIOD->CR1 |= GPIO_PIN_7;
    GPIOD->ODR |= GPIO_PIN_7;

    BEEP_Init(BEEP_FREQUENCY_1KHZ);
    
    while(1)
    {
        //float _sqrt;
        //_sqrt = sqrtf(4.0);
        delay(30000);
        GPIOD->ODR ^= GPIO_PIN_7;
        BEEP_Cmd(ENABLE);
        delay(3000);
        BEEP_Cmd(DISABLE);
        delay(3000);
        BEEP_Cmd(ENABLE);
        delay(3000);
        BEEP_Cmd(DISABLE);
    }
}

#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{ 
    (void)file;
    (void)line;
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif
