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
                                     17 	.globl _TIM1_SetIC1Prescaler
                                     18 	.globl _TIM1_SetIC2Prescaler
                                     19 	.globl _TIM1_SetIC3Prescaler
                                     20 	.globl _TIM1_SetIC4Prescaler
                                     21 	.globl _TIM1_GetCapture1
                                     22 	.globl _TIM1_ClearFlag
                                     23 	.globl _TIM1_ClearITPendingBit
                                     24 ;--------------------------------------------------------
                                     25 ; ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area DATA
                                     28 ;--------------------------------------------------------
                                     29 ; ram data
                                     30 ;--------------------------------------------------------
                                     31 	.area INITIALIZED
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
                                     46 ; global & static initialisations
                                     47 ;--------------------------------------------------------
                                     48 	.area HOME
                                     49 	.area GSINIT
                                     50 	.area GSFINAL
                                     51 	.area GSINIT
                                     52 ;--------------------------------------------------------
                                     53 ; Home
                                     54 ;--------------------------------------------------------
                                     55 	.area HOME
                                     56 	.area HOME
                                     57 ;--------------------------------------------------------
                                     58 ; code
                                     59 ;--------------------------------------------------------
                                     60 	.area CODE
                                     61 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 59: void TIM1_DeInit(void)
                                     62 ;	-----------------------------------------
                                     63 ;	 function TIM1_DeInit
                                     64 ;	-----------------------------------------
      008883                         65 _TIM1_DeInit:
                                     66 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 61: TIM1->CR1  = TIM1_CR1_RESET_VALUE;
      008883 35 00 52 50      [ 1]   67 	mov	0x5250+0, #0x00
                                     68 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 62: TIM1->CR2  = TIM1_CR2_RESET_VALUE;
      008887 35 00 52 51      [ 1]   69 	mov	0x5251+0, #0x00
                                     70 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 63: TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
      00888B 35 00 52 52      [ 1]   71 	mov	0x5252+0, #0x00
                                     72 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 64: TIM1->ETR  = TIM1_ETR_RESET_VALUE;
      00888F 35 00 52 53      [ 1]   73 	mov	0x5253+0, #0x00
                                     74 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 65: TIM1->IER  = TIM1_IER_RESET_VALUE;
      008893 35 00 52 54      [ 1]   75 	mov	0x5254+0, #0x00
                                     76 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 66: TIM1->SR2  = TIM1_SR2_RESET_VALUE;
      008897 35 00 52 56      [ 1]   77 	mov	0x5256+0, #0x00
                                     78 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 68: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
      00889B 35 00 52 5C      [ 1]   79 	mov	0x525c+0, #0x00
                                     80 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 69: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
      00889F 35 00 52 5D      [ 1]   81 	mov	0x525d+0, #0x00
                                     82 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 71: TIM1->CCMR1 = 0x01;
      0088A3 35 01 52 58      [ 1]   83 	mov	0x5258+0, #0x01
                                     84 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 72: TIM1->CCMR2 = 0x01;
      0088A7 35 01 52 59      [ 1]   85 	mov	0x5259+0, #0x01
                                     86 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 73: TIM1->CCMR3 = 0x01;
      0088AB 35 01 52 5A      [ 1]   87 	mov	0x525a+0, #0x01
                                     88 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 74: TIM1->CCMR4 = 0x01;
      0088AF 35 01 52 5B      [ 1]   89 	mov	0x525b+0, #0x01
                                     90 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 76: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
      0088B3 35 00 52 5C      [ 1]   91 	mov	0x525c+0, #0x00
                                     92 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 77: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
      0088B7 35 00 52 5D      [ 1]   93 	mov	0x525d+0, #0x00
                                     94 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 78: TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
      0088BB 35 00 52 58      [ 1]   95 	mov	0x5258+0, #0x00
                                     96 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 79: TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
      0088BF 35 00 52 59      [ 1]   97 	mov	0x5259+0, #0x00
                                     98 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 80: TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
      0088C3 35 00 52 5A      [ 1]   99 	mov	0x525a+0, #0x00
                                    100 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 81: TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
      0088C7 35 00 52 5B      [ 1]  101 	mov	0x525b+0, #0x00
                                    102 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 82: TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
      0088CB 35 00 52 5E      [ 1]  103 	mov	0x525e+0, #0x00
                                    104 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 83: TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
      0088CF 35 00 52 5F      [ 1]  105 	mov	0x525f+0, #0x00
                                    106 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 84: TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
      0088D3 35 00 52 60      [ 1]  107 	mov	0x5260+0, #0x00
                                    108 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 85: TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
      0088D7 35 00 52 61      [ 1]  109 	mov	0x5261+0, #0x00
                                    110 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 86: TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
      0088DB 35 FF 52 62      [ 1]  111 	mov	0x5262+0, #0xff
                                    112 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 87: TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
      0088DF 35 FF 52 63      [ 1]  113 	mov	0x5263+0, #0xff
                                    114 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 88: TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
      0088E3 35 00 52 65      [ 1]  115 	mov	0x5265+0, #0x00
                                    116 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 89: TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
      0088E7 35 00 52 66      [ 1]  117 	mov	0x5266+0, #0x00
                                    118 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 90: TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
      0088EB 35 00 52 67      [ 1]  119 	mov	0x5267+0, #0x00
                                    120 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 91: TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
      0088EF 35 00 52 68      [ 1]  121 	mov	0x5268+0, #0x00
                                    122 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 92: TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
      0088F3 35 00 52 69      [ 1]  123 	mov	0x5269+0, #0x00
                                    124 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 93: TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
      0088F7 35 00 52 6A      [ 1]  125 	mov	0x526a+0, #0x00
                                    126 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 94: TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
      0088FB 35 00 52 6B      [ 1]  127 	mov	0x526b+0, #0x00
                                    128 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 95: TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
      0088FF 35 00 52 6C      [ 1]  129 	mov	0x526c+0, #0x00
                                    130 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 96: TIM1->OISR  = TIM1_OISR_RESET_VALUE;
      008903 35 00 52 6F      [ 1]  131 	mov	0x526f+0, #0x00
                                    132 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 97: TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
      008907 35 01 52 57      [ 1]  133 	mov	0x5257+0, #0x01
                                    134 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 98: TIM1->DTR   = TIM1_DTR_RESET_VALUE;
      00890B 35 00 52 6E      [ 1]  135 	mov	0x526e+0, #0x00
                                    136 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 99: TIM1->BKR   = TIM1_BKR_RESET_VALUE;
      00890F 35 00 52 6D      [ 1]  137 	mov	0x526d+0, #0x00
                                    138 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 100: TIM1->RCR   = TIM1_RCR_RESET_VALUE;
      008913 35 00 52 64      [ 1]  139 	mov	0x5264+0, #0x00
                                    140 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 101: TIM1->SR1   = TIM1_SR1_RESET_VALUE;
      008917 35 00 52 55      [ 1]  141 	mov	0x5255+0, #0x00
                                    142 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 102: }
      00891B 81               [ 4]  143 	ret
                                    144 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 114: void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
                                    145 ;	-----------------------------------------
                                    146 ;	 function TIM1_TimeBaseInit
                                    147 ;	-----------------------------------------
      00891C                        148 _TIM1_TimeBaseInit:
      00891C 88               [ 1]  149 	push	a
                                    150 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 120: assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
      00891D 6B 01            [ 1]  151 	ld	(0x01, sp), a
      00891F 27 28            [ 1]  152 	jreq	00104$
      008921 7B 01            [ 1]  153 	ld	a, (0x01, sp)
      008923 A1 10            [ 1]  154 	cp	a, #0x10
      008925 27 22            [ 1]  155 	jreq	00104$
      008927 7B 01            [ 1]  156 	ld	a, (0x01, sp)
      008929 A1 20            [ 1]  157 	cp	a, #0x20
      00892B 27 1C            [ 1]  158 	jreq	00104$
      00892D 7B 01            [ 1]  159 	ld	a, (0x01, sp)
      00892F A1 40            [ 1]  160 	cp	a, #0x40
      008931 27 16            [ 1]  161 	jreq	00104$
      008933 7B 01            [ 1]  162 	ld	a, (0x01, sp)
      008935 A1 60            [ 1]  163 	cp	a, #0x60
      008937 27 10            [ 1]  164 	jreq	00104$
      008939 89               [ 2]  165 	pushw	x
      00893A 4B 78            [ 1]  166 	push	#0x78
      00893C 4B 00            [ 1]  167 	push	#0x00
      00893E 4B 00            [ 1]  168 	push	#0x00
      008940 4B 00            [ 1]  169 	push	#0x00
      008942 AE 80 CA         [ 2]  170 	ldw	x, #(___str_0+0)
      008945 CD 81 CD         [ 4]  171 	call	_assert_failed
      008948 85               [ 2]  172 	popw	x
      008949                        173 00104$:
                                    174 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 123: TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
      008949 7B 04            [ 1]  175 	ld	a, (0x04, sp)
      00894B C7 52 62         [ 1]  176 	ld	0x5262, a
                                    177 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 124: TIM1->ARRL = (uint8_t)(TIM1_Period);
      00894E 7B 05            [ 1]  178 	ld	a, (0x05, sp)
      008950 C7 52 63         [ 1]  179 	ld	0x5263, a
                                    180 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 127: TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
      008953 9E               [ 1]  181 	ld	a, xh
      008954 C7 52 60         [ 1]  182 	ld	0x5260, a
                                    183 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 128: TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
      008957 9F               [ 1]  184 	ld	a, xl
      008958 C7 52 61         [ 1]  185 	ld	0x5261, a
                                    186 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 131: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
      00895B C6 52 50         [ 1]  187 	ld	a, 0x5250
      00895E A4 8F            [ 1]  188 	and	a, #0x8f
                                    189 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 132: | (uint8_t)(TIM1_CounterMode));
      008960 1A 01            [ 1]  190 	or	a, (0x01, sp)
      008962 C7 52 50         [ 1]  191 	ld	0x5250, a
                                    192 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 135: TIM1->RCR = TIM1_RepetitionCounter;
      008965 AE 52 64         [ 2]  193 	ldw	x, #0x5264
      008968 7B 06            [ 1]  194 	ld	a, (0x06, sp)
      00896A F7               [ 1]  195 	ld	(x), a
                                    196 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 136: }
      00896B 1E 02            [ 2]  197 	ldw	x, (2, sp)
      00896D 5B 06            [ 2]  198 	addw	sp, #6
      00896F FC               [ 2]  199 	jp	(x)
                                    200 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 438: void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
                                    201 ;	-----------------------------------------
                                    202 ;	 function TIM1_ICInit
                                    203 ;	-----------------------------------------
      008970                        204 _TIM1_ICInit:
      008970 52 03            [ 2]  205 	sub	sp, #3
                                    206 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 445: assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
      008972 6B 03            [ 1]  207 	ld	(0x03, sp), a
      008974 4A               [ 1]  208 	dec	a
      008975 26 05            [ 1]  209 	jrne	00269$
      008977 A6 01            [ 1]  210 	ld	a, #0x01
      008979 6B 01            [ 1]  211 	ld	(0x01, sp), a
      00897B C5                     212 	.byte 0xc5
      00897C                        213 00269$:
      00897C 0F 01            [ 1]  214 	clr	(0x01, sp)
      00897E                        215 00270$:
      00897E 7B 03            [ 1]  216 	ld	a, (0x03, sp)
      008980 A0 02            [ 1]  217 	sub	a, #0x02
      008982 26 04            [ 1]  218 	jrne	00272$
      008984 4C               [ 1]  219 	inc	a
      008985 6B 02            [ 1]  220 	ld	(0x02, sp), a
      008987 C5                     221 	.byte 0xc5
      008988                        222 00272$:
      008988 0F 02            [ 1]  223 	clr	(0x02, sp)
      00898A                        224 00273$:
      00898A 0D 03            [ 1]  225 	tnz	(0x03, sp)
      00898C 27 1A            [ 1]  226 	jreq	00113$
      00898E 0D 01            [ 1]  227 	tnz	(0x01, sp)
      008990 26 16            [ 1]  228 	jrne	00113$
      008992 0D 02            [ 1]  229 	tnz	(0x02, sp)
      008994 26 12            [ 1]  230 	jrne	00113$
      008996 7B 03            [ 1]  231 	ld	a, (0x03, sp)
      008998 A1 03            [ 1]  232 	cp	a, #0x03
      00899A 27 0C            [ 1]  233 	jreq	00113$
      00899C 4B BD            [ 1]  234 	push	#0xbd
      00899E 4B 01            [ 1]  235 	push	#0x01
      0089A0 5F               [ 1]  236 	clrw	x
      0089A1 89               [ 2]  237 	pushw	x
      0089A2 AE 80 CA         [ 2]  238 	ldw	x, #(___str_0+0)
      0089A5 CD 81 CD         [ 4]  239 	call	_assert_failed
      0089A8                        240 00113$:
                                    241 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 446: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
      0089A8 0D 06            [ 1]  242 	tnz	(0x06, sp)
      0089AA 27 10            [ 1]  243 	jreq	00124$
      0089AC 0D 06            [ 1]  244 	tnz	(0x06, sp)
      0089AE 26 0C            [ 1]  245 	jrne	00124$
      0089B0 4B BE            [ 1]  246 	push	#0xbe
      0089B2 4B 01            [ 1]  247 	push	#0x01
      0089B4 5F               [ 1]  248 	clrw	x
      0089B5 89               [ 2]  249 	pushw	x
      0089B6 AE 80 CA         [ 2]  250 	ldw	x, #(___str_0+0)
      0089B9 CD 81 CD         [ 4]  251 	call	_assert_failed
      0089BC                        252 00124$:
                                    253 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 447: assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
      0089BC 7B 07            [ 1]  254 	ld	a, (0x07, sp)
      0089BE 4A               [ 1]  255 	dec	a
      0089BF 27 18            [ 1]  256 	jreq	00129$
      0089C1 7B 07            [ 1]  257 	ld	a, (0x07, sp)
      0089C3 A1 02            [ 1]  258 	cp	a, #0x02
      0089C5 27 12            [ 1]  259 	jreq	00129$
      0089C7 7B 07            [ 1]  260 	ld	a, (0x07, sp)
      0089C9 A1 03            [ 1]  261 	cp	a, #0x03
      0089CB 27 0C            [ 1]  262 	jreq	00129$
      0089CD 4B BF            [ 1]  263 	push	#0xbf
      0089CF 4B 01            [ 1]  264 	push	#0x01
      0089D1 5F               [ 1]  265 	clrw	x
      0089D2 89               [ 2]  266 	pushw	x
      0089D3 AE 80 CA         [ 2]  267 	ldw	x, #(___str_0+0)
      0089D6 CD 81 CD         [ 4]  268 	call	_assert_failed
      0089D9                        269 00129$:
                                    270 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 448: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
      0089D9 0D 08            [ 1]  271 	tnz	(0x08, sp)
      0089DB 27 1E            [ 1]  272 	jreq	00137$
      0089DD 7B 08            [ 1]  273 	ld	a, (0x08, sp)
      0089DF A1 04            [ 1]  274 	cp	a, #0x04
      0089E1 27 18            [ 1]  275 	jreq	00137$
      0089E3 7B 08            [ 1]  276 	ld	a, (0x08, sp)
      0089E5 A1 08            [ 1]  277 	cp	a, #0x08
      0089E7 27 12            [ 1]  278 	jreq	00137$
      0089E9 7B 08            [ 1]  279 	ld	a, (0x08, sp)
      0089EB A1 0C            [ 1]  280 	cp	a, #0x0c
      0089ED 27 0C            [ 1]  281 	jreq	00137$
      0089EF 4B C0            [ 1]  282 	push	#0xc0
      0089F1 4B 01            [ 1]  283 	push	#0x01
      0089F3 5F               [ 1]  284 	clrw	x
      0089F4 89               [ 2]  285 	pushw	x
      0089F5 AE 80 CA         [ 2]  286 	ldw	x, #(___str_0+0)
      0089F8 CD 81 CD         [ 4]  287 	call	_assert_failed
      0089FB                        288 00137$:
                                    289 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 449: assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
      0089FB 7B 09            [ 1]  290 	ld	a, (0x09, sp)
      0089FD A1 0F            [ 1]  291 	cp	a, #0x0f
      0089FF 23 0C            [ 2]  292 	jrule	00148$
      008A01 4B C1            [ 1]  293 	push	#0xc1
      008A03 4B 01            [ 1]  294 	push	#0x01
      008A05 5F               [ 1]  295 	clrw	x
      008A06 89               [ 2]  296 	pushw	x
      008A07 AE 80 CA         [ 2]  297 	ldw	x, #(___str_0+0)
      008A0A CD 81 CD         [ 4]  298 	call	_assert_failed
      008A0D                        299 00148$:
                                    300 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 454: TI1_Config((uint8_t)TIM1_ICPolarity,
      008A0D 7B 06            [ 1]  301 	ld	a, (0x06, sp)
      008A0F 97               [ 1]  302 	ld	xl, a
                                    303 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 451: if (TIM1_Channel == TIM1_CHANNEL_1)
      008A10 0D 03            [ 1]  304 	tnz	(0x03, sp)
      008A12 26 15            [ 1]  305 	jrne	00108$
                                    306 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 454: TI1_Config((uint8_t)TIM1_ICPolarity,
      008A14 7B 09            [ 1]  307 	ld	a, (0x09, sp)
      008A16 88               [ 1]  308 	push	a
      008A17 7B 08            [ 1]  309 	ld	a, (0x08, sp)
      008A19 88               [ 1]  310 	push	a
      008A1A 9F               [ 1]  311 	ld	a, xl
      008A1B CD 8B ED         [ 4]  312 	call	_TI1_Config
                                    313 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 458: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
      008A1E 7B 08            [ 1]  314 	ld	a, (0x08, sp)
      008A20 1E 04            [ 2]  315 	ldw	x, (4, sp)
      008A22 1F 08            [ 2]  316 	ldw	(8, sp), x
      008A24 5B 07            [ 2]  317 	addw	sp, #7
      008A26 CC 8A DF         [ 2]  318 	jp	_TIM1_SetIC1Prescaler
      008A29                        319 00108$:
                                    320 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 460: else if (TIM1_Channel == TIM1_CHANNEL_2)
      008A29 7B 01            [ 1]  321 	ld	a, (0x01, sp)
      008A2B 27 15            [ 1]  322 	jreq	00105$
                                    323 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 463: TI2_Config((uint8_t)TIM1_ICPolarity,
      008A2D 7B 09            [ 1]  324 	ld	a, (0x09, sp)
      008A2F 88               [ 1]  325 	push	a
      008A30 7B 08            [ 1]  326 	ld	a, (0x08, sp)
      008A32 88               [ 1]  327 	push	a
      008A33 9F               [ 1]  328 	ld	a, xl
      008A34 CD 8C 28         [ 4]  329 	call	_TI2_Config
                                    330 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 467: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
      008A37 7B 08            [ 1]  331 	ld	a, (0x08, sp)
      008A39 1E 04            [ 2]  332 	ldw	x, (4, sp)
      008A3B 1F 08            [ 2]  333 	ldw	(8, sp), x
      008A3D 5B 07            [ 2]  334 	addw	sp, #7
      008A3F CC 8B 0E         [ 2]  335 	jp	_TIM1_SetIC2Prescaler
      008A42                        336 00105$:
                                    337 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 469: else if (TIM1_Channel == TIM1_CHANNEL_3)
      008A42 7B 02            [ 1]  338 	ld	a, (0x02, sp)
      008A44 27 15            [ 1]  339 	jreq	00102$
                                    340 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 472: TI3_Config((uint8_t)TIM1_ICPolarity,
      008A46 7B 09            [ 1]  341 	ld	a, (0x09, sp)
      008A48 88               [ 1]  342 	push	a
      008A49 7B 08            [ 1]  343 	ld	a, (0x08, sp)
      008A4B 88               [ 1]  344 	push	a
      008A4C 9F               [ 1]  345 	ld	a, xl
      008A4D CD 8C 63         [ 4]  346 	call	_TI3_Config
                                    347 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 476: TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
      008A50 7B 08            [ 1]  348 	ld	a, (0x08, sp)
      008A52 1E 04            [ 2]  349 	ldw	x, (4, sp)
      008A54 1F 08            [ 2]  350 	ldw	(8, sp), x
      008A56 5B 07            [ 2]  351 	addw	sp, #7
      008A58 CC 8B 3D         [ 2]  352 	jp	_TIM1_SetIC3Prescaler
      008A5B                        353 00102$:
                                    354 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 481: TI4_Config((uint8_t)TIM1_ICPolarity,
      008A5B 7B 09            [ 1]  355 	ld	a, (0x09, sp)
      008A5D 88               [ 1]  356 	push	a
      008A5E 7B 08            [ 1]  357 	ld	a, (0x08, sp)
      008A60 88               [ 1]  358 	push	a
      008A61 9F               [ 1]  359 	ld	a, xl
      008A62 CD 8C A2         [ 4]  360 	call	_TI4_Config
                                    361 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 485: TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
      008A65 7B 08            [ 1]  362 	ld	a, (0x08, sp)
      008A67 1E 04            [ 2]  363 	ldw	x, (4, sp)
      008A69 1F 08            [ 2]  364 	ldw	(8, sp), x
      008A6B 5B 07            [ 2]  365 	addw	sp, #7
                                    366 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 487: }
      008A6D CC 8B 6C         [ 2]  367 	jp	_TIM1_SetIC4Prescaler
                                    368 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 580: void TIM1_Cmd(FunctionalState NewState)
                                    369 ;	-----------------------------------------
                                    370 ;	 function TIM1_Cmd
                                    371 ;	-----------------------------------------
      008A70                        372 _TIM1_Cmd:
      008A70 88               [ 1]  373 	push	a
                                    374 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 583: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008A71 6B 01            [ 1]  375 	ld	(0x01, sp), a
      008A73 27 10            [ 1]  376 	jreq	00107$
      008A75 0D 01            [ 1]  377 	tnz	(0x01, sp)
      008A77 26 0C            [ 1]  378 	jrne	00107$
      008A79 4B 47            [ 1]  379 	push	#0x47
      008A7B 4B 02            [ 1]  380 	push	#0x02
      008A7D 5F               [ 1]  381 	clrw	x
      008A7E 89               [ 2]  382 	pushw	x
      008A7F AE 80 CA         [ 2]  383 	ldw	x, #(___str_0+0)
      008A82 CD 81 CD         [ 4]  384 	call	_assert_failed
      008A85                        385 00107$:
                                    386 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 588: TIM1->CR1 |= TIM1_CR1_CEN;
      008A85 C6 52 50         [ 1]  387 	ld	a, 0x5250
                                    388 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 586: if (NewState != DISABLE)
      008A88 0D 01            [ 1]  389 	tnz	(0x01, sp)
      008A8A 27 07            [ 1]  390 	jreq	00102$
                                    391 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 588: TIM1->CR1 |= TIM1_CR1_CEN;
      008A8C AA 01            [ 1]  392 	or	a, #0x01
      008A8E C7 52 50         [ 1]  393 	ld	0x5250, a
      008A91 20 05            [ 2]  394 	jra	00104$
      008A93                        395 00102$:
                                    396 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 592: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
      008A93 A4 FE            [ 1]  397 	and	a, #0xfe
      008A95 C7 52 50         [ 1]  398 	ld	0x5250, a
      008A98                        399 00104$:
                                    400 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 594: }
      008A98 84               [ 1]  401 	pop	a
      008A99 81               [ 4]  402 	ret
                                    403 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 640: void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
                                    404 ;	-----------------------------------------
                                    405 ;	 function TIM1_ITConfig
                                    406 ;	-----------------------------------------
      008A9A                        407 _TIM1_ITConfig:
      008A9A 52 02            [ 2]  408 	sub	sp, #2
                                    409 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 643: assert_param(IS_TIM1_IT_OK(TIM1_IT));
      008A9C 6B 02            [ 1]  410 	ld	(0x02, sp), a
      008A9E 26 0C            [ 1]  411 	jrne	00107$
      008AA0 4B 83            [ 1]  412 	push	#0x83
      008AA2 4B 02            [ 1]  413 	push	#0x02
      008AA4 5F               [ 1]  414 	clrw	x
      008AA5 89               [ 2]  415 	pushw	x
      008AA6 AE 80 CA         [ 2]  416 	ldw	x, #(___str_0+0)
      008AA9 CD 81 CD         [ 4]  417 	call	_assert_failed
      008AAC                        418 00107$:
                                    419 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 644: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008AAC 0D 05            [ 1]  420 	tnz	(0x05, sp)
      008AAE 27 10            [ 1]  421 	jreq	00109$
      008AB0 0D 05            [ 1]  422 	tnz	(0x05, sp)
      008AB2 26 0C            [ 1]  423 	jrne	00109$
      008AB4 4B 84            [ 1]  424 	push	#0x84
      008AB6 4B 02            [ 1]  425 	push	#0x02
      008AB8 5F               [ 1]  426 	clrw	x
      008AB9 89               [ 2]  427 	pushw	x
      008ABA AE 80 CA         [ 2]  428 	ldw	x, #(___str_0+0)
      008ABD CD 81 CD         [ 4]  429 	call	_assert_failed
      008AC0                        430 00109$:
                                    431 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 649: TIM1->IER |= (uint8_t)TIM1_IT;
      008AC0 C6 52 54         [ 1]  432 	ld	a, 0x5254
                                    433 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 646: if (NewState != DISABLE)
      008AC3 0D 05            [ 1]  434 	tnz	(0x05, sp)
      008AC5 27 07            [ 1]  435 	jreq	00102$
                                    436 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 649: TIM1->IER |= (uint8_t)TIM1_IT;
      008AC7 1A 02            [ 1]  437 	or	a, (0x02, sp)
      008AC9 C7 52 54         [ 1]  438 	ld	0x5254, a
      008ACC 20 0C            [ 2]  439 	jra	00104$
      008ACE                        440 00102$:
                                    441 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 654: TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
      008ACE 88               [ 1]  442 	push	a
      008ACF 7B 03            [ 1]  443 	ld	a, (0x03, sp)
      008AD1 43               [ 1]  444 	cpl	a
      008AD2 6B 02            [ 1]  445 	ld	(0x02, sp), a
      008AD4 84               [ 1]  446 	pop	a
      008AD5 14 01            [ 1]  447 	and	a, (0x01, sp)
      008AD7 C7 52 54         [ 1]  448 	ld	0x5254, a
      008ADA                        449 00104$:
                                    450 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 656: }
      008ADA 5B 02            [ 2]  451 	addw	sp, #2
      008ADC 85               [ 2]  452 	popw	x
      008ADD 84               [ 1]  453 	pop	a
      008ADE FC               [ 2]  454 	jp	(x)
                                    455 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1965: void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
                                    456 ;	-----------------------------------------
                                    457 ;	 function TIM1_SetIC1Prescaler
                                    458 ;	-----------------------------------------
      008ADF                        459 _TIM1_SetIC1Prescaler:
      008ADF 88               [ 1]  460 	push	a
                                    461 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1968: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
      008AE0 6B 01            [ 1]  462 	ld	(0x01, sp), a
      008AE2 27 1E            [ 1]  463 	jreq	00104$
      008AE4 7B 01            [ 1]  464 	ld	a, (0x01, sp)
      008AE6 A1 04            [ 1]  465 	cp	a, #0x04
      008AE8 27 18            [ 1]  466 	jreq	00104$
      008AEA 7B 01            [ 1]  467 	ld	a, (0x01, sp)
      008AEC A1 08            [ 1]  468 	cp	a, #0x08
      008AEE 27 12            [ 1]  469 	jreq	00104$
      008AF0 7B 01            [ 1]  470 	ld	a, (0x01, sp)
      008AF2 A1 0C            [ 1]  471 	cp	a, #0x0c
      008AF4 27 0C            [ 1]  472 	jreq	00104$
      008AF6 4B B0            [ 1]  473 	push	#0xb0
      008AF8 4B 07            [ 1]  474 	push	#0x07
      008AFA 5F               [ 1]  475 	clrw	x
      008AFB 89               [ 2]  476 	pushw	x
      008AFC AE 80 CA         [ 2]  477 	ldw	x, #(___str_0+0)
      008AFF CD 81 CD         [ 4]  478 	call	_assert_failed
      008B02                        479 00104$:
                                    480 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1971: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
      008B02 C6 52 58         [ 1]  481 	ld	a, 0x5258
      008B05 A4 F3            [ 1]  482 	and	a, #0xf3
                                    483 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1972: | (uint8_t)TIM1_IC1Prescaler);
      008B07 1A 01            [ 1]  484 	or	a, (0x01, sp)
      008B09 C7 52 58         [ 1]  485 	ld	0x5258, a
                                    486 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1973: }
      008B0C 84               [ 1]  487 	pop	a
      008B0D 81               [ 4]  488 	ret
                                    489 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1987: void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
                                    490 ;	-----------------------------------------
                                    491 ;	 function TIM1_SetIC2Prescaler
                                    492 ;	-----------------------------------------
      008B0E                        493 _TIM1_SetIC2Prescaler:
      008B0E 88               [ 1]  494 	push	a
                                    495 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1991: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
      008B0F 6B 01            [ 1]  496 	ld	(0x01, sp), a
      008B11 27 1E            [ 1]  497 	jreq	00104$
      008B13 7B 01            [ 1]  498 	ld	a, (0x01, sp)
      008B15 A1 04            [ 1]  499 	cp	a, #0x04
      008B17 27 18            [ 1]  500 	jreq	00104$
      008B19 7B 01            [ 1]  501 	ld	a, (0x01, sp)
      008B1B A1 08            [ 1]  502 	cp	a, #0x08
      008B1D 27 12            [ 1]  503 	jreq	00104$
      008B1F 7B 01            [ 1]  504 	ld	a, (0x01, sp)
      008B21 A1 0C            [ 1]  505 	cp	a, #0x0c
      008B23 27 0C            [ 1]  506 	jreq	00104$
      008B25 4B C7            [ 1]  507 	push	#0xc7
      008B27 4B 07            [ 1]  508 	push	#0x07
      008B29 5F               [ 1]  509 	clrw	x
      008B2A 89               [ 2]  510 	pushw	x
      008B2B AE 80 CA         [ 2]  511 	ldw	x, #(___str_0+0)
      008B2E CD 81 CD         [ 4]  512 	call	_assert_failed
      008B31                        513 00104$:
                                    514 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1994: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
      008B31 C6 52 59         [ 1]  515 	ld	a, 0x5259
      008B34 A4 F3            [ 1]  516 	and	a, #0xf3
                                    517 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1995: | (uint8_t)TIM1_IC2Prescaler);
      008B36 1A 01            [ 1]  518 	or	a, (0x01, sp)
      008B38 C7 52 59         [ 1]  519 	ld	0x5259, a
                                    520 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1996: }
      008B3B 84               [ 1]  521 	pop	a
      008B3C 81               [ 4]  522 	ret
                                    523 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2010: void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
                                    524 ;	-----------------------------------------
                                    525 ;	 function TIM1_SetIC3Prescaler
                                    526 ;	-----------------------------------------
      008B3D                        527 _TIM1_SetIC3Prescaler:
      008B3D 88               [ 1]  528 	push	a
                                    529 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2014: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
      008B3E 6B 01            [ 1]  530 	ld	(0x01, sp), a
      008B40 27 1E            [ 1]  531 	jreq	00104$
      008B42 7B 01            [ 1]  532 	ld	a, (0x01, sp)
      008B44 A1 04            [ 1]  533 	cp	a, #0x04
      008B46 27 18            [ 1]  534 	jreq	00104$
      008B48 7B 01            [ 1]  535 	ld	a, (0x01, sp)
      008B4A A1 08            [ 1]  536 	cp	a, #0x08
      008B4C 27 12            [ 1]  537 	jreq	00104$
      008B4E 7B 01            [ 1]  538 	ld	a, (0x01, sp)
      008B50 A1 0C            [ 1]  539 	cp	a, #0x0c
      008B52 27 0C            [ 1]  540 	jreq	00104$
      008B54 4B DE            [ 1]  541 	push	#0xde
      008B56 4B 07            [ 1]  542 	push	#0x07
      008B58 5F               [ 1]  543 	clrw	x
      008B59 89               [ 2]  544 	pushw	x
      008B5A AE 80 CA         [ 2]  545 	ldw	x, #(___str_0+0)
      008B5D CD 81 CD         [ 4]  546 	call	_assert_failed
      008B60                        547 00104$:
                                    548 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2017: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
      008B60 C6 52 5A         [ 1]  549 	ld	a, 0x525a
      008B63 A4 F3            [ 1]  550 	and	a, #0xf3
                                    551 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2018: (uint8_t)TIM1_IC3Prescaler);
      008B65 1A 01            [ 1]  552 	or	a, (0x01, sp)
      008B67 C7 52 5A         [ 1]  553 	ld	0x525a, a
                                    554 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2019: }
      008B6A 84               [ 1]  555 	pop	a
      008B6B 81               [ 4]  556 	ret
                                    557 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2033: void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
                                    558 ;	-----------------------------------------
                                    559 ;	 function TIM1_SetIC4Prescaler
                                    560 ;	-----------------------------------------
      008B6C                        561 _TIM1_SetIC4Prescaler:
      008B6C 88               [ 1]  562 	push	a
                                    563 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2037: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
      008B6D 6B 01            [ 1]  564 	ld	(0x01, sp), a
      008B6F 27 1E            [ 1]  565 	jreq	00104$
      008B71 7B 01            [ 1]  566 	ld	a, (0x01, sp)
      008B73 A1 04            [ 1]  567 	cp	a, #0x04
      008B75 27 18            [ 1]  568 	jreq	00104$
      008B77 7B 01            [ 1]  569 	ld	a, (0x01, sp)
      008B79 A1 08            [ 1]  570 	cp	a, #0x08
      008B7B 27 12            [ 1]  571 	jreq	00104$
      008B7D 7B 01            [ 1]  572 	ld	a, (0x01, sp)
      008B7F A1 0C            [ 1]  573 	cp	a, #0x0c
      008B81 27 0C            [ 1]  574 	jreq	00104$
      008B83 4B F5            [ 1]  575 	push	#0xf5
      008B85 4B 07            [ 1]  576 	push	#0x07
      008B87 5F               [ 1]  577 	clrw	x
      008B88 89               [ 2]  578 	pushw	x
      008B89 AE 80 CA         [ 2]  579 	ldw	x, #(___str_0+0)
      008B8C CD 81 CD         [ 4]  580 	call	_assert_failed
      008B8F                        581 00104$:
                                    582 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2040: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
      008B8F C6 52 5B         [ 1]  583 	ld	a, 0x525b
      008B92 A4 F3            [ 1]  584 	and	a, #0xf3
                                    585 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2041: (uint8_t)TIM1_IC4Prescaler);
      008B94 1A 01            [ 1]  586 	or	a, (0x01, sp)
      008B96 C7 52 5B         [ 1]  587 	ld	0x525b, a
                                    588 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2042: }
      008B99 84               [ 1]  589 	pop	a
      008B9A 81               [ 4]  590 	ret
                                    591 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2051: uint16_t TIM1_GetCapture1(void)
                                    592 ;	-----------------------------------------
                                    593 ;	 function TIM1_GetCapture1
                                    594 ;	-----------------------------------------
      008B9B                        595 _TIM1_GetCapture1:
      008B9B 52 02            [ 2]  596 	sub	sp, #2
                                    597 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2058: tmpccr1h = TIM1->CCR1H;
      008B9D C6 52 65         [ 1]  598 	ld	a, 0x5265
      008BA0 95               [ 1]  599 	ld	xh, a
                                    600 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2059: tmpccr1l = TIM1->CCR1L;
      008BA1 C6 52 66         [ 1]  601 	ld	a, 0x5266
                                    602 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2061: tmpccr1 = (uint16_t)(tmpccr1l);
      008BA4 97               [ 1]  603 	ld	xl, a
                                    604 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2062: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
      008BA5 0F 02            [ 1]  605 	clr	(0x02, sp)
                                    606 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2064: return (uint16_t)tmpccr1;
                                    607 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2065: }
      008BA7 5B 02            [ 2]  608 	addw	sp, #2
      008BA9 81               [ 4]  609 	ret
                                    610 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2230: void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
                                    611 ;	-----------------------------------------
                                    612 ;	 function TIM1_ClearFlag
                                    613 ;	-----------------------------------------
      008BAA                        614 _TIM1_ClearFlag:
      008BAA 52 02            [ 2]  615 	sub	sp, #2
                                    616 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2233: assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
      008BAC 1F 01            [ 2]  617 	ldw	(0x01, sp), x
      008BAE 7B 01            [ 1]  618 	ld	a, (0x01, sp)
      008BB0 A5 E1            [ 1]  619 	bcp	a, #0xe1
      008BB2 26 03            [ 1]  620 	jrne	00103$
      008BB4 5D               [ 2]  621 	tnzw	x
      008BB5 26 10            [ 1]  622 	jrne	00104$
      008BB7                        623 00103$:
      008BB7 89               [ 2]  624 	pushw	x
      008BB8 4B B9            [ 1]  625 	push	#0xb9
      008BBA 4B 08            [ 1]  626 	push	#0x08
      008BBC 4B 00            [ 1]  627 	push	#0x00
      008BBE 4B 00            [ 1]  628 	push	#0x00
      008BC0 AE 80 CA         [ 2]  629 	ldw	x, #(___str_0+0)
      008BC3 CD 81 CD         [ 4]  630 	call	_assert_failed
      008BC6 85               [ 2]  631 	popw	x
      008BC7                        632 00104$:
                                    633 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2236: TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
      008BC7 9F               [ 1]  634 	ld	a, xl
      008BC8 43               [ 1]  635 	cpl	a
      008BC9 C7 52 55         [ 1]  636 	ld	0x5255, a
                                    637 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2237: TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
      008BCC 7B 01            [ 1]  638 	ld	a, (0x01, sp)
      008BCE 43               [ 1]  639 	cpl	a
      008BCF A4 1E            [ 1]  640 	and	a, #0x1e
      008BD1 C7 52 56         [ 1]  641 	ld	0x5256, a
                                    642 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2239: }
      008BD4 5B 02            [ 2]  643 	addw	sp, #2
      008BD6 81               [ 4]  644 	ret
                                    645 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2296: void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
                                    646 ;	-----------------------------------------
                                    647 ;	 function TIM1_ClearITPendingBit
                                    648 ;	-----------------------------------------
      008BD7                        649 _TIM1_ClearITPendingBit:
                                    650 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2299: assert_param(IS_TIM1_IT_OK(TIM1_IT));
      008BD7 4D               [ 1]  651 	tnz	a
      008BD8 26 0E            [ 1]  652 	jrne	00104$
      008BDA 88               [ 1]  653 	push	a
      008BDB 4B FB            [ 1]  654 	push	#0xfb
      008BDD 4B 08            [ 1]  655 	push	#0x08
      008BDF 5F               [ 1]  656 	clrw	x
      008BE0 89               [ 2]  657 	pushw	x
      008BE1 AE 80 CA         [ 2]  658 	ldw	x, #(___str_0+0)
      008BE4 CD 81 CD         [ 4]  659 	call	_assert_failed
      008BE7 84               [ 1]  660 	pop	a
      008BE8                        661 00104$:
                                    662 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2302: TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
      008BE8 43               [ 1]  663 	cpl	a
      008BE9 C7 52 55         [ 1]  664 	ld	0x5255, a
                                    665 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2303: }
      008BEC 81               [ 4]  666 	ret
                                    667 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2323: static void TI1_Config(uint8_t TIM1_ICPolarity,
                                    668 ;	-----------------------------------------
                                    669 ;	 function TI1_Config
                                    670 ;	-----------------------------------------
      008BED                        671 _TI1_Config:
      008BED 52 02            [ 2]  672 	sub	sp, #2
      008BEF 6B 02            [ 1]  673 	ld	(0x02, sp), a
                                    674 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2328: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      008BF1 72 11 52 5C      [ 1]  675 	bres	0x525c, #0
                                    676 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2331: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
      008BF5 C6 52 58         [ 1]  677 	ld	a, 0x5258
      008BF8 A4 0C            [ 1]  678 	and	a, #0x0c
      008BFA 6B 01            [ 1]  679 	ld	(0x01, sp), a
                                    680 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2332: (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      008BFC 7B 06            [ 1]  681 	ld	a, (0x06, sp)
      008BFE 4E               [ 1]  682 	swap	a
      008BFF A4 F0            [ 1]  683 	and	a, #0xf0
      008C01 1A 05            [ 1]  684 	or	a, (0x05, sp)
      008C03 1A 01            [ 1]  685 	or	a, (0x01, sp)
      008C05 C7 52 58         [ 1]  686 	ld	0x5258, a
                                    687 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2328: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      008C08 C6 52 5C         [ 1]  688 	ld	a, 0x525c
                                    689 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2335: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      008C0B 0D 02            [ 1]  690 	tnz	(0x02, sp)
      008C0D 27 07            [ 1]  691 	jreq	00102$
                                    692 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2337: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      008C0F AA 02            [ 1]  693 	or	a, #0x02
      008C11 C7 52 5C         [ 1]  694 	ld	0x525c, a
      008C14 20 05            [ 2]  695 	jra	00103$
      008C16                        696 00102$:
                                    697 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2341: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
      008C16 A4 FD            [ 1]  698 	and	a, #0xfd
      008C18 C7 52 5C         [ 1]  699 	ld	0x525c, a
      008C1B                        700 00103$:
                                    701 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2345: TIM1->CCER1 |=  TIM1_CCER1_CC1E;
      008C1B C6 52 5C         [ 1]  702 	ld	a, 0x525c
      008C1E AA 01            [ 1]  703 	or	a, #0x01
      008C20 C7 52 5C         [ 1]  704 	ld	0x525c, a
                                    705 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2346: }
      008C23 1E 03            [ 2]  706 	ldw	x, (3, sp)
      008C25 5B 06            [ 2]  707 	addw	sp, #6
      008C27 FC               [ 2]  708 	jp	(x)
                                    709 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2366: static void TI2_Config(uint8_t TIM1_ICPolarity,
                                    710 ;	-----------------------------------------
                                    711 ;	 function TI2_Config
                                    712 ;	-----------------------------------------
      008C28                        713 _TI2_Config:
      008C28 52 02            [ 2]  714 	sub	sp, #2
      008C2A 6B 02            [ 1]  715 	ld	(0x02, sp), a
                                    716 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2371: TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
      008C2C 72 19 52 5C      [ 1]  717 	bres	0x525c, #4
                                    718 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2374: TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
      008C30 C6 52 59         [ 1]  719 	ld	a, 0x5259
      008C33 A4 0C            [ 1]  720 	and	a, #0x0c
      008C35 6B 01            [ 1]  721 	ld	(0x01, sp), a
                                    722 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2375: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      008C37 7B 06            [ 1]  723 	ld	a, (0x06, sp)
      008C39 4E               [ 1]  724 	swap	a
      008C3A A4 F0            [ 1]  725 	and	a, #0xf0
      008C3C 1A 05            [ 1]  726 	or	a, (0x05, sp)
      008C3E 1A 01            [ 1]  727 	or	a, (0x01, sp)
      008C40 C7 52 59         [ 1]  728 	ld	0x5259, a
                                    729 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2371: TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
      008C43 C6 52 5C         [ 1]  730 	ld	a, 0x525c
                                    731 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2377: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      008C46 0D 02            [ 1]  732 	tnz	(0x02, sp)
      008C48 27 07            [ 1]  733 	jreq	00102$
                                    734 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2379: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      008C4A AA 20            [ 1]  735 	or	a, #0x20
      008C4C C7 52 5C         [ 1]  736 	ld	0x525c, a
      008C4F 20 05            [ 2]  737 	jra	00103$
      008C51                        738 00102$:
                                    739 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2383: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
      008C51 A4 DF            [ 1]  740 	and	a, #0xdf
      008C53 C7 52 5C         [ 1]  741 	ld	0x525c, a
      008C56                        742 00103$:
                                    743 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2386: TIM1->CCER1 |=  TIM1_CCER1_CC2E;
      008C56 C6 52 5C         [ 1]  744 	ld	a, 0x525c
      008C59 AA 10            [ 1]  745 	or	a, #0x10
      008C5B C7 52 5C         [ 1]  746 	ld	0x525c, a
                                    747 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2387: }
      008C5E 1E 03            [ 2]  748 	ldw	x, (3, sp)
      008C60 5B 06            [ 2]  749 	addw	sp, #6
      008C62 FC               [ 2]  750 	jp	(x)
                                    751 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2407: static void TI3_Config(uint8_t TIM1_ICPolarity,
                                    752 ;	-----------------------------------------
                                    753 ;	 function TI3_Config
                                    754 ;	-----------------------------------------
      008C63                        755 _TI3_Config:
      008C63 52 02            [ 2]  756 	sub	sp, #2
      008C65 6B 02            [ 1]  757 	ld	(0x02, sp), a
                                    758 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2412: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
      008C67 C6 52 5D         [ 1]  759 	ld	a, 0x525d
      008C6A A4 FE            [ 1]  760 	and	a, #0xfe
      008C6C C7 52 5D         [ 1]  761 	ld	0x525d, a
                                    762 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2415: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
      008C6F C6 52 5A         [ 1]  763 	ld	a, 0x525a
      008C72 A4 0C            [ 1]  764 	and	a, #0x0c
      008C74 6B 01            [ 1]  765 	ld	(0x01, sp), a
                                    766 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2416: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      008C76 7B 06            [ 1]  767 	ld	a, (0x06, sp)
      008C78 4E               [ 1]  768 	swap	a
      008C79 A4 F0            [ 1]  769 	and	a, #0xf0
      008C7B 1A 05            [ 1]  770 	or	a, (0x05, sp)
      008C7D 1A 01            [ 1]  771 	or	a, (0x01, sp)
      008C7F C7 52 5A         [ 1]  772 	ld	0x525a, a
                                    773 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2412: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
      008C82 C6 52 5D         [ 1]  774 	ld	a, 0x525d
                                    775 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2419: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      008C85 0D 02            [ 1]  776 	tnz	(0x02, sp)
      008C87 27 07            [ 1]  777 	jreq	00102$
                                    778 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2421: TIM1->CCER2 |= TIM1_CCER2_CC3P;
      008C89 AA 02            [ 1]  779 	or	a, #0x02
      008C8B C7 52 5D         [ 1]  780 	ld	0x525d, a
      008C8E 20 05            [ 2]  781 	jra	00103$
      008C90                        782 00102$:
                                    783 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2425: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
      008C90 A4 FD            [ 1]  784 	and	a, #0xfd
      008C92 C7 52 5D         [ 1]  785 	ld	0x525d, a
      008C95                        786 00103$:
                                    787 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2428: TIM1->CCER2 |=  TIM1_CCER2_CC3E;
      008C95 C6 52 5D         [ 1]  788 	ld	a, 0x525d
      008C98 AA 01            [ 1]  789 	or	a, #0x01
      008C9A C7 52 5D         [ 1]  790 	ld	0x525d, a
                                    791 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2429: }
      008C9D 1E 03            [ 2]  792 	ldw	x, (3, sp)
      008C9F 5B 06            [ 2]  793 	addw	sp, #6
      008CA1 FC               [ 2]  794 	jp	(x)
                                    795 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2449: static void TI4_Config(uint8_t TIM1_ICPolarity,
                                    796 ;	-----------------------------------------
                                    797 ;	 function TI4_Config
                                    798 ;	-----------------------------------------
      008CA2                        799 _TI4_Config:
      008CA2 52 02            [ 2]  800 	sub	sp, #2
      008CA4 6B 02            [ 1]  801 	ld	(0x02, sp), a
                                    802 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2454: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
      008CA6 72 19 52 5D      [ 1]  803 	bres	0x525d, #4
                                    804 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2457: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
      008CAA C6 52 5B         [ 1]  805 	ld	a, 0x525b
      008CAD A4 0C            [ 1]  806 	and	a, #0x0c
      008CAF 6B 01            [ 1]  807 	ld	(0x01, sp), a
                                    808 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2458: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      008CB1 7B 06            [ 1]  809 	ld	a, (0x06, sp)
      008CB3 4E               [ 1]  810 	swap	a
      008CB4 A4 F0            [ 1]  811 	and	a, #0xf0
      008CB6 1A 05            [ 1]  812 	or	a, (0x05, sp)
      008CB8 1A 01            [ 1]  813 	or	a, (0x01, sp)
      008CBA C7 52 5B         [ 1]  814 	ld	0x525b, a
                                    815 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2454: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
      008CBD C6 52 5D         [ 1]  816 	ld	a, 0x525d
                                    817 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2461: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      008CC0 0D 02            [ 1]  818 	tnz	(0x02, sp)
      008CC2 27 07            [ 1]  819 	jreq	00102$
                                    820 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2463: TIM1->CCER2 |= TIM1_CCER2_CC4P;
      008CC4 AA 20            [ 1]  821 	or	a, #0x20
      008CC6 C7 52 5D         [ 1]  822 	ld	0x525d, a
      008CC9 20 05            [ 2]  823 	jra	00103$
      008CCB                        824 00102$:
                                    825 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2467: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
      008CCB A4 DF            [ 1]  826 	and	a, #0xdf
      008CCD C7 52 5D         [ 1]  827 	ld	0x525d, a
      008CD0                        828 00103$:
                                    829 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2471: TIM1->CCER2 |=  TIM1_CCER2_CC4E;
      008CD0 C6 52 5D         [ 1]  830 	ld	a, 0x525d
      008CD3 AA 10            [ 1]  831 	or	a, #0x10
      008CD5 C7 52 5D         [ 1]  832 	ld	0x525d, a
                                    833 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2472: }
      008CD8 1E 03            [ 2]  834 	ldw	x, (3, sp)
      008CDA 5B 06            [ 2]  835 	addw	sp, #6
      008CDC FC               [ 2]  836 	jp	(x)
                                    837 	.area CODE
                                    838 	.area CONST
                                    839 	.area CONST
      0080CA                        840 ___str_0:
      0080CA 2F 77 6F 72 6B 73 70   841 	.ascii "/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Li"
             61 63 65 2F 53 6F 66
             74 77 61 72 65 2F 46
             69 72 6D 77 61 72 65
             2F 6E 65 77 5F 62 65
             67 69 6E 69 6E 67 2F
             53 54 4D 38 53 5F 53
             74 64 50 65 72 69 70
             68 5F 4C 69
      008106 62 2F 73 72 63 2F 73   842 	.ascii "b/src/stm8s_tim1.c"
             74 6D 38 73 5F 74 69
             6D 31 2E 63
      008118 00                     843 	.db 0x00
                                    844 	.area CODE
                                    845 	.area INITIALIZER
                                    846 	.area CABS (ABS)
