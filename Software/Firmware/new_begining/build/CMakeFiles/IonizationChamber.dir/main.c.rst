                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _timer_isr
                                     13 	.globl _user_interface_update_message
                                     14 	.globl _app_builder_run
                                     15 	.globl _app_builder_init
                                     16 	.globl _TIM1_ClearITPendingBit
                                     17 	.globl _TIM1_ClearFlag
                                     18 ;--------------------------------------------------------
                                     19 ; ram data
                                     20 ;--------------------------------------------------------
                                     21 	.area DATA
                                     22 ;--------------------------------------------------------
                                     23 ; ram data
                                     24 ;--------------------------------------------------------
                                     25 	.area INITIALIZED
      000001                         26 _i:
      000001                         27 	.ds 2
                                     28 ;--------------------------------------------------------
                                     29 ; Stack segment in internal ram
                                     30 ;--------------------------------------------------------
                                     31 	.area SSEG
      000005                         32 __start__stack:
      000005                         33 	.ds	1
                                     34 
                                     35 ;--------------------------------------------------------
                                     36 ; absolute external ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area DABS (ABS)
                                     39 
                                     40 ; default segment ordering for linker
                                     41 	.area HOME
                                     42 	.area GSINIT
                                     43 	.area GSFINAL
                                     44 	.area CONST
                                     45 	.area INITIALIZER
                                     46 	.area CODE
                                     47 
                                     48 ;--------------------------------------------------------
                                     49 ; interrupt vector
                                     50 ;--------------------------------------------------------
                                     51 	.area HOME
      008000                         52 __interrupt_vect:
      008000 82 00 80 3B             53 	int s_GSINIT ; reset
      008004 82 00 00 00             54 	int 0x000000 ; trap
      008008 82 00 00 00             55 	int 0x000000 ; int0
      00800C 82 00 00 00             56 	int 0x000000 ; int1
      008010 82 00 00 00             57 	int 0x000000 ; int2
      008014 82 00 00 00             58 	int 0x000000 ; int3
      008018 82 00 00 00             59 	int 0x000000 ; int4
      00801C 82 00 00 00             60 	int 0x000000 ; int5
      008020 82 00 00 00             61 	int 0x000000 ; int6
      008024 82 00 00 00             62 	int 0x000000 ; int7
      008028 82 00 00 00             63 	int 0x000000 ; int8
      00802C 82 00 00 00             64 	int 0x000000 ; int9
      008030 82 00 00 00             65 	int 0x000000 ; int10
      008034 82 00 82 4D             66 	int _timer_isr ; int11
                                     67 ;--------------------------------------------------------
                                     68 ; global & static initialisations
                                     69 ;--------------------------------------------------------
                                     70 	.area HOME
                                     71 	.area GSINIT
                                     72 	.area GSFINAL
                                     73 	.area GSINIT
      00803B CD 98 2A         [ 4]   74 	call	___sdcc_external_startup
      00803E 4D               [ 1]   75 	tnz	a
      00803F 27 03            [ 1]   76 	jreq	__sdcc_init_data
      008041 CC 80 38         [ 2]   77 	jp	__sdcc_program_startup
      008044                         78 __sdcc_init_data:
                                     79 ; stm8_genXINIT() start
      008044 AE 00 00         [ 2]   80 	ldw x, #l_DATA
      008047 27 07            [ 1]   81 	jreq	00002$
      008049                         82 00001$:
      008049 72 4F 00 00      [ 1]   83 	clr (s_DATA - 1, x)
      00804D 5A               [ 2]   84 	decw x
      00804E 26 F9            [ 1]   85 	jrne	00001$
      008050                         86 00002$:
      008050 AE 00 04         [ 2]   87 	ldw	x, #l_INITIALIZER
      008053 27 09            [ 1]   88 	jreq	00004$
      008055                         89 00003$:
      008055 D6 82 44         [ 1]   90 	ld	a, (s_INITIALIZER - 1, x)
      008058 D7 00 00         [ 1]   91 	ld	(s_INITIALIZED - 1, x), a
      00805B 5A               [ 2]   92 	decw	x
      00805C 26 F7            [ 1]   93 	jrne	00003$
      00805E                         94 00004$:
                                     95 ; stm8_genXINIT() end
                                     96 	.area GSFINAL
      00805E CC 80 38         [ 2]   97 	jp	__sdcc_program_startup
                                     98 ;--------------------------------------------------------
                                     99 ; Home
                                    100 ;--------------------------------------------------------
                                    101 	.area HOME
                                    102 	.area HOME
      008038                        103 __sdcc_program_startup:
      008038 CC 82 74         [ 2]  104 	jp	_main
                                    105 ;	return from main will return to caller
                                    106 ;--------------------------------------------------------
                                    107 ; code
                                    108 ;--------------------------------------------------------
                                    109 	.area CODE
                                    110 ;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 20: static inline void interrupt_control_enable(void)
                                    111 ;	-----------------------------------------
                                    112 ;	 function interrupt_control_enable
                                    113 ;	-----------------------------------------
      008249                        114 _interrupt_control_enable:
                                    115 ;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 22: enableInterrupts();
      008249 9A               [ 1]  116 	rim
                                    117 ;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 23: }
      00824A 81               [ 4]  118 	ret
                                    119 ;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 32: static inline void interrupt_control_wait(
                                    120 ;	-----------------------------------------
                                    121 ;	 function interrupt_control_wait
                                    122 ;	-----------------------------------------
      00824B                        123 _interrupt_control_wait:
                                    124 ;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 35: wfi();
      00824B 8F               [10]  125 	wfi
                                    126 ;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 36: }
      00824C 81               [ 4]  127 	ret
                                    128 ;	/workspace/Software/Firmware/new_begining/main.c: 12: void timer_isr(void) __interrupt(11)
                                    129 ;	-----------------------------------------
                                    130 ;	 function timer_isr
                                    131 ;	-----------------------------------------
      00824D                        132 _timer_isr:
      00824D 4F               [ 1]  133 	clr	a
      00824E 62               [ 2]  134 	div	x, a
                                    135 ;	/workspace/Software/Firmware/new_begining/main.c: 14: TIM1->SR1 = 0;
      00824F 35 00 52 55      [ 1]  136 	mov	0x5255+0, #0x00
                                    137 ;	/workspace/Software/Firmware/new_begining/main.c: 15: GPIOD->ODR ^= GPIO_PIN_4;
      008253 90 18 50 0F      [ 1]  138 	bcpl	0x500f, #4
                                    139 ;	/workspace/Software/Firmware/new_begining/main.c: 16: i = ~i;
      008257 CE 00 01         [ 2]  140 	ldw	x, _i+0
      00825A 53               [ 2]  141 	cplw	x
                                    142 ;	/workspace/Software/Firmware/new_begining/main.c: 18: user_interface_update_message(USER_INTERFACE_STATE_OK_MSG, (i == 0) ? USER_INTERFACE_DISABLE : USER_INTERFACE_ENABLE);
      00825B CF 00 01         [ 2]  143 	ldw	_i+0, x
      00825E 1D 00 01         [ 2]  144 	subw	x, #0x0001
      008261 4F               [ 1]  145 	clr	a
      008262 49               [ 1]  146 	rlc	a
      008263 88               [ 1]  147 	push	a
      008264 A6 01            [ 1]  148 	ld	a, #0x01
      008266 CD 82 E1         [ 4]  149 	call	_user_interface_update_message
                                    150 ;	/workspace/Software/Firmware/new_begining/main.c: 20: TIM1_ClearFlag(TIM1_FLAG_UPDATE);
      008269 5F               [ 1]  151 	clrw	x
      00826A 5C               [ 1]  152 	incw	x
      00826B CD 8D 01         [ 4]  153 	call	_TIM1_ClearFlag
                                    154 ;	/workspace/Software/Firmware/new_begining/main.c: 21: TIM1_ClearITPendingBit(TIM1_IT_UPDATE);
      00826E A6 01            [ 1]  155 	ld	a, #0x01
      008270 CD 8D 2E         [ 4]  156 	call	_TIM1_ClearITPendingBit
                                    157 ;	/workspace/Software/Firmware/new_begining/main.c: 22: }
      008273 80               [11]  158 	iret
                                    159 ;	/workspace/Software/Firmware/new_begining/main.c: 24: int main()
                                    160 ;	-----------------------------------------
                                    161 ;	 function main
                                    162 ;	-----------------------------------------
      008274                        163 _main:
                                    164 ;	/workspace/Software/Firmware/new_begining/main.c: 27: app_builder_init();
      008274 CD 82 AA         [ 4]  165 	call	_app_builder_init
      008277                        166 00102$:
                                    167 ;	/workspace/Software/Firmware/new_begining/main.c: 55: app_builder_run();
      008277 CD 82 B5         [ 4]  168 	call	_app_builder_run
      00827A 20 FB            [ 2]  169 	jra	00102$
                                    170 ;	/workspace/Software/Firmware/new_begining/main.c: 58: return 0;
                                    171 ;	/workspace/Software/Firmware/new_begining/main.c: 66: }
      00827C 81               [ 4]  172 	ret
                                    173 	.area CODE
                                    174 	.area CONST
                                    175 	.area INITIALIZER
      008245                        176 __xinit__i:
      008245 00 00                  177 	.dw #0x0000
                                    178 	.area CABS (ABS)
