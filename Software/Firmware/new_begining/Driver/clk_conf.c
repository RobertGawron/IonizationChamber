#include "clk_conf.h"
#include "stm8s_clk.h"

void clk_conf_init(void)
{
    CLK_DeInit();

    /* Disable unused clocks */
    CLK_HSECmd(DISABLE);
    CLK_LSICmd(DISABLE);

    /* Enable HSI and wait until ready */
    CLK_HSICmd(ENABLE);
    while (CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE)
    {
        /* Busy-wait until the function returns a status that signifies it's done */
    }

    /* Set prescalers */
    CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1); /* HSI = 16 MHz */
    CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);       /* CPU = 16 MHz */

    /* Enable peripheral clocks */
    /* GPIO clock enabled by default */
    CLK_PeripheralClockConfig(CLK_PERIPHERAL_I2C, ENABLE);
    CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, ENABLE);
    CLK_PeripheralClockConfig(CLK_PERIPHERAL_UART1, ENABLE);
    CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, ENABLE);
}
