/*
 * MCP3425A0T.c
 *
 *  Created on: 04.06.2019
 *      Author: robert
 */

#include "VoltageSensorActualValue.h"
#include "PinoutConfiguration.h"
#include "UserInterface.h"
#include "stm8s_i2c.h"

#define I2C_OWN_ADDRESS 0x10
// MCP3425 I2C address is 0x68(104), this 7 bits, they need to be
// shifted by one, to make 8 bits variable, where less signifant bit
// is used to signalize communication direction (rx or tx)
#define I2C_SLAVE_ADDRESS (0x68 << 1)

static void GPIO_setup(void);
static void I2C_setup(void);
static uint8_t getRegisterValue(uint8_t registerId);


void VoltageSensorActualValue_Init()
{
    GPIO_setup();
    I2C_setup();
}


bool VoltageSensorActualValue_GetMeasurementData(VoltageSensorActualValue_MeasurementData_t *measurementData)
{
    *measurementData = getRegisterValue(0x0);

    if (*measurementData == 0)
    {
        // for temporary debug only
        UserInterface_ShowMessage(USER_INTERFACE_COLLECTING_DATA_MSG);
    }

    // getRegisterValue should return false on timeout and this should be later propagated to GUI component.
    return TRUE;
}


void GPIO_setup(void)
{
    GPIO_Init(PORT_I2C, PIN_I2C_SCL, GPIO_MODE_OUT_OD_HIZ_FAST);
    GPIO_Init(PORT_I2C, PIN_I2C_SDA, GPIO_MODE_OUT_OD_HIZ_FAST);
}


void I2C_setup(void)
{
    I2C_DeInit();
    I2C_Init(100000,
             I2C_OWN_ADDRESS,
             I2C_DUTYCYCLE_2,
             I2C_ACK_CURR,
             I2C_ADDMODE_7BIT,
             (CLK_GetClockFreq() / 1000000));
    I2C_Cmd(ENABLE);
}


uint8_t getRegisterValue(uint8_t registerId)
{
    uint8_t registerValue = 0xFF;

    I2C_GenerateSTART(ENABLE);
    while(!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT));

    I2C_Send7bitAddress(I2C_SLAVE_ADDRESS, I2C_DIRECTION_TX);
    while(!I2C_CheckEvent(I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));

    I2C_SendData(registerId);
    while(!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED));




//    I2C_GenerateSTOP(ENABLE);
//    while(I2C_GetFlagStatus(I2C_FLAG_BUSBUSY));


    I2C_GenerateSTART(ENABLE);
    while(!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT));

    I2C_Send7bitAddress(I2C_SLAVE_ADDRESS, I2C_DIRECTION_RX);
    while(!I2C_CheckEvent(I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED));
        
        UserInterface_ShowMessage(USER_INTERFACE_COLLECTING_DATA_MSG);
 
    I2C_AcknowledgeConfig(DISABLE);
    I2C_GenerateSTOP(ENABLE);

    while(!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_RECEIVED));
    registerValue = I2C_ReceiveData();


    I2C_AcknowledgeConfig(ENABLE);
//    I2C_GenerateSTOP(ENABLE);
//    while(I2C_GetFlagStatus(I2C_FLAG_BUSBUSY));

    return registerValue;
}

