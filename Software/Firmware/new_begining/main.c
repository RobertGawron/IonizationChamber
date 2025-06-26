#include <stdint.h>

// Correct GPIOD registers
#define GPIOD_ODR (*(volatile uint8_t *)(0x500F))
#define GPIOD_DDR (*(volatile uint8_t *)(0x5011))
#define GPIOD_CR1 (*(volatile uint8_t *)(0x5012))

// Clock enable register
#define CLK_BASE 0x50C0
#define CLK_PCKENR1 (*(volatile uint8_t *)(CLK_BASE + 0x07))

// LED Pins
#define PIN_GREEN 2
#define PIN_RED 3

void delay_ms(uint16_t ms)
{
    // More accurate delay for 16MHz HSI
    for (uint16_t i = 0; i < ms; i++)
    {
        for (uint16_t j = 0; j < 1600; j++)
        { // Calibrated for ~1ms
            __asm__("nop");
        }
    }
}

void main()
{
    // 1. Enable GPIOD clock
    CLK_PCKENR1 |= (1 << 3); // Enable GPIOD clock (bit 3)

    // 2. Configure pins as outputs
    GPIOD_DDR |= (1 << PIN_GREEN) | (1 << PIN_RED);

    // 3. Set push-pull mode
    GPIOD_CR1 |= (1 << PIN_GREEN) | (1 << PIN_RED);

    // 4. Initial state - try both options!
    // Option A: Start with both OFF
    GPIOD_ODR &= ~((1 << PIN_GREEN) | (1 << PIN_RED));

    // Option B: Start with both ON (if LEDs sink current)
    // GPIOD_ODR |= (1 << PIN_GREEN) | (1 << PIN_RED);

    while (1)
    {
        // Toggle both LEDs
        GPIOD_ODR ^= (1 << PIN_GREEN) | (1 << PIN_RED);

        // Longer delay for visible blinking
        delay_ms(1000); // 1 second delay

        // DEBUG: Add watchdog reset to detect lockups
        //   IWDG->KR = 0xAA; // Reset watchdog
    }
}