/*
 * MCP3425A0T.c
 *
 *  Created on: 04.06.2019
 *      Author: robert
 */

#include "VoltageSensorActualValue.h"
#include "UserInterface.h"
#include "stm8s_i2c.h"
#include <stdio.h>
#define I2C_SPEED 100000
#define I2C_ADDRESS 0x68
// // MCP3425 I2C address is 0x68(104)
void VoltageSensorActualValue_Init()
{
//printf("start\n");    
    I2C_Cmd( ENABLE);

    /* I2C Initialize */
    I2C_Init(I2C_SPEED, I2C_ADDRESS, I2C_DUTYCYCLE_2, I2C_ACK_CURR, I2C_ADDMODE_7BIT, 16);

    /* Enable Buffer and Event Interrupt*/
 //   I2C_ITConfig((I2C_IT_TypeDef)(I2C_IT_EVT | I2C_IT_BUF) , ENABLE);

#if 1 // assert fails here
    /* While the bus is busy */
    while(I2C_GetFlagStatus(I2C_FLAG_BUSBUSY));
#endif

    UserInterface_ShowMessage(USER_INTERFACE_COLLECTING_DATA_MSG);
}


bool VoltageSensorActualValue_GeMeasurementData(VoltageSensorActualValue_MeasurementData_t *measurementData)
{
	return TRUE;
}

