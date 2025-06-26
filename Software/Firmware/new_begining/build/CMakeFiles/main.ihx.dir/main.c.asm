;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _delay_ms
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
	call	___sdcc_external_startup
	tnz	a
	jreq	__sdcc_init_data
	jp	__sdcc_program_startup
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	/workspace/Software/Firmware/new_begining/main.c: 16: void delay_ms(uint16_t ms)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	sub	sp, #4
	ldw	(0x01, sp), x
;	/workspace/Software/Firmware/new_begining/main.c: 19: for (uint16_t i = 0; i < ms; i++)
	clrw	x
	ldw	(0x03, sp), x
00107$:
	ldw	x, (0x03, sp)
	cpw	x, (0x01, sp)
	jrnc	00109$
;	/workspace/Software/Firmware/new_begining/main.c: 21: for (uint16_t j = 0; j < 1600; j++)
	clrw	x
00104$:
	ldw	y, x
	cpw	y, #0x0640
	jrnc	00108$
;	/workspace/Software/Firmware/new_begining/main.c: 23: __asm__("nop");
	nop
;	/workspace/Software/Firmware/new_begining/main.c: 21: for (uint16_t j = 0; j < 1600; j++)
	incw	x
	jra	00104$
00108$:
;	/workspace/Software/Firmware/new_begining/main.c: 19: for (uint16_t i = 0; i < ms; i++)
	ldw	x, (0x03, sp)
	incw	x
	ldw	(0x03, sp), x
	jra	00107$
00109$:
;	/workspace/Software/Firmware/new_begining/main.c: 26: }
	addw	sp, #4
	ret
;	/workspace/Software/Firmware/new_begining/main.c: 28: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	/workspace/Software/Firmware/new_begining/main.c: 31: CLK_PCKENR1 |= (1 << 3); // Enable GPIOD clock (bit 3)
	bset	0x50c7, #3
;	/workspace/Software/Firmware/new_begining/main.c: 34: GPIOD_DDR |= (1 << PIN_GREEN) | (1 << PIN_RED);
	ld	a, 0x5011
	or	a, #0x0c
	ld	0x5011, a
;	/workspace/Software/Firmware/new_begining/main.c: 37: GPIOD_CR1 |= (1 << PIN_GREEN) | (1 << PIN_RED);
	ld	a, 0x5012
	or	a, #0x0c
	ld	0x5012, a
;	/workspace/Software/Firmware/new_begining/main.c: 41: GPIOD_ODR &= ~((1 << PIN_GREEN) | (1 << PIN_RED));
	ld	a, 0x500f
	and	a, #0xf3
	ld	0x500f, a
;	/workspace/Software/Firmware/new_begining/main.c: 46: while (1)
00102$:
;	/workspace/Software/Firmware/new_begining/main.c: 49: GPIOD_ODR ^= (1 << PIN_GREEN) | (1 << PIN_RED);
	ld	a, 0x500f
	xor	a, #0x0c
	ld	0x500f, a
;	/workspace/Software/Firmware/new_begining/main.c: 52: delay_ms(1000); // 1 second delay
	ldw	x, #0x03e8
	call	_delay_ms
	jra	00102$
;	/workspace/Software/Firmware/new_begining/main.c: 57: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
