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
	.globl _tim1_isr
	.globl _app_builder_run
	.globl _app_builder_init
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
	int _tim1_isr ; int11
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
;	/workspace/Software/Firmware/new_begining/main.c: 11: void tim1_isr(void) __interrupt(11)
;	-----------------------------------------
;	 function tim1_isr
;	-----------------------------------------
_tim1_isr:
	div	x, a
;	/workspace/Software/Firmware/new_begining/main.c: 13: app_tick_flag = 1;
	clrw	x
	incw	x
	ldw	_app_tick_flag+0, x
;	/workspace/Software/Firmware/new_begining/main.c: 15: TIM1_ClearFlag(TIM1_FLAG_UPDATE);
	clrw	x
	incw	x
	call	_TIM1_ClearFlag
;	/workspace/Software/Firmware/new_begining/main.c: 16: TIM1_ClearITPendingBit(TIM1_IT_UPDATE);
	ld	a, #0x01
	call	_TIM1_ClearITPendingBit
;	/workspace/Software/Firmware/new_begining/main.c: 17: }
	iret
;	/workspace/Software/Firmware/new_begining/main.c: 19: int main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	/workspace/Software/Firmware/new_begining/main.c: 21: app_builder_init();
	call	_app_builder_init
00102$:
;	/workspace/Software/Firmware/new_begining/main.c: 25: app_builder_run();
	call	_app_builder_run
	jra	00102$
;	/workspace/Software/Firmware/new_begining/main.c: 28: return 0;
;	/workspace/Software/Firmware/new_begining/main.c: 29: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
