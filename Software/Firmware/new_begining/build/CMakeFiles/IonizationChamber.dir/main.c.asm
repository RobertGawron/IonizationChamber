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
	.globl _timer_isr
	.globl _user_interface_update_message
	.globl _user_interface_init
	.globl _timer_conf_init
	.globl _clk_conf_init
	.globl _TIM1_ClearITPendingBit
	.globl _TIM1_ClearFlag
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
_i:
	.ds 2
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
	int 0x000000 ; trap
	int 0x000000 ; int0
	int 0x000000 ; int1
	int 0x000000 ; int2
	int 0x000000 ; int3
	int 0x000000 ; int4
	int 0x000000 ; int5
	int 0x000000 ; int6
	int 0x000000 ; int7
	int 0x000000 ; int8
	int 0x000000 ; int9
	int 0x000000 ; int10
	int _timer_isr ; int11
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
;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 20: static inline void interrupt_control_enable(void)
;	-----------------------------------------
;	 function interrupt_control_enable
;	-----------------------------------------
_interrupt_control_enable:
;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 22: enableInterrupts();
	rim
;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 23: }
	ret
;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 32: static inline void interrupt_control_wait(
;	-----------------------------------------
;	 function interrupt_control_wait
;	-----------------------------------------
_interrupt_control_wait:
;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 35: wfi();
	wfi
;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 36: }
	ret
;	/workspace/Software/Firmware/new_begining/main.c: 12: void timer_isr(void) __interrupt(11)
;	-----------------------------------------
;	 function timer_isr
;	-----------------------------------------
_timer_isr:
	clr	a
	div	x, a
;	/workspace/Software/Firmware/new_begining/main.c: 14: TIM1->SR1 = 0;
	mov	0x5255+0, #0x00
;	/workspace/Software/Firmware/new_begining/main.c: 15: GPIOD->ODR ^= GPIO_PIN_4;
	bcpl	0x500f, #4
;	/workspace/Software/Firmware/new_begining/main.c: 16: i = ~i;
	ldw	x, _i+0
	cplw	x
;	/workspace/Software/Firmware/new_begining/main.c: 17: user_interface_update_message(USER_INTERFACE_COLLECTING_DATA_MSG, (i == 0) ? USER_INTERFACE_ENABLE : USER_INTERFACE_DISABLE);
	ldw	_i+0, x
	subw	x, #0x0001
	clr	a
	ccf
	rlc	a
	push	a
	clr	a
	call	_user_interface_update_message
;	/workspace/Software/Firmware/new_begining/main.c: 18: user_interface_update_message(USER_INTERFACE_STATE_OK_MSG, (i == 0) ? USER_INTERFACE_DISABLE : USER_INTERFACE_ENABLE);
	ldw	x, _i+0
	subw	x, #0x0001
	clr	a
	rlc	a
	push	a
	ld	a, #0x01
	call	_user_interface_update_message
;	/workspace/Software/Firmware/new_begining/main.c: 20: TIM1_ClearFlag(TIM1_FLAG_UPDATE);
	clrw	x
	incw	x
	call	_TIM1_ClearFlag
;	/workspace/Software/Firmware/new_begining/main.c: 21: TIM1_ClearITPendingBit(TIM1_IT_UPDATE);
	ld	a, #0x01
	call	_TIM1_ClearITPendingBit
;	/workspace/Software/Firmware/new_begining/main.c: 22: }
	iret
;	/workspace/Software/Firmware/new_begining/main.c: 24: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	/workspace/Software/Firmware/new_begining/main.c: 27: clk_conf_init();
	call	_clk_conf_init
;	/workspace/Software/Firmware/new_begining/main.c: 29: user_interface_init();
	call	_user_interface_init
;	/workspace/Software/Firmware/new_begining/main.c: 30: timer_conf_init();
	call	_timer_conf_init
;	/workspace/Software/Firmware/new_begining/main.c: 32: GPIOD->DDR |= GPIO_PIN_4;
	bset	0x5011, #4
;	/workspace/Software/Firmware/new_begining/main.c: 33: GPIOD->CR1 |= GPIO_PIN_4;
	ld	a, 0x5012
	or	a, #0x10
	ld	0x5012, a
;	/workspace/Software/Firmware/new_begining/main.c: 36: TIM1->PSCRL = 125;
	mov	0x5261+0, #0x7d
;	/workspace/Software/Firmware/new_begining/main.c: 37: TIM1->ARRH = 1000 >> 8;
	mov	0x5262+0, #0x03
;	/workspace/Software/Firmware/new_begining/main.c: 38: TIM1->ARRL = 1000 & 0xFF;
	mov	0x5263+0, #0xe8
;	/workspace/Software/Firmware/new_begining/main.c: 39: TIM1->CR1 = TIM1_CR1_ARPE | TIM1_CR1_CEN;
	mov	0x5250+0, #0x81
;	/workspace/Software/Firmware/new_begining/main.c: 40: TIM1->IER = TIM1_IER_UIE;
	mov	0x5254+0, #0x01
;	/workspace/Software/Firmware/new_begining/main.c: 44: __endasm;
	rim
;	/workspace/Software/Firmware/new_begining/main.c: 46: while (1)
00102$:
;	/workspace/Software/Firmware/new_begining/main.c: 48: wfi();
	wfi
	jra	00102$
;	/workspace/Software/Firmware/new_begining/main.c: 50: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
__xinit__i:
	.dw #0x0000
	.area CABS (ABS)
