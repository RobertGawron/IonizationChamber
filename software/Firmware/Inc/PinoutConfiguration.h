/*
 * PinoutConfiguration.h
 *
 *  Created on: 15 cze 2019
 *      Author: robert
 */
#include "stm8s_it.h"

#ifndef INC_PINOUTCONFIGURATION_H_
#define INC_PINOUTCONFIGURATION_H_

#define ADC_CHIP_1_PIN    1
#define ADC_CHIP_2_PIN    2

#define PEAK_DETECTOR_PIN 3

#define LED_GPIO_PORT       (GPIOD)
#define LED_GREEN_GPIO_PIN  (GPIO_PIN_2)
#define LED_RED_GPIO_PIN    (GPIO_PIN_3)

#endif /* INC_PINOUTCONFIGURATION_H_ */
