                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_uart1
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _CLK_GetClockFreq
                                     13 	.globl _UART1_DeInit
                                     14 	.globl _UART1_Init
                                     15 	.globl _UART1_Cmd
                                     16 	.globl _UART1_SendData8
                                     17 	.globl _UART1_GetFlagStatus
                                     18 	.globl _UART1_ClearFlag
                                     19 ;--------------------------------------------------------
                                     20 ; ram data
                                     21 ;--------------------------------------------------------
                                     22 	.area DATA
                                     23 ;--------------------------------------------------------
                                     24 ; ram data
                                     25 ;--------------------------------------------------------
                                     26 	.area INITIALIZED
                                     27 ;--------------------------------------------------------
                                     28 ; absolute external ram data
                                     29 ;--------------------------------------------------------
                                     30 	.area DABS (ABS)
                                     31 
                                     32 ; default segment ordering for linker
                                     33 	.area HOME
                                     34 	.area GSINIT
                                     35 	.area GSFINAL
                                     36 	.area CONST
                                     37 	.area INITIALIZER
                                     38 	.area CODE
                                     39 
                                     40 ;--------------------------------------------------------
                                     41 ; global & static initialisations
                                     42 ;--------------------------------------------------------
                                     43 	.area HOME
                                     44 	.area GSINIT
                                     45 	.area GSFINAL
                                     46 	.area GSINIT
                                     47 ;--------------------------------------------------------
                                     48 ; Home
                                     49 ;--------------------------------------------------------
                                     50 	.area HOME
                                     51 	.area HOME
                                     52 ;--------------------------------------------------------
                                     53 ; code
                                     54 ;--------------------------------------------------------
                                     55 	.area CODE
                                     56 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 53: void UART1_DeInit(void)
                                     57 ;	-----------------------------------------
                                     58 ;	 function UART1_DeInit
                                     59 ;	-----------------------------------------
      009485                         60 _UART1_DeInit:
                                     61 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 57: (void)UART1->SR;
      009485 C6 52 30         [ 1]   62 	ld	a, 0x5230
                                     63 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 58: (void)UART1->DR;
      009488 C6 52 31         [ 1]   64 	ld	a, 0x5231
                                     65 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 60: UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
      00948B 35 00 52 33      [ 1]   66 	mov	0x5233+0, #0x00
                                     67 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 61: UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
      00948F 35 00 52 32      [ 1]   68 	mov	0x5232+0, #0x00
                                     69 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 63: UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
      009493 35 00 52 34      [ 1]   70 	mov	0x5234+0, #0x00
                                     71 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 64: UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
      009497 35 00 52 35      [ 1]   72 	mov	0x5235+0, #0x00
                                     73 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 65: UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
      00949B 35 00 52 36      [ 1]   74 	mov	0x5236+0, #0x00
                                     75 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 66: UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
      00949F 35 00 52 37      [ 1]   76 	mov	0x5237+0, #0x00
                                     77 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 67: UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
      0094A3 35 00 52 38      [ 1]   78 	mov	0x5238+0, #0x00
                                     79 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 69: UART1->GTR = UART1_GTR_RESET_VALUE;
      0094A7 35 00 52 39      [ 1]   80 	mov	0x5239+0, #0x00
                                     81 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 70: UART1->PSCR = UART1_PSCR_RESET_VALUE;
      0094AB 35 00 52 3A      [ 1]   82 	mov	0x523a+0, #0x00
                                     83 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 71: }
      0094AF 81               [ 4]   84 	ret
                                     85 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 90: void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
                                     86 ;	-----------------------------------------
                                     87 ;	 function UART1_Init
                                     88 ;	-----------------------------------------
      0094B0                         89 _UART1_Init:
      0094B0 52 0D            [ 2]   90 	sub	sp, #13
                                     91 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 97: assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
      0094B2 AE 89 68         [ 2]   92 	ldw	x, #0x8968
      0094B5 13 12            [ 2]   93 	cpw	x, (0x12, sp)
      0094B7 A6 09            [ 1]   94 	ld	a, #0x09
      0094B9 12 11            [ 1]   95 	sbc	a, (0x11, sp)
      0094BB 4F               [ 1]   96 	clr	a
      0094BC 12 10            [ 1]   97 	sbc	a, (0x10, sp)
      0094BE 24 0C            [ 1]   98 	jrnc	00113$
      0094C0 4B 61            [ 1]   99 	push	#0x61
      0094C2 5F               [ 1]  100 	clrw	x
      0094C3 89               [ 2]  101 	pushw	x
      0094C4 4B 00            [ 1]  102 	push	#0x00
      0094C6 AE 81 F5         [ 2]  103 	ldw	x, #(___str_0+0)
      0094C9 CD 82 7D         [ 4]  104 	call	_assert_failed
      0094CC                        105 00113$:
                                    106 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 98: assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
      0094CC 0D 14            [ 1]  107 	tnz	(0x14, sp)
      0094CE 27 12            [ 1]  108 	jreq	00115$
      0094D0 7B 14            [ 1]  109 	ld	a, (0x14, sp)
      0094D2 A1 10            [ 1]  110 	cp	a, #0x10
      0094D4 27 0C            [ 1]  111 	jreq	00115$
      0094D6 4B 62            [ 1]  112 	push	#0x62
      0094D8 5F               [ 1]  113 	clrw	x
      0094D9 89               [ 2]  114 	pushw	x
      0094DA 4B 00            [ 1]  115 	push	#0x00
      0094DC AE 81 F5         [ 2]  116 	ldw	x, #(___str_0+0)
      0094DF CD 82 7D         [ 4]  117 	call	_assert_failed
      0094E2                        118 00115$:
                                    119 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 99: assert_param(IS_UART1_STOPBITS_OK(StopBits));
      0094E2 0D 15            [ 1]  120 	tnz	(0x15, sp)
      0094E4 27 1E            [ 1]  121 	jreq	00120$
      0094E6 7B 15            [ 1]  122 	ld	a, (0x15, sp)
      0094E8 A1 10            [ 1]  123 	cp	a, #0x10
      0094EA 27 18            [ 1]  124 	jreq	00120$
      0094EC 7B 15            [ 1]  125 	ld	a, (0x15, sp)
      0094EE A1 20            [ 1]  126 	cp	a, #0x20
      0094F0 27 12            [ 1]  127 	jreq	00120$
      0094F2 7B 15            [ 1]  128 	ld	a, (0x15, sp)
      0094F4 A1 30            [ 1]  129 	cp	a, #0x30
      0094F6 27 0C            [ 1]  130 	jreq	00120$
      0094F8 4B 63            [ 1]  131 	push	#0x63
      0094FA 5F               [ 1]  132 	clrw	x
      0094FB 89               [ 2]  133 	pushw	x
      0094FC 4B 00            [ 1]  134 	push	#0x00
      0094FE AE 81 F5         [ 2]  135 	ldw	x, #(___str_0+0)
      009501 CD 82 7D         [ 4]  136 	call	_assert_failed
      009504                        137 00120$:
                                    138 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 100: assert_param(IS_UART1_PARITY_OK(Parity));
      009504 0D 16            [ 1]  139 	tnz	(0x16, sp)
      009506 27 18            [ 1]  140 	jreq	00131$
      009508 7B 16            [ 1]  141 	ld	a, (0x16, sp)
      00950A A1 04            [ 1]  142 	cp	a, #0x04
      00950C 27 12            [ 1]  143 	jreq	00131$
      00950E 7B 16            [ 1]  144 	ld	a, (0x16, sp)
      009510 A1 06            [ 1]  145 	cp	a, #0x06
      009512 27 0C            [ 1]  146 	jreq	00131$
      009514 4B 64            [ 1]  147 	push	#0x64
      009516 5F               [ 1]  148 	clrw	x
      009517 89               [ 2]  149 	pushw	x
      009518 4B 00            [ 1]  150 	push	#0x00
      00951A AE 81 F5         [ 2]  151 	ldw	x, #(___str_0+0)
      00951D CD 82 7D         [ 4]  152 	call	_assert_failed
      009520                        153 00131$:
                                    154 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 101: assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
      009520 7B 18            [ 1]  155 	ld	a, (0x18, sp)
      009522 A1 08            [ 1]  156 	cp	a, #0x08
      009524 27 3F            [ 1]  157 	jreq	00139$
      009526 7B 18            [ 1]  158 	ld	a, (0x18, sp)
      009528 A1 40            [ 1]  159 	cp	a, #0x40
      00952A 27 39            [ 1]  160 	jreq	00139$
      00952C 7B 18            [ 1]  161 	ld	a, (0x18, sp)
      00952E A1 04            [ 1]  162 	cp	a, #0x04
      009530 27 33            [ 1]  163 	jreq	00139$
      009532 7B 18            [ 1]  164 	ld	a, (0x18, sp)
      009534 A1 80            [ 1]  165 	cp	a, #0x80
      009536 27 2D            [ 1]  166 	jreq	00139$
      009538 7B 18            [ 1]  167 	ld	a, (0x18, sp)
      00953A A0 0C            [ 1]  168 	sub	a, #0x0c
      00953C 26 02            [ 1]  169 	jrne	00388$
      00953E 4C               [ 1]  170 	inc	a
      00953F 21                     171 	.byte 0x21
      009540                        172 00388$:
      009540 4F               [ 1]  173 	clr	a
      009541                        174 00389$:
      009541 4D               [ 1]  175 	tnz	a
      009542 26 21            [ 1]  176 	jrne	00139$
      009544 4D               [ 1]  177 	tnz	a
      009545 26 1E            [ 1]  178 	jrne	00139$
      009547 7B 18            [ 1]  179 	ld	a, (0x18, sp)
      009549 A1 44            [ 1]  180 	cp	a, #0x44
      00954B 27 18            [ 1]  181 	jreq	00139$
      00954D 7B 18            [ 1]  182 	ld	a, (0x18, sp)
      00954F A1 C0            [ 1]  183 	cp	a, #0xc0
      009551 27 12            [ 1]  184 	jreq	00139$
      009553 7B 18            [ 1]  185 	ld	a, (0x18, sp)
      009555 A1 88            [ 1]  186 	cp	a, #0x88
      009557 27 0C            [ 1]  187 	jreq	00139$
      009559 4B 65            [ 1]  188 	push	#0x65
      00955B 5F               [ 1]  189 	clrw	x
      00955C 89               [ 2]  190 	pushw	x
      00955D 4B 00            [ 1]  191 	push	#0x00
      00955F AE 81 F5         [ 2]  192 	ldw	x, #(___str_0+0)
      009562 CD 82 7D         [ 4]  193 	call	_assert_failed
      009565                        194 00139$:
                                    195 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 102: assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
      009565 7B 17            [ 1]  196 	ld	a, (0x17, sp)
      009567 43               [ 1]  197 	cpl	a
      009568 A5 88            [ 1]  198 	bcp	a, #0x88
      00956A 27 15            [ 1]  199 	jreq	00167$
      00956C 7B 17            [ 1]  200 	ld	a, (0x17, sp)
      00956E 43               [ 1]  201 	cpl	a
      00956F A5 44            [ 1]  202 	bcp	a, #0x44
      009571 27 0E            [ 1]  203 	jreq	00167$
      009573 7B 17            [ 1]  204 	ld	a, (0x17, sp)
      009575 43               [ 1]  205 	cpl	a
      009576 A5 22            [ 1]  206 	bcp	a, #0x22
      009578 27 07            [ 1]  207 	jreq	00167$
      00957A 7B 17            [ 1]  208 	ld	a, (0x17, sp)
      00957C 43               [ 1]  209 	cpl	a
      00957D A5 11            [ 1]  210 	bcp	a, #0x11
      00957F 26 0C            [ 1]  211 	jrne	00165$
      009581                        212 00167$:
      009581 4B 66            [ 1]  213 	push	#0x66
      009583 5F               [ 1]  214 	clrw	x
      009584 89               [ 2]  215 	pushw	x
      009585 4B 00            [ 1]  216 	push	#0x00
      009587 AE 81 F5         [ 2]  217 	ldw	x, #(___str_0+0)
      00958A CD 82 7D         [ 4]  218 	call	_assert_failed
      00958D                        219 00165$:
                                    220 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 105: UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
      00958D 72 19 52 34      [ 1]  221 	bres	0x5234, #4
                                    222 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 108: UART1->CR1 |= (uint8_t)WordLength;
      009591 C6 52 34         [ 1]  223 	ld	a, 0x5234
      009594 1A 14            [ 1]  224 	or	a, (0x14, sp)
      009596 C7 52 34         [ 1]  225 	ld	0x5234, a
                                    226 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      009599 C6 52 36         [ 1]  227 	ld	a, 0x5236
      00959C A4 CF            [ 1]  228 	and	a, #0xcf
      00959E C7 52 36         [ 1]  229 	ld	0x5236, a
                                    230 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 113: UART1->CR3 |= (uint8_t)StopBits;  
      0095A1 C6 52 36         [ 1]  231 	ld	a, 0x5236
      0095A4 1A 15            [ 1]  232 	or	a, (0x15, sp)
      0095A6 C7 52 36         [ 1]  233 	ld	0x5236, a
                                    234 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 116: UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
      0095A9 C6 52 34         [ 1]  235 	ld	a, 0x5234
      0095AC A4 F9            [ 1]  236 	and	a, #0xf9
      0095AE C7 52 34         [ 1]  237 	ld	0x5234, a
                                    238 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 118: UART1->CR1 |= (uint8_t)Parity;  
      0095B1 C6 52 34         [ 1]  239 	ld	a, 0x5234
      0095B4 1A 16            [ 1]  240 	or	a, (0x16, sp)
      0095B6 C7 52 34         [ 1]  241 	ld	0x5234, a
                                    242 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 121: UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
      0095B9 C6 52 32         [ 1]  243 	ld	a, 0x5232
      0095BC 35 00 52 32      [ 1]  244 	mov	0x5232+0, #0x00
                                    245 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 123: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
      0095C0 C6 52 33         [ 1]  246 	ld	a, 0x5233
      0095C3 A4 0F            [ 1]  247 	and	a, #0x0f
      0095C5 C7 52 33         [ 1]  248 	ld	0x5233, a
                                    249 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 125: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
      0095C8 C6 52 33         [ 1]  250 	ld	a, 0x5233
      0095CB A4 F0            [ 1]  251 	and	a, #0xf0
      0095CD C7 52 33         [ 1]  252 	ld	0x5233, a
                                    253 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 128: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      0095D0 CD 93 BF         [ 4]  254 	call	_CLK_GetClockFreq
      0095D3 1F 0C            [ 2]  255 	ldw	(0x0c, sp), x
      0095D5 1E 10            [ 2]  256 	ldw	x, (0x10, sp)
      0095D7 1F 06            [ 2]  257 	ldw	(0x06, sp), x
      0095D9 1E 12            [ 2]  258 	ldw	x, (0x12, sp)
      0095DB A6 04            [ 1]  259 	ld	a, #0x04
      0095DD                        260 00413$:
      0095DD 58               [ 2]  261 	sllw	x
      0095DE 09 07            [ 1]  262 	rlc	(0x07, sp)
      0095E0 09 06            [ 1]  263 	rlc	(0x06, sp)
      0095E2 4A               [ 1]  264 	dec	a
      0095E3 26 F8            [ 1]  265 	jrne	00413$
      0095E5 1F 08            [ 2]  266 	ldw	(0x08, sp), x
      0095E7 89               [ 2]  267 	pushw	x
      0095E8 1E 08            [ 2]  268 	ldw	x, (0x08, sp)
      0095EA 89               [ 2]  269 	pushw	x
      0095EB 1E 10            [ 2]  270 	ldw	x, (0x10, sp)
      0095ED 89               [ 2]  271 	pushw	x
      0095EE 90 89            [ 2]  272 	pushw	y
                                    273 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 129: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      0095F0 CD 97 D1         [ 4]  274 	call	__divulong
      0095F3 5B 08            [ 2]  275 	addw	sp, #8
      0095F5 1F 03            [ 2]  276 	ldw	(0x03, sp), x
      0095F7 17 01            [ 2]  277 	ldw	(0x01, sp), y
      0095F9 CD 93 BF         [ 4]  278 	call	_CLK_GetClockFreq
      0095FC 89               [ 2]  279 	pushw	x
      0095FD 90 89            [ 2]  280 	pushw	y
      0095FF 4B 64            [ 1]  281 	push	#0x64
      009601 5F               [ 1]  282 	clrw	x
      009602 89               [ 2]  283 	pushw	x
      009603 4B 00            [ 1]  284 	push	#0x00
      009605 CD 98 2C         [ 4]  285 	call	__mullong
      009608 5B 08            [ 2]  286 	addw	sp, #8
      00960A 1F 0C            [ 2]  287 	ldw	(0x0c, sp), x
      00960C 1E 08            [ 2]  288 	ldw	x, (0x08, sp)
      00960E 89               [ 2]  289 	pushw	x
      00960F 1E 08            [ 2]  290 	ldw	x, (0x08, sp)
      009611 89               [ 2]  291 	pushw	x
      009612 1E 10            [ 2]  292 	ldw	x, (0x10, sp)
      009614 89               [ 2]  293 	pushw	x
      009615 90 89            [ 2]  294 	pushw	y
                                    295 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 131: UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
      009617 CD 97 D1         [ 4]  296 	call	__divulong
      00961A 5B 08            [ 2]  297 	addw	sp, #8
      00961C 1F 07            [ 2]  298 	ldw	(0x07, sp), x
      00961E 90 02            [ 1]  299 	rlwa	y
      009620 6B 05            [ 1]  300 	ld	(0x05, sp), a
      009622 90 01            [ 1]  301 	rrwa	y
      009624 90 9F            [ 1]  302 	ld	a, yl
      009626 AE 52 33         [ 2]  303 	ldw	x, #0x5233
      009629 88               [ 1]  304 	push	a
      00962A F6               [ 1]  305 	ld	a, (x)
      00962B 6B 0A            [ 1]  306 	ld	(0x0a, sp), a
      00962D 1E 04            [ 2]  307 	ldw	x, (0x04, sp)
      00962F 89               [ 2]  308 	pushw	x
      009630 1E 04            [ 2]  309 	ldw	x, (0x04, sp)
      009632 89               [ 2]  310 	pushw	x
      009633 4B 64            [ 1]  311 	push	#0x64
      009635 5F               [ 1]  312 	clrw	x
      009636 89               [ 2]  313 	pushw	x
      009637 4B 00            [ 1]  314 	push	#0x00
      009639 CD 98 2C         [ 4]  315 	call	__mullong
      00963C 5B 08            [ 2]  316 	addw	sp, #8
      00963E 1F 0D            [ 2]  317 	ldw	(0x0d, sp), x
      009640 17 0B            [ 2]  318 	ldw	(0x0b, sp), y
      009642 84               [ 1]  319 	pop	a
      009643 16 07            [ 2]  320 	ldw	y, (0x07, sp)
      009645 72 F2 0C         [ 2]  321 	subw	y, (0x0c, sp)
      009648 12 0B            [ 1]  322 	sbc	a, (0x0b, sp)
      00964A 97               [ 1]  323 	ld	xl, a
      00964B 7B 05            [ 1]  324 	ld	a, (0x05, sp)
      00964D 12 0A            [ 1]  325 	sbc	a, (0x0a, sp)
      00964F 95               [ 1]  326 	ld	xh, a
      009650 A6 04            [ 1]  327 	ld	a, #0x04
      009652                        328 00415$:
      009652 90 58            [ 2]  329 	sllw	y
      009654 59               [ 2]  330 	rlcw	x
      009655 4A               [ 1]  331 	dec	a
      009656 26 FA            [ 1]  332 	jrne	00415$
      009658 4B 64            [ 1]  333 	push	#0x64
      00965A 4B 00            [ 1]  334 	push	#0x00
      00965C 4B 00            [ 1]  335 	push	#0x00
      00965E 4B 00            [ 1]  336 	push	#0x00
      009660 90 89            [ 2]  337 	pushw	y
      009662 89               [ 2]  338 	pushw	x
      009663 CD 97 D1         [ 4]  339 	call	__divulong
      009666 5B 08            [ 2]  340 	addw	sp, #8
      009668 9F               [ 1]  341 	ld	a, xl
      009669 A4 0F            [ 1]  342 	and	a, #0x0f
      00966B 1A 09            [ 1]  343 	or	a, (0x09, sp)
      00966D C7 52 33         [ 1]  344 	ld	0x5233, a
                                    345 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 133: UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
      009670 C6 52 33         [ 1]  346 	ld	a, 0x5233
      009673 6B 0D            [ 1]  347 	ld	(0x0d, sp), a
      009675 1E 03            [ 2]  348 	ldw	x, (0x03, sp)
      009677 A6 10            [ 1]  349 	ld	a, #0x10
      009679 62               [ 2]  350 	div	x, a
      00967A 90 93            [ 1]  351 	ldw	y, x
      00967C 9F               [ 1]  352 	ld	a, xl
      00967D A4 F0            [ 1]  353 	and	a, #0xf0
      00967F 1A 0D            [ 1]  354 	or	a, (0x0d, sp)
      009681 C7 52 33         [ 1]  355 	ld	0x5233, a
                                    356 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 135: UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
      009684 C6 52 32         [ 1]  357 	ld	a, 0x5232
      009687 6B 0D            [ 1]  358 	ld	(0x0d, sp), a
      009689 7B 04            [ 1]  359 	ld	a, (0x04, sp)
      00968B 1A 0D            [ 1]  360 	or	a, (0x0d, sp)
      00968D C7 52 32         [ 1]  361 	ld	0x5232, a
                                    362 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      009690 C6 52 35         [ 1]  363 	ld	a, 0x5235
      009693 A4 F3            [ 1]  364 	and	a, #0xf3
      009695 C7 52 35         [ 1]  365 	ld	0x5235, a
                                    366 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 140: UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
      009698 C6 52 36         [ 1]  367 	ld	a, 0x5236
      00969B A4 F8            [ 1]  368 	and	a, #0xf8
      00969D C7 52 36         [ 1]  369 	ld	0x5236, a
                                    370 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 142: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
      0096A0 C6 52 36         [ 1]  371 	ld	a, 0x5236
      0096A3 6B 0D            [ 1]  372 	ld	(0x0d, sp), a
      0096A5 7B 17            [ 1]  373 	ld	a, (0x17, sp)
      0096A7 A4 07            [ 1]  374 	and	a, #0x07
      0096A9 1A 0D            [ 1]  375 	or	a, (0x0d, sp)
      0096AB C7 52 36         [ 1]  376 	ld	0x5236, a
                                    377 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      0096AE C6 52 35         [ 1]  378 	ld	a, 0x5235
                                    379 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 145: if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
      0096B1 88               [ 1]  380 	push	a
      0096B2 7B 19            [ 1]  381 	ld	a, (0x19, sp)
      0096B4 A5 04            [ 1]  382 	bcp	a, #0x04
      0096B6 84               [ 1]  383 	pop	a
      0096B7 27 07            [ 1]  384 	jreq	00102$
                                    385 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 148: UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
      0096B9 AA 08            [ 1]  386 	or	a, #0x08
      0096BB C7 52 35         [ 1]  387 	ld	0x5235, a
      0096BE 20 05            [ 2]  388 	jra	00103$
      0096C0                        389 00102$:
                                    390 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 153: UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
      0096C0 A4 F7            [ 1]  391 	and	a, #0xf7
      0096C2 C7 52 35         [ 1]  392 	ld	0x5235, a
      0096C5                        393 00103$:
                                    394 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      0096C5 C6 52 35         [ 1]  395 	ld	a, 0x5235
                                    396 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 155: if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
      0096C8 88               [ 1]  397 	push	a
      0096C9 7B 19            [ 1]  398 	ld	a, (0x19, sp)
      0096CB A5 08            [ 1]  399 	bcp	a, #0x08
      0096CD 84               [ 1]  400 	pop	a
      0096CE 27 07            [ 1]  401 	jreq	00105$
                                    402 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 158: UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
      0096D0 AA 04            [ 1]  403 	or	a, #0x04
      0096D2 C7 52 35         [ 1]  404 	ld	0x5235, a
      0096D5 20 05            [ 2]  405 	jra	00106$
      0096D7                        406 00105$:
                                    407 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 163: UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
      0096D7 A4 FB            [ 1]  408 	and	a, #0xfb
      0096D9 C7 52 35         [ 1]  409 	ld	0x5235, a
      0096DC                        410 00106$:
                                    411 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      0096DC C6 52 36         [ 1]  412 	ld	a, 0x5236
                                    413 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 167: if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
      0096DF 0D 17            [ 1]  414 	tnz	(0x17, sp)
      0096E1 2A 07            [ 1]  415 	jrpl	00108$
                                    416 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 170: UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
      0096E3 A4 F7            [ 1]  417 	and	a, #0xf7
      0096E5 C7 52 36         [ 1]  418 	ld	0x5236, a
      0096E8 20 0D            [ 2]  419 	jra	00110$
      0096EA                        420 00108$:
                                    421 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 174: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
      0096EA 88               [ 1]  422 	push	a
      0096EB 7B 18            [ 1]  423 	ld	a, (0x18, sp)
      0096ED A4 08            [ 1]  424 	and	a, #0x08
      0096EF 6B 0E            [ 1]  425 	ld	(0x0e, sp), a
      0096F1 84               [ 1]  426 	pop	a
      0096F2 1A 0D            [ 1]  427 	or	a, (0x0d, sp)
      0096F4 C7 52 36         [ 1]  428 	ld	0x5236, a
      0096F7                        429 00110$:
                                    430 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 176: }
      0096F7 1E 0E            [ 2]  431 	ldw	x, (14, sp)
      0096F9 5B 18            [ 2]  432 	addw	sp, #24
      0096FB FC               [ 2]  433 	jp	(x)
                                    434 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 184: void UART1_Cmd(FunctionalState NewState)
                                    435 ;	-----------------------------------------
                                    436 ;	 function UART1_Cmd
                                    437 ;	-----------------------------------------
      0096FC                        438 _UART1_Cmd:
      0096FC 88               [ 1]  439 	push	a
      0096FD 6B 01            [ 1]  440 	ld	(0x01, sp), a
                                    441 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      0096FF C6 52 34         [ 1]  442 	ld	a, 0x5234
                                    443 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 186: if (NewState != DISABLE)
      009702 0D 01            [ 1]  444 	tnz	(0x01, sp)
      009704 27 07            [ 1]  445 	jreq	00102$
                                    446 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      009706 A4 DF            [ 1]  447 	and	a, #0xdf
      009708 C7 52 34         [ 1]  448 	ld	0x5234, a
      00970B 20 05            [ 2]  449 	jra	00104$
      00970D                        450 00102$:
                                    451 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 194: UART1->CR1 |= UART1_CR1_UARTD;  
      00970D AA 20            [ 1]  452 	or	a, #0x20
      00970F C7 52 34         [ 1]  453 	ld	0x5234, a
      009712                        454 00104$:
                                    455 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 196: }
      009712 84               [ 1]  456 	pop	a
      009713 81               [ 4]  457 	ret
                                    458 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 498: void UART1_SendData8(uint8_t Data)
                                    459 ;	-----------------------------------------
                                    460 ;	 function UART1_SendData8
                                    461 ;	-----------------------------------------
      009714                        462 _UART1_SendData8:
                                    463 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 501: UART1->DR = Data;
      009714 C7 52 31         [ 1]  464 	ld	0x5231, a
                                    465 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 502: }
      009717 81               [ 4]  466 	ret
                                    467 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 602: FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
                                    468 ;	-----------------------------------------
                                    469 ;	 function UART1_GetFlagStatus
                                    470 ;	-----------------------------------------
      009718                        471 _UART1_GetFlagStatus:
      009718 52 02            [ 2]  472 	sub	sp, #2
                                    473 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 607: assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
      00971A 90 93            [ 1]  474 	ldw	y, x
      00971C A3 01 01         [ 2]  475 	cpw	x, #0x0101
      00971F 26 05            [ 1]  476 	jrne	00253$
      009721 A6 01            [ 1]  477 	ld	a, #0x01
      009723 6B 01            [ 1]  478 	ld	(0x01, sp), a
      009725 C5                     479 	.byte 0xc5
      009726                        480 00253$:
      009726 0F 01            [ 1]  481 	clr	(0x01, sp)
      009728                        482 00254$:
      009728 A3 02 10         [ 2]  483 	cpw	x, #0x0210
      00972B 26 03            [ 1]  484 	jrne	00256$
      00972D A6 01            [ 1]  485 	ld	a, #0x01
      00972F 21                     486 	.byte 0x21
      009730                        487 00256$:
      009730 4F               [ 1]  488 	clr	a
      009731                        489 00257$:
      009731 A3 00 80         [ 2]  490 	cpw	x, #0x0080
      009734 27 3A            [ 1]  491 	jreq	00119$
      009736 A3 00 40         [ 2]  492 	cpw	x, #0x0040
      009739 27 35            [ 1]  493 	jreq	00119$
      00973B A3 00 20         [ 2]  494 	cpw	x, #0x0020
      00973E 27 30            [ 1]  495 	jreq	00119$
      009740 A3 00 10         [ 2]  496 	cpw	x, #0x0010
      009743 27 2B            [ 1]  497 	jreq	00119$
      009745 A3 00 08         [ 2]  498 	cpw	x, #0x0008
      009748 27 26            [ 1]  499 	jreq	00119$
      00974A A3 00 04         [ 2]  500 	cpw	x, #0x0004
      00974D 27 21            [ 1]  501 	jreq	00119$
      00974F A3 00 02         [ 2]  502 	cpw	x, #0x0002
      009752 27 1C            [ 1]  503 	jreq	00119$
      009754 5A               [ 2]  504 	decw	x
      009755 27 19            [ 1]  505 	jreq	00119$
      009757 0D 01            [ 1]  506 	tnz	(0x01, sp)
      009759 26 15            [ 1]  507 	jrne	00119$
      00975B 4D               [ 1]  508 	tnz	a
      00975C 26 12            [ 1]  509 	jrne	00119$
      00975E 88               [ 1]  510 	push	a
      00975F 90 89            [ 2]  511 	pushw	y
      009761 4B 5F            [ 1]  512 	push	#0x5f
      009763 4B 02            [ 1]  513 	push	#0x02
      009765 5F               [ 1]  514 	clrw	x
      009766 89               [ 2]  515 	pushw	x
      009767 AE 81 F5         [ 2]  516 	ldw	x, #(___str_0+0)
      00976A CD 82 7D         [ 4]  517 	call	_assert_failed
      00976D 90 85            [ 2]  518 	popw	y
      00976F 84               [ 1]  519 	pop	a
      009770                        520 00119$:
                                    521 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 613: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      009770 61               [ 1]  522 	exg	a, yl
      009771 6B 02            [ 1]  523 	ld	(0x02, sp), a
      009773 61               [ 1]  524 	exg	a, yl
                                    525 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 611: if (UART1_FLAG == UART1_FLAG_LBDF)
      009774 4D               [ 1]  526 	tnz	a
      009775 27 0E            [ 1]  527 	jreq	00114$
                                    528 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 613: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      009777 C6 52 37         [ 1]  529 	ld	a, 0x5237
      00977A 14 02            [ 1]  530 	and	a, (0x02, sp)
      00977C 27 04            [ 1]  531 	jreq	00102$
                                    532 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 616: status = SET;
      00977E A6 01            [ 1]  533 	ld	a, #0x01
      009780 20 20            [ 2]  534 	jra	00115$
      009782                        535 00102$:
                                    536 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 621: status = RESET;
      009782 4F               [ 1]  537 	clr	a
      009783 20 1D            [ 2]  538 	jra	00115$
      009785                        539 00114$:
                                    540 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 624: else if (UART1_FLAG == UART1_FLAG_SBK)
      009785 7B 01            [ 1]  541 	ld	a, (0x01, sp)
      009787 27 0E            [ 1]  542 	jreq	00111$
                                    543 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 626: if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      009789 C6 52 35         [ 1]  544 	ld	a, 0x5235
      00978C 14 02            [ 1]  545 	and	a, (0x02, sp)
      00978E 27 04            [ 1]  546 	jreq	00105$
                                    547 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 629: status = SET;
      009790 A6 01            [ 1]  548 	ld	a, #0x01
      009792 20 0E            [ 2]  549 	jra	00115$
      009794                        550 00105$:
                                    551 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 634: status = RESET;
      009794 4F               [ 1]  552 	clr	a
      009795 20 0B            [ 2]  553 	jra	00115$
      009797                        554 00111$:
                                    555 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 639: if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      009797 C6 52 30         [ 1]  556 	ld	a, 0x5230
      00979A 14 02            [ 1]  557 	and	a, (0x02, sp)
      00979C 27 03            [ 1]  558 	jreq	00108$
                                    559 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 642: status = SET;
      00979E A6 01            [ 1]  560 	ld	a, #0x01
                                    561 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 647: status = RESET;
      0097A0 21                     562 	.byte 0x21
      0097A1                        563 00108$:
      0097A1 4F               [ 1]  564 	clr	a
      0097A2                        565 00115$:
                                    566 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 651: return status;
                                    567 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 652: }
      0097A2 5B 02            [ 2]  568 	addw	sp, #2
      0097A4 81               [ 4]  569 	ret
                                    570 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 680: void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
                                    571 ;	-----------------------------------------
                                    572 ;	 function UART1_ClearFlag
                                    573 ;	-----------------------------------------
      0097A5                        574 _UART1_ClearFlag:
                                    575 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 682: assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
      0097A5 A3 00 20         [ 2]  576 	cpw	x, #0x0020
      0097A8 26 03            [ 1]  577 	jrne	00133$
      0097AA A6 01            [ 1]  578 	ld	a, #0x01
      0097AC 21                     579 	.byte 0x21
      0097AD                        580 00133$:
      0097AD 4F               [ 1]  581 	clr	a
      0097AE                        582 00134$:
      0097AE 4D               [ 1]  583 	tnz	a
      0097AF 26 13            [ 1]  584 	jrne	00107$
      0097B1 A3 02 10         [ 2]  585 	cpw	x, #0x0210
      0097B4 27 0E            [ 1]  586 	jreq	00107$
      0097B6 88               [ 1]  587 	push	a
      0097B7 4B AA            [ 1]  588 	push	#0xaa
      0097B9 4B 02            [ 1]  589 	push	#0x02
      0097BB 5F               [ 1]  590 	clrw	x
      0097BC 89               [ 2]  591 	pushw	x
      0097BD AE 81 F5         [ 2]  592 	ldw	x, #(___str_0+0)
      0097C0 CD 82 7D         [ 4]  593 	call	_assert_failed
      0097C3 84               [ 1]  594 	pop	a
      0097C4                        595 00107$:
                                    596 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 685: if (UART1_FLAG == UART1_FLAG_RXNE)
      0097C4 4D               [ 1]  597 	tnz	a
      0097C5 27 05            [ 1]  598 	jreq	00102$
                                    599 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 687: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
      0097C7 35 DF 52 30      [ 1]  600 	mov	0x5230+0, #0xdf
      0097CB 81               [ 4]  601 	ret
      0097CC                        602 00102$:
                                    603 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 692: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
      0097CC 72 19 52 37      [ 1]  604 	bres	0x5237, #4
                                    605 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 694: }
      0097D0 81               [ 4]  606 	ret
                                    607 	.area CODE
                                    608 	.area CONST
                                    609 	.area CONST
      0081F5                        610 ___str_0:
      0081F5 2F 77 6F 72 6B 73 70   611 	.ascii "/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Li"
             61 63 65 2F 53 6F 66
             74 77 61 72 65 2F 46
             69 72 6D 77 61 72 65
             2F 6E 65 77 5F 62 65
             67 69 6E 69 6E 67 2F
             53 54 4D 38 53 5F 53
             74 64 50 65 72 69 70
             68 5F 4C 69
      008231 62 2F 73 72 63 2F 73   612 	.ascii "b/src/stm8s_uart1.c"
             74 6D 38 73 5F 75 61
             72 74 31 2E 63
      008244 00                     613 	.db 0x00
                                    614 	.area CODE
                                    615 	.area INITIALIZER
                                    616 	.area CABS (ABS)
