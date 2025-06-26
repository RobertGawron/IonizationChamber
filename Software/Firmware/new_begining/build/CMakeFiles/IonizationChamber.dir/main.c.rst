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
                                     14 	.globl _user_interface_init
                                     15 	.globl _timer_conf_init
                                     16 	.globl _clk_conf_init
                                     17 	.globl _TIM1_ClearITPendingBit
                                     18 	.globl _TIM1_ClearFlag
                                     19 ;--------------------------------------------------------
                                     20 ; ram data
                                     21 ;--------------------------------------------------------
                                     22 	.area DATA
                                     23 ;--------------------------------------------------------
                                     24 ; ram data
                                     25 ;--------------------------------------------------------
                                     26 	.area INITIALIZED
      000001                         27 _i:
      000001                         28 	.ds 2
                                     29 ;--------------------------------------------------------
                                     30 ; Stack segment in internal ram
                                     31 ;--------------------------------------------------------
                                     32 	.area SSEG
      000005                         33 __start__stack:
      000005                         34 	.ds	1
                                     35 
                                     36 ;--------------------------------------------------------
                                     37 ; absolute external ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area DABS (ABS)
                                     40 
                                     41 ; default segment ordering for linker
                                     42 	.area HOME
                                     43 	.area GSINIT
                                     44 	.area GSFINAL
                                     45 	.area CONST
                                     46 	.area INITIALIZER
                                     47 	.area CODE
                                     48 
                                     49 ;--------------------------------------------------------
                                     50 ; interrupt vector
                                     51 ;--------------------------------------------------------
                                     52 	.area HOME
      008000                         53 __interrupt_vect:
      008000 82 00 80 3B             54 	int s_GSINIT ; reset
      008004 82 00 00 00             55 	int 0x000000 ; trap
      008008 82 00 00 00             56 	int 0x000000 ; int0
      00800C 82 00 00 00             57 	int 0x000000 ; int1
      008010 82 00 00 00             58 	int 0x000000 ; int2
      008014 82 00 00 00             59 	int 0x000000 ; int3
      008018 82 00 00 00             60 	int 0x000000 ; int4
      00801C 82 00 00 00             61 	int 0x000000 ; int5
      008020 82 00 00 00             62 	int 0x000000 ; int6
      008024 82 00 00 00             63 	int 0x000000 ; int7
      008028 82 00 00 00             64 	int 0x000000 ; int8
      00802C 82 00 00 00             65 	int 0x000000 ; int9
      008030 82 00 00 00             66 	int 0x000000 ; int10
      008034 82 00 82 4D             67 	int _timer_isr ; int11
                                     68 ;--------------------------------------------------------
                                     69 ; global & static initialisations
                                     70 ;--------------------------------------------------------
                                     71 	.area HOME
                                     72 	.area GSINIT
                                     73 	.area GSFINAL
                                     74 	.area GSINIT
      00803B CD 98 59         [ 4]   75 	call	___sdcc_external_startup
      00803E 4D               [ 1]   76 	tnz	a
      00803F 27 03            [ 1]   77 	jreq	__sdcc_init_data
      008041 CC 80 38         [ 2]   78 	jp	__sdcc_program_startup
      008044                         79 __sdcc_init_data:
                                     80 ; stm8_genXINIT() start
      008044 AE 00 00         [ 2]   81 	ldw x, #l_DATA
      008047 27 07            [ 1]   82 	jreq	00002$
      008049                         83 00001$:
      008049 72 4F 00 00      [ 1]   84 	clr (s_DATA - 1, x)
      00804D 5A               [ 2]   85 	decw x
      00804E 26 F9            [ 1]   86 	jrne	00001$
      008050                         87 00002$:
      008050 AE 00 04         [ 2]   88 	ldw	x, #l_INITIALIZER
      008053 27 09            [ 1]   89 	jreq	00004$
      008055                         90 00003$:
      008055 D6 82 44         [ 1]   91 	ld	a, (s_INITIALIZER - 1, x)
      008058 D7 00 00         [ 1]   92 	ld	(s_INITIALIZED - 1, x), a
      00805B 5A               [ 2]   93 	decw	x
      00805C 26 F7            [ 1]   94 	jrne	00003$
      00805E                         95 00004$:
                                     96 ; stm8_genXINIT() end
                                     97 	.area GSFINAL
      00805E CC 80 38         [ 2]   98 	jp	__sdcc_program_startup
                                     99 ;--------------------------------------------------------
                                    100 ; Home
                                    101 ;--------------------------------------------------------
                                    102 	.area HOME
                                    103 	.area HOME
      008038                        104 __sdcc_program_startup:
      008038 CC 82 82         [ 2]  105 	jp	_main
                                    106 ;	return from main will return to caller
                                    107 ;--------------------------------------------------------
                                    108 ; code
                                    109 ;--------------------------------------------------------
                                    110 	.area CODE
                                    111 ;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 20: static inline void interrupt_control_enable(void)
                                    112 ;	-----------------------------------------
                                    113 ;	 function interrupt_control_enable
                                    114 ;	-----------------------------------------
      008249                        115 _interrupt_control_enable:
                                    116 ;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 22: enableInterrupts();
      008249 9A               [ 1]  117 	rim
                                    118 ;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 23: }
      00824A 81               [ 4]  119 	ret
                                    120 ;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 32: static inline void interrupt_control_wait(
                                    121 ;	-----------------------------------------
                                    122 ;	 function interrupt_control_wait
                                    123 ;	-----------------------------------------
      00824B                        124 _interrupt_control_wait:
                                    125 ;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 35: wfi();
      00824B 8F               [10]  126 	wfi
                                    127 ;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 36: }
      00824C 81               [ 4]  128 	ret
                                    129 ;	/workspace/Software/Firmware/new_begining/main.c: 12: void timer_isr(void) __interrupt(11)
                                    130 ;	-----------------------------------------
                                    131 ;	 function timer_isr
                                    132 ;	-----------------------------------------
      00824D                        133 _timer_isr:
      00824D 4F               [ 1]  134 	clr	a
      00824E 62               [ 2]  135 	div	x, a
                                    136 ;	/workspace/Software/Firmware/new_begining/main.c: 14: TIM1->SR1 = 0;
      00824F 35 00 52 55      [ 1]  137 	mov	0x5255+0, #0x00
                                    138 ;	/workspace/Software/Firmware/new_begining/main.c: 15: GPIOD->ODR ^= GPIO_PIN_4;
      008253 90 18 50 0F      [ 1]  139 	bcpl	0x500f, #4
                                    140 ;	/workspace/Software/Firmware/new_begining/main.c: 16: i = ~i;
      008257 CE 00 01         [ 2]  141 	ldw	x, _i+0
      00825A 53               [ 2]  142 	cplw	x
                                    143 ;	/workspace/Software/Firmware/new_begining/main.c: 17: user_interface_update_message(USER_INTERFACE_COLLECTING_DATA_MSG, (i == 0) ? USER_INTERFACE_ENABLE : USER_INTERFACE_DISABLE);
      00825B CF 00 01         [ 2]  144 	ldw	_i+0, x
      00825E 1D 00 01         [ 2]  145 	subw	x, #0x0001
      008261 4F               [ 1]  146 	clr	a
      008262 8C               [ 1]  147 	ccf
      008263 49               [ 1]  148 	rlc	a
      008264 88               [ 1]  149 	push	a
      008265 4F               [ 1]  150 	clr	a
      008266 CD 83 10         [ 4]  151 	call	_user_interface_update_message
                                    152 ;	/workspace/Software/Firmware/new_begining/main.c: 18: user_interface_update_message(USER_INTERFACE_STATE_OK_MSG, (i == 0) ? USER_INTERFACE_DISABLE : USER_INTERFACE_ENABLE);
      008269 CE 00 01         [ 2]  153 	ldw	x, _i+0
      00826C 1D 00 01         [ 2]  154 	subw	x, #0x0001
      00826F 4F               [ 1]  155 	clr	a
      008270 49               [ 1]  156 	rlc	a
      008271 88               [ 1]  157 	push	a
      008272 A6 01            [ 1]  158 	ld	a, #0x01
      008274 CD 83 10         [ 4]  159 	call	_user_interface_update_message
                                    160 ;	/workspace/Software/Firmware/new_begining/main.c: 20: TIM1_ClearFlag(TIM1_FLAG_UPDATE);
      008277 5F               [ 1]  161 	clrw	x
      008278 5C               [ 1]  162 	incw	x
      008279 CD 8D 30         [ 4]  163 	call	_TIM1_ClearFlag
                                    164 ;	/workspace/Software/Firmware/new_begining/main.c: 21: TIM1_ClearITPendingBit(TIM1_IT_UPDATE);
      00827C A6 01            [ 1]  165 	ld	a, #0x01
      00827E CD 8D 5D         [ 4]  166 	call	_TIM1_ClearITPendingBit
                                    167 ;	/workspace/Software/Firmware/new_begining/main.c: 22: }
      008281 80               [11]  168 	iret
                                    169 ;	/workspace/Software/Firmware/new_begining/main.c: 24: void main()
                                    170 ;	-----------------------------------------
                                    171 ;	 function main
                                    172 ;	-----------------------------------------
      008282                        173 _main:
                                    174 ;	/workspace/Software/Firmware/new_begining/main.c: 27: clk_conf_init();
      008282 CD 83 56         [ 4]  175 	call	_clk_conf_init
                                    176 ;	/workspace/Software/Firmware/new_begining/main.c: 29: user_interface_init();
      008285 CD 82 FE         [ 4]  177 	call	_user_interface_init
                                    178 ;	/workspace/Software/Firmware/new_begining/main.c: 30: timer_conf_init();
      008288 CD 83 94         [ 4]  179 	call	_timer_conf_init
                                    180 ;	/workspace/Software/Firmware/new_begining/main.c: 42: timer_conf_init();
      00828B CD 83 94         [ 4]  181 	call	_timer_conf_init
                                    182 ;	/workspace/Software/Firmware/new_begining/Driver/interrupt_control.h: 22: enableInterrupts();
      00828E 9A               [ 1]  183 	rim
                                    184 ;	/workspace/Software/Firmware/new_begining/main.c: 49: while (1)
      00828F                        185 00102$:
                                    186 ;	/workspace/Software/Firmware/new_begining/main.c: 51: wfi();
      00828F 8F               [10]  187 	wfi
      008290 20 FD            [ 2]  188 	jra	00102$
                                    189 ;	/workspace/Software/Firmware/new_begining/main.c: 53: }
      008292 81               [ 4]  190 	ret
                                    191 	.area CODE
                                    192 	.area CONST
                                    193 	.area INITIALIZER
      008245                        194 __xinit__i:
      008245 00 00                  195 	.dw #0x0000
                                    196 	.area CABS (ABS)
