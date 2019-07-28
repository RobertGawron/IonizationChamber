/*
 * MCP3425A0T.c
 *
 *  Created on: 04.06.2019
 *      Author: robert
 */

#include "VoltageSensorActualValue.h"
#include "UserInterface.h"
#include "stm8s_i2c.h"
#include "stm8s_i2c.h"
#include "stm8s.h"

#define I2C_OWN_ADDRESS 0x10
#define I2C_SLAVE_ADDRESS 0x68 // MCP3425 I2C address is 0x68(104)


static void GPIO_setup(void);
static void I2C_setup(void);



void VoltageSensorActualValue_Init()
{
#if 0
    CLK_DeInit();

    CLK_HSECmd(DISABLE);
    CLK_LSICmd(DISABLE);
    CLK_HSICmd(ENABLE);
    while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);


    CLK_ClockSwitchCmd(ENABLE);
    CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV8);
    CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV2);

    CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI,
                          DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);

    CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);
    CLK_PeripheralClockConfig(CLK_PERIPHERAL_I2C, ENABLE);
    CLK_PeripheralClockConfig(CLK_PERIPHERAL_ADC, DISABLE);
    CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
    CLK_PeripheralClockConfig(CLK_PERIPHERAL_UART1, ENABLE);
    CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, ENABLE);
    CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, DISABLE);
    CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, DISABLE);
#endif

    GPIO_setup();
    I2C_setup();
}


bool VoltageSensorActualValue_GeMeasurementData(VoltageSensorActualValue_MeasurementData_t *measurementData)
{
    // send dummy data

    I2C_GenerateSTART(ENABLE);
    while(!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT));

    I2C_Send7bitAddress((I2C_SLAVE_ADDRESS << 1), I2C_DIRECTION_TX);
    while(!I2C_CheckEvent(I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));

    I2C_SendData(0xf);
    while(!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED));

    I2C_GenerateSTOP(ENABLE);
    while(I2C_GetFlagStatus(I2C_FLAG_BUSBUSY));




    // dummy receive


//    I2C_Send7bitAddress((I2C_SLAVE_ADDRESS << 1), I2C_DIRECTION_RX);
//    while(!I2C_CheckEvent(I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED));

//    UserInterface_ShowMessage(USER_INTERFACE_COLLECTING_DATA_MSG);

    //I2C_ReceiveData();



    // for temporary debug only
    UserInterface_ShowMessage(USER_INTERFACE_COLLECTING_DATA_MSG);

    return TRUE;
}


void GPIO_setup(void)
{
    // TODO magic numbers
    GPIO_Init(GPIOB, GPIO_PIN_4, GPIO_MODE_OUT_OD_HIZ_FAST);
    GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_OUT_OD_HIZ_FAST);
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

