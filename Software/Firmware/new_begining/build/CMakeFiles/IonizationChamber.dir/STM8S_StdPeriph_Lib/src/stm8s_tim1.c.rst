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
      0089B3                         66 _TIM1_DeInit:
                                     67 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 61: TIM1->CR1 = TIM1_CR1_RESET_VALUE;
      0089B3 35 00 52 50      [ 1]   68 	mov	0x5250+0, #0x00
                                     69 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 62: TIM1->CR2 = TIM1_CR2_RESET_VALUE;
      0089B7 35 00 52 51      [ 1]   70 	mov	0x5251+0, #0x00
                                     71 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 63: TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
      0089BB 35 00 52 52      [ 1]   72 	mov	0x5252+0, #0x00
                                     73 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 64: TIM1->ETR = TIM1_ETR_RESET_VALUE;
      0089BF 35 00 52 53      [ 1]   74 	mov	0x5253+0, #0x00
                                     75 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 65: TIM1->IER = TIM1_IER_RESET_VALUE;
      0089C3 35 00 52 54      [ 1]   76 	mov	0x5254+0, #0x00
                                     77 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 66: TIM1->SR2 = TIM1_SR2_RESET_VALUE;
      0089C7 35 00 52 56      [ 1]   78 	mov	0x5256+0, #0x00
                                     79 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 68: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
      0089CB 35 00 52 5C      [ 1]   80 	mov	0x525c+0, #0x00
                                     81 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 69: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
      0089CF 35 00 52 5D      [ 1]   82 	mov	0x525d+0, #0x00
                                     83 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 71: TIM1->CCMR1 = 0x01;
      0089D3 35 01 52 58      [ 1]   84 	mov	0x5258+0, #0x01
                                     85 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 72: TIM1->CCMR2 = 0x01;
      0089D7 35 01 52 59      [ 1]   86 	mov	0x5259+0, #0x01
                                     87 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 73: TIM1->CCMR3 = 0x01;
      0089DB 35 01 52 5A      [ 1]   88 	mov	0x525a+0, #0x01
                                     89 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 74: TIM1->CCMR4 = 0x01;
      0089DF 35 01 52 5B      [ 1]   90 	mov	0x525b+0, #0x01
                                     91 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 76: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
      0089E3 35 00 52 5C      [ 1]   92 	mov	0x525c+0, #0x00
                                     93 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 77: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
      0089E7 35 00 52 5D      [ 1]   94 	mov	0x525d+0, #0x00
                                     95 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 78: TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
      0089EB 35 00 52 58      [ 1]   96 	mov	0x5258+0, #0x00
                                     97 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 79: TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
      0089EF 35 00 52 59      [ 1]   98 	mov	0x5259+0, #0x00
                                     99 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 80: TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
      0089F3 35 00 52 5A      [ 1]  100 	mov	0x525a+0, #0x00
                                    101 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 81: TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
      0089F7 35 00 52 5B      [ 1]  102 	mov	0x525b+0, #0x00
                                    103 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 82: TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
      0089FB 35 00 52 5E      [ 1]  104 	mov	0x525e+0, #0x00
                                    105 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 83: TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
      0089FF 35 00 52 5F      [ 1]  106 	mov	0x525f+0, #0x00
                                    107 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 84: TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
      008A03 35 00 52 60      [ 1]  108 	mov	0x5260+0, #0x00
                                    109 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 85: TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
      008A07 35 00 52 61      [ 1]  110 	mov	0x5261+0, #0x00
                                    111 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 86: TIM1->ARRH = TIM1_ARRH_RESET_VALUE;
      008A0B 35 FF 52 62      [ 1]  112 	mov	0x5262+0, #0xff
                                    113 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 87: TIM1->ARRL = TIM1_ARRL_RESET_VALUE;
      008A0F 35 FF 52 63      [ 1]  114 	mov	0x5263+0, #0xff
                                    115 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 88: TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
      008A13 35 00 52 65      [ 1]  116 	mov	0x5265+0, #0x00
                                    117 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 89: TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
      008A17 35 00 52 66      [ 1]  118 	mov	0x5266+0, #0x00
                                    119 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 90: TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
      008A1B 35 00 52 67      [ 1]  120 	mov	0x5267+0, #0x00
                                    121 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 91: TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
      008A1F 35 00 52 68      [ 1]  122 	mov	0x5268+0, #0x00
                                    123 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 92: TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
      008A23 35 00 52 69      [ 1]  124 	mov	0x5269+0, #0x00
                                    125 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 93: TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
      008A27 35 00 52 6A      [ 1]  126 	mov	0x526a+0, #0x00
                                    127 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 94: TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
      008A2B 35 00 52 6B      [ 1]  128 	mov	0x526b+0, #0x00
                                    129 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 95: TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
      008A2F 35 00 52 6C      [ 1]  130 	mov	0x526c+0, #0x00
                                    131 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 96: TIM1->OISR = TIM1_OISR_RESET_VALUE;
      008A33 35 00 52 6F      [ 1]  132 	mov	0x526f+0, #0x00
                                    133 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 97: TIM1->EGR = 0x01; /* TIM1_EGR_UG */
      008A37 35 01 52 57      [ 1]  134 	mov	0x5257+0, #0x01
                                    135 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 98: TIM1->DTR = TIM1_DTR_RESET_VALUE;
      008A3B 35 00 52 6E      [ 1]  136 	mov	0x526e+0, #0x00
                                    137 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 99: TIM1->BKR = TIM1_BKR_RESET_VALUE;
      008A3F 35 00 52 6D      [ 1]  138 	mov	0x526d+0, #0x00
                                    139 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 100: TIM1->RCR = TIM1_RCR_RESET_VALUE;
      008A43 35 00 52 64      [ 1]  140 	mov	0x5264+0, #0x00
                                    141 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 101: TIM1->SR1 = TIM1_SR1_RESET_VALUE;
      008A47 35 00 52 55      [ 1]  142 	mov	0x5255+0, #0x00
                                    143 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 102: }
      008A4B 81               [ 4]  144 	ret
                                    145 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 114: void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
                                    146 ;	-----------------------------------------
                                    147 ;	 function TIM1_TimeBaseInit
                                    148 ;	-----------------------------------------
      008A4C                        149 _TIM1_TimeBaseInit:
      008A4C 88               [ 1]  150 	push	a
                                    151 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 120: assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
      008A4D 6B 01            [ 1]  152 	ld	(0x01, sp), a
      008A4F 27 28            [ 1]  153 	jreq	00104$
      008A51 7B 01            [ 1]  154 	ld	a, (0x01, sp)
      008A53 A1 10            [ 1]  155 	cp	a, #0x10
      008A55 27 22            [ 1]  156 	jreq	00104$
      008A57 7B 01            [ 1]  157 	ld	a, (0x01, sp)
      008A59 A1 20            [ 1]  158 	cp	a, #0x20
      008A5B 27 1C            [ 1]  159 	jreq	00104$
      008A5D 7B 01            [ 1]  160 	ld	a, (0x01, sp)
      008A5F A1 40            [ 1]  161 	cp	a, #0x40
      008A61 27 16            [ 1]  162 	jreq	00104$
      008A63 7B 01            [ 1]  163 	ld	a, (0x01, sp)
      008A65 A1 60            [ 1]  164 	cp	a, #0x60
      008A67 27 10            [ 1]  165 	jreq	00104$
      008A69 89               [ 2]  166 	pushw	x
      008A6A 4B 78            [ 1]  167 	push	#0x78
      008A6C 4B 00            [ 1]  168 	push	#0x00
      008A6E 4B 00            [ 1]  169 	push	#0x00
      008A70 4B 00            [ 1]  170 	push	#0x00
      008A72 AE 81 02         [ 2]  171 	ldw	x, #(___str_0+0)
      008A75 CD 82 6A         [ 4]  172 	call	_assert_failed
      008A78 85               [ 2]  173 	popw	x
      008A79                        174 00104$:
                                    175 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 123: TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
      008A79 7B 04            [ 1]  176 	ld	a, (0x04, sp)
      008A7B C7 52 62         [ 1]  177 	ld	0x5262, a
                                    178 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 124: TIM1->ARRL = (uint8_t)(TIM1_Period);
      008A7E 7B 05            [ 1]  179 	ld	a, (0x05, sp)
      008A80 C7 52 63         [ 1]  180 	ld	0x5263, a
                                    181 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 127: TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
      008A83 9E               [ 1]  182 	ld	a, xh
      008A84 C7 52 60         [ 1]  183 	ld	0x5260, a
                                    184 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 128: TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
      008A87 9F               [ 1]  185 	ld	a, xl
      008A88 C7 52 61         [ 1]  186 	ld	0x5261, a
                                    187 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 131: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR))) | (uint8_t)(TIM1_CounterMode));
      008A8B C6 52 50         [ 1]  188 	ld	a, 0x5250
      008A8E A4 8F            [ 1]  189 	and	a, #0x8f
      008A90 1A 01            [ 1]  190 	or	a, (0x01, sp)
      008A92 C7 52 50         [ 1]  191 	ld	0x5250, a
                                    192 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 134: TIM1->RCR = TIM1_RepetitionCounter;
      008A95 AE 52 64         [ 2]  193 	ldw	x, #0x5264
      008A98 7B 06            [ 1]  194 	ld	a, (0x06, sp)
      008A9A F7               [ 1]  195 	ld	(x), a
                                    196 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 135: }
      008A9B 1E 02            [ 2]  197 	ldw	x, (2, sp)
      008A9D 5B 06            [ 2]  198 	addw	sp, #6
      008A9F FC               [ 2]  199 	jp	(x)
                                    200 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 437: void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
                                    201 ;	-----------------------------------------
                                    202 ;	 function TIM1_ICInit
                                    203 ;	-----------------------------------------
      008AA0                        204 _TIM1_ICInit:
      008AA0 52 03            [ 2]  205 	sub	sp, #3
                                    206 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 444: assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
      008AA2 6B 03            [ 1]  207 	ld	(0x03, sp), a
      008AA4 4A               [ 1]  208 	dec	a
      008AA5 26 05            [ 1]  209 	jrne	00269$
      008AA7 A6 01            [ 1]  210 	ld	a, #0x01
      008AA9 6B 01            [ 1]  211 	ld	(0x01, sp), a
      008AAB C5                     212 	.byte 0xc5
      008AAC                        213 00269$:
      008AAC 0F 01            [ 1]  214 	clr	(0x01, sp)
      008AAE                        215 00270$:
      008AAE 7B 03            [ 1]  216 	ld	a, (0x03, sp)
      008AB0 A0 02            [ 1]  217 	sub	a, #0x02
      008AB2 26 04            [ 1]  218 	jrne	00272$
      008AB4 4C               [ 1]  219 	inc	a
      008AB5 6B 02            [ 1]  220 	ld	(0x02, sp), a
      008AB7 C5                     221 	.byte 0xc5
      008AB8                        222 00272$:
      008AB8 0F 02            [ 1]  223 	clr	(0x02, sp)
      008ABA                        224 00273$:
      008ABA 0D 03            [ 1]  225 	tnz	(0x03, sp)
      008ABC 27 1A            [ 1]  226 	jreq	00113$
      008ABE 0D 01            [ 1]  227 	tnz	(0x01, sp)
      008AC0 26 16            [ 1]  228 	jrne	00113$
      008AC2 0D 02            [ 1]  229 	tnz	(0x02, sp)
      008AC4 26 12            [ 1]  230 	jrne	00113$
      008AC6 7B 03            [ 1]  231 	ld	a, (0x03, sp)
      008AC8 A1 03            [ 1]  232 	cp	a, #0x03
      008ACA 27 0C            [ 1]  233 	jreq	00113$
      008ACC 4B BC            [ 1]  234 	push	#0xbc
      008ACE 4B 01            [ 1]  235 	push	#0x01
      008AD0 5F               [ 1]  236 	clrw	x
      008AD1 89               [ 2]  237 	pushw	x
      008AD2 AE 81 02         [ 2]  238 	ldw	x, #(___str_0+0)
      008AD5 CD 82 6A         [ 4]  239 	call	_assert_failed
      008AD8                        240 00113$:
                                    241 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 445: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
      008AD8 0D 06            [ 1]  242 	tnz	(0x06, sp)
      008ADA 27 10            [ 1]  243 	jreq	00124$
      008ADC 0D 06            [ 1]  244 	tnz	(0x06, sp)
      008ADE 26 0C            [ 1]  245 	jrne	00124$
      008AE0 4B BD            [ 1]  246 	push	#0xbd
      008AE2 4B 01            [ 1]  247 	push	#0x01
      008AE4 5F               [ 1]  248 	clrw	x
      008AE5 89               [ 2]  249 	pushw	x
      008AE6 AE 81 02         [ 2]  250 	ldw	x, #(___str_0+0)
      008AE9 CD 82 6A         [ 4]  251 	call	_assert_failed
      008AEC                        252 00124$:
                                    253 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 446: assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
      008AEC 7B 07            [ 1]  254 	ld	a, (0x07, sp)
      008AEE 4A               [ 1]  255 	dec	a
      008AEF 27 18            [ 1]  256 	jreq	00129$
      008AF1 7B 07            [ 1]  257 	ld	a, (0x07, sp)
      008AF3 A1 02            [ 1]  258 	cp	a, #0x02
      008AF5 27 12            [ 1]  259 	jreq	00129$
      008AF7 7B 07            [ 1]  260 	ld	a, (0x07, sp)
      008AF9 A1 03            [ 1]  261 	cp	a, #0x03
      008AFB 27 0C            [ 1]  262 	jreq	00129$
      008AFD 4B BE            [ 1]  263 	push	#0xbe
      008AFF 4B 01            [ 1]  264 	push	#0x01
      008B01 5F               [ 1]  265 	clrw	x
      008B02 89               [ 2]  266 	pushw	x
      008B03 AE 81 02         [ 2]  267 	ldw	x, #(___str_0+0)
      008B06 CD 82 6A         [ 4]  268 	call	_assert_failed
      008B09                        269 00129$:
                                    270 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 447: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
      008B09 0D 08            [ 1]  271 	tnz	(0x08, sp)
      008B0B 27 1E            [ 1]  272 	jreq	00137$
      008B0D 7B 08            [ 1]  273 	ld	a, (0x08, sp)
      008B0F A1 04            [ 1]  274 	cp	a, #0x04
      008B11 27 18            [ 1]  275 	jreq	00137$
      008B13 7B 08            [ 1]  276 	ld	a, (0x08, sp)
      008B15 A1 08            [ 1]  277 	cp	a, #0x08
      008B17 27 12            [ 1]  278 	jreq	00137$
      008B19 7B 08            [ 1]  279 	ld	a, (0x08, sp)
      008B1B A1 0C            [ 1]  280 	cp	a, #0x0c
      008B1D 27 0C            [ 1]  281 	jreq	00137$
      008B1F 4B BF            [ 1]  282 	push	#0xbf
      008B21 4B 01            [ 1]  283 	push	#0x01
      008B23 5F               [ 1]  284 	clrw	x
      008B24 89               [ 2]  285 	pushw	x
      008B25 AE 81 02         [ 2]  286 	ldw	x, #(___str_0+0)
      008B28 CD 82 6A         [ 4]  287 	call	_assert_failed
      008B2B                        288 00137$:
                                    289 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 448: assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
      008B2B 7B 09            [ 1]  290 	ld	a, (0x09, sp)
      008B2D A1 0F            [ 1]  291 	cp	a, #0x0f
      008B2F 23 0C            [ 2]  292 	jrule	00148$
      008B31 4B C0            [ 1]  293 	push	#0xc0
      008B33 4B 01            [ 1]  294 	push	#0x01
      008B35 5F               [ 1]  295 	clrw	x
      008B36 89               [ 2]  296 	pushw	x
      008B37 AE 81 02         [ 2]  297 	ldw	x, #(___str_0+0)
      008B3A CD 82 6A         [ 4]  298 	call	_assert_failed
      008B3D                        299 00148$:
                                    300 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 453: TI1_Config((uint8_t)TIM1_ICPolarity,
      008B3D 7B 06            [ 1]  301 	ld	a, (0x06, sp)
      008B3F 97               [ 1]  302 	ld	xl, a
                                    303 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 450: if (TIM1_Channel == TIM1_CHANNEL_1)
      008B40 0D 03            [ 1]  304 	tnz	(0x03, sp)
      008B42 26 15            [ 1]  305 	jrne	00108$
                                    306 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 453: TI1_Config((uint8_t)TIM1_ICPolarity,
      008B44 7B 09            [ 1]  307 	ld	a, (0x09, sp)
      008B46 88               [ 1]  308 	push	a
      008B47 7B 08            [ 1]  309 	ld	a, (0x08, sp)
      008B49 88               [ 1]  310 	push	a
      008B4A 9F               [ 1]  311 	ld	a, xl
      008B4B CD 8D 47         [ 4]  312 	call	_TI1_Config
                                    313 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 457: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
      008B4E 7B 08            [ 1]  314 	ld	a, (0x08, sp)
      008B50 1E 04            [ 2]  315 	ldw	x, (4, sp)
      008B52 1F 08            [ 2]  316 	ldw	(8, sp), x
      008B54 5B 07            [ 2]  317 	addw	sp, #7
      008B56 CC 8C 39         [ 2]  318 	jp	_TIM1_SetIC1Prescaler
      008B59                        319 00108$:
                                    320 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 459: else if (TIM1_Channel == TIM1_CHANNEL_2)
      008B59 7B 01            [ 1]  321 	ld	a, (0x01, sp)
      008B5B 27 15            [ 1]  322 	jreq	00105$
                                    323 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 462: TI2_Config((uint8_t)TIM1_ICPolarity,
      008B5D 7B 09            [ 1]  324 	ld	a, (0x09, sp)
      008B5F 88               [ 1]  325 	push	a
      008B60 7B 08            [ 1]  326 	ld	a, (0x08, sp)
      008B62 88               [ 1]  327 	push	a
      008B63 9F               [ 1]  328 	ld	a, xl
      008B64 CD 8D 82         [ 4]  329 	call	_TI2_Config
                                    330 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 466: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
      008B67 7B 08            [ 1]  331 	ld	a, (0x08, sp)
      008B69 1E 04            [ 2]  332 	ldw	x, (4, sp)
      008B6B 1F 08            [ 2]  333 	ldw	(8, sp), x
      008B6D 5B 07            [ 2]  334 	addw	sp, #7
      008B6F CC 8C 68         [ 2]  335 	jp	_TIM1_SetIC2Prescaler
      008B72                        336 00105$:
                                    337 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 468: else if (TIM1_Channel == TIM1_CHANNEL_3)
      008B72 7B 02            [ 1]  338 	ld	a, (0x02, sp)
      008B74 27 15            [ 1]  339 	jreq	00102$
                                    340 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 471: TI3_Config((uint8_t)TIM1_ICPolarity,
      008B76 7B 09            [ 1]  341 	ld	a, (0x09, sp)
      008B78 88               [ 1]  342 	push	a
      008B79 7B 08            [ 1]  343 	ld	a, (0x08, sp)
      008B7B 88               [ 1]  344 	push	a
      008B7C 9F               [ 1]  345 	ld	a, xl
      008B7D CD 8D BD         [ 4]  346 	call	_TI3_Config
                                    347 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 475: TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
      008B80 7B 08            [ 1]  348 	ld	a, (0x08, sp)
      008B82 1E 04            [ 2]  349 	ldw	x, (4, sp)
      008B84 1F 08            [ 2]  350 	ldw	(8, sp), x
      008B86 5B 07            [ 2]  351 	addw	sp, #7
      008B88 CC 8C 97         [ 2]  352 	jp	_TIM1_SetIC3Prescaler
      008B8B                        353 00102$:
                                    354 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 480: TI4_Config((uint8_t)TIM1_ICPolarity,
      008B8B 7B 09            [ 1]  355 	ld	a, (0x09, sp)
      008B8D 88               [ 1]  356 	push	a
      008B8E 7B 08            [ 1]  357 	ld	a, (0x08, sp)
      008B90 88               [ 1]  358 	push	a
      008B91 9F               [ 1]  359 	ld	a, xl
      008B92 CD 8D FC         [ 4]  360 	call	_TI4_Config
                                    361 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 484: TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
      008B95 7B 08            [ 1]  362 	ld	a, (0x08, sp)
      008B97 1E 04            [ 2]  363 	ldw	x, (4, sp)
      008B99 1F 08            [ 2]  364 	ldw	(8, sp), x
      008B9B 5B 07            [ 2]  365 	addw	sp, #7
                                    366 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 486: }
      008B9D CC 8C C6         [ 2]  367 	jp	_TIM1_SetIC4Prescaler
                                    368 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 579: void TIM1_Cmd(FunctionalState NewState)
                                    369 ;	-----------------------------------------
                                    370 ;	 function TIM1_Cmd
                                    371 ;	-----------------------------------------
      008BA0                        372 _TIM1_Cmd:
      008BA0 88               [ 1]  373 	push	a
                                    374 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 582: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008BA1 6B 01            [ 1]  375 	ld	(0x01, sp), a
      008BA3 27 10            [ 1]  376 	jreq	00107$
      008BA5 0D 01            [ 1]  377 	tnz	(0x01, sp)
      008BA7 26 0C            [ 1]  378 	jrne	00107$
      008BA9 4B 46            [ 1]  379 	push	#0x46
      008BAB 4B 02            [ 1]  380 	push	#0x02
      008BAD 5F               [ 1]  381 	clrw	x
      008BAE 89               [ 2]  382 	pushw	x
      008BAF AE 81 02         [ 2]  383 	ldw	x, #(___str_0+0)
      008BB2 CD 82 6A         [ 4]  384 	call	_assert_failed
      008BB5                        385 00107$:
                                    386 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 587: TIM1->CR1 |= TIM1_CR1_CEN;
      008BB5 C6 52 50         [ 1]  387 	ld	a, 0x5250
                                    388 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 585: if (NewState != DISABLE)
      008BB8 0D 01            [ 1]  389 	tnz	(0x01, sp)
      008BBA 27 07            [ 1]  390 	jreq	00102$
                                    391 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 587: TIM1->CR1 |= TIM1_CR1_CEN;
      008BBC AA 01            [ 1]  392 	or	a, #0x01
      008BBE C7 52 50         [ 1]  393 	ld	0x5250, a
      008BC1 20 05            [ 2]  394 	jra	00104$
      008BC3                        395 00102$:
                                    396 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 591: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
      008BC3 A4 FE            [ 1]  397 	and	a, #0xfe
      008BC5 C7 52 50         [ 1]  398 	ld	0x5250, a
      008BC8                        399 00104$:
                                    400 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 593: }
      008BC8 84               [ 1]  401 	pop	a
      008BC9 81               [ 4]  402 	ret
                                    403 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 639: void TIM1_ITConfig(TIM1_IT_TypeDef TIM1_IT, FunctionalState NewState)
                                    404 ;	-----------------------------------------
                                    405 ;	 function TIM1_ITConfig
                                    406 ;	-----------------------------------------
      008BCA                        407 _TIM1_ITConfig:
      008BCA 52 02            [ 2]  408 	sub	sp, #2
                                    409 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 642: assert_param(IS_TIM1_IT_OK(TIM1_IT));
      008BCC 6B 02            [ 1]  410 	ld	(0x02, sp), a
      008BCE 26 0C            [ 1]  411 	jrne	00107$
      008BD0 4B 82            [ 1]  412 	push	#0x82
      008BD2 4B 02            [ 1]  413 	push	#0x02
      008BD4 5F               [ 1]  414 	clrw	x
      008BD5 89               [ 2]  415 	pushw	x
      008BD6 AE 81 02         [ 2]  416 	ldw	x, #(___str_0+0)
      008BD9 CD 82 6A         [ 4]  417 	call	_assert_failed
      008BDC                        418 00107$:
                                    419 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 643: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008BDC 0D 05            [ 1]  420 	tnz	(0x05, sp)
      008BDE 27 10            [ 1]  421 	jreq	00109$
      008BE0 0D 05            [ 1]  422 	tnz	(0x05, sp)
      008BE2 26 0C            [ 1]  423 	jrne	00109$
      008BE4 4B 83            [ 1]  424 	push	#0x83
      008BE6 4B 02            [ 1]  425 	push	#0x02
      008BE8 5F               [ 1]  426 	clrw	x
      008BE9 89               [ 2]  427 	pushw	x
      008BEA AE 81 02         [ 2]  428 	ldw	x, #(___str_0+0)
      008BED CD 82 6A         [ 4]  429 	call	_assert_failed
      008BF0                        430 00109$:
                                    431 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 648: TIM1->IER |= (uint8_t)TIM1_IT;
      008BF0 C6 52 54         [ 1]  432 	ld	a, 0x5254
                                    433 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 645: if (NewState != DISABLE)
      008BF3 0D 05            [ 1]  434 	tnz	(0x05, sp)
      008BF5 27 07            [ 1]  435 	jreq	00102$
                                    436 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 648: TIM1->IER |= (uint8_t)TIM1_IT;
      008BF7 1A 02            [ 1]  437 	or	a, (0x02, sp)
      008BF9 C7 52 54         [ 1]  438 	ld	0x5254, a
      008BFC 20 0C            [ 2]  439 	jra	00104$
      008BFE                        440 00102$:
                                    441 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 653: TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
      008BFE 88               [ 1]  442 	push	a
      008BFF 7B 03            [ 1]  443 	ld	a, (0x03, sp)
      008C01 43               [ 1]  444 	cpl	a
      008C02 6B 02            [ 1]  445 	ld	(0x02, sp), a
      008C04 84               [ 1]  446 	pop	a
      008C05 14 01            [ 1]  447 	and	a, (0x01, sp)
      008C07 C7 52 54         [ 1]  448 	ld	0x5254, a
      008C0A                        449 00104$:
                                    450 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 655: }
      008C0A 5B 02            [ 2]  451 	addw	sp, #2
      008C0C 85               [ 2]  452 	popw	x
      008C0D 84               [ 1]  453 	pop	a
      008C0E FC               [ 2]  454 	jp	(x)
                                    455 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1202: void TIM1_ARRPreloadConfig(FunctionalState NewState)
                                    456 ;	-----------------------------------------
                                    457 ;	 function TIM1_ARRPreloadConfig
                                    458 ;	-----------------------------------------
      008C0F                        459 _TIM1_ARRPreloadConfig:
      008C0F 88               [ 1]  460 	push	a
                                    461 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1205: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008C10 6B 01            [ 1]  462 	ld	(0x01, sp), a
      008C12 27 10            [ 1]  463 	jreq	00107$
      008C14 0D 01            [ 1]  464 	tnz	(0x01, sp)
      008C16 26 0C            [ 1]  465 	jrne	00107$
      008C18 4B B5            [ 1]  466 	push	#0xb5
      008C1A 4B 04            [ 1]  467 	push	#0x04
      008C1C 5F               [ 1]  468 	clrw	x
      008C1D 89               [ 2]  469 	pushw	x
      008C1E AE 81 02         [ 2]  470 	ldw	x, #(___str_0+0)
      008C21 CD 82 6A         [ 4]  471 	call	_assert_failed
      008C24                        472 00107$:
                                    473 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1210: TIM1->CR1 |= TIM1_CR1_ARPE;
      008C24 C6 52 50         [ 1]  474 	ld	a, 0x5250
                                    475 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1208: if (NewState != DISABLE)
      008C27 0D 01            [ 1]  476 	tnz	(0x01, sp)
      008C29 27 07            [ 1]  477 	jreq	00102$
                                    478 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1210: TIM1->CR1 |= TIM1_CR1_ARPE;
      008C2B AA 80            [ 1]  479 	or	a, #0x80
      008C2D C7 52 50         [ 1]  480 	ld	0x5250, a
      008C30 20 05            [ 2]  481 	jra	00104$
      008C32                        482 00102$:
                                    483 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1214: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
      008C32 A4 7F            [ 1]  484 	and	a, #0x7f
      008C34 C7 52 50         [ 1]  485 	ld	0x5250, a
      008C37                        486 00104$:
                                    487 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1216: }
      008C37 84               [ 1]  488 	pop	a
      008C38 81               [ 4]  489 	ret
                                    490 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1963: void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
                                    491 ;	-----------------------------------------
                                    492 ;	 function TIM1_SetIC1Prescaler
                                    493 ;	-----------------------------------------
      008C39                        494 _TIM1_SetIC1Prescaler:
      008C39 88               [ 1]  495 	push	a
                                    496 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1966: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
      008C3A 6B 01            [ 1]  497 	ld	(0x01, sp), a
      008C3C 27 1E            [ 1]  498 	jreq	00104$
      008C3E 7B 01            [ 1]  499 	ld	a, (0x01, sp)
      008C40 A1 04            [ 1]  500 	cp	a, #0x04
      008C42 27 18            [ 1]  501 	jreq	00104$
      008C44 7B 01            [ 1]  502 	ld	a, (0x01, sp)
      008C46 A1 08            [ 1]  503 	cp	a, #0x08
      008C48 27 12            [ 1]  504 	jreq	00104$
      008C4A 7B 01            [ 1]  505 	ld	a, (0x01, sp)
      008C4C A1 0C            [ 1]  506 	cp	a, #0x0c
      008C4E 27 0C            [ 1]  507 	jreq	00104$
      008C50 4B AE            [ 1]  508 	push	#0xae
      008C52 4B 07            [ 1]  509 	push	#0x07
      008C54 5F               [ 1]  510 	clrw	x
      008C55 89               [ 2]  511 	pushw	x
      008C56 AE 81 02         [ 2]  512 	ldw	x, #(___str_0+0)
      008C59 CD 82 6A         [ 4]  513 	call	_assert_failed
      008C5C                        514 00104$:
                                    515 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1969: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | (uint8_t)TIM1_IC1Prescaler);
      008C5C C6 52 58         [ 1]  516 	ld	a, 0x5258
      008C5F A4 F3            [ 1]  517 	and	a, #0xf3
      008C61 1A 01            [ 1]  518 	or	a, (0x01, sp)
      008C63 C7 52 58         [ 1]  519 	ld	0x5258, a
                                    520 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1970: }
      008C66 84               [ 1]  521 	pop	a
      008C67 81               [ 4]  522 	ret
                                    523 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1984: void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
                                    524 ;	-----------------------------------------
                                    525 ;	 function TIM1_SetIC2Prescaler
                                    526 ;	-----------------------------------------
      008C68                        527 _TIM1_SetIC2Prescaler:
      008C68 88               [ 1]  528 	push	a
                                    529 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1988: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
      008C69 6B 01            [ 1]  530 	ld	(0x01, sp), a
      008C6B 27 1E            [ 1]  531 	jreq	00104$
      008C6D 7B 01            [ 1]  532 	ld	a, (0x01, sp)
      008C6F A1 04            [ 1]  533 	cp	a, #0x04
      008C71 27 18            [ 1]  534 	jreq	00104$
      008C73 7B 01            [ 1]  535 	ld	a, (0x01, sp)
      008C75 A1 08            [ 1]  536 	cp	a, #0x08
      008C77 27 12            [ 1]  537 	jreq	00104$
      008C79 7B 01            [ 1]  538 	ld	a, (0x01, sp)
      008C7B A1 0C            [ 1]  539 	cp	a, #0x0c
      008C7D 27 0C            [ 1]  540 	jreq	00104$
      008C7F 4B C4            [ 1]  541 	push	#0xc4
      008C81 4B 07            [ 1]  542 	push	#0x07
      008C83 5F               [ 1]  543 	clrw	x
      008C84 89               [ 2]  544 	pushw	x
      008C85 AE 81 02         [ 2]  545 	ldw	x, #(___str_0+0)
      008C88 CD 82 6A         [ 4]  546 	call	_assert_failed
      008C8B                        547 00104$:
                                    548 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1991: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | (uint8_t)TIM1_IC2Prescaler);
      008C8B C6 52 59         [ 1]  549 	ld	a, 0x5259
      008C8E A4 F3            [ 1]  550 	and	a, #0xf3
      008C90 1A 01            [ 1]  551 	or	a, (0x01, sp)
      008C92 C7 52 59         [ 1]  552 	ld	0x5259, a
                                    553 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1992: }
      008C95 84               [ 1]  554 	pop	a
      008C96 81               [ 4]  555 	ret
                                    556 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2006: void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
                                    557 ;	-----------------------------------------
                                    558 ;	 function TIM1_SetIC3Prescaler
                                    559 ;	-----------------------------------------
      008C97                        560 _TIM1_SetIC3Prescaler:
      008C97 88               [ 1]  561 	push	a
                                    562 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2010: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
      008C98 6B 01            [ 1]  563 	ld	(0x01, sp), a
      008C9A 27 1E            [ 1]  564 	jreq	00104$
      008C9C 7B 01            [ 1]  565 	ld	a, (0x01, sp)
      008C9E A1 04            [ 1]  566 	cp	a, #0x04
      008CA0 27 18            [ 1]  567 	jreq	00104$
      008CA2 7B 01            [ 1]  568 	ld	a, (0x01, sp)
      008CA4 A1 08            [ 1]  569 	cp	a, #0x08
      008CA6 27 12            [ 1]  570 	jreq	00104$
      008CA8 7B 01            [ 1]  571 	ld	a, (0x01, sp)
      008CAA A1 0C            [ 1]  572 	cp	a, #0x0c
      008CAC 27 0C            [ 1]  573 	jreq	00104$
      008CAE 4B DA            [ 1]  574 	push	#0xda
      008CB0 4B 07            [ 1]  575 	push	#0x07
      008CB2 5F               [ 1]  576 	clrw	x
      008CB3 89               [ 2]  577 	pushw	x
      008CB4 AE 81 02         [ 2]  578 	ldw	x, #(___str_0+0)
      008CB7 CD 82 6A         [ 4]  579 	call	_assert_failed
      008CBA                        580 00104$:
                                    581 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2013: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
      008CBA C6 52 5A         [ 1]  582 	ld	a, 0x525a
      008CBD A4 F3            [ 1]  583 	and	a, #0xf3
                                    584 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2014: (uint8_t)TIM1_IC3Prescaler);
      008CBF 1A 01            [ 1]  585 	or	a, (0x01, sp)
      008CC1 C7 52 5A         [ 1]  586 	ld	0x525a, a
                                    587 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2015: }
      008CC4 84               [ 1]  588 	pop	a
      008CC5 81               [ 4]  589 	ret
                                    590 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2029: void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
                                    591 ;	-----------------------------------------
                                    592 ;	 function TIM1_SetIC4Prescaler
                                    593 ;	-----------------------------------------
      008CC6                        594 _TIM1_SetIC4Prescaler:
      008CC6 88               [ 1]  595 	push	a
                                    596 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2033: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
      008CC7 6B 01            [ 1]  597 	ld	(0x01, sp), a
      008CC9 27 1E            [ 1]  598 	jreq	00104$
      008CCB 7B 01            [ 1]  599 	ld	a, (0x01, sp)
      008CCD A1 04            [ 1]  600 	cp	a, #0x04
      008CCF 27 18            [ 1]  601 	jreq	00104$
      008CD1 7B 01            [ 1]  602 	ld	a, (0x01, sp)
      008CD3 A1 08            [ 1]  603 	cp	a, #0x08
      008CD5 27 12            [ 1]  604 	jreq	00104$
      008CD7 7B 01            [ 1]  605 	ld	a, (0x01, sp)
      008CD9 A1 0C            [ 1]  606 	cp	a, #0x0c
      008CDB 27 0C            [ 1]  607 	jreq	00104$
      008CDD 4B F1            [ 1]  608 	push	#0xf1
      008CDF 4B 07            [ 1]  609 	push	#0x07
      008CE1 5F               [ 1]  610 	clrw	x
      008CE2 89               [ 2]  611 	pushw	x
      008CE3 AE 81 02         [ 2]  612 	ldw	x, #(___str_0+0)
      008CE6 CD 82 6A         [ 4]  613 	call	_assert_failed
      008CE9                        614 00104$:
                                    615 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2036: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
      008CE9 C6 52 5B         [ 1]  616 	ld	a, 0x525b
      008CEC A4 F3            [ 1]  617 	and	a, #0xf3
                                    618 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2037: (uint8_t)TIM1_IC4Prescaler);
      008CEE 1A 01            [ 1]  619 	or	a, (0x01, sp)
      008CF0 C7 52 5B         [ 1]  620 	ld	0x525b, a
                                    621 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2038: }
      008CF3 84               [ 1]  622 	pop	a
      008CF4 81               [ 4]  623 	ret
                                    624 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2047: uint16_t TIM1_GetCapture1(void)
                                    625 ;	-----------------------------------------
                                    626 ;	 function TIM1_GetCapture1
                                    627 ;	-----------------------------------------
      008CF5                        628 _TIM1_GetCapture1:
      008CF5 52 02            [ 2]  629 	sub	sp, #2
                                    630 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2054: tmpccr1h = TIM1->CCR1H;
      008CF7 C6 52 65         [ 1]  631 	ld	a, 0x5265
      008CFA 95               [ 1]  632 	ld	xh, a
                                    633 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2055: tmpccr1l = TIM1->CCR1L;
      008CFB C6 52 66         [ 1]  634 	ld	a, 0x5266
                                    635 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2057: tmpccr1 = (uint16_t)(tmpccr1l);
      008CFE 97               [ 1]  636 	ld	xl, a
                                    637 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2058: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
      008CFF 0F 02            [ 1]  638 	clr	(0x02, sp)
                                    639 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2060: return (uint16_t)tmpccr1;
                                    640 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2061: }
      008D01 5B 02            [ 2]  641 	addw	sp, #2
      008D03 81               [ 4]  642 	ret
                                    643 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2226: void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
                                    644 ;	-----------------------------------------
                                    645 ;	 function TIM1_ClearFlag
                                    646 ;	-----------------------------------------
      008D04                        647 _TIM1_ClearFlag:
      008D04 52 02            [ 2]  648 	sub	sp, #2
                                    649 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2229: assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
      008D06 1F 01            [ 2]  650 	ldw	(0x01, sp), x
      008D08 7B 01            [ 1]  651 	ld	a, (0x01, sp)
      008D0A A5 E1            [ 1]  652 	bcp	a, #0xe1
      008D0C 26 03            [ 1]  653 	jrne	00103$
      008D0E 5D               [ 2]  654 	tnzw	x
      008D0F 26 10            [ 1]  655 	jrne	00104$
      008D11                        656 00103$:
      008D11 89               [ 2]  657 	pushw	x
      008D12 4B B5            [ 1]  658 	push	#0xb5
      008D14 4B 08            [ 1]  659 	push	#0x08
      008D16 4B 00            [ 1]  660 	push	#0x00
      008D18 4B 00            [ 1]  661 	push	#0x00
      008D1A AE 81 02         [ 2]  662 	ldw	x, #(___str_0+0)
      008D1D CD 82 6A         [ 4]  663 	call	_assert_failed
      008D20 85               [ 2]  664 	popw	x
      008D21                        665 00104$:
                                    666 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2232: TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
      008D21 9F               [ 1]  667 	ld	a, xl
      008D22 43               [ 1]  668 	cpl	a
      008D23 C7 52 55         [ 1]  669 	ld	0x5255, a
                                    670 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2233: TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) &
      008D26 7B 01            [ 1]  671 	ld	a, (0x01, sp)
      008D28 43               [ 1]  672 	cpl	a
      008D29 A4 1E            [ 1]  673 	and	a, #0x1e
      008D2B C7 52 56         [ 1]  674 	ld	0x5256, a
                                    675 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2235: }
      008D2E 5B 02            [ 2]  676 	addw	sp, #2
      008D30 81               [ 4]  677 	ret
                                    678 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2292: void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
                                    679 ;	-----------------------------------------
                                    680 ;	 function TIM1_ClearITPendingBit
                                    681 ;	-----------------------------------------
      008D31                        682 _TIM1_ClearITPendingBit:
                                    683 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2295: assert_param(IS_TIM1_IT_OK(TIM1_IT));
      008D31 4D               [ 1]  684 	tnz	a
      008D32 26 0E            [ 1]  685 	jrne	00104$
      008D34 88               [ 1]  686 	push	a
      008D35 4B F7            [ 1]  687 	push	#0xf7
      008D37 4B 08            [ 1]  688 	push	#0x08
      008D39 5F               [ 1]  689 	clrw	x
      008D3A 89               [ 2]  690 	pushw	x
      008D3B AE 81 02         [ 2]  691 	ldw	x, #(___str_0+0)
      008D3E CD 82 6A         [ 4]  692 	call	_assert_failed
      008D41 84               [ 1]  693 	pop	a
      008D42                        694 00104$:
                                    695 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2298: TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
      008D42 43               [ 1]  696 	cpl	a
      008D43 C7 52 55         [ 1]  697 	ld	0x5255, a
                                    698 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2299: }
      008D46 81               [ 4]  699 	ret
                                    700 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2319: static void TI1_Config(uint8_t TIM1_ICPolarity,
                                    701 ;	-----------------------------------------
                                    702 ;	 function TI1_Config
                                    703 ;	-----------------------------------------
      008D47                        704 _TI1_Config:
      008D47 52 02            [ 2]  705 	sub	sp, #2
      008D49 6B 02            [ 1]  706 	ld	(0x02, sp), a
                                    707 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2324: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      008D4B 72 11 52 5C      [ 1]  708 	bres	0x525c, #0
                                    709 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2327: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)(TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) |
      008D4F C6 52 58         [ 1]  710 	ld	a, 0x5258
      008D52 A4 0C            [ 1]  711 	and	a, #0x0c
      008D54 6B 01            [ 1]  712 	ld	(0x01, sp), a
                                    713 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2328: (uint8_t)(((TIM1_ICSelection)) | ((uint8_t)(TIM1_ICFilter << 4))));
      008D56 7B 06            [ 1]  714 	ld	a, (0x06, sp)
      008D58 4E               [ 1]  715 	swap	a
      008D59 A4 F0            [ 1]  716 	and	a, #0xf0
      008D5B 1A 05            [ 1]  717 	or	a, (0x05, sp)
      008D5D 1A 01            [ 1]  718 	or	a, (0x01, sp)
      008D5F C7 52 58         [ 1]  719 	ld	0x5258, a
                                    720 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2324: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      008D62 C6 52 5C         [ 1]  721 	ld	a, 0x525c
                                    722 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2331: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      008D65 0D 02            [ 1]  723 	tnz	(0x02, sp)
      008D67 27 07            [ 1]  724 	jreq	00102$
                                    725 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2333: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      008D69 AA 02            [ 1]  726 	or	a, #0x02
      008D6B C7 52 5C         [ 1]  727 	ld	0x525c, a
      008D6E 20 05            [ 2]  728 	jra	00103$
      008D70                        729 00102$:
                                    730 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2337: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
      008D70 A4 FD            [ 1]  731 	and	a, #0xfd
      008D72 C7 52 5C         [ 1]  732 	ld	0x525c, a
      008D75                        733 00103$:
                                    734 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2341: TIM1->CCER1 |= TIM1_CCER1_CC1E;
      008D75 C6 52 5C         [ 1]  735 	ld	a, 0x525c
      008D78 AA 01            [ 1]  736 	or	a, #0x01
      008D7A C7 52 5C         [ 1]  737 	ld	0x525c, a
                                    738 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2342: }
      008D7D 1E 03            [ 2]  739 	ldw	x, (3, sp)
      008D7F 5B 06            [ 2]  740 	addw	sp, #6
      008D81 FC               [ 2]  741 	jp	(x)
                                    742 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2362: static void TI2_Config(uint8_t TIM1_ICPolarity,
                                    743 ;	-----------------------------------------
                                    744 ;	 function TI2_Config
                                    745 ;	-----------------------------------------
      008D82                        746 _TI2_Config:
      008D82 52 02            [ 2]  747 	sub	sp, #2
      008D84 6B 02            [ 1]  748 	ld	(0x02, sp), a
                                    749 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2367: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
      008D86 72 19 52 5C      [ 1]  750 	bres	0x525c, #4
                                    751 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2370: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)(TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) | (uint8_t)(((TIM1_ICSelection)) | ((uint8_t)(TIM1_ICFilter << 4))));
      008D8A C6 52 59         [ 1]  752 	ld	a, 0x5259
      008D8D A4 0C            [ 1]  753 	and	a, #0x0c
      008D8F 6B 01            [ 1]  754 	ld	(0x01, sp), a
      008D91 7B 06            [ 1]  755 	ld	a, (0x06, sp)
      008D93 4E               [ 1]  756 	swap	a
      008D94 A4 F0            [ 1]  757 	and	a, #0xf0
      008D96 1A 05            [ 1]  758 	or	a, (0x05, sp)
      008D98 1A 01            [ 1]  759 	or	a, (0x01, sp)
      008D9A C7 52 59         [ 1]  760 	ld	0x5259, a
                                    761 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2367: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
      008D9D C6 52 5C         [ 1]  762 	ld	a, 0x525c
                                    763 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2372: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      008DA0 0D 02            [ 1]  764 	tnz	(0x02, sp)
      008DA2 27 07            [ 1]  765 	jreq	00102$
                                    766 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2374: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      008DA4 AA 20            [ 1]  767 	or	a, #0x20
      008DA6 C7 52 5C         [ 1]  768 	ld	0x525c, a
      008DA9 20 05            [ 2]  769 	jra	00103$
      008DAB                        770 00102$:
                                    771 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2378: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
      008DAB A4 DF            [ 1]  772 	and	a, #0xdf
      008DAD C7 52 5C         [ 1]  773 	ld	0x525c, a
      008DB0                        774 00103$:
                                    775 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2381: TIM1->CCER1 |= TIM1_CCER1_CC2E;
      008DB0 C6 52 5C         [ 1]  776 	ld	a, 0x525c
      008DB3 AA 10            [ 1]  777 	or	a, #0x10
      008DB5 C7 52 5C         [ 1]  778 	ld	0x525c, a
                                    779 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2382: }
      008DB8 1E 03            [ 2]  780 	ldw	x, (3, sp)
      008DBA 5B 06            [ 2]  781 	addw	sp, #6
      008DBC FC               [ 2]  782 	jp	(x)
                                    783 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2402: static void TI3_Config(uint8_t TIM1_ICPolarity,
                                    784 ;	-----------------------------------------
                                    785 ;	 function TI3_Config
                                    786 ;	-----------------------------------------
      008DBD                        787 _TI3_Config:
      008DBD 52 02            [ 2]  788 	sub	sp, #2
      008DBF 6B 02            [ 1]  789 	ld	(0x02, sp), a
                                    790 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2407: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
      008DC1 C6 52 5D         [ 1]  791 	ld	a, 0x525d
      008DC4 A4 FE            [ 1]  792 	and	a, #0xfe
      008DC6 C7 52 5D         [ 1]  793 	ld	0x525d, a
                                    794 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2410: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)(TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) | (uint8_t)(((TIM1_ICSelection)) | ((uint8_t)(TIM1_ICFilter << 4))));
      008DC9 C6 52 5A         [ 1]  795 	ld	a, 0x525a
      008DCC A4 0C            [ 1]  796 	and	a, #0x0c
      008DCE 6B 01            [ 1]  797 	ld	(0x01, sp), a
      008DD0 7B 06            [ 1]  798 	ld	a, (0x06, sp)
      008DD2 4E               [ 1]  799 	swap	a
      008DD3 A4 F0            [ 1]  800 	and	a, #0xf0
      008DD5 1A 05            [ 1]  801 	or	a, (0x05, sp)
      008DD7 1A 01            [ 1]  802 	or	a, (0x01, sp)
      008DD9 C7 52 5A         [ 1]  803 	ld	0x525a, a
                                    804 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2407: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
      008DDC C6 52 5D         [ 1]  805 	ld	a, 0x525d
                                    806 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2413: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      008DDF 0D 02            [ 1]  807 	tnz	(0x02, sp)
      008DE1 27 07            [ 1]  808 	jreq	00102$
                                    809 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2415: TIM1->CCER2 |= TIM1_CCER2_CC3P;
      008DE3 AA 02            [ 1]  810 	or	a, #0x02
      008DE5 C7 52 5D         [ 1]  811 	ld	0x525d, a
      008DE8 20 05            [ 2]  812 	jra	00103$
      008DEA                        813 00102$:
                                    814 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2419: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
      008DEA A4 FD            [ 1]  815 	and	a, #0xfd
      008DEC C7 52 5D         [ 1]  816 	ld	0x525d, a
      008DEF                        817 00103$:
                                    818 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2422: TIM1->CCER2 |= TIM1_CCER2_CC3E;
      008DEF C6 52 5D         [ 1]  819 	ld	a, 0x525d
      008DF2 AA 01            [ 1]  820 	or	a, #0x01
      008DF4 C7 52 5D         [ 1]  821 	ld	0x525d, a
                                    822 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2423: }
      008DF7 1E 03            [ 2]  823 	ldw	x, (3, sp)
      008DF9 5B 06            [ 2]  824 	addw	sp, #6
      008DFB FC               [ 2]  825 	jp	(x)
                                    826 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2443: static void TI4_Config(uint8_t TIM1_ICPolarity,
                                    827 ;	-----------------------------------------
                                    828 ;	 function TI4_Config
                                    829 ;	-----------------------------------------
      008DFC                        830 _TI4_Config:
      008DFC 52 02            [ 2]  831 	sub	sp, #2
      008DFE 6B 02            [ 1]  832 	ld	(0x02, sp), a
                                    833 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2448: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
      008E00 72 19 52 5D      [ 1]  834 	bres	0x525d, #4
                                    835 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2451: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)(TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) | (uint8_t)(((TIM1_ICSelection)) | ((uint8_t)(TIM1_ICFilter << 4))));
      008E04 C6 52 5B         [ 1]  836 	ld	a, 0x525b
      008E07 A4 0C            [ 1]  837 	and	a, #0x0c
      008E09 6B 01            [ 1]  838 	ld	(0x01, sp), a
      008E0B 7B 06            [ 1]  839 	ld	a, (0x06, sp)
      008E0D 4E               [ 1]  840 	swap	a
      008E0E A4 F0            [ 1]  841 	and	a, #0xf0
      008E10 1A 05            [ 1]  842 	or	a, (0x05, sp)
      008E12 1A 01            [ 1]  843 	or	a, (0x01, sp)
      008E14 C7 52 5B         [ 1]  844 	ld	0x525b, a
                                    845 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2448: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
      008E17 C6 52 5D         [ 1]  846 	ld	a, 0x525d
                                    847 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2454: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      008E1A 0D 02            [ 1]  848 	tnz	(0x02, sp)
      008E1C 27 07            [ 1]  849 	jreq	00102$
                                    850 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2456: TIM1->CCER2 |= TIM1_CCER2_CC4P;
      008E1E AA 20            [ 1]  851 	or	a, #0x20
      008E20 C7 52 5D         [ 1]  852 	ld	0x525d, a
      008E23 20 05            [ 2]  853 	jra	00103$
      008E25                        854 00102$:
                                    855 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2460: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
      008E25 A4 DF            [ 1]  856 	and	a, #0xdf
      008E27 C7 52 5D         [ 1]  857 	ld	0x525d, a
      008E2A                        858 00103$:
                                    859 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2464: TIM1->CCER2 |= TIM1_CCER2_CC4E;
      008E2A C6 52 5D         [ 1]  860 	ld	a, 0x525d
      008E2D AA 10            [ 1]  861 	or	a, #0x10
      008E2F C7 52 5D         [ 1]  862 	ld	0x525d, a
                                    863 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2465: }
      008E32 1E 03            [ 2]  864 	ldw	x, (3, sp)
      008E34 5B 06            [ 2]  865 	addw	sp, #6
      008E36 FC               [ 2]  866 	jp	(x)
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
