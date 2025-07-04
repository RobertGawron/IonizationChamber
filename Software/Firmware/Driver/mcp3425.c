/*
 * mcp3425.c — Driver for the MCP3425 16‑bit I2C ADC
 * Target MCU : STM8S003F3P6 (SDCC)
 *
 */

#include "mcp3425.h"
#include "pinout_conf.h"
#include "stm8s.h"
#include "stm8s_clk.h"
#include "stm8s_gpio.h"
#include "stm8s_i2c.h"

#include <stdint.h>
#include <stdbool.h>

/* -------------------------------------------------------------------------
 * I2C addresses & speed
 * -------------------------------------------------------------------------*/
#define I2C_MASTER_ADDRESS        0x10U                /* our 7‑bit address */
#define I2C_SLAVE_ADDRESS         0x68U                /* MCP3425 address   */
#define I2C_SPEED_STANDARD_HZ     100000UL             /* 100 kHz SCL       */
#define HZ_TO_MHZ(freq_hz)        ((uint8_t)((freq_hz) / 1000000UL))

/* -------------------------------------------------------------------------
 * MCP3425 configuration bits
 * -------------------------------------------------------------------------*/
#define MCP3425_RDY_BIT   (1U << 7)  /* 1 = conversion not ready            */
#define MCP3425_MODE_BIT  (1U << 4)  /* 1 = one‑shot; 0 = continuous        */
#define MCP3425_SPS_BIT   (1U << 3)  /* 1 = 16‑bit @ 15 SPS                 */
#define MCP3425_GAIN_BIT  (0U)       /* 00 = gain ×1                        */

#define MCP3425_CONFIG (MCP3425_RDY_BIT | MCP3425_MODE_BIT | MCP3425_SPS_BIT | MCP3425_GAIN_BIT)

/* -------------------------------------------------------------------------
 * Misc. constants
 * -------------------------------------------------------------------------*/
#define I2C_TIMEOUT                 10000UL             /* loop-cycle timeout */

/* -------------------------------------------------------------------------
 * Busy‑wait macro with timeout
 * -------------------------------------------------------------------------*/
#define BUSY_AWAIT_CONDITION(cond, cnt, max, on_to) do {\
            (cnt) = (uint16_t)(max);\
            while (!(cond)) {\
                if (--(cnt) == 0U) {\
                    on_to;\
                }\
            }\
} while (0)

/* Private prototypes */
static void GPIO_setup(void);
static void I2C_setup(void);
static bool write_config(uint8_t config);
static AcqResult_t read_result(uint8_t *msb, uint8_t *lsb, uint8_t *conf);

/* -------------------------------------------------------------------------
 * Public API
 * -------------------------------------------------------------------------*/
void mcp3425_init(void)
{
    GPIO_setup();
    I2C_setup();
}

AcqResult_t mcp3425_get_value(MeasurementBytes_t *measurement)
{
    if (!write_config(MCP3425_CONFIG))
    {
        return ACQ_ERROR; // bus or timeout failure
    }

    return read_result(&measurement->msb, &measurement->lsb, &measurement->conf);
}

/* -------------------------------------------------------------------------
 * Private Functions
 * -------------------------------------------------------------------------*/
static void GPIO_setup(void)
{
    GPIO_Init(PORT_I2C, PIN_I2C_SCL, GPIO_MODE_OUT_OD_HIZ_FAST);
    GPIO_Init(PORT_I2C, PIN_I2C_SDA, GPIO_MODE_OUT_OD_HIZ_FAST);
}

static void I2C_setup(void)
{
    /* Enable the I2C peripheral clock is done in clk_conf_init() */

    I2C_DeInit();

    I2C_Init(I2C_SPEED_STANDARD_HZ,
        I2C_MASTER_ADDRESS,
        I2C_DUTYCYCLE_2,
        I2C_ACK_CURR,
        I2C_ADDMODE_7BIT,
        HZ_TO_MHZ(CLK_GetClockFreq()));

    I2C_Cmd(ENABLE);
}

static bool write_config(const uint8_t config)
{
    uint16_t timeout_counter = I2C_TIMEOUT;

    while (I2C_GetFlagStatus(I2C_FLAG_BUSBUSY))
    {
        if (--timeout_counter == 0)
        {
            //i2c_recover();  // todo : implement recovery function
            return false;
        }
    }

    I2C_GenerateSTART(ENABLE);
    BUSY_AWAIT_CONDITION(I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT),
        timeout_counter, I2C_TIMEOUT, return false);

    I2C_Send7bitAddress(I2C_SLAVE_ADDRESS << 1, I2C_DIRECTION_TX);
    BUSY_AWAIT_CONDITION(I2C_CheckEvent(I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED),
        timeout_counter, I2C_TIMEOUT, return false);

    I2C_SendData(config);
    BUSY_AWAIT_CONDITION(I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED),
        timeout_counter, I2C_TIMEOUT, return false);

    I2C_GenerateSTOP(ENABLE);
    return true;
}

// NOLINTNEXTLINE(readability-function-cognitive-complexity): Hardware sequence is clearer unbroken.
static AcqResult_t read_result(uint8_t *msb, uint8_t *lsb, uint8_t *conf)
{
    uint16_t timeout_counter = I2C_TIMEOUT;

    while (I2C_GetFlagStatus(I2C_FLAG_BUSBUSY))
    {
        if (--timeout_counter == 0)
        {
            return ACQ_READ_BUSSY;
        }
    }

    I2C_GenerateSTART(ENABLE);
    BUSY_AWAIT_CONDITION(I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT),
        timeout_counter, I2C_TIMEOUT, return ACQ_READ_FAILURE);

    I2C_Send7bitAddress((I2C_SLAVE_ADDRESS << 1) | 0x01, I2C_DIRECTION_RX);
    BUSY_AWAIT_CONDITION(I2C_CheckEvent(I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED),
        timeout_counter, I2C_TIMEOUT, return ACQ_READ_FAILURE);

    // Read MSB
    I2C_AcknowledgeConfig(I2C_ACK_CURR);
    BUSY_AWAIT_CONDITION(I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_RECEIVED),
        timeout_counter, I2C_TIMEOUT, return ACQ_READ_FAILURE);
    *msb = I2C_ReceiveData();

    // Read LSB
    BUSY_AWAIT_CONDITION(I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_RECEIVED),
        timeout_counter, I2C_TIMEOUT, return ACQ_READ_FAILURE);
    *lsb = I2C_ReceiveData();

    // BEFORE reading config byte, prepare to stop
    I2C_AcknowledgeConfig(I2C_ACK_NONE);
    I2C_GenerateSTOP(ENABLE); // Set STOP immediately to avoid over-read

    // NOW read config byte (no ACK will be sent)
    BUSY_AWAIT_CONDITION(I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_RECEIVED),
        timeout_counter, I2C_TIMEOUT, return ACQ_READ_FAILURE);
    *conf = I2C_ReceiveData();

    if ((*conf & MCP3425_RDY_BIT) != 0U)
    {
        return ACQ_RDY_BIT;
    }

    return ACQ_SUCCESS;
}
