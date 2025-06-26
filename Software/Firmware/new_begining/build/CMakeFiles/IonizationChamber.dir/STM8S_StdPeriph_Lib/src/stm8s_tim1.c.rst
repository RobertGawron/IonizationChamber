                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim1
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _TIM1_DeInit
                                     13 	.globl _TIM1_TimeBaseInit
                                     14 	.globl _TIM1_ICInit
                                     15 	.globl _TIM1_Cmd
                                     16 	.globl _TIM1_ITConfig
                                     17 	.globl _TIM1_ARRPreloadConfig
                                     18 	.globl _TIM1_SetIC1Prescaler
                                     19 	.globl _TIM1_SetIC2Prescaler
                                     20 	.globl _TIM1_SetIC3Prescaler
                                     21 	.globl _TIM1_SetIC4Prescaler
                                     22 	.globl _TIM1_GetCapture1
                                     23 	.globl _TIM1_ClearFlag
                                     24 	.globl _TIM1_ClearITPendingBit
                                     25 ;--------------------------------------------------------
                                     26 ; ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area DATA
                                     29 ;--------------------------------------------------------
                                     30 ; ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area INITIALIZED
                                     33 ;--------------------------------------------------------
                                     34 ; absolute external ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area DABS (ABS)
                                     37 
                                     38 ; default segment ordering for linker
                                     39 	.area HOME
                                     40 	.area GSINIT
                                     41 	.area GSFINAL
                                     42 	.area CONST
                                     43 	.area INITIALIZER
                                     44 	.area CODE
                                     45 
                                     46 ;--------------------------------------------------------
                                     47 ; global & static initialisations
                                     48 ;--------------------------------------------------------
                                     49 	.area HOME
                                     50 	.area GSINIT
                                     51 	.area GSFINAL
                                     52 	.area GSINIT
                                     53 ;--------------------------------------------------------
                                     54 ; Home
                                     55 ;--------------------------------------------------------
                                     56 	.area HOME
                                     57 	.area HOME
                                     58 ;--------------------------------------------------------
                                     59 ; code
                                     60 ;--------------------------------------------------------
                                     61 	.area CODE
                                     62 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 59: void TIM1_DeInit(void)
                                     63 ;	-----------------------------------------
                                     64 ;	 function TIM1_DeInit
                                     65 ;	-----------------------------------------
      0088C0                         66 _TIM1_DeInit:
                                     67 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 61: TIM1->CR1 = TIM1_CR1_RESET_VALUE;
      0088C0 35 00 52 50      [ 1]   68 	mov	0x5250+0, #0x00
                                     69 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 62: TIM1->CR2 = TIM1_CR2_RESET_VALUE;
      0088C4 35 00 52 51      [ 1]   70 	mov	0x5251+0, #0x00
                                     71 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 63: TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
      0088C8 35 00 52 52      [ 1]   72 	mov	0x5252+0, #0x00
                                     73 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 64: TIM1->ETR = TIM1_ETR_RESET_VALUE;
      0088CC 35 00 52 53      [ 1]   74 	mov	0x5253+0, #0x00
                                     75 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 65: TIM1->IER = TIM1_IER_RESET_VALUE;
      0088D0 35 00 52 54      [ 1]   76 	mov	0x5254+0, #0x00
                                     77 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 66: TIM1->SR2 = TIM1_SR2_RESET_VALUE;
      0088D4 35 00 52 56      [ 1]   78 	mov	0x5256+0, #0x00
                                     79 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 68: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
      0088D8 35 00 52 5C      [ 1]   80 	mov	0x525c+0, #0x00
                                     81 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 69: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
      0088DC 35 00 52 5D      [ 1]   82 	mov	0x525d+0, #0x00
                                     83 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 71: TIM1->CCMR1 = 0x01;
      0088E0 35 01 52 58      [ 1]   84 	mov	0x5258+0, #0x01
                                     85 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 72: TIM1->CCMR2 = 0x01;
      0088E4 35 01 52 59      [ 1]   86 	mov	0x5259+0, #0x01
                                     87 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 73: TIM1->CCMR3 = 0x01;
      0088E8 35 01 52 5A      [ 1]   88 	mov	0x525a+0, #0x01
                                     89 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 74: TIM1->CCMR4 = 0x01;
      0088EC 35 01 52 5B      [ 1]   90 	mov	0x525b+0, #0x01
                                     91 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 76: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
      0088F0 35 00 52 5C      [ 1]   92 	mov	0x525c+0, #0x00
                                     93 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 77: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
      0088F4 35 00 52 5D      [ 1]   94 	mov	0x525d+0, #0x00
                                     95 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 78: TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
      0088F8 35 00 52 58      [ 1]   96 	mov	0x5258+0, #0x00
                                     97 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 79: TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
      0088FC 35 00 52 59      [ 1]   98 	mov	0x5259+0, #0x00
                                     99 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 80: TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
      008900 35 00 52 5A      [ 1]  100 	mov	0x525a+0, #0x00
                                    101 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 81: TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
      008904 35 00 52 5B      [ 1]  102 	mov	0x525b+0, #0x00
                                    103 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 82: TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
      008908 35 00 52 5E      [ 1]  104 	mov	0x525e+0, #0x00
                                    105 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 83: TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
      00890C 35 00 52 5F      [ 1]  106 	mov	0x525f+0, #0x00
                                    107 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 84: TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
      008910 35 00 52 60      [ 1]  108 	mov	0x5260+0, #0x00
                                    109 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 85: TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
      008914 35 00 52 61      [ 1]  110 	mov	0x5261+0, #0x00
                                    111 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 86: TIM1->ARRH = TIM1_ARRH_RESET_VALUE;
      008918 35 FF 52 62      [ 1]  112 	mov	0x5262+0, #0xff
                                    113 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 87: TIM1->ARRL = TIM1_ARRL_RESET_VALUE;
      00891C 35 FF 52 63      [ 1]  114 	mov	0x5263+0, #0xff
                                    115 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 88: TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
      008920 35 00 52 65      [ 1]  116 	mov	0x5265+0, #0x00
                                    117 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 89: TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
      008924 35 00 52 66      [ 1]  118 	mov	0x5266+0, #0x00
                                    119 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 90: TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
      008928 35 00 52 67      [ 1]  120 	mov	0x5267+0, #0x00
                                    121 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 91: TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
      00892C 35 00 52 68      [ 1]  122 	mov	0x5268+0, #0x00
                                    123 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 92: TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
      008930 35 00 52 69      [ 1]  124 	mov	0x5269+0, #0x00
                                    125 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 93: TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
      008934 35 00 52 6A      [ 1]  126 	mov	0x526a+0, #0x00
                                    127 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 94: TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
      008938 35 00 52 6B      [ 1]  128 	mov	0x526b+0, #0x00
                                    129 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 95: TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
      00893C 35 00 52 6C      [ 1]  130 	mov	0x526c+0, #0x00
                                    131 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 96: TIM1->OISR = TIM1_OISR_RESET_VALUE;
      008940 35 00 52 6F      [ 1]  132 	mov	0x526f+0, #0x00
                                    133 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 97: TIM1->EGR = 0x01; /* TIM1_EGR_UG */
      008944 35 01 52 57      [ 1]  134 	mov	0x5257+0, #0x01
                                    135 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 98: TIM1->DTR = TIM1_DTR_RESET_VALUE;
      008948 35 00 52 6E      [ 1]  136 	mov	0x526e+0, #0x00
                                    137 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 99: TIM1->BKR = TIM1_BKR_RESET_VALUE;
      00894C 35 00 52 6D      [ 1]  138 	mov	0x526d+0, #0x00
                                    139 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 100: TIM1->RCR = TIM1_RCR_RESET_VALUE;
      008950 35 00 52 64      [ 1]  140 	mov	0x5264+0, #0x00
                                    141 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 101: TIM1->SR1 = TIM1_SR1_RESET_VALUE;
      008954 35 00 52 55      [ 1]  142 	mov	0x5255+0, #0x00
                                    143 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 102: }
      008958 81               [ 4]  144 	ret
                                    145 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 114: void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
                                    146 ;	-----------------------------------------
                                    147 ;	 function TIM1_TimeBaseInit
                                    148 ;	-----------------------------------------
      008959                        149 _TIM1_TimeBaseInit:
      008959 88               [ 1]  150 	push	a
                                    151 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 120: assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
      00895A 6B 01            [ 1]  152 	ld	(0x01, sp), a
      00895C 27 28            [ 1]  153 	jreq	00104$
      00895E 7B 01            [ 1]  154 	ld	a, (0x01, sp)
      008960 A1 10            [ 1]  155 	cp	a, #0x10
      008962 27 22            [ 1]  156 	jreq	00104$
      008964 7B 01            [ 1]  157 	ld	a, (0x01, sp)
      008966 A1 20            [ 1]  158 	cp	a, #0x20
      008968 27 1C            [ 1]  159 	jreq	00104$
      00896A 7B 01            [ 1]  160 	ld	a, (0x01, sp)
      00896C A1 40            [ 1]  161 	cp	a, #0x40
      00896E 27 16            [ 1]  162 	jreq	00104$
      008970 7B 01            [ 1]  163 	ld	a, (0x01, sp)
      008972 A1 60            [ 1]  164 	cp	a, #0x60
      008974 27 10            [ 1]  165 	jreq	00104$
      008976 89               [ 2]  166 	pushw	x
      008977 4B 78            [ 1]  167 	push	#0x78
      008979 4B 00            [ 1]  168 	push	#0x00
      00897B 4B 00            [ 1]  169 	push	#0x00
      00897D 4B 00            [ 1]  170 	push	#0x00
      00897F AE 81 02         [ 2]  171 	ldw	x, #(___str_0+0)
      008982 CD 82 1C         [ 4]  172 	call	_assert_failed
      008985 85               [ 2]  173 	popw	x
      008986                        174 00104$:
                                    175 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 123: TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
      008986 7B 04            [ 1]  176 	ld	a, (0x04, sp)
      008988 C7 52 62         [ 1]  177 	ld	0x5262, a
                                    178 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 124: TIM1->ARRL = (uint8_t)(TIM1_Period);
      00898B 7B 05            [ 1]  179 	ld	a, (0x05, sp)
      00898D C7 52 63         [ 1]  180 	ld	0x5263, a
                                    181 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 127: TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
      008990 9E               [ 1]  182 	ld	a, xh
      008991 C7 52 60         [ 1]  183 	ld	0x5260, a
                                    184 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 128: TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
      008994 9F               [ 1]  185 	ld	a, xl
      008995 C7 52 61         [ 1]  186 	ld	0x5261, a
                                    187 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 131: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR))) | (uint8_t)(TIM1_CounterMode));
      008998 C6 52 50         [ 1]  188 	ld	a, 0x5250
      00899B A4 8F            [ 1]  189 	and	a, #0x8f
      00899D 1A 01            [ 1]  190 	or	a, (0x01, sp)
      00899F C7 52 50         [ 1]  191 	ld	0x5250, a
                                    192 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 134: TIM1->RCR = TIM1_RepetitionCounter;
      0089A2 AE 52 64         [ 2]  193 	ldw	x, #0x5264
      0089A5 7B 06            [ 1]  194 	ld	a, (0x06, sp)
      0089A7 F7               [ 1]  195 	ld	(x), a
                                    196 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 135: }
      0089A8 1E 02            [ 2]  197 	ldw	x, (2, sp)
      0089AA 5B 06            [ 2]  198 	addw	sp, #6
      0089AC FC               [ 2]  199 	jp	(x)
                                    200 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 437: void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
                                    201 ;	-----------------------------------------
                                    202 ;	 function TIM1_ICInit
                                    203 ;	-----------------------------------------
      0089AD                        204 _TIM1_ICInit:
      0089AD 52 03            [ 2]  205 	sub	sp, #3
                                    206 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 444: assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
      0089AF 6B 03            [ 1]  207 	ld	(0x03, sp), a
      0089B1 4A               [ 1]  208 	dec	a
      0089B2 26 05            [ 1]  209 	jrne	00269$
      0089B4 A6 01            [ 1]  210 	ld	a, #0x01
      0089B6 6B 01            [ 1]  211 	ld	(0x01, sp), a
      0089B8 C5                     212 	.byte 0xc5
      0089B9                        213 00269$:
      0089B9 0F 01            [ 1]  214 	clr	(0x01, sp)
      0089BB                        215 00270$:
      0089BB 7B 03            [ 1]  216 	ld	a, (0x03, sp)
      0089BD A0 02            [ 1]  217 	sub	a, #0x02
      0089BF 26 04            [ 1]  218 	jrne	00272$
      0089C1 4C               [ 1]  219 	inc	a
      0089C2 6B 02            [ 1]  220 	ld	(0x02, sp), a
      0089C4 C5                     221 	.byte 0xc5
      0089C5                        222 00272$:
      0089C5 0F 02            [ 1]  223 	clr	(0x02, sp)
      0089C7                        224 00273$:
      0089C7 0D 03            [ 1]  225 	tnz	(0x03, sp)
      0089C9 27 1A            [ 1]  226 	jreq	00113$
      0089CB 0D 01            [ 1]  227 	tnz	(0x01, sp)
      0089CD 26 16            [ 1]  228 	jrne	00113$
      0089CF 0D 02            [ 1]  229 	tnz	(0x02, sp)
      0089D1 26 12            [ 1]  230 	jrne	00113$
      0089D3 7B 03            [ 1]  231 	ld	a, (0x03, sp)
      0089D5 A1 03            [ 1]  232 	cp	a, #0x03
      0089D7 27 0C            [ 1]  233 	jreq	00113$
      0089D9 4B BC            [ 1]  234 	push	#0xbc
      0089DB 4B 01            [ 1]  235 	push	#0x01
      0089DD 5F               [ 1]  236 	clrw	x
      0089DE 89               [ 2]  237 	pushw	x
      0089DF AE 81 02         [ 2]  238 	ldw	x, #(___str_0+0)
      0089E2 CD 82 1C         [ 4]  239 	call	_assert_failed
      0089E5                        240 00113$:
                                    241 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 445: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
      0089E5 0D 06            [ 1]  242 	tnz	(0x06, sp)
      0089E7 27 10            [ 1]  243 	jreq	00124$
      0089E9 0D 06            [ 1]  244 	tnz	(0x06, sp)
      0089EB 26 0C            [ 1]  245 	jrne	00124$
      0089ED 4B BD            [ 1]  246 	push	#0xbd
      0089EF 4B 01            [ 1]  247 	push	#0x01
      0089F1 5F               [ 1]  248 	clrw	x
      0089F2 89               [ 2]  249 	pushw	x
      0089F3 AE 81 02         [ 2]  250 	ldw	x, #(___str_0+0)
      0089F6 CD 82 1C         [ 4]  251 	call	_assert_failed
      0089F9                        252 00124$:
                                    253 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 446: assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
      0089F9 7B 07            [ 1]  254 	ld	a, (0x07, sp)
      0089FB 4A               [ 1]  255 	dec	a
      0089FC 27 18            [ 1]  256 	jreq	00129$
      0089FE 7B 07            [ 1]  257 	ld	a, (0x07, sp)
      008A00 A1 02            [ 1]  258 	cp	a, #0x02
      008A02 27 12            [ 1]  259 	jreq	00129$
      008A04 7B 07            [ 1]  260 	ld	a, (0x07, sp)
      008A06 A1 03            [ 1]  261 	cp	a, #0x03
      008A08 27 0C            [ 1]  262 	jreq	00129$
      008A0A 4B BE            [ 1]  263 	push	#0xbe
      008A0C 4B 01            [ 1]  264 	push	#0x01
      008A0E 5F               [ 1]  265 	clrw	x
      008A0F 89               [ 2]  266 	pushw	x
      008A10 AE 81 02         [ 2]  267 	ldw	x, #(___str_0+0)
      008A13 CD 82 1C         [ 4]  268 	call	_assert_failed
      008A16                        269 00129$:
                                    270 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 447: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
      008A16 0D 08            [ 1]  271 	tnz	(0x08, sp)
      008A18 27 1E            [ 1]  272 	jreq	00137$
      008A1A 7B 08            [ 1]  273 	ld	a, (0x08, sp)
      008A1C A1 04            [ 1]  274 	cp	a, #0x04
      008A1E 27 18            [ 1]  275 	jreq	00137$
      008A20 7B 08            [ 1]  276 	ld	a, (0x08, sp)
      008A22 A1 08            [ 1]  277 	cp	a, #0x08
      008A24 27 12            [ 1]  278 	jreq	00137$
      008A26 7B 08            [ 1]  279 	ld	a, (0x08, sp)
      008A28 A1 0C            [ 1]  280 	cp	a, #0x0c
      008A2A 27 0C            [ 1]  281 	jreq	00137$
      008A2C 4B BF            [ 1]  282 	push	#0xbf
      008A2E 4B 01            [ 1]  283 	push	#0x01
      008A30 5F               [ 1]  284 	clrw	x
      008A31 89               [ 2]  285 	pushw	x
      008A32 AE 81 02         [ 2]  286 	ldw	x, #(___str_0+0)
      008A35 CD 82 1C         [ 4]  287 	call	_assert_failed
      008A38                        288 00137$:
                                    289 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 448: assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
      008A38 7B 09            [ 1]  290 	ld	a, (0x09, sp)
      008A3A A1 0F            [ 1]  291 	cp	a, #0x0f
      008A3C 23 0C            [ 2]  292 	jrule	00148$
      008A3E 4B C0            [ 1]  293 	push	#0xc0
      008A40 4B 01            [ 1]  294 	push	#0x01
      008A42 5F               [ 1]  295 	clrw	x
      008A43 89               [ 2]  296 	pushw	x
      008A44 AE 81 02         [ 2]  297 	ldw	x, #(___str_0+0)
      008A47 CD 82 1C         [ 4]  298 	call	_assert_failed
      008A4A                        299 00148$:
                                    300 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 453: TI1_Config((uint8_t)TIM1_ICPolarity,
      008A4A 7B 06            [ 1]  301 	ld	a, (0x06, sp)
      008A4C 97               [ 1]  302 	ld	xl, a
                                    303 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 450: if (TIM1_Channel == TIM1_CHANNEL_1)
      008A4D 0D 03            [ 1]  304 	tnz	(0x03, sp)
      008A4F 26 15            [ 1]  305 	jrne	00108$
                                    306 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 453: TI1_Config((uint8_t)TIM1_ICPolarity,
      008A51 7B 09            [ 1]  307 	ld	a, (0x09, sp)
      008A53 88               [ 1]  308 	push	a
      008A54 7B 08            [ 1]  309 	ld	a, (0x08, sp)
      008A56 88               [ 1]  310 	push	a
      008A57 9F               [ 1]  311 	ld	a, xl
      008A58 CD 8C 54         [ 4]  312 	call	_TI1_Config
                                    313 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 457: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
      008A5B 7B 08            [ 1]  314 	ld	a, (0x08, sp)
      008A5D 1E 04            [ 2]  315 	ldw	x, (4, sp)
      008A5F 1F 08            [ 2]  316 	ldw	(8, sp), x
      008A61 5B 07            [ 2]  317 	addw	sp, #7
      008A63 CC 8B 46         [ 2]  318 	jp	_TIM1_SetIC1Prescaler
      008A66                        319 00108$:
                                    320 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 459: else if (TIM1_Channel == TIM1_CHANNEL_2)
      008A66 7B 01            [ 1]  321 	ld	a, (0x01, sp)
      008A68 27 15            [ 1]  322 	jreq	00105$
                                    323 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 462: TI2_Config((uint8_t)TIM1_ICPolarity,
      008A6A 7B 09            [ 1]  324 	ld	a, (0x09, sp)
      008A6C 88               [ 1]  325 	push	a
      008A6D 7B 08            [ 1]  326 	ld	a, (0x08, sp)
      008A6F 88               [ 1]  327 	push	a
      008A70 9F               [ 1]  328 	ld	a, xl
      008A71 CD 8C 8F         [ 4]  329 	call	_TI2_Config
                                    330 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 466: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
      008A74 7B 08            [ 1]  331 	ld	a, (0x08, sp)
      008A76 1E 04            [ 2]  332 	ldw	x, (4, sp)
      008A78 1F 08            [ 2]  333 	ldw	(8, sp), x
      008A7A 5B 07            [ 2]  334 	addw	sp, #7
      008A7C CC 8B 75         [ 2]  335 	jp	_TIM1_SetIC2Prescaler
      008A7F                        336 00105$:
                                    337 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 468: else if (TIM1_Channel == TIM1_CHANNEL_3)
      008A7F 7B 02            [ 1]  338 	ld	a, (0x02, sp)
      008A81 27 15            [ 1]  339 	jreq	00102$
                                    340 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 471: TI3_Config((uint8_t)TIM1_ICPolarity,
      008A83 7B 09            [ 1]  341 	ld	a, (0x09, sp)
      008A85 88               [ 1]  342 	push	a
      008A86 7B 08            [ 1]  343 	ld	a, (0x08, sp)
      008A88 88               [ 1]  344 	push	a
      008A89 9F               [ 1]  345 	ld	a, xl
      008A8A CD 8C CA         [ 4]  346 	call	_TI3_Config
                                    347 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 475: TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
      008A8D 7B 08            [ 1]  348 	ld	a, (0x08, sp)
      008A8F 1E 04            [ 2]  349 	ldw	x, (4, sp)
      008A91 1F 08            [ 2]  350 	ldw	(8, sp), x
      008A93 5B 07            [ 2]  351 	addw	sp, #7
      008A95 CC 8B A4         [ 2]  352 	jp	_TIM1_SetIC3Prescaler
      008A98                        353 00102$:
                                    354 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 480: TI4_Config((uint8_t)TIM1_ICPolarity,
      008A98 7B 09            [ 1]  355 	ld	a, (0x09, sp)
      008A9A 88               [ 1]  356 	push	a
      008A9B 7B 08            [ 1]  357 	ld	a, (0x08, sp)
      008A9D 88               [ 1]  358 	push	a
      008A9E 9F               [ 1]  359 	ld	a, xl
      008A9F CD 8D 09         [ 4]  360 	call	_TI4_Config
                                    361 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 484: TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
      008AA2 7B 08            [ 1]  362 	ld	a, (0x08, sp)
      008AA4 1E 04            [ 2]  363 	ldw	x, (4, sp)
      008AA6 1F 08            [ 2]  364 	ldw	(8, sp), x
      008AA8 5B 07            [ 2]  365 	addw	sp, #7
                                    366 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 486: }
      008AAA CC 8B D3         [ 2]  367 	jp	_TIM1_SetIC4Prescaler
                                    368 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 579: void TIM1_Cmd(FunctionalState NewState)
                                    369 ;	-----------------------------------------
                                    370 ;	 function TIM1_Cmd
                                    371 ;	-----------------------------------------
      008AAD                        372 _TIM1_Cmd:
      008AAD 88               [ 1]  373 	push	a
                                    374 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 582: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008AAE 6B 01            [ 1]  375 	ld	(0x01, sp), a
      008AB0 27 10            [ 1]  376 	jreq	00107$
      008AB2 0D 01            [ 1]  377 	tnz	(0x01, sp)
      008AB4 26 0C            [ 1]  378 	jrne	00107$
      008AB6 4B 46            [ 1]  379 	push	#0x46
      008AB8 4B 02            [ 1]  380 	push	#0x02
      008ABA 5F               [ 1]  381 	clrw	x
      008ABB 89               [ 2]  382 	pushw	x
      008ABC AE 81 02         [ 2]  383 	ldw	x, #(___str_0+0)
      008ABF CD 82 1C         [ 4]  384 	call	_assert_failed
      008AC2                        385 00107$:
                                    386 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 587: TIM1->CR1 |= TIM1_CR1_CEN;
      008AC2 C6 52 50         [ 1]  387 	ld	a, 0x5250
                                    388 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 585: if (NewState != DISABLE)
      008AC5 0D 01            [ 1]  389 	tnz	(0x01, sp)
      008AC7 27 07            [ 1]  390 	jreq	00102$
                                    391 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 587: TIM1->CR1 |= TIM1_CR1_CEN;
      008AC9 AA 01            [ 1]  392 	or	a, #0x01
      008ACB C7 52 50         [ 1]  393 	ld	0x5250, a
      008ACE 20 05            [ 2]  394 	jra	00104$
      008AD0                        395 00102$:
                                    396 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 591: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
      008AD0 A4 FE            [ 1]  397 	and	a, #0xfe
      008AD2 C7 52 50         [ 1]  398 	ld	0x5250, a
      008AD5                        399 00104$:
                                    400 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 593: }
      008AD5 84               [ 1]  401 	pop	a
      008AD6 81               [ 4]  402 	ret
                                    403 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 639: void TIM1_ITConfig(TIM1_IT_TypeDef TIM1_IT, FunctionalState NewState)
                                    404 ;	-----------------------------------------
                                    405 ;	 function TIM1_ITConfig
                                    406 ;	-----------------------------------------
      008AD7                        407 _TIM1_ITConfig:
      008AD7 52 02            [ 2]  408 	sub	sp, #2
                                    409 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 642: assert_param(IS_TIM1_IT_OK(TIM1_IT));
      008AD9 6B 02            [ 1]  410 	ld	(0x02, sp), a
      008ADB 26 0C            [ 1]  411 	jrne	00107$
      008ADD 4B 82            [ 1]  412 	push	#0x82
      008ADF 4B 02            [ 1]  413 	push	#0x02
      008AE1 5F               [ 1]  414 	clrw	x
      008AE2 89               [ 2]  415 	pushw	x
      008AE3 AE 81 02         [ 2]  416 	ldw	x, #(___str_0+0)
      008AE6 CD 82 1C         [ 4]  417 	call	_assert_failed
      008AE9                        418 00107$:
                                    419 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 643: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008AE9 0D 05            [ 1]  420 	tnz	(0x05, sp)
      008AEB 27 10            [ 1]  421 	jreq	00109$
      008AED 0D 05            [ 1]  422 	tnz	(0x05, sp)
      008AEF 26 0C            [ 1]  423 	jrne	00109$
      008AF1 4B 83            [ 1]  424 	push	#0x83
      008AF3 4B 02            [ 1]  425 	push	#0x02
      008AF5 5F               [ 1]  426 	clrw	x
      008AF6 89               [ 2]  427 	pushw	x
      008AF7 AE 81 02         [ 2]  428 	ldw	x, #(___str_0+0)
      008AFA CD 82 1C         [ 4]  429 	call	_assert_failed
      008AFD                        430 00109$:
                                    431 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 648: TIM1->IER |= (uint8_t)TIM1_IT;
      008AFD C6 52 54         [ 1]  432 	ld	a, 0x5254
                                    433 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 645: if (NewState != DISABLE)
      008B00 0D 05            [ 1]  434 	tnz	(0x05, sp)
      008B02 27 07            [ 1]  435 	jreq	00102$
                                    436 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 648: TIM1->IER |= (uint8_t)TIM1_IT;
      008B04 1A 02            [ 1]  437 	or	a, (0x02, sp)
      008B06 C7 52 54         [ 1]  438 	ld	0x5254, a
      008B09 20 0C            [ 2]  439 	jra	00104$
      008B0B                        440 00102$:
                                    441 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 653: TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
      008B0B 88               [ 1]  442 	push	a
      008B0C 7B 03            [ 1]  443 	ld	a, (0x03, sp)
      008B0E 43               [ 1]  444 	cpl	a
      008B0F 6B 02            [ 1]  445 	ld	(0x02, sp), a
      008B11 84               [ 1]  446 	pop	a
      008B12 14 01            [ 1]  447 	and	a, (0x01, sp)
      008B14 C7 52 54         [ 1]  448 	ld	0x5254, a
      008B17                        449 00104$:
                                    450 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 655: }
      008B17 5B 02            [ 2]  451 	addw	sp, #2
      008B19 85               [ 2]  452 	popw	x
      008B1A 84               [ 1]  453 	pop	a
      008B1B FC               [ 2]  454 	jp	(x)
                                    455 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1202: void TIM1_ARRPreloadConfig(FunctionalState NewState)
                                    456 ;	-----------------------------------------
                                    457 ;	 function TIM1_ARRPreloadConfig
                                    458 ;	-----------------------------------------
      008B1C                        459 _TIM1_ARRPreloadConfig:
      008B1C 88               [ 1]  460 	push	a
                                    461 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1205: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008B1D 6B 01            [ 1]  462 	ld	(0x01, sp), a
      008B1F 27 10            [ 1]  463 	jreq	00107$
      008B21 0D 01            [ 1]  464 	tnz	(0x01, sp)
      008B23 26 0C            [ 1]  465 	jrne	00107$
      008B25 4B B5            [ 1]  466 	push	#0xb5
      008B27 4B 04            [ 1]  467 	push	#0x04
      008B29 5F               [ 1]  468 	clrw	x
      008B2A 89               [ 2]  469 	pushw	x
      008B2B AE 81 02         [ 2]  470 	ldw	x, #(___str_0+0)
      008B2E CD 82 1C         [ 4]  471 	call	_assert_failed
      008B31                        472 00107$:
                                    473 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1210: TIM1->CR1 |= TIM1_CR1_ARPE;
      008B31 C6 52 50         [ 1]  474 	ld	a, 0x5250
                                    475 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1208: if (NewState != DISABLE)
      008B34 0D 01            [ 1]  476 	tnz	(0x01, sp)
      008B36 27 07            [ 1]  477 	jreq	00102$
                                    478 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1210: TIM1->CR1 |= TIM1_CR1_ARPE;
      008B38 AA 80            [ 1]  479 	or	a, #0x80
      008B3A C7 52 50         [ 1]  480 	ld	0x5250, a
      008B3D 20 05            [ 2]  481 	jra	00104$
      008B3F                        482 00102$:
                                    483 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1214: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
      008B3F A4 7F            [ 1]  484 	and	a, #0x7f
      008B41 C7 52 50         [ 1]  485 	ld	0x5250, a
      008B44                        486 00104$:
                                    487 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1216: }
      008B44 84               [ 1]  488 	pop	a
      008B45 81               [ 4]  489 	ret
                                    490 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1963: void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
                                    491 ;	-----------------------------------------
                                    492 ;	 function TIM1_SetIC1Prescaler
                                    493 ;	-----------------------------------------
      008B46                        494 _TIM1_SetIC1Prescaler:
      008B46 88               [ 1]  495 	push	a
                                    496 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1966: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
      008B47 6B 01            [ 1]  497 	ld	(0x01, sp), a
      008B49 27 1E            [ 1]  498 	jreq	00104$
      008B4B 7B 01            [ 1]  499 	ld	a, (0x01, sp)
      008B4D A1 04            [ 1]  500 	cp	a, #0x04
      008B4F 27 18            [ 1]  501 	jreq	00104$
      008B51 7B 01            [ 1]  502 	ld	a, (0x01, sp)
      008B53 A1 08            [ 1]  503 	cp	a, #0x08
      008B55 27 12            [ 1]  504 	jreq	00104$
      008B57 7B 01            [ 1]  505 	ld	a, (0x01, sp)
      008B59 A1 0C            [ 1]  506 	cp	a, #0x0c
      008B5B 27 0C            [ 1]  507 	jreq	00104$
      008B5D 4B AE            [ 1]  508 	push	#0xae
      008B5F 4B 07            [ 1]  509 	push	#0x07
      008B61 5F               [ 1]  510 	clrw	x
      008B62 89               [ 2]  511 	pushw	x
      008B63 AE 81 02         [ 2]  512 	ldw	x, #(___str_0+0)
      008B66 CD 82 1C         [ 4]  513 	call	_assert_failed
      008B69                        514 00104$:
                                    515 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1969: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | (uint8_t)TIM1_IC1Prescaler);
      008B69 C6 52 58         [ 1]  516 	ld	a, 0x5258
      008B6C A4 F3            [ 1]  517 	and	a, #0xf3
      008B6E 1A 01            [ 1]  518 	or	a, (0x01, sp)
      008B70 C7 52 58         [ 1]  519 	ld	0x5258, a
                                    520 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1970: }
      008B73 84               [ 1]  521 	pop	a
      008B74 81               [ 4]  522 	ret
                                    523 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1984: void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
                                    524 ;	-----------------------------------------
                                    525 ;	 function TIM1_SetIC2Prescaler
                                    526 ;	-----------------------------------------
      008B75                        527 _TIM1_SetIC2Prescaler:
      008B75 88               [ 1]  528 	push	a
                                    529 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1988: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
      008B76 6B 01            [ 1]  530 	ld	(0x01, sp), a
      008B78 27 1E            [ 1]  531 	jreq	00104$
      008B7A 7B 01            [ 1]  532 	ld	a, (0x01, sp)
      008B7C A1 04            [ 1]  533 	cp	a, #0x04
      008B7E 27 18            [ 1]  534 	jreq	00104$
      008B80 7B 01            [ 1]  535 	ld	a, (0x01, sp)
      008B82 A1 08            [ 1]  536 	cp	a, #0x08
      008B84 27 12            [ 1]  537 	jreq	00104$
      008B86 7B 01            [ 1]  538 	ld	a, (0x01, sp)
      008B88 A1 0C            [ 1]  539 	cp	a, #0x0c
      008B8A 27 0C            [ 1]  540 	jreq	00104$
      008B8C 4B C4            [ 1]  541 	push	#0xc4
      008B8E 4B 07            [ 1]  542 	push	#0x07
      008B90 5F               [ 1]  543 	clrw	x
      008B91 89               [ 2]  544 	pushw	x
      008B92 AE 81 02         [ 2]  545 	ldw	x, #(___str_0+0)
      008B95 CD 82 1C         [ 4]  546 	call	_assert_failed
      008B98                        547 00104$:
                                    548 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1991: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | (uint8_t)TIM1_IC2Prescaler);
      008B98 C6 52 59         [ 1]  549 	ld	a, 0x5259
      008B9B A4 F3            [ 1]  550 	and	a, #0xf3
      008B9D 1A 01            [ 1]  551 	or	a, (0x01, sp)
      008B9F C7 52 59         [ 1]  552 	ld	0x5259, a
                                    553 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1992: }
      008BA2 84               [ 1]  554 	pop	a
      008BA3 81               [ 4]  555 	ret
                                    556 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2006: void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
                                    557 ;	-----------------------------------------
                                    558 ;	 function TIM1_SetIC3Prescaler
                                    559 ;	-----------------------------------------
      008BA4                        560 _TIM1_SetIC3Prescaler:
      008BA4 88               [ 1]  561 	push	a
                                    562 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2010: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
      008BA5 6B 01            [ 1]  563 	ld	(0x01, sp), a
      008BA7 27 1E            [ 1]  564 	jreq	00104$
      008BA9 7B 01            [ 1]  565 	ld	a, (0x01, sp)
      008BAB A1 04            [ 1]  566 	cp	a, #0x04
      008BAD 27 18            [ 1]  567 	jreq	00104$
      008BAF 7B 01            [ 1]  568 	ld	a, (0x01, sp)
      008BB1 A1 08            [ 1]  569 	cp	a, #0x08
      008BB3 27 12            [ 1]  570 	jreq	00104$
      008BB5 7B 01            [ 1]  571 	ld	a, (0x01, sp)
      008BB7 A1 0C            [ 1]  572 	cp	a, #0x0c
      008BB9 27 0C            [ 1]  573 	jreq	00104$
      008BBB 4B DA            [ 1]  574 	push	#0xda
      008BBD 4B 07            [ 1]  575 	push	#0x07
      008BBF 5F               [ 1]  576 	clrw	x
      008BC0 89               [ 2]  577 	pushw	x
      008BC1 AE 81 02         [ 2]  578 	ldw	x, #(___str_0+0)
      008BC4 CD 82 1C         [ 4]  579 	call	_assert_failed
      008BC7                        580 00104$:
                                    581 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2013: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
      008BC7 C6 52 5A         [ 1]  582 	ld	a, 0x525a
      008BCA A4 F3            [ 1]  583 	and	a, #0xf3
                                    584 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2014: (uint8_t)TIM1_IC3Prescaler);
      008BCC 1A 01            [ 1]  585 	or	a, (0x01, sp)
      008BCE C7 52 5A         [ 1]  586 	ld	0x525a, a
                                    587 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2015: }
      008BD1 84               [ 1]  588 	pop	a
      008BD2 81               [ 4]  589 	ret
                                    590 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2029: void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
                                    591 ;	-----------------------------------------
                                    592 ;	 function TIM1_SetIC4Prescaler
                                    593 ;	-----------------------------------------
      008BD3                        594 _TIM1_SetIC4Prescaler:
      008BD3 88               [ 1]  595 	push	a
                                    596 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2033: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
      008BD4 6B 01            [ 1]  597 	ld	(0x01, sp), a
      008BD6 27 1E            [ 1]  598 	jreq	00104$
      008BD8 7B 01            [ 1]  599 	ld	a, (0x01, sp)
      008BDA A1 04            [ 1]  600 	cp	a, #0x04
      008BDC 27 18            [ 1]  601 	jreq	00104$
      008BDE 7B 01            [ 1]  602 	ld	a, (0x01, sp)
      008BE0 A1 08            [ 1]  603 	cp	a, #0x08
      008BE2 27 12            [ 1]  604 	jreq	00104$
      008BE4 7B 01            [ 1]  605 	ld	a, (0x01, sp)
      008BE6 A1 0C            [ 1]  606 	cp	a, #0x0c
      008BE8 27 0C            [ 1]  607 	jreq	00104$
      008BEA 4B F1            [ 1]  608 	push	#0xf1
      008BEC 4B 07            [ 1]  609 	push	#0x07
      008BEE 5F               [ 1]  610 	clrw	x
      008BEF 89               [ 2]  611 	pushw	x
      008BF0 AE 81 02         [ 2]  612 	ldw	x, #(___str_0+0)
      008BF3 CD 82 1C         [ 4]  613 	call	_assert_failed
      008BF6                        614 00104$:
                                    615 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2036: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
      008BF6 C6 52 5B         [ 1]  616 	ld	a, 0x525b
      008BF9 A4 F3            [ 1]  617 	and	a, #0xf3
                                    618 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2037: (uint8_t)TIM1_IC4Prescaler);
      008BFB 1A 01            [ 1]  619 	or	a, (0x01, sp)
      008BFD C7 52 5B         [ 1]  620 	ld	0x525b, a
                                    621 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2038: }
      008C00 84               [ 1]  622 	pop	a
      008C01 81               [ 4]  623 	ret
                                    624 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2047: uint16_t TIM1_GetCapture1(void)
                                    625 ;	-----------------------------------------
                                    626 ;	 function TIM1_GetCapture1
                                    627 ;	-----------------------------------------
      008C02                        628 _TIM1_GetCapture1:
      008C02 52 02            [ 2]  629 	sub	sp, #2
                                    630 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2054: tmpccr1h = TIM1->CCR1H;
      008C04 C6 52 65         [ 1]  631 	ld	a, 0x5265
      008C07 95               [ 1]  632 	ld	xh, a
                                    633 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2055: tmpccr1l = TIM1->CCR1L;
      008C08 C6 52 66         [ 1]  634 	ld	a, 0x5266
                                    635 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2057: tmpccr1 = (uint16_t)(tmpccr1l);
      008C0B 97               [ 1]  636 	ld	xl, a
                                    637 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2058: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
      008C0C 0F 02            [ 1]  638 	clr	(0x02, sp)
                                    639 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2060: return (uint16_t)tmpccr1;
                                    640 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2061: }
      008C0E 5B 02            [ 2]  641 	addw	sp, #2
      008C10 81               [ 4]  642 	ret
                                    643 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2226: void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
                                    644 ;	-----------------------------------------
                                    645 ;	 function TIM1_ClearFlag
                                    646 ;	-----------------------------------------
      008C11                        647 _TIM1_ClearFlag:
      008C11 52 02            [ 2]  648 	sub	sp, #2
                                    649 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2229: assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
      008C13 1F 01            [ 2]  650 	ldw	(0x01, sp), x
      008C15 7B 01            [ 1]  651 	ld	a, (0x01, sp)
      008C17 A5 E1            [ 1]  652 	bcp	a, #0xe1
      008C19 26 03            [ 1]  653 	jrne	00103$
      008C1B 5D               [ 2]  654 	tnzw	x
      008C1C 26 10            [ 1]  655 	jrne	00104$
      008C1E                        656 00103$:
      008C1E 89               [ 2]  657 	pushw	x
      008C1F 4B B5            [ 1]  658 	push	#0xb5
      008C21 4B 08            [ 1]  659 	push	#0x08
      008C23 4B 00            [ 1]  660 	push	#0x00
      008C25 4B 00            [ 1]  661 	push	#0x00
      008C27 AE 81 02         [ 2]  662 	ldw	x, #(___str_0+0)
      008C2A CD 82 1C         [ 4]  663 	call	_assert_failed
      008C2D 85               [ 2]  664 	popw	x
      008C2E                        665 00104$:
                                    666 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2232: TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
      008C2E 9F               [ 1]  667 	ld	a, xl
      008C2F 43               [ 1]  668 	cpl	a
      008C30 C7 52 55         [ 1]  669 	ld	0x5255, a
                                    670 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2233: TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) &
      008C33 7B 01            [ 1]  671 	ld	a, (0x01, sp)
      008C35 43               [ 1]  672 	cpl	a
      008C36 A4 1E            [ 1]  673 	and	a, #0x1e
      008C38 C7 52 56         [ 1]  674 	ld	0x5256, a
                                    675 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2235: }
      008C3B 5B 02            [ 2]  676 	addw	sp, #2
      008C3D 81               [ 4]  677 	ret
                                    678 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2292: void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
                                    679 ;	-----------------------------------------
                                    680 ;	 function TIM1_ClearITPendingBit
                                    681 ;	-----------------------------------------
      008C3E                        682 _TIM1_ClearITPendingBit:
                                    683 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2295: assert_param(IS_TIM1_IT_OK(TIM1_IT));
      008C3E 4D               [ 1]  684 	tnz	a
      008C3F 26 0E            [ 1]  685 	jrne	00104$
      008C41 88               [ 1]  686 	push	a
      008C42 4B F7            [ 1]  687 	push	#0xf7
      008C44 4B 08            [ 1]  688 	push	#0x08
      008C46 5F               [ 1]  689 	clrw	x
      008C47 89               [ 2]  690 	pushw	x
      008C48 AE 81 02         [ 2]  691 	ldw	x, #(___str_0+0)
      008C4B CD 82 1C         [ 4]  692 	call	_assert_failed
      008C4E 84               [ 1]  693 	pop	a
      008C4F                        694 00104$:
                                    695 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2298: TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
      008C4F 43               [ 1]  696 	cpl	a
      008C50 C7 52 55         [ 1]  697 	ld	0x5255, a
                                    698 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2299: }
      008C53 81               [ 4]  699 	ret
                                    700 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2319: static void TI1_Config(uint8_t TIM1_ICPolarity,
                                    701 ;	-----------------------------------------
                                    702 ;	 function TI1_Config
                                    703 ;	-----------------------------------------
      008C54                        704 _TI1_Config:
      008C54 52 02            [ 2]  705 	sub	sp, #2
      008C56 6B 02            [ 1]  706 	ld	(0x02, sp), a
                                    707 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2324: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      008C58 72 11 52 5C      [ 1]  708 	bres	0x525c, #0
                                    709 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2327: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)(TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) |
      008C5C C6 52 58         [ 1]  710 	ld	a, 0x5258
      008C5F A4 0C            [ 1]  711 	and	a, #0x0c
      008C61 6B 01            [ 1]  712 	ld	(0x01, sp), a
                                    713 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2328: (uint8_t)(((TIM1_ICSelection)) | ((uint8_t)(TIM1_ICFilter << 4))));
      008C63 7B 06            [ 1]  714 	ld	a, (0x06, sp)
      008C65 4E               [ 1]  715 	swap	a
      008C66 A4 F0            [ 1]  716 	and	a, #0xf0
      008C68 1A 05            [ 1]  717 	or	a, (0x05, sp)
      008C6A 1A 01            [ 1]  718 	or	a, (0x01, sp)
      008C6C C7 52 58         [ 1]  719 	ld	0x5258, a
                                    720 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2324: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      008C6F C6 52 5C         [ 1]  721 	ld	a, 0x525c
                                    722 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2331: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      008C72 0D 02            [ 1]  723 	tnz	(0x02, sp)
      008C74 27 07            [ 1]  724 	jreq	00102$
                                    725 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2333: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      008C76 AA 02            [ 1]  726 	or	a, #0x02
      008C78 C7 52 5C         [ 1]  727 	ld	0x525c, a
      008C7B 20 05            [ 2]  728 	jra	00103$
      008C7D                        729 00102$:
                                    730 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2337: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
      008C7D A4 FD            [ 1]  731 	and	a, #0xfd
      008C7F C7 52 5C         [ 1]  732 	ld	0x525c, a
      008C82                        733 00103$:
                                    734 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2341: TIM1->CCER1 |= TIM1_CCER1_CC1E;
      008C82 C6 52 5C         [ 1]  735 	ld	a, 0x525c
      008C85 AA 01            [ 1]  736 	or	a, #0x01
      008C87 C7 52 5C         [ 1]  737 	ld	0x525c, a
                                    738 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2342: }
      008C8A 1E 03            [ 2]  739 	ldw	x, (3, sp)
      008C8C 5B 06            [ 2]  740 	addw	sp, #6
      008C8E FC               [ 2]  741 	jp	(x)
                                    742 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2362: static void TI2_Config(uint8_t TIM1_ICPolarity,
                                    743 ;	-----------------------------------------
                                    744 ;	 function TI2_Config
                                    745 ;	-----------------------------------------
      008C8F                        746 _TI2_Config:
      008C8F 52 02            [ 2]  747 	sub	sp, #2
      008C91 6B 02            [ 1]  748 	ld	(0x02, sp), a
                                    749 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2367: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
      008C93 72 19 52 5C      [ 1]  750 	bres	0x525c, #4
                                    751 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2370: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)(TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) | (uint8_t)(((TIM1_ICSelection)) | ((uint8_t)(TIM1_ICFilter << 4))));
      008C97 C6 52 59         [ 1]  752 	ld	a, 0x5259
      008C9A A4 0C            [ 1]  753 	and	a, #0x0c
      008C9C 6B 01            [ 1]  754 	ld	(0x01, sp), a
      008C9E 7B 06            [ 1]  755 	ld	a, (0x06, sp)
      008CA0 4E               [ 1]  756 	swap	a
      008CA1 A4 F0            [ 1]  757 	and	a, #0xf0
      008CA3 1A 05            [ 1]  758 	or	a, (0x05, sp)
      008CA5 1A 01            [ 1]  759 	or	a, (0x01, sp)
      008CA7 C7 52 59         [ 1]  760 	ld	0x5259, a
                                    761 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2367: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
      008CAA C6 52 5C         [ 1]  762 	ld	a, 0x525c
                                    763 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2372: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      008CAD 0D 02            [ 1]  764 	tnz	(0x02, sp)
      008CAF 27 07            [ 1]  765 	jreq	00102$
                                    766 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2374: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      008CB1 AA 20            [ 1]  767 	or	a, #0x20
      008CB3 C7 52 5C         [ 1]  768 	ld	0x525c, a
      008CB6 20 05            [ 2]  769 	jra	00103$
      008CB8                        770 00102$:
                                    771 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2378: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
      008CB8 A4 DF            [ 1]  772 	and	a, #0xdf
      008CBA C7 52 5C         [ 1]  773 	ld	0x525c, a
      008CBD                        774 00103$:
                                    775 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2381: TIM1->CCER1 |= TIM1_CCER1_CC2E;
      008CBD C6 52 5C         [ 1]  776 	ld	a, 0x525c
      008CC0 AA 10            [ 1]  777 	or	a, #0x10
      008CC2 C7 52 5C         [ 1]  778 	ld	0x525c, a
                                    779 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2382: }
      008CC5 1E 03            [ 2]  780 	ldw	x, (3, sp)
      008CC7 5B 06            [ 2]  781 	addw	sp, #6
      008CC9 FC               [ 2]  782 	jp	(x)
                                    783 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2402: static void TI3_Config(uint8_t TIM1_ICPolarity,
                                    784 ;	-----------------------------------------
                                    785 ;	 function TI3_Config
                                    786 ;	-----------------------------------------
      008CCA                        787 _TI3_Config:
      008CCA 52 02            [ 2]  788 	sub	sp, #2
      008CCC 6B 02            [ 1]  789 	ld	(0x02, sp), a
                                    790 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2407: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
      008CCE C6 52 5D         [ 1]  791 	ld	a, 0x525d
      008CD1 A4 FE            [ 1]  792 	and	a, #0xfe
      008CD3 C7 52 5D         [ 1]  793 	ld	0x525d, a
                                    794 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2410: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)(TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) | (uint8_t)(((TIM1_ICSelection)) | ((uint8_t)(TIM1_ICFilter << 4))));
      008CD6 C6 52 5A         [ 1]  795 	ld	a, 0x525a
      008CD9 A4 0C            [ 1]  796 	and	a, #0x0c
      008CDB 6B 01            [ 1]  797 	ld	(0x01, sp), a
      008CDD 7B 06            [ 1]  798 	ld	a, (0x06, sp)
      008CDF 4E               [ 1]  799 	swap	a
      008CE0 A4 F0            [ 1]  800 	and	a, #0xf0
      008CE2 1A 05            [ 1]  801 	or	a, (0x05, sp)
      008CE4 1A 01            [ 1]  802 	or	a, (0x01, sp)
      008CE6 C7 52 5A         [ 1]  803 	ld	0x525a, a
                                    804 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2407: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
      008CE9 C6 52 5D         [ 1]  805 	ld	a, 0x525d
                                    806 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2413: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      008CEC 0D 02            [ 1]  807 	tnz	(0x02, sp)
      008CEE 27 07            [ 1]  808 	jreq	00102$
                                    809 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2415: TIM1->CCER2 |= TIM1_CCER2_CC3P;
      008CF0 AA 02            [ 1]  810 	or	a, #0x02
      008CF2 C7 52 5D         [ 1]  811 	ld	0x525d, a
      008CF5 20 05            [ 2]  812 	jra	00103$
      008CF7                        813 00102$:
                                    814 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2419: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
      008CF7 A4 FD            [ 1]  815 	and	a, #0xfd
      008CF9 C7 52 5D         [ 1]  816 	ld	0x525d, a
      008CFC                        817 00103$:
                                    818 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2422: TIM1->CCER2 |= TIM1_CCER2_CC3E;
      008CFC C6 52 5D         [ 1]  819 	ld	a, 0x525d
      008CFF AA 01            [ 1]  820 	or	a, #0x01
      008D01 C7 52 5D         [ 1]  821 	ld	0x525d, a
                                    822 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2423: }
      008D04 1E 03            [ 2]  823 	ldw	x, (3, sp)
      008D06 5B 06            [ 2]  824 	addw	sp, #6
      008D08 FC               [ 2]  825 	jp	(x)
                                    826 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2443: static void TI4_Config(uint8_t TIM1_ICPolarity,
                                    827 ;	-----------------------------------------
                                    828 ;	 function TI4_Config
                                    829 ;	-----------------------------------------
      008D09                        830 _TI4_Config:
      008D09 52 02            [ 2]  831 	sub	sp, #2
      008D0B 6B 02            [ 1]  832 	ld	(0x02, sp), a
                                    833 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2448: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
      008D0D 72 19 52 5D      [ 1]  834 	bres	0x525d, #4
                                    835 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2451: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)(TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) | (uint8_t)(((TIM1_ICSelection)) | ((uint8_t)(TIM1_ICFilter << 4))));
      008D11 C6 52 5B         [ 1]  836 	ld	a, 0x525b
      008D14 A4 0C            [ 1]  837 	and	a, #0x0c
      008D16 6B 01            [ 1]  838 	ld	(0x01, sp), a
      008D18 7B 06            [ 1]  839 	ld	a, (0x06, sp)
      008D1A 4E               [ 1]  840 	swap	a
      008D1B A4 F0            [ 1]  841 	and	a, #0xf0
      008D1D 1A 05            [ 1]  842 	or	a, (0x05, sp)
      008D1F 1A 01            [ 1]  843 	or	a, (0x01, sp)
      008D21 C7 52 5B         [ 1]  844 	ld	0x525b, a
                                    845 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2448: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
      008D24 C6 52 5D         [ 1]  846 	ld	a, 0x525d
                                    847 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2454: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      008D27 0D 02            [ 1]  848 	tnz	(0x02, sp)
      008D29 27 07            [ 1]  849 	jreq	00102$
                                    850 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2456: TIM1->CCER2 |= TIM1_CCER2_CC4P;
      008D2B AA 20            [ 1]  851 	or	a, #0x20
      008D2D C7 52 5D         [ 1]  852 	ld	0x525d, a
      008D30 20 05            [ 2]  853 	jra	00103$
      008D32                        854 00102$:
                                    855 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2460: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
      008D32 A4 DF            [ 1]  856 	and	a, #0xdf
      008D34 C7 52 5D         [ 1]  857 	ld	0x525d, a
      008D37                        858 00103$:
                                    859 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2464: TIM1->CCER2 |= TIM1_CCER2_CC4E;
      008D37 C6 52 5D         [ 1]  860 	ld	a, 0x525d
      008D3A AA 10            [ 1]  861 	or	a, #0x10
      008D3C C7 52 5D         [ 1]  862 	ld	0x525d, a
                                    863 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2465: }
      008D3F 1E 03            [ 2]  864 	ldw	x, (3, sp)
      008D41 5B 06            [ 2]  865 	addw	sp, #6
      008D43 FC               [ 2]  866 	jp	(x)
                                    867 	.area CODE
                                    868 	.area CONST
                                    869 	.area CONST
      008102                        870 ___str_0:
      008102 2F 77 6F 72 6B 73 70   871 	.ascii "/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Li"
             61 63 65 2F 53 6F 66
             74 77 61 72 65 2F 46
             69 72 6D 77 61 72 65
             2F 6E 65 77 5F 62 65
             67 69 6E 69 6E 67 2F
             53 54 4D 38 53 5F 53
             74 64 50 65 72 69 70
             68 5F 4C 69
      00813E 62 2F 73 72 63 2F 73   872 	.ascii "b/src/stm8s_tim1.c"
             74 6D 38 73 5F 74 69
             6D 31 2E 63
      008150 00                     873 	.db 0x00
                                    874 	.area CODE
                                    875 	.area INITIALIZER
                                    876 	.area CABS (ABS)
