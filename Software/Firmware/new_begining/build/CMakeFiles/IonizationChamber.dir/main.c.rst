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
                                     12 	.globl _tim1_isr
                                     13 	.globl _app_builder_run
                                     14 	.globl _app_builder_init
                                     15 	.globl _TIM1_ClearITPendingBit
                                     16 	.globl _TIM1_ClearFlag
                                     17 ;--------------------------------------------------------
                                     18 ; ram data
                                     19 ;--------------------------------------------------------
                                     20 	.area DATA
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area INITIALIZED
                                     25 ;--------------------------------------------------------
                                     26 ; Stack segment in internal ram
                                     27 ;--------------------------------------------------------
                                     28 	.area SSEG
      000005                         29 __start__stack:
      000005                         30 	.ds	1
                                     31 
                                     32 ;--------------------------------------------------------
                                     33 ; absolute external ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area DABS (ABS)
                                     36 
                                     37 ; default segment ordering for linker
                                     38 	.area HOME
                                     39 	.area GSINIT
                                     40 	.area GSFINAL
                                     41 	.area CONST
                                     42 	.area INITIALIZER
                                     43 	.area CODE
                                     44 
                                     45 ;--------------------------------------------------------
                                     46 ; interrupt vector
                                     47 ;--------------------------------------------------------
                                     48 	.area HOME
      008000                         49 __interrupt_vect:
      008000 82 00 80 3B             50 	int s_GSINIT ; reset
      008004 82 00 00 00             51 	int 0x000000 ; trap
      008008 82 00 00 00             52 	int 0x000000 ; int0
      00800C 82 00 00 00             53 	int 0x000000 ; int1
      008010 82 00 00 00             54 	int 0x000000 ; int2
      008014 82 00 00 00             55 	int 0x000000 ; int3
      008018 82 00 00 00             56 	int 0x000000 ; int4
      00801C 82 00 00 00             57 	int 0x000000 ; int5
      008020 82 00 00 00             58 	int 0x000000 ; int6
      008024 82 00 00 00             59 	int 0x000000 ; int7
      008028 82 00 00 00             60 	int 0x000000 ; int8
      00802C 82 00 00 00             61 	int 0x000000 ; int9
      008030 82 00 00 00             62 	int 0x000000 ; int10
      008034 82 00 82 01             63 	int _tim1_isr ; int11
                                     64 ;--------------------------------------------------------
                                     65 ; global & static initialisations
                                     66 ;--------------------------------------------------------
                                     67 	.area HOME
                                     68 	.area GSINIT
                                     69 	.area GSFINAL
                                     70 	.area GSINIT
      00803B CD 95 31         [ 4]   71 	call	___sdcc_external_startup
      00803E 4D               [ 1]   72 	tnz	a
      00803F 27 03            [ 1]   73 	jreq	__sdcc_init_data
      008041 CC 80 38         [ 2]   74 	jp	__sdcc_program_startup
      008044                         75 __sdcc_init_data:
                                     76 ; stm8_genXINIT() start
      008044 AE 00 02         [ 2]   77 	ldw x, #l_DATA
      008047 27 07            [ 1]   78 	jreq	00002$
      008049                         79 00001$:
      008049 72 4F 00 00      [ 1]   80 	clr (s_DATA - 1, x)
      00804D 5A               [ 2]   81 	decw x
      00804E 26 F9            [ 1]   82 	jrne	00001$
      008050                         83 00002$:
      008050 AE 00 02         [ 2]   84 	ldw	x, #l_INITIALIZER
      008053 27 09            [ 1]   85 	jreq	00004$
      008055                         86 00003$:
      008055 D6 81 FA         [ 1]   87 	ld	a, (s_INITIALIZER - 1, x)
      008058 D7 00 02         [ 1]   88 	ld	(s_INITIALIZED - 1, x), a
      00805B 5A               [ 2]   89 	decw	x
      00805C 26 F7            [ 1]   90 	jrne	00003$
      00805E                         91 00004$:
                                     92 ; stm8_genXINIT() end
                                     93 	.area GSFINAL
      008062 CC 80 38         [ 2]   94 	jp	__sdcc_program_startup
                                     95 ;--------------------------------------------------------
                                     96 ; Home
                                     97 ;--------------------------------------------------------
                                     98 	.area HOME
                                     99 	.area HOME
      008038                        100 __sdcc_program_startup:
      008038 CC 82 13         [ 2]  101 	jp	_main
                                    102 ;	return from main will return to caller
                                    103 ;--------------------------------------------------------
                                    104 ; code
                                    105 ;--------------------------------------------------------
                                    106 	.area CODE
                                    107 ;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 20: static inline void interrupt_control_enable(void)
                                    108 ;	-----------------------------------------
                                    109 ;	 function interrupt_control_enable
                                    110 ;	-----------------------------------------
      0081FD                        111 _interrupt_control_enable:
                                    112 ;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 22: enableInterrupts();
      0081FD 9A               [ 1]  113 	rim
                                    114 ;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 23: }
      0081FE 81               [ 4]  115 	ret
                                    116 ;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 32: static inline void interrupt_control_wait(
                                    117 ;	-----------------------------------------
                                    118 ;	 function interrupt_control_wait
                                    119 ;	-----------------------------------------
      0081FF                        120 _interrupt_control_wait:
                                    121 ;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 35: wfi();
      0081FF 8F               [10]  122 	wfi
                                    123 ;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 36: }
      008200 81               [ 4]  124 	ret
                                    125 ;	/workspace/Software/Firmware/new_begining/main.c: 11: void tim1_isr(void) __interrupt(11)
                                    126 ;	-----------------------------------------
                                    127 ;	 function tim1_isr
                                    128 ;	-----------------------------------------
      008201                        129 _tim1_isr:
      008201 4F               [ 1]  130 	clr	a
      008202 62               [ 2]  131 	div	x, a
                                    132 ;	/workspace/Software/Firmware/new_begining/main.c: 13: app_tick_flag = 1;
      008203 5F               [ 1]  133 	clrw	x
      008204 5C               [ 1]  134 	incw	x
      008205 CF 00 03         [ 2]  135 	ldw	_app_tick_flag+0, x
                                    136 ;	/workspace/Software/Firmware/new_begining/main.c: 15: TIM1_ClearFlag(TIM1_FLAG_UPDATE);
      008208 5F               [ 1]  137 	clrw	x
      008209 5C               [ 1]  138 	incw	x
      00820A CD 8C 32         [ 4]  139 	call	_TIM1_ClearFlag
                                    140 ;	/workspace/Software/Firmware/new_begining/main.c: 16: TIM1_ClearITPendingBit(TIM1_IT_UPDATE);
      00820D A6 01            [ 1]  141 	ld	a, #0x01
      00820F CD 8C 5F         [ 4]  142 	call	_TIM1_ClearITPendingBit
                                    143 ;	/workspace/Software/Firmware/new_begining/main.c: 17: }
      008212 80               [11]  144 	iret
                                    145 ;	/workspace/Software/Firmware/new_begining/main.c: 19: int main()
                                    146 ;	-----------------------------------------
                                    147 ;	 function main
                                    148 ;	-----------------------------------------
      008213                        149 _main:
                                    150 ;	/workspace/Software/Firmware/new_begining/main.c: 21: app_builder_init();
      008213 CD 82 49         [ 4]  151 	call	_app_builder_init
      008216                        152 00102$:
                                    153 ;	/workspace/Software/Firmware/new_begining/main.c: 25: app_builder_run();
      008216 CD 82 54         [ 4]  154 	call	_app_builder_run
      008219 20 FB            [ 2]  155 	jra	00102$
                                    156 ;	/workspace/Software/Firmware/new_begining/main.c: 28: return 0;
                                    157 ;	/workspace/Software/Firmware/new_begining/main.c: 29: }
      00821B 81               [ 4]  158 	ret
                                    159 	.area CODE
                                    160 	.area CONST
                                    161 	.area INITIALIZER
                                    162 	.area CABS (ABS)
