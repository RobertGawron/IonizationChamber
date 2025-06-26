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
      0094B4                         60 _UART1_DeInit:
                                     61 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 57: (void)UART1->SR;
      0094B4 C6 52 30         [ 1]   62 	ld	a, 0x5230
                                     63 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 58: (void)UART1->DR;
      0094B7 C6 52 31         [ 1]   64 	ld	a, 0x5231
                                     65 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 60: UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
      0094BA 35 00 52 33      [ 1]   66 	mov	0x5233+0, #0x00
                                     67 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 61: UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
      0094BE 35 00 52 32      [ 1]   68 	mov	0x5232+0, #0x00
                                     69 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 63: UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
      0094C2 35 00 52 34      [ 1]   70 	mov	0x5234+0, #0x00
                                     71 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 64: UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
      0094C6 35 00 52 35      [ 1]   72 	mov	0x5235+0, #0x00
                                     73 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 65: UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
      0094CA 35 00 52 36      [ 1]   74 	mov	0x5236+0, #0x00
                                     75 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 66: UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
      0094CE 35 00 52 37      [ 1]   76 	mov	0x5237+0, #0x00
                                     77 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 67: UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
      0094D2 35 00 52 38      [ 1]   78 	mov	0x5238+0, #0x00
                                     79 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 69: UART1->GTR = UART1_GTR_RESET_VALUE;
      0094D6 35 00 52 39      [ 1]   80 	mov	0x5239+0, #0x00
                                     81 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 70: UART1->PSCR = UART1_PSCR_RESET_VALUE;
      0094DA 35 00 52 3A      [ 1]   82 	mov	0x523a+0, #0x00
                                     83 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 71: }
      0094DE 81               [ 4]   84 	ret
                                     85 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 90: void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
                                     86 ;	-----------------------------------------
                                     87 ;	 function UART1_Init
                                     88 ;	-----------------------------------------
      0094DF                         89 _UART1_Init:
      0094DF 52 0D            [ 2]   90 	sub	sp, #13
                                     91 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 97: assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
      0094E1 AE 89 68         [ 2]   92 	ldw	x, #0x8968
      0094E4 13 12            [ 2]   93 	cpw	x, (0x12, sp)
      0094E6 A6 09            [ 1]   94 	ld	a, #0x09
      0094E8 12 11            [ 1]   95 	sbc	a, (0x11, sp)
      0094EA 4F               [ 1]   96 	clr	a
      0094EB 12 10            [ 1]   97 	sbc	a, (0x10, sp)
      0094ED 24 0C            [ 1]   98 	jrnc	00113$
      0094EF 4B 61            [ 1]   99 	push	#0x61
      0094F1 5F               [ 1]  100 	clrw	x
      0094F2 89               [ 2]  101 	pushw	x
      0094F3 4B 00            [ 1]  102 	push	#0x00
      0094F5 AE 81 F5         [ 2]  103 	ldw	x, #(___str_0+0)
      0094F8 CD 82 93         [ 4]  104 	call	_assert_failed
      0094FB                        105 00113$:
                                    106 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 98: assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
      0094FB 0D 14            [ 1]  107 	tnz	(0x14, sp)
      0094FD 27 12            [ 1]  108 	jreq	00115$
      0094FF 7B 14            [ 1]  109 	ld	a, (0x14, sp)
      009501 A1 10            [ 1]  110 	cp	a, #0x10
      009503 27 0C            [ 1]  111 	jreq	00115$
      009505 4B 62            [ 1]  112 	push	#0x62
      009507 5F               [ 1]  113 	clrw	x
      009508 89               [ 2]  114 	pushw	x
      009509 4B 00            [ 1]  115 	push	#0x00
      00950B AE 81 F5         [ 2]  116 	ldw	x, #(___str_0+0)
      00950E CD 82 93         [ 4]  117 	call	_assert_failed
      009511                        118 00115$:
                                    119 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 99: assert_param(IS_UART1_STOPBITS_OK(StopBits));
      009511 0D 15            [ 1]  120 	tnz	(0x15, sp)
      009513 27 1E            [ 1]  121 	jreq	00120$
      009515 7B 15            [ 1]  122 	ld	a, (0x15, sp)
      009517 A1 10            [ 1]  123 	cp	a, #0x10
      009519 27 18            [ 1]  124 	jreq	00120$
      00951B 7B 15            [ 1]  125 	ld	a, (0x15, sp)
      00951D A1 20            [ 1]  126 	cp	a, #0x20
      00951F 27 12            [ 1]  127 	jreq	00120$
      009521 7B 15            [ 1]  128 	ld	a, (0x15, sp)
      009523 A1 30            [ 1]  129 	cp	a, #0x30
      009525 27 0C            [ 1]  130 	jreq	00120$
      009527 4B 63            [ 1]  131 	push	#0x63
      009529 5F               [ 1]  132 	clrw	x
      00952A 89               [ 2]  133 	pushw	x
      00952B 4B 00            [ 1]  134 	push	#0x00
      00952D AE 81 F5         [ 2]  135 	ldw	x, #(___str_0+0)
      009530 CD 82 93         [ 4]  136 	call	_assert_failed
      009533                        137 00120$:
                                    138 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 100: assert_param(IS_UART1_PARITY_OK(Parity));
      009533 0D 16            [ 1]  139 	tnz	(0x16, sp)
      009535 27 18            [ 1]  140 	jreq	00131$
      009537 7B 16            [ 1]  141 	ld	a, (0x16, sp)
      009539 A1 04            [ 1]  142 	cp	a, #0x04
      00953B 27 12            [ 1]  143 	jreq	00131$
      00953D 7B 16            [ 1]  144 	ld	a, (0x16, sp)
      00953F A1 06            [ 1]  145 	cp	a, #0x06
      009541 27 0C            [ 1]  146 	jreq	00131$
      009543 4B 64            [ 1]  147 	push	#0x64
      009545 5F               [ 1]  148 	clrw	x
      009546 89               [ 2]  149 	pushw	x
      009547 4B 00            [ 1]  150 	push	#0x00
      009549 AE 81 F5         [ 2]  151 	ldw	x, #(___str_0+0)
      00954C CD 82 93         [ 4]  152 	call	_assert_failed
      00954F                        153 00131$:
                                    154 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 101: assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
      00954F 7B 18            [ 1]  155 	ld	a, (0x18, sp)
      009551 A1 08            [ 1]  156 	cp	a, #0x08
      009553 27 3F            [ 1]  157 	jreq	00139$
      009555 7B 18            [ 1]  158 	ld	a, (0x18, sp)
      009557 A1 40            [ 1]  159 	cp	a, #0x40
      009559 27 39            [ 1]  160 	jreq	00139$
      00955B 7B 18            [ 1]  161 	ld	a, (0x18, sp)
      00955D A1 04            [ 1]  162 	cp	a, #0x04
      00955F 27 33            [ 1]  163 	jreq	00139$
      009561 7B 18            [ 1]  164 	ld	a, (0x18, sp)
      009563 A1 80            [ 1]  165 	cp	a, #0x80
      009565 27 2D            [ 1]  166 	jreq	00139$
      009567 7B 18            [ 1]  167 	ld	a, (0x18, sp)
      009569 A0 0C            [ 1]  168 	sub	a, #0x0c
      00956B 26 02            [ 1]  169 	jrne	00388$
      00956D 4C               [ 1]  170 	inc	a
      00956E 21                     171 	.byte 0x21
      00956F                        172 00388$:
      00956F 4F               [ 1]  173 	clr	a
      009570                        174 00389$:
      009570 4D               [ 1]  175 	tnz	a
      009571 26 21            [ 1]  176 	jrne	00139$
      009573 4D               [ 1]  177 	tnz	a
      009574 26 1E            [ 1]  178 	jrne	00139$
      009576 7B 18            [ 1]  179 	ld	a, (0x18, sp)
      009578 A1 44            [ 1]  180 	cp	a, #0x44
      00957A 27 18            [ 1]  181 	jreq	00139$
      00957C 7B 18            [ 1]  182 	ld	a, (0x18, sp)
      00957E A1 C0            [ 1]  183 	cp	a, #0xc0
      009580 27 12            [ 1]  184 	jreq	00139$
      009582 7B 18            [ 1]  185 	ld	a, (0x18, sp)
      009584 A1 88            [ 1]  186 	cp	a, #0x88
      009586 27 0C            [ 1]  187 	jreq	00139$
      009588 4B 65            [ 1]  188 	push	#0x65
      00958A 5F               [ 1]  189 	clrw	x
      00958B 89               [ 2]  190 	pushw	x
      00958C 4B 00            [ 1]  191 	push	#0x00
      00958E AE 81 F5         [ 2]  192 	ldw	x, #(___str_0+0)
      009591 CD 82 93         [ 4]  193 	call	_assert_failed
      009594                        194 00139$:
                                    195 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 102: assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
      009594 7B 17            [ 1]  196 	ld	a, (0x17, sp)
      009596 43               [ 1]  197 	cpl	a
      009597 A5 88            [ 1]  198 	bcp	a, #0x88
      009599 27 15            [ 1]  199 	jreq	00167$
      00959B 7B 17            [ 1]  200 	ld	a, (0x17, sp)
      00959D 43               [ 1]  201 	cpl	a
      00959E A5 44            [ 1]  202 	bcp	a, #0x44
      0095A0 27 0E            [ 1]  203 	jreq	00167$
      0095A2 7B 17            [ 1]  204 	ld	a, (0x17, sp)
      0095A4 43               [ 1]  205 	cpl	a
      0095A5 A5 22            [ 1]  206 	bcp	a, #0x22
      0095A7 27 07            [ 1]  207 	jreq	00167$
      0095A9 7B 17            [ 1]  208 	ld	a, (0x17, sp)
      0095AB 43               [ 1]  209 	cpl	a
      0095AC A5 11            [ 1]  210 	bcp	a, #0x11
      0095AE 26 0C            [ 1]  211 	jrne	00165$
      0095B0                        212 00167$:
      0095B0 4B 66            [ 1]  213 	push	#0x66
      0095B2 5F               [ 1]  214 	clrw	x
      0095B3 89               [ 2]  215 	pushw	x
      0095B4 4B 00            [ 1]  216 	push	#0x00
      0095B6 AE 81 F5         [ 2]  217 	ldw	x, #(___str_0+0)
      0095B9 CD 82 93         [ 4]  218 	call	_assert_failed
      0095BC                        219 00165$:
                                    220 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 105: UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
      0095BC 72 19 52 34      [ 1]  221 	bres	0x5234, #4
                                    222 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 108: UART1->CR1 |= (uint8_t)WordLength;
      0095C0 C6 52 34         [ 1]  223 	ld	a, 0x5234
      0095C3 1A 14            [ 1]  224 	or	a, (0x14, sp)
      0095C5 C7 52 34         [ 1]  225 	ld	0x5234, a
                                    226 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      0095C8 C6 52 36         [ 1]  227 	ld	a, 0x5236
      0095CB A4 CF            [ 1]  228 	and	a, #0xcf
      0095CD C7 52 36         [ 1]  229 	ld	0x5236, a
                                    230 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 113: UART1->CR3 |= (uint8_t)StopBits;  
      0095D0 C6 52 36         [ 1]  231 	ld	a, 0x5236
      0095D3 1A 15            [ 1]  232 	or	a, (0x15, sp)
      0095D5 C7 52 36         [ 1]  233 	ld	0x5236, a
                                    234 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 116: UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
      0095D8 C6 52 34         [ 1]  235 	ld	a, 0x5234
      0095DB A4 F9            [ 1]  236 	and	a, #0xf9
      0095DD C7 52 34         [ 1]  237 	ld	0x5234, a
                                    238 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 118: UART1->CR1 |= (uint8_t)Parity;  
      0095E0 C6 52 34         [ 1]  239 	ld	a, 0x5234
      0095E3 1A 16            [ 1]  240 	or	a, (0x16, sp)
      0095E5 C7 52 34         [ 1]  241 	ld	0x5234, a
                                    242 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 121: UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
      0095E8 C6 52 32         [ 1]  243 	ld	a, 0x5232
      0095EB 35 00 52 32      [ 1]  244 	mov	0x5232+0, #0x00
                                    245 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 123: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
      0095EF C6 52 33         [ 1]  246 	ld	a, 0x5233
      0095F2 A4 0F            [ 1]  247 	and	a, #0x0f
      0095F4 C7 52 33         [ 1]  248 	ld	0x5233, a
                                    249 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 125: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
      0095F7 C6 52 33         [ 1]  250 	ld	a, 0x5233
      0095FA A4 F0            [ 1]  251 	and	a, #0xf0
      0095FC C7 52 33         [ 1]  252 	ld	0x5233, a
                                    253 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 128: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      0095FF CD 93 EE         [ 4]  254 	call	_CLK_GetClockFreq
      009602 1F 0C            [ 2]  255 	ldw	(0x0c, sp), x
      009604 1E 10            [ 2]  256 	ldw	x, (0x10, sp)
      009606 1F 06            [ 2]  257 	ldw	(0x06, sp), x
      009608 1E 12            [ 2]  258 	ldw	x, (0x12, sp)
      00960A A6 04            [ 1]  259 	ld	a, #0x04
      00960C                        260 00413$:
      00960C 58               [ 2]  261 	sllw	x
      00960D 09 07            [ 1]  262 	rlc	(0x07, sp)
      00960F 09 06            [ 1]  263 	rlc	(0x06, sp)
      009611 4A               [ 1]  264 	dec	a
      009612 26 F8            [ 1]  265 	jrne	00413$
      009614 1F 08            [ 2]  266 	ldw	(0x08, sp), x
      009616 89               [ 2]  267 	pushw	x
      009617 1E 08            [ 2]  268 	ldw	x, (0x08, sp)
      009619 89               [ 2]  269 	pushw	x
      00961A 1E 10            [ 2]  270 	ldw	x, (0x10, sp)
      00961C 89               [ 2]  271 	pushw	x
      00961D 90 89            [ 2]  272 	pushw	y
                                    273 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 129: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      00961F CD 98 00         [ 4]  274 	call	__divulong
      009622 5B 08            [ 2]  275 	addw	sp, #8
      009624 1F 03            [ 2]  276 	ldw	(0x03, sp), x
      009626 17 01            [ 2]  277 	ldw	(0x01, sp), y
      009628 CD 93 EE         [ 4]  278 	call	_CLK_GetClockFreq
      00962B 89               [ 2]  279 	pushw	x
      00962C 90 89            [ 2]  280 	pushw	y
      00962E 4B 64            [ 1]  281 	push	#0x64
      009630 5F               [ 1]  282 	clrw	x
      009631 89               [ 2]  283 	pushw	x
      009632 4B 00            [ 1]  284 	push	#0x00
      009634 CD 98 5B         [ 4]  285 	call	__mullong
      009637 5B 08            [ 2]  286 	addw	sp, #8
      009639 1F 0C            [ 2]  287 	ldw	(0x0c, sp), x
      00963B 1E 08            [ 2]  288 	ldw	x, (0x08, sp)
      00963D 89               [ 2]  289 	pushw	x
      00963E 1E 08            [ 2]  290 	ldw	x, (0x08, sp)
      009640 89               [ 2]  291 	pushw	x
      009641 1E 10            [ 2]  292 	ldw	x, (0x10, sp)
      009643 89               [ 2]  293 	pushw	x
      009644 90 89            [ 2]  294 	pushw	y
                                    295 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 131: UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
      009646 CD 98 00         [ 4]  296 	call	__divulong
      009649 5B 08            [ 2]  297 	addw	sp, #8
      00964B 1F 07            [ 2]  298 	ldw	(0x07, sp), x
      00964D 90 02            [ 1]  299 	rlwa	y
      00964F 6B 05            [ 1]  300 	ld	(0x05, sp), a
      009651 90 01            [ 1]  301 	rrwa	y
      009653 90 9F            [ 1]  302 	ld	a, yl
      009655 AE 52 33         [ 2]  303 	ldw	x, #0x5233
      009658 88               [ 1]  304 	push	a
      009659 F6               [ 1]  305 	ld	a, (x)
      00965A 6B 0A            [ 1]  306 	ld	(0x0a, sp), a
      00965C 1E 04            [ 2]  307 	ldw	x, (0x04, sp)
      00965E 89               [ 2]  308 	pushw	x
      00965F 1E 04            [ 2]  309 	ldw	x, (0x04, sp)
      009661 89               [ 2]  310 	pushw	x
      009662 4B 64            [ 1]  311 	push	#0x64
      009664 5F               [ 1]  312 	clrw	x
      009665 89               [ 2]  313 	pushw	x
      009666 4B 00            [ 1]  314 	push	#0x00
      009668 CD 98 5B         [ 4]  315 	call	__mullong
      00966B 5B 08            [ 2]  316 	addw	sp, #8
      00966D 1F 0D            [ 2]  317 	ldw	(0x0d, sp), x
      00966F 17 0B            [ 2]  318 	ldw	(0x0b, sp), y
      009671 84               [ 1]  319 	pop	a
      009672 16 07            [ 2]  320 	ldw	y, (0x07, sp)
      009674 72 F2 0C         [ 2]  321 	subw	y, (0x0c, sp)
      009677 12 0B            [ 1]  322 	sbc	a, (0x0b, sp)
      009679 97               [ 1]  323 	ld	xl, a
      00967A 7B 05            [ 1]  324 	ld	a, (0x05, sp)
      00967C 12 0A            [ 1]  325 	sbc	a, (0x0a, sp)
      00967E 95               [ 1]  326 	ld	xh, a
      00967F A6 04            [ 1]  327 	ld	a, #0x04
      009681                        328 00415$:
      009681 90 58            [ 2]  329 	sllw	y
      009683 59               [ 2]  330 	rlcw	x
      009684 4A               [ 1]  331 	dec	a
      009685 26 FA            [ 1]  332 	jrne	00415$
      009687 4B 64            [ 1]  333 	push	#0x64
      009689 4B 00            [ 1]  334 	push	#0x00
      00968B 4B 00            [ 1]  335 	push	#0x00
      00968D 4B 00            [ 1]  336 	push	#0x00
      00968F 90 89            [ 2]  337 	pushw	y
      009691 89               [ 2]  338 	pushw	x
      009692 CD 98 00         [ 4]  339 	call	__divulong
      009695 5B 08            [ 2]  340 	addw	sp, #8
      009697 9F               [ 1]  341 	ld	a, xl
      009698 A4 0F            [ 1]  342 	and	a, #0x0f
      00969A 1A 09            [ 1]  343 	or	a, (0x09, sp)
      00969C C7 52 33         [ 1]  344 	ld	0x5233, a
                                    345 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 133: UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
      00969F C6 52 33         [ 1]  346 	ld	a, 0x5233
      0096A2 6B 0D            [ 1]  347 	ld	(0x0d, sp), a
      0096A4 1E 03            [ 2]  348 	ldw	x, (0x03, sp)
      0096A6 A6 10            [ 1]  349 	ld	a, #0x10
      0096A8 62               [ 2]  350 	div	x, a
      0096A9 90 93            [ 1]  351 	ldw	y, x
      0096AB 9F               [ 1]  352 	ld	a, xl
      0096AC A4 F0            [ 1]  353 	and	a, #0xf0
      0096AE 1A 0D            [ 1]  354 	or	a, (0x0d, sp)
      0096B0 C7 52 33         [ 1]  355 	ld	0x5233, a
                                    356 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 135: UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
      0096B3 C6 52 32         [ 1]  357 	ld	a, 0x5232
      0096B6 6B 0D            [ 1]  358 	ld	(0x0d, sp), a
      0096B8 7B 04            [ 1]  359 	ld	a, (0x04, sp)
      0096BA 1A 0D            [ 1]  360 	or	a, (0x0d, sp)
      0096BC C7 52 32         [ 1]  361 	ld	0x5232, a
                                    362 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      0096BF C6 52 35         [ 1]  363 	ld	a, 0x5235
      0096C2 A4 F3            [ 1]  364 	and	a, #0xf3
      0096C4 C7 52 35         [ 1]  365 	ld	0x5235, a
                                    366 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 140: UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
      0096C7 C6 52 36         [ 1]  367 	ld	a, 0x5236
      0096CA A4 F8            [ 1]  368 	and	a, #0xf8
      0096CC C7 52 36         [ 1]  369 	ld	0x5236, a
                                    370 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 142: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
      0096CF C6 52 36         [ 1]  371 	ld	a, 0x5236
      0096D2 6B 0D            [ 1]  372 	ld	(0x0d, sp), a
      0096D4 7B 17            [ 1]  373 	ld	a, (0x17, sp)
      0096D6 A4 07            [ 1]  374 	and	a, #0x07
      0096D8 1A 0D            [ 1]  375 	or	a, (0x0d, sp)
      0096DA C7 52 36         [ 1]  376 	ld	0x5236, a
                                    377 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      0096DD C6 52 35         [ 1]  378 	ld	a, 0x5235
                                    379 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 145: if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
      0096E0 88               [ 1]  380 	push	a
      0096E1 7B 19            [ 1]  381 	ld	a, (0x19, sp)
      0096E3 A5 04            [ 1]  382 	bcp	a, #0x04
      0096E5 84               [ 1]  383 	pop	a
      0096E6 27 07            [ 1]  384 	jreq	00102$
                                    385 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 148: UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
      0096E8 AA 08            [ 1]  386 	or	a, #0x08
      0096EA C7 52 35         [ 1]  387 	ld	0x5235, a
      0096ED 20 05            [ 2]  388 	jra	00103$
      0096EF                        389 00102$:
                                    390 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 153: UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
      0096EF A4 F7            [ 1]  391 	and	a, #0xf7
      0096F1 C7 52 35         [ 1]  392 	ld	0x5235, a
      0096F4                        393 00103$:
                                    394 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      0096F4 C6 52 35         [ 1]  395 	ld	a, 0x5235
                                    396 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 155: if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
      0096F7 88               [ 1]  397 	push	a
      0096F8 7B 19            [ 1]  398 	ld	a, (0x19, sp)
      0096FA A5 08            [ 1]  399 	bcp	a, #0x08
      0096FC 84               [ 1]  400 	pop	a
      0096FD 27 07            [ 1]  401 	jreq	00105$
                                    402 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 158: UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
      0096FF AA 04            [ 1]  403 	or	a, #0x04
      009701 C7 52 35         [ 1]  404 	ld	0x5235, a
      009704 20 05            [ 2]  405 	jra	00106$
      009706                        406 00105$:
                                    407 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 163: UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
      009706 A4 FB            [ 1]  408 	and	a, #0xfb
      009708 C7 52 35         [ 1]  409 	ld	0x5235, a
      00970B                        410 00106$:
                                    411 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      00970B C6 52 36         [ 1]  412 	ld	a, 0x5236
                                    413 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 167: if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
      00970E 0D 17            [ 1]  414 	tnz	(0x17, sp)
      009710 2A 07            [ 1]  415 	jrpl	00108$
                                    416 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 170: UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
      009712 A4 F7            [ 1]  417 	and	a, #0xf7
      009714 C7 52 36         [ 1]  418 	ld	0x5236, a
      009717 20 0D            [ 2]  419 	jra	00110$
      009719                        420 00108$:
                                    421 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 174: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
      009719 88               [ 1]  422 	push	a
      00971A 7B 18            [ 1]  423 	ld	a, (0x18, sp)
      00971C A4 08            [ 1]  424 	and	a, #0x08
      00971E 6B 0E            [ 1]  425 	ld	(0x0e, sp), a
      009720 84               [ 1]  426 	pop	a
      009721 1A 0D            [ 1]  427 	or	a, (0x0d, sp)
      009723 C7 52 36         [ 1]  428 	ld	0x5236, a
      009726                        429 00110$:
                                    430 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 176: }
      009726 1E 0E            [ 2]  431 	ldw	x, (14, sp)
      009728 5B 18            [ 2]  432 	addw	sp, #24
      00972A FC               [ 2]  433 	jp	(x)
                                    434 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 184: void UART1_Cmd(FunctionalState NewState)
                                    435 ;	-----------------------------------------
                                    436 ;	 function UART1_Cmd
                                    437 ;	-----------------------------------------
      00972B                        438 _UART1_Cmd:
      00972B 88               [ 1]  439 	push	a
      00972C 6B 01            [ 1]  440 	ld	(0x01, sp), a
                                    441 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      00972E C6 52 34         [ 1]  442 	ld	a, 0x5234
                                    443 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 186: if (NewState != DISABLE)
      009731 0D 01            [ 1]  444 	tnz	(0x01, sp)
      009733 27 07            [ 1]  445 	jreq	00102$
                                    446 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      009735 A4 DF            [ 1]  447 	and	a, #0xdf
      009737 C7 52 34         [ 1]  448 	ld	0x5234, a
      00973A 20 05            [ 2]  449 	jra	00104$
      00973C                        450 00102$:
                                    451 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 194: UART1->CR1 |= UART1_CR1_UARTD;  
      00973C AA 20            [ 1]  452 	or	a, #0x20
      00973E C7 52 34         [ 1]  453 	ld	0x5234, a
      009741                        454 00104$:
                                    455 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 196: }
      009741 84               [ 1]  456 	pop	a
      009742 81               [ 4]  457 	ret
                                    458 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 498: void UART1_SendData8(uint8_t Data)
                                    459 ;	-----------------------------------------
                                    460 ;	 function UART1_SendData8
                                    461 ;	-----------------------------------------
      009743                        462 _UART1_SendData8:
                                    463 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 501: UART1->DR = Data;
      009743 C7 52 31         [ 1]  464 	ld	0x5231, a
                                    465 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 502: }
      009746 81               [ 4]  466 	ret
                                    467 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 602: FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
                                    468 ;	-----------------------------------------
                                    469 ;	 function UART1_GetFlagStatus
                                    470 ;	-----------------------------------------
      009747                        471 _UART1_GetFlagStatus:
      009747 52 02            [ 2]  472 	sub	sp, #2
                                    473 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 607: assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
      009749 90 93            [ 1]  474 	ldw	y, x
      00974B A3 01 01         [ 2]  475 	cpw	x, #0x0101
      00974E 26 05            [ 1]  476 	jrne	00253$
      009750 A6 01            [ 1]  477 	ld	a, #0x01
      009752 6B 01            [ 1]  478 	ld	(0x01, sp), a
      009754 C5                     479 	.byte 0xc5
      009755                        480 00253$:
      009755 0F 01            [ 1]  481 	clr	(0x01, sp)
      009757                        482 00254$:
      009757 A3 02 10         [ 2]  483 	cpw	x, #0x0210
      00975A 26 03            [ 1]  484 	jrne	00256$
      00975C A6 01            [ 1]  485 	ld	a, #0x01
      00975E 21                     486 	.byte 0x21
      00975F                        487 00256$:
      00975F 4F               [ 1]  488 	clr	a
      009760                        489 00257$:
      009760 A3 00 80         [ 2]  490 	cpw	x, #0x0080
      009763 27 3A            [ 1]  491 	jreq	00119$
      009765 A3 00 40         [ 2]  492 	cpw	x, #0x0040
      009768 27 35            [ 1]  493 	jreq	00119$
      00976A A3 00 20         [ 2]  494 	cpw	x, #0x0020
      00976D 27 30            [ 1]  495 	jreq	00119$
      00976F A3 00 10         [ 2]  496 	cpw	x, #0x0010
      009772 27 2B            [ 1]  497 	jreq	00119$
      009774 A3 00 08         [ 2]  498 	cpw	x, #0x0008
      009777 27 26            [ 1]  499 	jreq	00119$
      009779 A3 00 04         [ 2]  500 	cpw	x, #0x0004
      00977C 27 21            [ 1]  501 	jreq	00119$
      00977E A3 00 02         [ 2]  502 	cpw	x, #0x0002
      009781 27 1C            [ 1]  503 	jreq	00119$
      009783 5A               [ 2]  504 	decw	x
      009784 27 19            [ 1]  505 	jreq	00119$
      009786 0D 01            [ 1]  506 	tnz	(0x01, sp)
      009788 26 15            [ 1]  507 	jrne	00119$
      00978A 4D               [ 1]  508 	tnz	a
      00978B 26 12            [ 1]  509 	jrne	00119$
      00978D 88               [ 1]  510 	push	a
      00978E 90 89            [ 2]  511 	pushw	y
      009790 4B 5F            [ 1]  512 	push	#0x5f
      009792 4B 02            [ 1]  513 	push	#0x02
      009794 5F               [ 1]  514 	clrw	x
      009795 89               [ 2]  515 	pushw	x
      009796 AE 81 F5         [ 2]  516 	ldw	x, #(___str_0+0)
      009799 CD 82 93         [ 4]  517 	call	_assert_failed
      00979C 90 85            [ 2]  518 	popw	y
      00979E 84               [ 1]  519 	pop	a
      00979F                        520 00119$:
                                    521 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 613: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      00979F 61               [ 1]  522 	exg	a, yl
      0097A0 6B 02            [ 1]  523 	ld	(0x02, sp), a
      0097A2 61               [ 1]  524 	exg	a, yl
                                    525 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 611: if (UART1_FLAG == UART1_FLAG_LBDF)
      0097A3 4D               [ 1]  526 	tnz	a
      0097A4 27 0E            [ 1]  527 	jreq	00114$
                                    528 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 613: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      0097A6 C6 52 37         [ 1]  529 	ld	a, 0x5237
      0097A9 14 02            [ 1]  530 	and	a, (0x02, sp)
      0097AB 27 04            [ 1]  531 	jreq	00102$
                                    532 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 616: status = SET;
      0097AD A6 01            [ 1]  533 	ld	a, #0x01
      0097AF 20 20            [ 2]  534 	jra	00115$
      0097B1                        535 00102$:
                                    536 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 621: status = RESET;
      0097B1 4F               [ 1]  537 	clr	a
      0097B2 20 1D            [ 2]  538 	jra	00115$
      0097B4                        539 00114$:
                                    540 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 624: else if (UART1_FLAG == UART1_FLAG_SBK)
      0097B4 7B 01            [ 1]  541 	ld	a, (0x01, sp)
      0097B6 27 0E            [ 1]  542 	jreq	00111$
                                    543 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 626: if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      0097B8 C6 52 35         [ 1]  544 	ld	a, 0x5235
      0097BB 14 02            [ 1]  545 	and	a, (0x02, sp)
      0097BD 27 04            [ 1]  546 	jreq	00105$
                                    547 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 629: status = SET;
      0097BF A6 01            [ 1]  548 	ld	a, #0x01
      0097C1 20 0E            [ 2]  549 	jra	00115$
      0097C3                        550 00105$:
                                    551 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 634: status = RESET;
      0097C3 4F               [ 1]  552 	clr	a
      0097C4 20 0B            [ 2]  553 	jra	00115$
      0097C6                        554 00111$:
                                    555 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 639: if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      0097C6 C6 52 30         [ 1]  556 	ld	a, 0x5230
      0097C9 14 02            [ 1]  557 	and	a, (0x02, sp)
      0097CB 27 03            [ 1]  558 	jreq	00108$
                                    559 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 642: status = SET;
      0097CD A6 01            [ 1]  560 	ld	a, #0x01
                                    561 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 647: status = RESET;
      0097CF 21                     562 	.byte 0x21
      0097D0                        563 00108$:
      0097D0 4F               [ 1]  564 	clr	a
      0097D1                        565 00115$:
                                    566 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 651: return status;
                                    567 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 652: }
      0097D1 5B 02            [ 2]  568 	addw	sp, #2
      0097D3 81               [ 4]  569 	ret
                                    570 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 680: void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
                                    571 ;	-----------------------------------------
                                    572 ;	 function UART1_ClearFlag
                                    573 ;	-----------------------------------------
      0097D4                        574 _UART1_ClearFlag:
                                    575 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 682: assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
      0097D4 A3 00 20         [ 2]  576 	cpw	x, #0x0020
      0097D7 26 03            [ 1]  577 	jrne	00133$
      0097D9 A6 01            [ 1]  578 	ld	a, #0x01
      0097DB 21                     579 	.byte 0x21
      0097DC                        580 00133$:
      0097DC 4F               [ 1]  581 	clr	a
      0097DD                        582 00134$:
      0097DD 4D               [ 1]  583 	tnz	a
      0097DE 26 13            [ 1]  584 	jrne	00107$
      0097E0 A3 02 10         [ 2]  585 	cpw	x, #0x0210
      0097E3 27 0E            [ 1]  586 	jreq	00107$
      0097E5 88               [ 1]  587 	push	a
      0097E6 4B AA            [ 1]  588 	push	#0xaa
      0097E8 4B 02            [ 1]  589 	push	#0x02
      0097EA 5F               [ 1]  590 	clrw	x
      0097EB 89               [ 2]  591 	pushw	x
      0097EC AE 81 F5         [ 2]  592 	ldw	x, #(___str_0+0)
      0097EF CD 82 93         [ 4]  593 	call	_assert_failed
      0097F2 84               [ 1]  594 	pop	a
      0097F3                        595 00107$:
                                    596 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 685: if (UART1_FLAG == UART1_FLAG_RXNE)
      0097F3 4D               [ 1]  597 	tnz	a
      0097F4 27 05            [ 1]  598 	jreq	00102$
                                    599 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 687: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
      0097F6 35 DF 52 30      [ 1]  600 	mov	0x5230+0, #0xdf
      0097FA 81               [ 4]  601 	ret
      0097FB                        602 00102$:
                                    603 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 692: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
      0097FB 72 19 52 37      [ 1]  604 	bres	0x5237, #4
                                    605 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 694: }
      0097FF 81               [ 4]  606 	ret
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
