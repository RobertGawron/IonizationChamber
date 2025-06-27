#include "mcp3425.h"
#include "pinout_conf.h"
#include "user_interface.h"
#include "stm8s_i2c.h"

#define I2C_MASTER_ADDRESS 0x10
#define I2C_SLAVE_ADDRESS (0x68u << 1) // 0xD0 for write, 0xD1 for read

// Configuration register bits
#define MCP3425_RDY_BIT (1 << 7)  // Ready bit
#define MCP3425_MODE_BIT (1 << 4) // Conversion mode (1=One-shot, 0=Continuous)
#define MCP3425_SPS_BIT (1 << 3)  // Sample rate (1=16-bit/15SPS)
#define MCP3425_GAIN_BIT (0)      // Gain bits (00=Gain x1)

// Configuration for one-shot mode, 16-bit resolution, gain x1
#define MCP3425_CONFIG (MCP3425_RDY_BIT | MCP3425_MODE_BIT | MCP3425_SPS_BIT | MCP3425_GAIN_BIT)

#define I2C_TIMEOUT 10000 // Timeout for I2C operations

static void GPIO_setup(void);
static void I2C_setup(void);
static bool write_config(uint8_t config);
static uint16_t read_result(void);

void mcp3425_init(void)
{
    GPIO_setup();
    I2C_setup();
}

bool mcp3425_get_value(RadioactivityMeasurer_MeasurementData_t *measurement_value)
{
    // Start conversion with configuration
    if (!write_config(MCP3425_CONFIG))
    {
        return FALSE; // I2C write failed
    }

    // Read conversion result
    *measurement_value = read_result();
    return TRUE; // Success
}

uint8_t mcp3425_get_conf(void)
{
    return MCP3425_CONFIG;
}

/* Private Functions ---------------------------------------------------------*/

static void GPIO_setup(void)
{
    GPIO_Init(PORT_I2C, PIN_I2C_SCL, GPIO_MODE_OUT_OD_HIZ_FAST);
    GPIO_Init(PORT_I2C, PIN_I2C_SDA, GPIO_MODE_OUT_OD_HIZ_FAST);
}

static void I2C_setup(void)
{
    I2C_DeInit();
    I2C_Init(100000,
             I2C_MASTER_ADDRESS,
             I2C_DUTYCYCLE_2,
             I2C_ACK_CURR,
             I2C_ADDMODE_7BIT,
             (CLK_GetClockFreq() / 1000000));
    I2C_Cmd(ENABLE);
}

static bool write_config(uint8_t config)
{
    uint32_t timeout = I2C_TIMEOUT;

    // Generate START condition
    I2C_GenerateSTART(ENABLE);
    while (!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT))
    {
        if (--timeout == 0)
            return FALSE;
    }

    // Send slave address (write)
    I2C_Send7bitAddress(I2C_SLAVE_ADDRESS, I2C_DIRECTION_TX);
    timeout = I2C_TIMEOUT;
    while (!I2C_CheckEvent(I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED))
    {
        if (--timeout == 0)
            return FALSE;
    }

    // Send configuration byte
    I2C_SendData(config);
    timeout = I2C_TIMEOUT;
    while (!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED))
    {
        if (--timeout == 0)
            return FALSE;
    }

    // Generate STOP condition
    I2C_GenerateSTOP(ENABLE);
    return TRUE;
}

static uint16_t read_result(void)
{
    uint32_t timeout = I2C_TIMEOUT;
    uint8_t msb, lsb, config;
    uint16_t result = 0;

    // Generate START condition
    I2C_GenerateSTART(ENABLE);
    while (!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT))
    {
        if (--timeout == 0)
            return 0;
    }

    // Send slave address (read)
    I2C_Send7bitAddress(I2C_SLAVE_ADDRESS, I2C_DIRECTION_RX);
    timeout = I2C_TIMEOUT;
    while (!I2C_CheckEvent(I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED))
    {
        if (--timeout == 0)
            return 0;
    }

    // Enable ACK for first two bytes
    I2C_AcknowledgeConfig(ENABLE);

    // Read MSB (first byte)
    timeout = I2C_TIMEOUT;
    while (!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_RECEIVED))
    {
        if (--timeout == 0)
            return 0;
    }
    msb = I2C_ReceiveData();

    // Read LSB (second byte)
    timeout = I2C_TIMEOUT;
    while (!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_RECEIVED))
    {
        if (--timeout == 0)
            return 0;
    }
    lsb = I2C_ReceiveData();

    // Prepare NACK for final byte
    I2C_AcknowledgeConfig(DISABLE);

    // Read configuration byte (third byte)
    timeout = I2C_TIMEOUT;
    while (!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_RECEIVED))
    {
        if (--timeout == 0)
            return 0;
    }
    config = I2C_ReceiveData();

    // Generate STOP condition
    I2C_GenerateSTOP(ENABLE);

    // Re-enable ACK for future operations
    I2C_AcknowledgeConfig(ENABLE);

    // Check if conversion is complete (RDY bit = 0)
    if ((config & MCP3425_RDY_BIT) == 0)
    {
        result = ((uint16_t)msb << 8) | lsb;
    }

    return result;
}