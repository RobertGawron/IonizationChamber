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
      00885F                         65 _TIM1_DeInit:
                                     66 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 61: TIM1->CR1  = TIM1_CR1_RESET_VALUE;
      00885F 35 00 52 50      [ 1]   67 	mov	0x5250+0, #0x00
                                     68 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 62: TIM1->CR2  = TIM1_CR2_RESET_VALUE;
      008863 35 00 52 51      [ 1]   69 	mov	0x5251+0, #0x00
                                     70 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 63: TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
      008867 35 00 52 52      [ 1]   71 	mov	0x5252+0, #0x00
                                     72 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 64: TIM1->ETR  = TIM1_ETR_RESET_VALUE;
      00886B 35 00 52 53      [ 1]   73 	mov	0x5253+0, #0x00
                                     74 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 65: TIM1->IER  = TIM1_IER_RESET_VALUE;
      00886F 35 00 52 54      [ 1]   75 	mov	0x5254+0, #0x00
                                     76 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 66: TIM1->SR2  = TIM1_SR2_RESET_VALUE;
      008873 35 00 52 56      [ 1]   77 	mov	0x5256+0, #0x00
                                     78 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 68: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
      008877 35 00 52 5C      [ 1]   79 	mov	0x525c+0, #0x00
                                     80 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 69: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
      00887B 35 00 52 5D      [ 1]   81 	mov	0x525d+0, #0x00
                                     82 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 71: TIM1->CCMR1 = 0x01;
      00887F 35 01 52 58      [ 1]   83 	mov	0x5258+0, #0x01
                                     84 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 72: TIM1->CCMR2 = 0x01;
      008883 35 01 52 59      [ 1]   85 	mov	0x5259+0, #0x01
                                     86 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 73: TIM1->CCMR3 = 0x01;
      008887 35 01 52 5A      [ 1]   87 	mov	0x525a+0, #0x01
                                     88 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 74: TIM1->CCMR4 = 0x01;
      00888B 35 01 52 5B      [ 1]   89 	mov	0x525b+0, #0x01
                                     90 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 76: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
      00888F 35 00 52 5C      [ 1]   91 	mov	0x525c+0, #0x00
                                     92 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 77: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
      008893 35 00 52 5D      [ 1]   93 	mov	0x525d+0, #0x00
                                     94 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 78: TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
      008897 35 00 52 58      [ 1]   95 	mov	0x5258+0, #0x00
                                     96 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 79: TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
      00889B 35 00 52 59      [ 1]   97 	mov	0x5259+0, #0x00
                                     98 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 80: TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
      00889F 35 00 52 5A      [ 1]   99 	mov	0x525a+0, #0x00
                                    100 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 81: TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
      0088A3 35 00 52 5B      [ 1]  101 	mov	0x525b+0, #0x00
                                    102 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 82: TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
      0088A7 35 00 52 5E      [ 1]  103 	mov	0x525e+0, #0x00
                                    104 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 83: TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
      0088AB 35 00 52 5F      [ 1]  105 	mov	0x525f+0, #0x00
                                    106 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 84: TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
      0088AF 35 00 52 60      [ 1]  107 	mov	0x5260+0, #0x00
                                    108 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 85: TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
      0088B3 35 00 52 61      [ 1]  109 	mov	0x5261+0, #0x00
                                    110 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 86: TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
      0088B7 35 FF 52 62      [ 1]  111 	mov	0x5262+0, #0xff
                                    112 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 87: TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
      0088BB 35 FF 52 63      [ 1]  113 	mov	0x5263+0, #0xff
                                    114 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 88: TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
      0088BF 35 00 52 65      [ 1]  115 	mov	0x5265+0, #0x00
                                    116 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 89: TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
      0088C3 35 00 52 66      [ 1]  117 	mov	0x5266+0, #0x00
                                    118 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 90: TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
      0088C7 35 00 52 67      [ 1]  119 	mov	0x5267+0, #0x00
                                    120 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 91: TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
      0088CB 35 00 52 68      [ 1]  121 	mov	0x5268+0, #0x00
                                    122 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 92: TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
      0088CF 35 00 52 69      [ 1]  123 	mov	0x5269+0, #0x00
                                    124 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 93: TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
      0088D3 35 00 52 6A      [ 1]  125 	mov	0x526a+0, #0x00
                                    126 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 94: TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
      0088D7 35 00 52 6B      [ 1]  127 	mov	0x526b+0, #0x00
                                    128 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 95: TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
      0088DB 35 00 52 6C      [ 1]  129 	mov	0x526c+0, #0x00
                                    130 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 96: TIM1->OISR  = TIM1_OISR_RESET_VALUE;
      0088DF 35 00 52 6F      [ 1]  131 	mov	0x526f+0, #0x00
                                    132 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 97: TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
      0088E3 35 01 52 57      [ 1]  133 	mov	0x5257+0, #0x01
                                    134 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 98: TIM1->DTR   = TIM1_DTR_RESET_VALUE;
      0088E7 35 00 52 6E      [ 1]  135 	mov	0x526e+0, #0x00
                                    136 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 99: TIM1->BKR   = TIM1_BKR_RESET_VALUE;
      0088EB 35 00 52 6D      [ 1]  137 	mov	0x526d+0, #0x00
                                    138 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 100: TIM1->RCR   = TIM1_RCR_RESET_VALUE;
      0088EF 35 00 52 64      [ 1]  139 	mov	0x5264+0, #0x00
                                    140 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 101: TIM1->SR1   = TIM1_SR1_RESET_VALUE;
      0088F3 35 00 52 55      [ 1]  141 	mov	0x5255+0, #0x00
                                    142 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 102: }
      0088F7 81               [ 4]  143 	ret
                                    144 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 114: void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
                                    145 ;	-----------------------------------------
                                    146 ;	 function TIM1_TimeBaseInit
                                    147 ;	-----------------------------------------
      0088F8                        148 _TIM1_TimeBaseInit:
      0088F8 88               [ 1]  149 	push	a
                                    150 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 120: assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
      0088F9 6B 01            [ 1]  151 	ld	(0x01, sp), a
      0088FB 27 28            [ 1]  152 	jreq	00104$
      0088FD 7B 01            [ 1]  153 	ld	a, (0x01, sp)
      0088FF A1 10            [ 1]  154 	cp	a, #0x10
      008901 27 22            [ 1]  155 	jreq	00104$
      008903 7B 01            [ 1]  156 	ld	a, (0x01, sp)
      008905 A1 20            [ 1]  157 	cp	a, #0x20
      008907 27 1C            [ 1]  158 	jreq	00104$
      008909 7B 01            [ 1]  159 	ld	a, (0x01, sp)
      00890B A1 40            [ 1]  160 	cp	a, #0x40
      00890D 27 16            [ 1]  161 	jreq	00104$
      00890F 7B 01            [ 1]  162 	ld	a, (0x01, sp)
      008911 A1 60            [ 1]  163 	cp	a, #0x60
      008913 27 10            [ 1]  164 	jreq	00104$
      008915 89               [ 2]  165 	pushw	x
      008916 4B 78            [ 1]  166 	push	#0x78
      008918 4B 00            [ 1]  167 	push	#0x00
      00891A 4B 00            [ 1]  168 	push	#0x00
      00891C 4B 00            [ 1]  169 	push	#0x00
      00891E AE 80 CA         [ 2]  170 	ldw	x, #(___str_0+0)
      008921 CD 81 CD         [ 4]  171 	call	_assert_failed
      008924 85               [ 2]  172 	popw	x
      008925                        173 00104$:
                                    174 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 123: TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
      008925 7B 04            [ 1]  175 	ld	a, (0x04, sp)
      008927 C7 52 62         [ 1]  176 	ld	0x5262, a
                                    177 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 124: TIM1->ARRL = (uint8_t)(TIM1_Period);
      00892A 7B 05            [ 1]  178 	ld	a, (0x05, sp)
      00892C C7 52 63         [ 1]  179 	ld	0x5263, a
                                    180 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 127: TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
      00892F 9E               [ 1]  181 	ld	a, xh
      008930 C7 52 60         [ 1]  182 	ld	0x5260, a
                                    183 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 128: TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
      008933 9F               [ 1]  184 	ld	a, xl
      008934 C7 52 61         [ 1]  185 	ld	0x5261, a
                                    186 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 131: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
      008937 C6 52 50         [ 1]  187 	ld	a, 0x5250
      00893A A4 8F            [ 1]  188 	and	a, #0x8f
                                    189 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 132: | (uint8_t)(TIM1_CounterMode));
      00893C 1A 01            [ 1]  190 	or	a, (0x01, sp)
      00893E C7 52 50         [ 1]  191 	ld	0x5250, a
                                    192 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 135: TIM1->RCR = TIM1_RepetitionCounter;
      008941 AE 52 64         [ 2]  193 	ldw	x, #0x5264
      008944 7B 06            [ 1]  194 	ld	a, (0x06, sp)
      008946 F7               [ 1]  195 	ld	(x), a
                                    196 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 136: }
      008947 1E 02            [ 2]  197 	ldw	x, (2, sp)
      008949 5B 06            [ 2]  198 	addw	sp, #6
      00894B FC               [ 2]  199 	jp	(x)
                                    200 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 438: void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
                                    201 ;	-----------------------------------------
                                    202 ;	 function TIM1_ICInit
                                    203 ;	-----------------------------------------
      00894C                        204 _TIM1_ICInit:
      00894C 52 03            [ 2]  205 	sub	sp, #3
                                    206 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 445: assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
      00894E 6B 03            [ 1]  207 	ld	(0x03, sp), a
      008950 4A               [ 1]  208 	dec	a
      008951 26 05            [ 1]  209 	jrne	00269$
      008953 A6 01            [ 1]  210 	ld	a, #0x01
      008955 6B 01            [ 1]  211 	ld	(0x01, sp), a
      008957 C5                     212 	.byte 0xc5
      008958                        213 00269$:
      008958 0F 01            [ 1]  214 	clr	(0x01, sp)
      00895A                        215 00270$:
      00895A 7B 03            [ 1]  216 	ld	a, (0x03, sp)
      00895C A0 02            [ 1]  217 	sub	a, #0x02
      00895E 26 04            [ 1]  218 	jrne	00272$
      008960 4C               [ 1]  219 	inc	a
      008961 6B 02            [ 1]  220 	ld	(0x02, sp), a
      008963 C5                     221 	.byte 0xc5
      008964                        222 00272$:
      008964 0F 02            [ 1]  223 	clr	(0x02, sp)
      008966                        224 00273$:
      008966 0D 03            [ 1]  225 	tnz	(0x03, sp)
      008968 27 1A            [ 1]  226 	jreq	00113$
      00896A 0D 01            [ 1]  227 	tnz	(0x01, sp)
      00896C 26 16            [ 1]  228 	jrne	00113$
      00896E 0D 02            [ 1]  229 	tnz	(0x02, sp)
      008970 26 12            [ 1]  230 	jrne	00113$
      008972 7B 03            [ 1]  231 	ld	a, (0x03, sp)
      008974 A1 03            [ 1]  232 	cp	a, #0x03
      008976 27 0C            [ 1]  233 	jreq	00113$
      008978 4B BD            [ 1]  234 	push	#0xbd
      00897A 4B 01            [ 1]  235 	push	#0x01
      00897C 5F               [ 1]  236 	clrw	x
      00897D 89               [ 2]  237 	pushw	x
      00897E AE 80 CA         [ 2]  238 	ldw	x, #(___str_0+0)
      008981 CD 81 CD         [ 4]  239 	call	_assert_failed
      008984                        240 00113$:
                                    241 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 446: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
      008984 0D 06            [ 1]  242 	tnz	(0x06, sp)
      008986 27 10            [ 1]  243 	jreq	00124$
      008988 0D 06            [ 1]  244 	tnz	(0x06, sp)
      00898A 26 0C            [ 1]  245 	jrne	00124$
      00898C 4B BE            [ 1]  246 	push	#0xbe
      00898E 4B 01            [ 1]  247 	push	#0x01
      008990 5F               [ 1]  248 	clrw	x
      008991 89               [ 2]  249 	pushw	x
      008992 AE 80 CA         [ 2]  250 	ldw	x, #(___str_0+0)
      008995 CD 81 CD         [ 4]  251 	call	_assert_failed
      008998                        252 00124$:
                                    253 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 447: assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
      008998 7B 07            [ 1]  254 	ld	a, (0x07, sp)
      00899A 4A               [ 1]  255 	dec	a
      00899B 27 18            [ 1]  256 	jreq	00129$
      00899D 7B 07            [ 1]  257 	ld	a, (0x07, sp)
      00899F A1 02            [ 1]  258 	cp	a, #0x02
      0089A1 27 12            [ 1]  259 	jreq	00129$
      0089A3 7B 07            [ 1]  260 	ld	a, (0x07, sp)
      0089A5 A1 03            [ 1]  261 	cp	a, #0x03
      0089A7 27 0C            [ 1]  262 	jreq	00129$
      0089A9 4B BF            [ 1]  263 	push	#0xbf
      0089AB 4B 01            [ 1]  264 	push	#0x01
      0089AD 5F               [ 1]  265 	clrw	x
      0089AE 89               [ 2]  266 	pushw	x
      0089AF AE 80 CA         [ 2]  267 	ldw	x, #(___str_0+0)
      0089B2 CD 81 CD         [ 4]  268 	call	_assert_failed
      0089B5                        269 00129$:
                                    270 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 448: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
      0089B5 0D 08            [ 1]  271 	tnz	(0x08, sp)
      0089B7 27 1E            [ 1]  272 	jreq	00137$
      0089B9 7B 08            [ 1]  273 	ld	a, (0x08, sp)
      0089BB A1 04            [ 1]  274 	cp	a, #0x04
      0089BD 27 18            [ 1]  275 	jreq	00137$
      0089BF 7B 08            [ 1]  276 	ld	a, (0x08, sp)
      0089C1 A1 08            [ 1]  277 	cp	a, #0x08
      0089C3 27 12            [ 1]  278 	jreq	00137$
      0089C5 7B 08            [ 1]  279 	ld	a, (0x08, sp)
      0089C7 A1 0C            [ 1]  280 	cp	a, #0x0c
      0089C9 27 0C            [ 1]  281 	jreq	00137$
      0089CB 4B C0            [ 1]  282 	push	#0xc0
      0089CD 4B 01            [ 1]  283 	push	#0x01
      0089CF 5F               [ 1]  284 	clrw	x
      0089D0 89               [ 2]  285 	pushw	x
      0089D1 AE 80 CA         [ 2]  286 	ldw	x, #(___str_0+0)
      0089D4 CD 81 CD         [ 4]  287 	call	_assert_failed
      0089D7                        288 00137$:
                                    289 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 449: assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
      0089D7 7B 09            [ 1]  290 	ld	a, (0x09, sp)
      0089D9 A1 0F            [ 1]  291 	cp	a, #0x0f
      0089DB 23 0C            [ 2]  292 	jrule	00148$
      0089DD 4B C1            [ 1]  293 	push	#0xc1
      0089DF 4B 01            [ 1]  294 	push	#0x01
      0089E1 5F               [ 1]  295 	clrw	x
      0089E2 89               [ 2]  296 	pushw	x
      0089E3 AE 80 CA         [ 2]  297 	ldw	x, #(___str_0+0)
      0089E6 CD 81 CD         [ 4]  298 	call	_assert_failed
      0089E9                        299 00148$:
                                    300 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 454: TI1_Config((uint8_t)TIM1_ICPolarity,
      0089E9 7B 06            [ 1]  301 	ld	a, (0x06, sp)
      0089EB 97               [ 1]  302 	ld	xl, a
                                    303 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 451: if (TIM1_Channel == TIM1_CHANNEL_1)
      0089EC 0D 03            [ 1]  304 	tnz	(0x03, sp)
      0089EE 26 15            [ 1]  305 	jrne	00108$
                                    306 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 454: TI1_Config((uint8_t)TIM1_ICPolarity,
      0089F0 7B 09            [ 1]  307 	ld	a, (0x09, sp)
      0089F2 88               [ 1]  308 	push	a
      0089F3 7B 08            [ 1]  309 	ld	a, (0x08, sp)
      0089F5 88               [ 1]  310 	push	a
      0089F6 9F               [ 1]  311 	ld	a, xl
      0089F7 CD 8B C9         [ 4]  312 	call	_TI1_Config
                                    313 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 458: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
      0089FA 7B 08            [ 1]  314 	ld	a, (0x08, sp)
      0089FC 1E 04            [ 2]  315 	ldw	x, (4, sp)
      0089FE 1F 08            [ 2]  316 	ldw	(8, sp), x
      008A00 5B 07            [ 2]  317 	addw	sp, #7
      008A02 CC 8A BB         [ 2]  318 	jp	_TIM1_SetIC1Prescaler
      008A05                        319 00108$:
                                    320 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 460: else if (TIM1_Channel == TIM1_CHANNEL_2)
      008A05 7B 01            [ 1]  321 	ld	a, (0x01, sp)
      008A07 27 15            [ 1]  322 	jreq	00105$
                                    323 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 463: TI2_Config((uint8_t)TIM1_ICPolarity,
      008A09 7B 09            [ 1]  324 	ld	a, (0x09, sp)
      008A0B 88               [ 1]  325 	push	a
      008A0C 7B 08            [ 1]  326 	ld	a, (0x08, sp)
      008A0E 88               [ 1]  327 	push	a
      008A0F 9F               [ 1]  328 	ld	a, xl
      008A10 CD 8C 04         [ 4]  329 	call	_TI2_Config
                                    330 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 467: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
      008A13 7B 08            [ 1]  331 	ld	a, (0x08, sp)
      008A15 1E 04            [ 2]  332 	ldw	x, (4, sp)
      008A17 1F 08            [ 2]  333 	ldw	(8, sp), x
      008A19 5B 07            [ 2]  334 	addw	sp, #7
      008A1B CC 8A EA         [ 2]  335 	jp	_TIM1_SetIC2Prescaler
      008A1E                        336 00105$:
                                    337 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 469: else if (TIM1_Channel == TIM1_CHANNEL_3)
      008A1E 7B 02            [ 1]  338 	ld	a, (0x02, sp)
      008A20 27 15            [ 1]  339 	jreq	00102$
                                    340 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 472: TI3_Config((uint8_t)TIM1_ICPolarity,
      008A22 7B 09            [ 1]  341 	ld	a, (0x09, sp)
      008A24 88               [ 1]  342 	push	a
      008A25 7B 08            [ 1]  343 	ld	a, (0x08, sp)
      008A27 88               [ 1]  344 	push	a
      008A28 9F               [ 1]  345 	ld	a, xl
      008A29 CD 8C 3F         [ 4]  346 	call	_TI3_Config
                                    347 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 476: TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
      008A2C 7B 08            [ 1]  348 	ld	a, (0x08, sp)
      008A2E 1E 04            [ 2]  349 	ldw	x, (4, sp)
      008A30 1F 08            [ 2]  350 	ldw	(8, sp), x
      008A32 5B 07            [ 2]  351 	addw	sp, #7
      008A34 CC 8B 19         [ 2]  352 	jp	_TIM1_SetIC3Prescaler
      008A37                        353 00102$:
                                    354 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 481: TI4_Config((uint8_t)TIM1_ICPolarity,
      008A37 7B 09            [ 1]  355 	ld	a, (0x09, sp)
      008A39 88               [ 1]  356 	push	a
      008A3A 7B 08            [ 1]  357 	ld	a, (0x08, sp)
      008A3C 88               [ 1]  358 	push	a
      008A3D 9F               [ 1]  359 	ld	a, xl
      008A3E CD 8C 7E         [ 4]  360 	call	_TI4_Config
                                    361 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 485: TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
      008A41 7B 08            [ 1]  362 	ld	a, (0x08, sp)
      008A43 1E 04            [ 2]  363 	ldw	x, (4, sp)
      008A45 1F 08            [ 2]  364 	ldw	(8, sp), x
      008A47 5B 07            [ 2]  365 	addw	sp, #7
                                    366 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 487: }
      008A49 CC 8B 48         [ 2]  367 	jp	_TIM1_SetIC4Prescaler
                                    368 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 580: void TIM1_Cmd(FunctionalState NewState)
                                    369 ;	-----------------------------------------
                                    370 ;	 function TIM1_Cmd
                                    371 ;	-----------------------------------------
      008A4C                        372 _TIM1_Cmd:
      008A4C 88               [ 1]  373 	push	a
                                    374 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 583: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008A4D 6B 01            [ 1]  375 	ld	(0x01, sp), a
      008A4F 27 10            [ 1]  376 	jreq	00107$
      008A51 0D 01            [ 1]  377 	tnz	(0x01, sp)
      008A53 26 0C            [ 1]  378 	jrne	00107$
      008A55 4B 47            [ 1]  379 	push	#0x47
      008A57 4B 02            [ 1]  380 	push	#0x02
      008A59 5F               [ 1]  381 	clrw	x
      008A5A 89               [ 2]  382 	pushw	x
      008A5B AE 80 CA         [ 2]  383 	ldw	x, #(___str_0+0)
      008A5E CD 81 CD         [ 4]  384 	call	_assert_failed
      008A61                        385 00107$:
                                    386 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 588: TIM1->CR1 |= TIM1_CR1_CEN;
      008A61 C6 52 50         [ 1]  387 	ld	a, 0x5250
                                    388 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 586: if (NewState != DISABLE)
      008A64 0D 01            [ 1]  389 	tnz	(0x01, sp)
      008A66 27 07            [ 1]  390 	jreq	00102$
                                    391 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 588: TIM1->CR1 |= TIM1_CR1_CEN;
      008A68 AA 01            [ 1]  392 	or	a, #0x01
      008A6A C7 52 50         [ 1]  393 	ld	0x5250, a
      008A6D 20 05            [ 2]  394 	jra	00104$
      008A6F                        395 00102$:
                                    396 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 592: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
      008A6F A4 FE            [ 1]  397 	and	a, #0xfe
      008A71 C7 52 50         [ 1]  398 	ld	0x5250, a
      008A74                        399 00104$:
                                    400 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 594: }
      008A74 84               [ 1]  401 	pop	a
      008A75 81               [ 4]  402 	ret
                                    403 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 640: void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
                                    404 ;	-----------------------------------------
                                    405 ;	 function TIM1_ITConfig
                                    406 ;	-----------------------------------------
      008A76                        407 _TIM1_ITConfig:
      008A76 52 02            [ 2]  408 	sub	sp, #2
                                    409 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 643: assert_param(IS_TIM1_IT_OK(TIM1_IT));
      008A78 6B 02            [ 1]  410 	ld	(0x02, sp), a
      008A7A 26 0C            [ 1]  411 	jrne	00107$
      008A7C 4B 83            [ 1]  412 	push	#0x83
      008A7E 4B 02            [ 1]  413 	push	#0x02
      008A80 5F               [ 1]  414 	clrw	x
      008A81 89               [ 2]  415 	pushw	x
      008A82 AE 80 CA         [ 2]  416 	ldw	x, #(___str_0+0)
      008A85 CD 81 CD         [ 4]  417 	call	_assert_failed
      008A88                        418 00107$:
                                    419 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 644: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008A88 0D 05            [ 1]  420 	tnz	(0x05, sp)
      008A8A 27 10            [ 1]  421 	jreq	00109$
      008A8C 0D 05            [ 1]  422 	tnz	(0x05, sp)
      008A8E 26 0C            [ 1]  423 	jrne	00109$
      008A90 4B 84            [ 1]  424 	push	#0x84
      008A92 4B 02            [ 1]  425 	push	#0x02
      008A94 5F               [ 1]  426 	clrw	x
      008A95 89               [ 2]  427 	pushw	x
      008A96 AE 80 CA         [ 2]  428 	ldw	x, #(___str_0+0)
      008A99 CD 81 CD         [ 4]  429 	call	_assert_failed
      008A9C                        430 00109$:
                                    431 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 649: TIM1->IER |= (uint8_t)TIM1_IT;
      008A9C C6 52 54         [ 1]  432 	ld	a, 0x5254
                                    433 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 646: if (NewState != DISABLE)
      008A9F 0D 05            [ 1]  434 	tnz	(0x05, sp)
      008AA1 27 07            [ 1]  435 	jreq	00102$
                                    436 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 649: TIM1->IER |= (uint8_t)TIM1_IT;
      008AA3 1A 02            [ 1]  437 	or	a, (0x02, sp)
      008AA5 C7 52 54         [ 1]  438 	ld	0x5254, a
      008AA8 20 0C            [ 2]  439 	jra	00104$
      008AAA                        440 00102$:
                                    441 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 654: TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
      008AAA 88               [ 1]  442 	push	a
      008AAB 7B 03            [ 1]  443 	ld	a, (0x03, sp)
      008AAD 43               [ 1]  444 	cpl	a
      008AAE 6B 02            [ 1]  445 	ld	(0x02, sp), a
      008AB0 84               [ 1]  446 	pop	a
      008AB1 14 01            [ 1]  447 	and	a, (0x01, sp)
      008AB3 C7 52 54         [ 1]  448 	ld	0x5254, a
      008AB6                        449 00104$:
                                    450 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 656: }
      008AB6 5B 02            [ 2]  451 	addw	sp, #2
      008AB8 85               [ 2]  452 	popw	x
      008AB9 84               [ 1]  453 	pop	a
      008ABA FC               [ 2]  454 	jp	(x)
                                    455 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1965: void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
                                    456 ;	-----------------------------------------
                                    457 ;	 function TIM1_SetIC1Prescaler
                                    458 ;	-----------------------------------------
      008ABB                        459 _TIM1_SetIC1Prescaler:
      008ABB 88               [ 1]  460 	push	a
                                    461 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1968: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
      008ABC 6B 01            [ 1]  462 	ld	(0x01, sp), a
      008ABE 27 1E            [ 1]  463 	jreq	00104$
      008AC0 7B 01            [ 1]  464 	ld	a, (0x01, sp)
      008AC2 A1 04            [ 1]  465 	cp	a, #0x04
      008AC4 27 18            [ 1]  466 	jreq	00104$
      008AC6 7B 01            [ 1]  467 	ld	a, (0x01, sp)
      008AC8 A1 08            [ 1]  468 	cp	a, #0x08
      008ACA 27 12            [ 1]  469 	jreq	00104$
      008ACC 7B 01            [ 1]  470 	ld	a, (0x01, sp)
      008ACE A1 0C            [ 1]  471 	cp	a, #0x0c
      008AD0 27 0C            [ 1]  472 	jreq	00104$
      008AD2 4B B0            [ 1]  473 	push	#0xb0
      008AD4 4B 07            [ 1]  474 	push	#0x07
      008AD6 5F               [ 1]  475 	clrw	x
      008AD7 89               [ 2]  476 	pushw	x
      008AD8 AE 80 CA         [ 2]  477 	ldw	x, #(___str_0+0)
      008ADB CD 81 CD         [ 4]  478 	call	_assert_failed
      008ADE                        479 00104$:
                                    480 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1971: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
      008ADE C6 52 58         [ 1]  481 	ld	a, 0x5258
      008AE1 A4 F3            [ 1]  482 	and	a, #0xf3
                                    483 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1972: | (uint8_t)TIM1_IC1Prescaler);
      008AE3 1A 01            [ 1]  484 	or	a, (0x01, sp)
      008AE5 C7 52 58         [ 1]  485 	ld	0x5258, a
                                    486 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1973: }
      008AE8 84               [ 1]  487 	pop	a
      008AE9 81               [ 4]  488 	ret
                                    489 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1987: void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
                                    490 ;	-----------------------------------------
                                    491 ;	 function TIM1_SetIC2Prescaler
                                    492 ;	-----------------------------------------
      008AEA                        493 _TIM1_SetIC2Prescaler:
      008AEA 88               [ 1]  494 	push	a
                                    495 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1991: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
      008AEB 6B 01            [ 1]  496 	ld	(0x01, sp), a
      008AED 27 1E            [ 1]  497 	jreq	00104$
      008AEF 7B 01            [ 1]  498 	ld	a, (0x01, sp)
      008AF1 A1 04            [ 1]  499 	cp	a, #0x04
      008AF3 27 18            [ 1]  500 	jreq	00104$
      008AF5 7B 01            [ 1]  501 	ld	a, (0x01, sp)
      008AF7 A1 08            [ 1]  502 	cp	a, #0x08
      008AF9 27 12            [ 1]  503 	jreq	00104$
      008AFB 7B 01            [ 1]  504 	ld	a, (0x01, sp)
      008AFD A1 0C            [ 1]  505 	cp	a, #0x0c
      008AFF 27 0C            [ 1]  506 	jreq	00104$
      008B01 4B C7            [ 1]  507 	push	#0xc7
      008B03 4B 07            [ 1]  508 	push	#0x07
      008B05 5F               [ 1]  509 	clrw	x
      008B06 89               [ 2]  510 	pushw	x
      008B07 AE 80 CA         [ 2]  511 	ldw	x, #(___str_0+0)
      008B0A CD 81 CD         [ 4]  512 	call	_assert_failed
      008B0D                        513 00104$:
                                    514 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1994: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
      008B0D C6 52 59         [ 1]  515 	ld	a, 0x5259
      008B10 A4 F3            [ 1]  516 	and	a, #0xf3
                                    517 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1995: | (uint8_t)TIM1_IC2Prescaler);
      008B12 1A 01            [ 1]  518 	or	a, (0x01, sp)
      008B14 C7 52 59         [ 1]  519 	ld	0x5259, a
                                    520 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 1996: }
      008B17 84               [ 1]  521 	pop	a
      008B18 81               [ 4]  522 	ret
                                    523 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2010: void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
                                    524 ;	-----------------------------------------
                                    525 ;	 function TIM1_SetIC3Prescaler
                                    526 ;	-----------------------------------------
      008B19                        527 _TIM1_SetIC3Prescaler:
      008B19 88               [ 1]  528 	push	a
                                    529 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2014: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
      008B1A 6B 01            [ 1]  530 	ld	(0x01, sp), a
      008B1C 27 1E            [ 1]  531 	jreq	00104$
      008B1E 7B 01            [ 1]  532 	ld	a, (0x01, sp)
      008B20 A1 04            [ 1]  533 	cp	a, #0x04
      008B22 27 18            [ 1]  534 	jreq	00104$
      008B24 7B 01            [ 1]  535 	ld	a, (0x01, sp)
      008B26 A1 08            [ 1]  536 	cp	a, #0x08
      008B28 27 12            [ 1]  537 	jreq	00104$
      008B2A 7B 01            [ 1]  538 	ld	a, (0x01, sp)
      008B2C A1 0C            [ 1]  539 	cp	a, #0x0c
      008B2E 27 0C            [ 1]  540 	jreq	00104$
      008B30 4B DE            [ 1]  541 	push	#0xde
      008B32 4B 07            [ 1]  542 	push	#0x07
      008B34 5F               [ 1]  543 	clrw	x
      008B35 89               [ 2]  544 	pushw	x
      008B36 AE 80 CA         [ 2]  545 	ldw	x, #(___str_0+0)
      008B39 CD 81 CD         [ 4]  546 	call	_assert_failed
      008B3C                        547 00104$:
                                    548 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2017: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
      008B3C C6 52 5A         [ 1]  549 	ld	a, 0x525a
      008B3F A4 F3            [ 1]  550 	and	a, #0xf3
                                    551 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2018: (uint8_t)TIM1_IC3Prescaler);
      008B41 1A 01            [ 1]  552 	or	a, (0x01, sp)
      008B43 C7 52 5A         [ 1]  553 	ld	0x525a, a
                                    554 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2019: }
      008B46 84               [ 1]  555 	pop	a
      008B47 81               [ 4]  556 	ret
                                    557 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2033: void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
                                    558 ;	-----------------------------------------
                                    559 ;	 function TIM1_SetIC4Prescaler
                                    560 ;	-----------------------------------------
      008B48                        561 _TIM1_SetIC4Prescaler:
      008B48 88               [ 1]  562 	push	a
                                    563 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2037: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
      008B49 6B 01            [ 1]  564 	ld	(0x01, sp), a
      008B4B 27 1E            [ 1]  565 	jreq	00104$
      008B4D 7B 01            [ 1]  566 	ld	a, (0x01, sp)
      008B4F A1 04            [ 1]  567 	cp	a, #0x04
      008B51 27 18            [ 1]  568 	jreq	00104$
      008B53 7B 01            [ 1]  569 	ld	a, (0x01, sp)
      008B55 A1 08            [ 1]  570 	cp	a, #0x08
      008B57 27 12            [ 1]  571 	jreq	00104$
      008B59 7B 01            [ 1]  572 	ld	a, (0x01, sp)
      008B5B A1 0C            [ 1]  573 	cp	a, #0x0c
      008B5D 27 0C            [ 1]  574 	jreq	00104$
      008B5F 4B F5            [ 1]  575 	push	#0xf5
      008B61 4B 07            [ 1]  576 	push	#0x07
      008B63 5F               [ 1]  577 	clrw	x
      008B64 89               [ 2]  578 	pushw	x
      008B65 AE 80 CA         [ 2]  579 	ldw	x, #(___str_0+0)
      008B68 CD 81 CD         [ 4]  580 	call	_assert_failed
      008B6B                        581 00104$:
                                    582 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2040: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
      008B6B C6 52 5B         [ 1]  583 	ld	a, 0x525b
      008B6E A4 F3            [ 1]  584 	and	a, #0xf3
                                    585 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2041: (uint8_t)TIM1_IC4Prescaler);
      008B70 1A 01            [ 1]  586 	or	a, (0x01, sp)
      008B72 C7 52 5B         [ 1]  587 	ld	0x525b, a
                                    588 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2042: }
      008B75 84               [ 1]  589 	pop	a
      008B76 81               [ 4]  590 	ret
                                    591 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2051: uint16_t TIM1_GetCapture1(void)
                                    592 ;	-----------------------------------------
                                    593 ;	 function TIM1_GetCapture1
                                    594 ;	-----------------------------------------
      008B77                        595 _TIM1_GetCapture1:
      008B77 52 02            [ 2]  596 	sub	sp, #2
                                    597 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2058: tmpccr1h = TIM1->CCR1H;
      008B79 C6 52 65         [ 1]  598 	ld	a, 0x5265
      008B7C 95               [ 1]  599 	ld	xh, a
                                    600 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2059: tmpccr1l = TIM1->CCR1L;
      008B7D C6 52 66         [ 1]  601 	ld	a, 0x5266
                                    602 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2061: tmpccr1 = (uint16_t)(tmpccr1l);
      008B80 97               [ 1]  603 	ld	xl, a
                                    604 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2062: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
      008B81 0F 02            [ 1]  605 	clr	(0x02, sp)
                                    606 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2064: return (uint16_t)tmpccr1;
                                    607 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2065: }
      008B83 5B 02            [ 2]  608 	addw	sp, #2
      008B85 81               [ 4]  609 	ret
                                    610 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2230: void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
                                    611 ;	-----------------------------------------
                                    612 ;	 function TIM1_ClearFlag
                                    613 ;	-----------------------------------------
      008B86                        614 _TIM1_ClearFlag:
      008B86 52 02            [ 2]  615 	sub	sp, #2
                                    616 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2233: assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
      008B88 1F 01            [ 2]  617 	ldw	(0x01, sp), x
      008B8A 7B 01            [ 1]  618 	ld	a, (0x01, sp)
      008B8C A5 E1            [ 1]  619 	bcp	a, #0xe1
      008B8E 26 03            [ 1]  620 	jrne	00103$
      008B90 5D               [ 2]  621 	tnzw	x
      008B91 26 10            [ 1]  622 	jrne	00104$
      008B93                        623 00103$:
      008B93 89               [ 2]  624 	pushw	x
      008B94 4B B9            [ 1]  625 	push	#0xb9
      008B96 4B 08            [ 1]  626 	push	#0x08
      008B98 4B 00            [ 1]  627 	push	#0x00
      008B9A 4B 00            [ 1]  628 	push	#0x00
      008B9C AE 80 CA         [ 2]  629 	ldw	x, #(___str_0+0)
      008B9F CD 81 CD         [ 4]  630 	call	_assert_failed
      008BA2 85               [ 2]  631 	popw	x
      008BA3                        632 00104$:
                                    633 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2236: TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
      008BA3 9F               [ 1]  634 	ld	a, xl
      008BA4 43               [ 1]  635 	cpl	a
      008BA5 C7 52 55         [ 1]  636 	ld	0x5255, a
                                    637 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2237: TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
      008BA8 7B 01            [ 1]  638 	ld	a, (0x01, sp)
      008BAA 43               [ 1]  639 	cpl	a
      008BAB A4 1E            [ 1]  640 	and	a, #0x1e
      008BAD C7 52 56         [ 1]  641 	ld	0x5256, a
                                    642 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2239: }
      008BB0 5B 02            [ 2]  643 	addw	sp, #2
      008BB2 81               [ 4]  644 	ret
                                    645 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2296: void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
                                    646 ;	-----------------------------------------
                                    647 ;	 function TIM1_ClearITPendingBit
                                    648 ;	-----------------------------------------
      008BB3                        649 _TIM1_ClearITPendingBit:
                                    650 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2299: assert_param(IS_TIM1_IT_OK(TIM1_IT));
      008BB3 4D               [ 1]  651 	tnz	a
      008BB4 26 0E            [ 1]  652 	jrne	00104$
      008BB6 88               [ 1]  653 	push	a
      008BB7 4B FB            [ 1]  654 	push	#0xfb
      008BB9 4B 08            [ 1]  655 	push	#0x08
      008BBB 5F               [ 1]  656 	clrw	x
      008BBC 89               [ 2]  657 	pushw	x
      008BBD AE 80 CA         [ 2]  658 	ldw	x, #(___str_0+0)
      008BC0 CD 81 CD         [ 4]  659 	call	_assert_failed
      008BC3 84               [ 1]  660 	pop	a
      008BC4                        661 00104$:
                                    662 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2302: TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
      008BC4 43               [ 1]  663 	cpl	a
      008BC5 C7 52 55         [ 1]  664 	ld	0x5255, a
                                    665 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2303: }
      008BC8 81               [ 4]  666 	ret
                                    667 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2323: static void TI1_Config(uint8_t TIM1_ICPolarity,
                                    668 ;	-----------------------------------------
                                    669 ;	 function TI1_Config
                                    670 ;	-----------------------------------------
      008BC9                        671 _TI1_Config:
      008BC9 52 02            [ 2]  672 	sub	sp, #2
      008BCB 6B 02            [ 1]  673 	ld	(0x02, sp), a
                                    674 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2328: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      008BCD 72 11 52 5C      [ 1]  675 	bres	0x525c, #0
                                    676 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2331: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
      008BD1 C6 52 58         [ 1]  677 	ld	a, 0x5258
      008BD4 A4 0C            [ 1]  678 	and	a, #0x0c
      008BD6 6B 01            [ 1]  679 	ld	(0x01, sp), a
                                    680 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2332: (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      008BD8 7B 06            [ 1]  681 	ld	a, (0x06, sp)
      008BDA 4E               [ 1]  682 	swap	a
      008BDB A4 F0            [ 1]  683 	and	a, #0xf0
      008BDD 1A 05            [ 1]  684 	or	a, (0x05, sp)
      008BDF 1A 01            [ 1]  685 	or	a, (0x01, sp)
      008BE1 C7 52 58         [ 1]  686 	ld	0x5258, a
                                    687 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2328: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      008BE4 C6 52 5C         [ 1]  688 	ld	a, 0x525c
                                    689 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2335: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      008BE7 0D 02            [ 1]  690 	tnz	(0x02, sp)
      008BE9 27 07            [ 1]  691 	jreq	00102$
                                    692 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2337: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      008BEB AA 02            [ 1]  693 	or	a, #0x02
      008BED C7 52 5C         [ 1]  694 	ld	0x525c, a
      008BF0 20 05            [ 2]  695 	jra	00103$
      008BF2                        696 00102$:
                                    697 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2341: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
      008BF2 A4 FD            [ 1]  698 	and	a, #0xfd
      008BF4 C7 52 5C         [ 1]  699 	ld	0x525c, a
      008BF7                        700 00103$:
                                    701 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2345: TIM1->CCER1 |=  TIM1_CCER1_CC1E;
      008BF7 C6 52 5C         [ 1]  702 	ld	a, 0x525c
      008BFA AA 01            [ 1]  703 	or	a, #0x01
      008BFC C7 52 5C         [ 1]  704 	ld	0x525c, a
                                    705 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2346: }
      008BFF 1E 03            [ 2]  706 	ldw	x, (3, sp)
      008C01 5B 06            [ 2]  707 	addw	sp, #6
      008C03 FC               [ 2]  708 	jp	(x)
                                    709 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2366: static void TI2_Config(uint8_t TIM1_ICPolarity,
                                    710 ;	-----------------------------------------
                                    711 ;	 function TI2_Config
                                    712 ;	-----------------------------------------
      008C04                        713 _TI2_Config:
      008C04 52 02            [ 2]  714 	sub	sp, #2
      008C06 6B 02            [ 1]  715 	ld	(0x02, sp), a
                                    716 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2371: TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
      008C08 72 19 52 5C      [ 1]  717 	bres	0x525c, #4
                                    718 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2374: TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
      008C0C C6 52 59         [ 1]  719 	ld	a, 0x5259
      008C0F A4 0C            [ 1]  720 	and	a, #0x0c
      008C11 6B 01            [ 1]  721 	ld	(0x01, sp), a
                                    722 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2375: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      008C13 7B 06            [ 1]  723 	ld	a, (0x06, sp)
      008C15 4E               [ 1]  724 	swap	a
      008C16 A4 F0            [ 1]  725 	and	a, #0xf0
      008C18 1A 05            [ 1]  726 	or	a, (0x05, sp)
      008C1A 1A 01            [ 1]  727 	or	a, (0x01, sp)
      008C1C C7 52 59         [ 1]  728 	ld	0x5259, a
                                    729 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2371: TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
      008C1F C6 52 5C         [ 1]  730 	ld	a, 0x525c
                                    731 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2377: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      008C22 0D 02            [ 1]  732 	tnz	(0x02, sp)
      008C24 27 07            [ 1]  733 	jreq	00102$
                                    734 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2379: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      008C26 AA 20            [ 1]  735 	or	a, #0x20
      008C28 C7 52 5C         [ 1]  736 	ld	0x525c, a
      008C2B 20 05            [ 2]  737 	jra	00103$
      008C2D                        738 00102$:
                                    739 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2383: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
      008C2D A4 DF            [ 1]  740 	and	a, #0xdf
      008C2F C7 52 5C         [ 1]  741 	ld	0x525c, a
      008C32                        742 00103$:
                                    743 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2386: TIM1->CCER1 |=  TIM1_CCER1_CC2E;
      008C32 C6 52 5C         [ 1]  744 	ld	a, 0x525c
      008C35 AA 10            [ 1]  745 	or	a, #0x10
      008C37 C7 52 5C         [ 1]  746 	ld	0x525c, a
                                    747 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2387: }
      008C3A 1E 03            [ 2]  748 	ldw	x, (3, sp)
      008C3C 5B 06            [ 2]  749 	addw	sp, #6
      008C3E FC               [ 2]  750 	jp	(x)
                                    751 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2407: static void TI3_Config(uint8_t TIM1_ICPolarity,
                                    752 ;	-----------------------------------------
                                    753 ;	 function TI3_Config
                                    754 ;	-----------------------------------------
      008C3F                        755 _TI3_Config:
      008C3F 52 02            [ 2]  756 	sub	sp, #2
      008C41 6B 02            [ 1]  757 	ld	(0x02, sp), a
                                    758 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2412: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
      008C43 C6 52 5D         [ 1]  759 	ld	a, 0x525d
      008C46 A4 FE            [ 1]  760 	and	a, #0xfe
      008C48 C7 52 5D         [ 1]  761 	ld	0x525d, a
                                    762 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2415: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
      008C4B C6 52 5A         [ 1]  763 	ld	a, 0x525a
      008C4E A4 0C            [ 1]  764 	and	a, #0x0c
      008C50 6B 01            [ 1]  765 	ld	(0x01, sp), a
                                    766 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2416: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      008C52 7B 06            [ 1]  767 	ld	a, (0x06, sp)
      008C54 4E               [ 1]  768 	swap	a
      008C55 A4 F0            [ 1]  769 	and	a, #0xf0
      008C57 1A 05            [ 1]  770 	or	a, (0x05, sp)
      008C59 1A 01            [ 1]  771 	or	a, (0x01, sp)
      008C5B C7 52 5A         [ 1]  772 	ld	0x525a, a
                                    773 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2412: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
      008C5E C6 52 5D         [ 1]  774 	ld	a, 0x525d
                                    775 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2419: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      008C61 0D 02            [ 1]  776 	tnz	(0x02, sp)
      008C63 27 07            [ 1]  777 	jreq	00102$
                                    778 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2421: TIM1->CCER2 |= TIM1_CCER2_CC3P;
      008C65 AA 02            [ 1]  779 	or	a, #0x02
      008C67 C7 52 5D         [ 1]  780 	ld	0x525d, a
      008C6A 20 05            [ 2]  781 	jra	00103$
      008C6C                        782 00102$:
                                    783 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2425: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
      008C6C A4 FD            [ 1]  784 	and	a, #0xfd
      008C6E C7 52 5D         [ 1]  785 	ld	0x525d, a
      008C71                        786 00103$:
                                    787 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2428: TIM1->CCER2 |=  TIM1_CCER2_CC3E;
      008C71 C6 52 5D         [ 1]  788 	ld	a, 0x525d
      008C74 AA 01            [ 1]  789 	or	a, #0x01
      008C76 C7 52 5D         [ 1]  790 	ld	0x525d, a
                                    791 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2429: }
      008C79 1E 03            [ 2]  792 	ldw	x, (3, sp)
      008C7B 5B 06            [ 2]  793 	addw	sp, #6
      008C7D FC               [ 2]  794 	jp	(x)
                                    795 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2449: static void TI4_Config(uint8_t TIM1_ICPolarity,
                                    796 ;	-----------------------------------------
                                    797 ;	 function TI4_Config
                                    798 ;	-----------------------------------------
      008C7E                        799 _TI4_Config:
      008C7E 52 02            [ 2]  800 	sub	sp, #2
      008C80 6B 02            [ 1]  801 	ld	(0x02, sp), a
                                    802 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2454: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
      008C82 72 19 52 5D      [ 1]  803 	bres	0x525d, #4
                                    804 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2457: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
      008C86 C6 52 5B         [ 1]  805 	ld	a, 0x525b
      008C89 A4 0C            [ 1]  806 	and	a, #0x0c
      008C8B 6B 01            [ 1]  807 	ld	(0x01, sp), a
                                    808 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2458: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      008C8D 7B 06            [ 1]  809 	ld	a, (0x06, sp)
      008C8F 4E               [ 1]  810 	swap	a
      008C90 A4 F0            [ 1]  811 	and	a, #0xf0
      008C92 1A 05            [ 1]  812 	or	a, (0x05, sp)
      008C94 1A 01            [ 1]  813 	or	a, (0x01, sp)
      008C96 C7 52 5B         [ 1]  814 	ld	0x525b, a
                                    815 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2454: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
      008C99 C6 52 5D         [ 1]  816 	ld	a, 0x525d
                                    817 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2461: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      008C9C 0D 02            [ 1]  818 	tnz	(0x02, sp)
      008C9E 27 07            [ 1]  819 	jreq	00102$
                                    820 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2463: TIM1->CCER2 |= TIM1_CCER2_CC4P;
      008CA0 AA 20            [ 1]  821 	or	a, #0x20
      008CA2 C7 52 5D         [ 1]  822 	ld	0x525d, a
      008CA5 20 05            [ 2]  823 	jra	00103$
      008CA7                        824 00102$:
                                    825 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2467: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
      008CA7 A4 DF            [ 1]  826 	and	a, #0xdf
      008CA9 C7 52 5D         [ 1]  827 	ld	0x525d, a
      008CAC                        828 00103$:
                                    829 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2471: TIM1->CCER2 |=  TIM1_CCER2_CC4E;
      008CAC C6 52 5D         [ 1]  830 	ld	a, 0x525d
      008CAF AA 10            [ 1]  831 	or	a, #0x10
      008CB1 C7 52 5D         [ 1]  832 	ld	0x525d, a
                                    833 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_tim1.c: 2472: }
      008CB4 1E 03            [ 2]  834 	ldw	x, (3, sp)
      008CB6 5B 06            [ 2]  835 	addw	sp, #6
      008CB8 FC               [ 2]  836 	jp	(x)
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
