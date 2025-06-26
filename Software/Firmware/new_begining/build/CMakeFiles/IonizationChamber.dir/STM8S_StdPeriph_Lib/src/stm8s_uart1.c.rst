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
      0094D1                         60 _UART1_DeInit:
                                     61 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 57: (void)UART1->SR;
      0094D1 C6 52 30         [ 1]   62 	ld	a, 0x5230
                                     63 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 58: (void)UART1->DR;
      0094D4 C6 52 31         [ 1]   64 	ld	a, 0x5231
                                     65 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 60: UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
      0094D7 35 00 52 33      [ 1]   66 	mov	0x5233+0, #0x00
                                     67 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 61: UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
      0094DB 35 00 52 32      [ 1]   68 	mov	0x5232+0, #0x00
                                     69 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 63: UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
      0094DF 35 00 52 34      [ 1]   70 	mov	0x5234+0, #0x00
                                     71 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 64: UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
      0094E3 35 00 52 35      [ 1]   72 	mov	0x5235+0, #0x00
                                     73 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 65: UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
      0094E7 35 00 52 36      [ 1]   74 	mov	0x5236+0, #0x00
                                     75 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 66: UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
      0094EB 35 00 52 37      [ 1]   76 	mov	0x5237+0, #0x00
                                     77 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 67: UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
      0094EF 35 00 52 38      [ 1]   78 	mov	0x5238+0, #0x00
                                     79 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 69: UART1->GTR = UART1_GTR_RESET_VALUE;
      0094F3 35 00 52 39      [ 1]   80 	mov	0x5239+0, #0x00
                                     81 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 70: UART1->PSCR = UART1_PSCR_RESET_VALUE;
      0094F7 35 00 52 3A      [ 1]   82 	mov	0x523a+0, #0x00
                                     83 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 71: }
      0094FB 81               [ 4]   84 	ret
                                     85 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 90: void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
                                     86 ;	-----------------------------------------
                                     87 ;	 function UART1_Init
                                     88 ;	-----------------------------------------
      0094FC                         89 _UART1_Init:
      0094FC 52 0D            [ 2]   90 	sub	sp, #13
                                     91 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 97: assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
      0094FE AE 89 68         [ 2]   92 	ldw	x, #0x8968
      009501 13 12            [ 2]   93 	cpw	x, (0x12, sp)
      009503 A6 09            [ 1]   94 	ld	a, #0x09
      009505 12 11            [ 1]   95 	sbc	a, (0x11, sp)
      009507 4F               [ 1]   96 	clr	a
      009508 12 10            [ 1]   97 	sbc	a, (0x10, sp)
      00950A 24 0C            [ 1]   98 	jrnc	00113$
      00950C 4B 61            [ 1]   99 	push	#0x61
      00950E 5F               [ 1]  100 	clrw	x
      00950F 89               [ 2]  101 	pushw	x
      009510 4B 00            [ 1]  102 	push	#0x00
      009512 AE 81 F5         [ 2]  103 	ldw	x, #(___str_0+0)
      009515 CD 82 B0         [ 4]  104 	call	_assert_failed
      009518                        105 00113$:
                                    106 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 98: assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
      009518 0D 14            [ 1]  107 	tnz	(0x14, sp)
      00951A 27 12            [ 1]  108 	jreq	00115$
      00951C 7B 14            [ 1]  109 	ld	a, (0x14, sp)
      00951E A1 10            [ 1]  110 	cp	a, #0x10
      009520 27 0C            [ 1]  111 	jreq	00115$
      009522 4B 62            [ 1]  112 	push	#0x62
      009524 5F               [ 1]  113 	clrw	x
      009525 89               [ 2]  114 	pushw	x
      009526 4B 00            [ 1]  115 	push	#0x00
      009528 AE 81 F5         [ 2]  116 	ldw	x, #(___str_0+0)
      00952B CD 82 B0         [ 4]  117 	call	_assert_failed
      00952E                        118 00115$:
                                    119 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 99: assert_param(IS_UART1_STOPBITS_OK(StopBits));
      00952E 0D 15            [ 1]  120 	tnz	(0x15, sp)
      009530 27 1E            [ 1]  121 	jreq	00120$
      009532 7B 15            [ 1]  122 	ld	a, (0x15, sp)
      009534 A1 10            [ 1]  123 	cp	a, #0x10
      009536 27 18            [ 1]  124 	jreq	00120$
      009538 7B 15            [ 1]  125 	ld	a, (0x15, sp)
      00953A A1 20            [ 1]  126 	cp	a, #0x20
      00953C 27 12            [ 1]  127 	jreq	00120$
      00953E 7B 15            [ 1]  128 	ld	a, (0x15, sp)
      009540 A1 30            [ 1]  129 	cp	a, #0x30
      009542 27 0C            [ 1]  130 	jreq	00120$
      009544 4B 63            [ 1]  131 	push	#0x63
      009546 5F               [ 1]  132 	clrw	x
      009547 89               [ 2]  133 	pushw	x
      009548 4B 00            [ 1]  134 	push	#0x00
      00954A AE 81 F5         [ 2]  135 	ldw	x, #(___str_0+0)
      00954D CD 82 B0         [ 4]  136 	call	_assert_failed
      009550                        137 00120$:
                                    138 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 100: assert_param(IS_UART1_PARITY_OK(Parity));
      009550 0D 16            [ 1]  139 	tnz	(0x16, sp)
      009552 27 18            [ 1]  140 	jreq	00131$
      009554 7B 16            [ 1]  141 	ld	a, (0x16, sp)
      009556 A1 04            [ 1]  142 	cp	a, #0x04
      009558 27 12            [ 1]  143 	jreq	00131$
      00955A 7B 16            [ 1]  144 	ld	a, (0x16, sp)
      00955C A1 06            [ 1]  145 	cp	a, #0x06
      00955E 27 0C            [ 1]  146 	jreq	00131$
      009560 4B 64            [ 1]  147 	push	#0x64
      009562 5F               [ 1]  148 	clrw	x
      009563 89               [ 2]  149 	pushw	x
      009564 4B 00            [ 1]  150 	push	#0x00
      009566 AE 81 F5         [ 2]  151 	ldw	x, #(___str_0+0)
      009569 CD 82 B0         [ 4]  152 	call	_assert_failed
      00956C                        153 00131$:
                                    154 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 101: assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
      00956C 7B 18            [ 1]  155 	ld	a, (0x18, sp)
      00956E A1 08            [ 1]  156 	cp	a, #0x08
      009570 27 3F            [ 1]  157 	jreq	00139$
      009572 7B 18            [ 1]  158 	ld	a, (0x18, sp)
      009574 A1 40            [ 1]  159 	cp	a, #0x40
      009576 27 39            [ 1]  160 	jreq	00139$
      009578 7B 18            [ 1]  161 	ld	a, (0x18, sp)
      00957A A1 04            [ 1]  162 	cp	a, #0x04
      00957C 27 33            [ 1]  163 	jreq	00139$
      00957E 7B 18            [ 1]  164 	ld	a, (0x18, sp)
      009580 A1 80            [ 1]  165 	cp	a, #0x80
      009582 27 2D            [ 1]  166 	jreq	00139$
      009584 7B 18            [ 1]  167 	ld	a, (0x18, sp)
      009586 A0 0C            [ 1]  168 	sub	a, #0x0c
      009588 26 02            [ 1]  169 	jrne	00388$
      00958A 4C               [ 1]  170 	inc	a
      00958B 21                     171 	.byte 0x21
      00958C                        172 00388$:
      00958C 4F               [ 1]  173 	clr	a
      00958D                        174 00389$:
      00958D 4D               [ 1]  175 	tnz	a
      00958E 26 21            [ 1]  176 	jrne	00139$
      009590 4D               [ 1]  177 	tnz	a
      009591 26 1E            [ 1]  178 	jrne	00139$
      009593 7B 18            [ 1]  179 	ld	a, (0x18, sp)
      009595 A1 44            [ 1]  180 	cp	a, #0x44
      009597 27 18            [ 1]  181 	jreq	00139$
      009599 7B 18            [ 1]  182 	ld	a, (0x18, sp)
      00959B A1 C0            [ 1]  183 	cp	a, #0xc0
      00959D 27 12            [ 1]  184 	jreq	00139$
      00959F 7B 18            [ 1]  185 	ld	a, (0x18, sp)
      0095A1 A1 88            [ 1]  186 	cp	a, #0x88
      0095A3 27 0C            [ 1]  187 	jreq	00139$
      0095A5 4B 65            [ 1]  188 	push	#0x65
      0095A7 5F               [ 1]  189 	clrw	x
      0095A8 89               [ 2]  190 	pushw	x
      0095A9 4B 00            [ 1]  191 	push	#0x00
      0095AB AE 81 F5         [ 2]  192 	ldw	x, #(___str_0+0)
      0095AE CD 82 B0         [ 4]  193 	call	_assert_failed
      0095B1                        194 00139$:
                                    195 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 102: assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
      0095B1 7B 17            [ 1]  196 	ld	a, (0x17, sp)
      0095B3 43               [ 1]  197 	cpl	a
      0095B4 A5 88            [ 1]  198 	bcp	a, #0x88
      0095B6 27 15            [ 1]  199 	jreq	00167$
      0095B8 7B 17            [ 1]  200 	ld	a, (0x17, sp)
      0095BA 43               [ 1]  201 	cpl	a
      0095BB A5 44            [ 1]  202 	bcp	a, #0x44
      0095BD 27 0E            [ 1]  203 	jreq	00167$
      0095BF 7B 17            [ 1]  204 	ld	a, (0x17, sp)
      0095C1 43               [ 1]  205 	cpl	a
      0095C2 A5 22            [ 1]  206 	bcp	a, #0x22
      0095C4 27 07            [ 1]  207 	jreq	00167$
      0095C6 7B 17            [ 1]  208 	ld	a, (0x17, sp)
      0095C8 43               [ 1]  209 	cpl	a
      0095C9 A5 11            [ 1]  210 	bcp	a, #0x11
      0095CB 26 0C            [ 1]  211 	jrne	00165$
      0095CD                        212 00167$:
      0095CD 4B 66            [ 1]  213 	push	#0x66
      0095CF 5F               [ 1]  214 	clrw	x
      0095D0 89               [ 2]  215 	pushw	x
      0095D1 4B 00            [ 1]  216 	push	#0x00
      0095D3 AE 81 F5         [ 2]  217 	ldw	x, #(___str_0+0)
      0095D6 CD 82 B0         [ 4]  218 	call	_assert_failed
      0095D9                        219 00165$:
                                    220 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 105: UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
      0095D9 72 19 52 34      [ 1]  221 	bres	0x5234, #4
                                    222 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 108: UART1->CR1 |= (uint8_t)WordLength;
      0095DD C6 52 34         [ 1]  223 	ld	a, 0x5234
      0095E0 1A 14            [ 1]  224 	or	a, (0x14, sp)
      0095E2 C7 52 34         [ 1]  225 	ld	0x5234, a
                                    226 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      0095E5 C6 52 36         [ 1]  227 	ld	a, 0x5236
      0095E8 A4 CF            [ 1]  228 	and	a, #0xcf
      0095EA C7 52 36         [ 1]  229 	ld	0x5236, a
                                    230 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 113: UART1->CR3 |= (uint8_t)StopBits;  
      0095ED C6 52 36         [ 1]  231 	ld	a, 0x5236
      0095F0 1A 15            [ 1]  232 	or	a, (0x15, sp)
      0095F2 C7 52 36         [ 1]  233 	ld	0x5236, a
                                    234 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 116: UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
      0095F5 C6 52 34         [ 1]  235 	ld	a, 0x5234
      0095F8 A4 F9            [ 1]  236 	and	a, #0xf9
      0095FA C7 52 34         [ 1]  237 	ld	0x5234, a
                                    238 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 118: UART1->CR1 |= (uint8_t)Parity;  
      0095FD C6 52 34         [ 1]  239 	ld	a, 0x5234
      009600 1A 16            [ 1]  240 	or	a, (0x16, sp)
      009602 C7 52 34         [ 1]  241 	ld	0x5234, a
                                    242 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 121: UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
      009605 C6 52 32         [ 1]  243 	ld	a, 0x5232
      009608 35 00 52 32      [ 1]  244 	mov	0x5232+0, #0x00
                                    245 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 123: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
      00960C C6 52 33         [ 1]  246 	ld	a, 0x5233
      00960F A4 0F            [ 1]  247 	and	a, #0x0f
      009611 C7 52 33         [ 1]  248 	ld	0x5233, a
                                    249 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 125: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
      009614 C6 52 33         [ 1]  250 	ld	a, 0x5233
      009617 A4 F0            [ 1]  251 	and	a, #0xf0
      009619 C7 52 33         [ 1]  252 	ld	0x5233, a
                                    253 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 128: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      00961C CD 94 0B         [ 4]  254 	call	_CLK_GetClockFreq
      00961F 1F 0C            [ 2]  255 	ldw	(0x0c, sp), x
      009621 1E 10            [ 2]  256 	ldw	x, (0x10, sp)
      009623 1F 06            [ 2]  257 	ldw	(0x06, sp), x
      009625 1E 12            [ 2]  258 	ldw	x, (0x12, sp)
      009627 A6 04            [ 1]  259 	ld	a, #0x04
      009629                        260 00413$:
      009629 58               [ 2]  261 	sllw	x
      00962A 09 07            [ 1]  262 	rlc	(0x07, sp)
      00962C 09 06            [ 1]  263 	rlc	(0x06, sp)
      00962E 4A               [ 1]  264 	dec	a
      00962F 26 F8            [ 1]  265 	jrne	00413$
      009631 1F 08            [ 2]  266 	ldw	(0x08, sp), x
      009633 89               [ 2]  267 	pushw	x
      009634 1E 08            [ 2]  268 	ldw	x, (0x08, sp)
      009636 89               [ 2]  269 	pushw	x
      009637 1E 10            [ 2]  270 	ldw	x, (0x10, sp)
      009639 89               [ 2]  271 	pushw	x
      00963A 90 89            [ 2]  272 	pushw	y
                                    273 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 129: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      00963C CD 98 1D         [ 4]  274 	call	__divulong
      00963F 5B 08            [ 2]  275 	addw	sp, #8
      009641 1F 03            [ 2]  276 	ldw	(0x03, sp), x
      009643 17 01            [ 2]  277 	ldw	(0x01, sp), y
      009645 CD 94 0B         [ 4]  278 	call	_CLK_GetClockFreq
      009648 89               [ 2]  279 	pushw	x
      009649 90 89            [ 2]  280 	pushw	y
      00964B 4B 64            [ 1]  281 	push	#0x64
      00964D 5F               [ 1]  282 	clrw	x
      00964E 89               [ 2]  283 	pushw	x
      00964F 4B 00            [ 1]  284 	push	#0x00
      009651 CD 98 78         [ 4]  285 	call	__mullong
      009654 5B 08            [ 2]  286 	addw	sp, #8
      009656 1F 0C            [ 2]  287 	ldw	(0x0c, sp), x
      009658 1E 08            [ 2]  288 	ldw	x, (0x08, sp)
      00965A 89               [ 2]  289 	pushw	x
      00965B 1E 08            [ 2]  290 	ldw	x, (0x08, sp)
      00965D 89               [ 2]  291 	pushw	x
      00965E 1E 10            [ 2]  292 	ldw	x, (0x10, sp)
      009660 89               [ 2]  293 	pushw	x
      009661 90 89            [ 2]  294 	pushw	y
                                    295 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 131: UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
      009663 CD 98 1D         [ 4]  296 	call	__divulong
      009666 5B 08            [ 2]  297 	addw	sp, #8
      009668 1F 07            [ 2]  298 	ldw	(0x07, sp), x
      00966A 90 02            [ 1]  299 	rlwa	y
      00966C 6B 05            [ 1]  300 	ld	(0x05, sp), a
      00966E 90 01            [ 1]  301 	rrwa	y
      009670 90 9F            [ 1]  302 	ld	a, yl
      009672 AE 52 33         [ 2]  303 	ldw	x, #0x5233
      009675 88               [ 1]  304 	push	a
      009676 F6               [ 1]  305 	ld	a, (x)
      009677 6B 0A            [ 1]  306 	ld	(0x0a, sp), a
      009679 1E 04            [ 2]  307 	ldw	x, (0x04, sp)
      00967B 89               [ 2]  308 	pushw	x
      00967C 1E 04            [ 2]  309 	ldw	x, (0x04, sp)
      00967E 89               [ 2]  310 	pushw	x
      00967F 4B 64            [ 1]  311 	push	#0x64
      009681 5F               [ 1]  312 	clrw	x
      009682 89               [ 2]  313 	pushw	x
      009683 4B 00            [ 1]  314 	push	#0x00
      009685 CD 98 78         [ 4]  315 	call	__mullong
      009688 5B 08            [ 2]  316 	addw	sp, #8
      00968A 1F 0D            [ 2]  317 	ldw	(0x0d, sp), x
      00968C 17 0B            [ 2]  318 	ldw	(0x0b, sp), y
      00968E 84               [ 1]  319 	pop	a
      00968F 16 07            [ 2]  320 	ldw	y, (0x07, sp)
      009691 72 F2 0C         [ 2]  321 	subw	y, (0x0c, sp)
      009694 12 0B            [ 1]  322 	sbc	a, (0x0b, sp)
      009696 97               [ 1]  323 	ld	xl, a
      009697 7B 05            [ 1]  324 	ld	a, (0x05, sp)
      009699 12 0A            [ 1]  325 	sbc	a, (0x0a, sp)
      00969B 95               [ 1]  326 	ld	xh, a
      00969C A6 04            [ 1]  327 	ld	a, #0x04
      00969E                        328 00415$:
      00969E 90 58            [ 2]  329 	sllw	y
      0096A0 59               [ 2]  330 	rlcw	x
      0096A1 4A               [ 1]  331 	dec	a
      0096A2 26 FA            [ 1]  332 	jrne	00415$
      0096A4 4B 64            [ 1]  333 	push	#0x64
      0096A6 4B 00            [ 1]  334 	push	#0x00
      0096A8 4B 00            [ 1]  335 	push	#0x00
      0096AA 4B 00            [ 1]  336 	push	#0x00
      0096AC 90 89            [ 2]  337 	pushw	y
      0096AE 89               [ 2]  338 	pushw	x
      0096AF CD 98 1D         [ 4]  339 	call	__divulong
      0096B2 5B 08            [ 2]  340 	addw	sp, #8
      0096B4 9F               [ 1]  341 	ld	a, xl
      0096B5 A4 0F            [ 1]  342 	and	a, #0x0f
      0096B7 1A 09            [ 1]  343 	or	a, (0x09, sp)
      0096B9 C7 52 33         [ 1]  344 	ld	0x5233, a
                                    345 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 133: UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
      0096BC C6 52 33         [ 1]  346 	ld	a, 0x5233
      0096BF 6B 0D            [ 1]  347 	ld	(0x0d, sp), a
      0096C1 1E 03            [ 2]  348 	ldw	x, (0x03, sp)
      0096C3 A6 10            [ 1]  349 	ld	a, #0x10
      0096C5 62               [ 2]  350 	div	x, a
      0096C6 90 93            [ 1]  351 	ldw	y, x
      0096C8 9F               [ 1]  352 	ld	a, xl
      0096C9 A4 F0            [ 1]  353 	and	a, #0xf0
      0096CB 1A 0D            [ 1]  354 	or	a, (0x0d, sp)
      0096CD C7 52 33         [ 1]  355 	ld	0x5233, a
                                    356 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 135: UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
      0096D0 C6 52 32         [ 1]  357 	ld	a, 0x5232
      0096D3 6B 0D            [ 1]  358 	ld	(0x0d, sp), a
      0096D5 7B 04            [ 1]  359 	ld	a, (0x04, sp)
      0096D7 1A 0D            [ 1]  360 	or	a, (0x0d, sp)
      0096D9 C7 52 32         [ 1]  361 	ld	0x5232, a
                                    362 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      0096DC C6 52 35         [ 1]  363 	ld	a, 0x5235
      0096DF A4 F3            [ 1]  364 	and	a, #0xf3
      0096E1 C7 52 35         [ 1]  365 	ld	0x5235, a
                                    366 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 140: UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
      0096E4 C6 52 36         [ 1]  367 	ld	a, 0x5236
      0096E7 A4 F8            [ 1]  368 	and	a, #0xf8
      0096E9 C7 52 36         [ 1]  369 	ld	0x5236, a
                                    370 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 142: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
      0096EC C6 52 36         [ 1]  371 	ld	a, 0x5236
      0096EF 6B 0D            [ 1]  372 	ld	(0x0d, sp), a
      0096F1 7B 17            [ 1]  373 	ld	a, (0x17, sp)
      0096F3 A4 07            [ 1]  374 	and	a, #0x07
      0096F5 1A 0D            [ 1]  375 	or	a, (0x0d, sp)
      0096F7 C7 52 36         [ 1]  376 	ld	0x5236, a
                                    377 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      0096FA C6 52 35         [ 1]  378 	ld	a, 0x5235
                                    379 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 145: if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
      0096FD 88               [ 1]  380 	push	a
      0096FE 7B 19            [ 1]  381 	ld	a, (0x19, sp)
      009700 A5 04            [ 1]  382 	bcp	a, #0x04
      009702 84               [ 1]  383 	pop	a
      009703 27 07            [ 1]  384 	jreq	00102$
                                    385 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 148: UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
      009705 AA 08            [ 1]  386 	or	a, #0x08
      009707 C7 52 35         [ 1]  387 	ld	0x5235, a
      00970A 20 05            [ 2]  388 	jra	00103$
      00970C                        389 00102$:
                                    390 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 153: UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
      00970C A4 F7            [ 1]  391 	and	a, #0xf7
      00970E C7 52 35         [ 1]  392 	ld	0x5235, a
      009711                        393 00103$:
                                    394 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      009711 C6 52 35         [ 1]  395 	ld	a, 0x5235
                                    396 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 155: if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
      009714 88               [ 1]  397 	push	a
      009715 7B 19            [ 1]  398 	ld	a, (0x19, sp)
      009717 A5 08            [ 1]  399 	bcp	a, #0x08
      009719 84               [ 1]  400 	pop	a
      00971A 27 07            [ 1]  401 	jreq	00105$
                                    402 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 158: UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
      00971C AA 04            [ 1]  403 	or	a, #0x04
      00971E C7 52 35         [ 1]  404 	ld	0x5235, a
      009721 20 05            [ 2]  405 	jra	00106$
      009723                        406 00105$:
                                    407 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 163: UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
      009723 A4 FB            [ 1]  408 	and	a, #0xfb
      009725 C7 52 35         [ 1]  409 	ld	0x5235, a
      009728                        410 00106$:
                                    411 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      009728 C6 52 36         [ 1]  412 	ld	a, 0x5236
                                    413 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 167: if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
      00972B 0D 17            [ 1]  414 	tnz	(0x17, sp)
      00972D 2A 07            [ 1]  415 	jrpl	00108$
                                    416 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 170: UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
      00972F A4 F7            [ 1]  417 	and	a, #0xf7
      009731 C7 52 36         [ 1]  418 	ld	0x5236, a
      009734 20 0D            [ 2]  419 	jra	00110$
      009736                        420 00108$:
                                    421 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 174: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
      009736 88               [ 1]  422 	push	a
      009737 7B 18            [ 1]  423 	ld	a, (0x18, sp)
      009739 A4 08            [ 1]  424 	and	a, #0x08
      00973B 6B 0E            [ 1]  425 	ld	(0x0e, sp), a
      00973D 84               [ 1]  426 	pop	a
      00973E 1A 0D            [ 1]  427 	or	a, (0x0d, sp)
      009740 C7 52 36         [ 1]  428 	ld	0x5236, a
      009743                        429 00110$:
                                    430 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 176: }
      009743 1E 0E            [ 2]  431 	ldw	x, (14, sp)
      009745 5B 18            [ 2]  432 	addw	sp, #24
      009747 FC               [ 2]  433 	jp	(x)
                                    434 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 184: void UART1_Cmd(FunctionalState NewState)
                                    435 ;	-----------------------------------------
                                    436 ;	 function UART1_Cmd
                                    437 ;	-----------------------------------------
      009748                        438 _UART1_Cmd:
      009748 88               [ 1]  439 	push	a
      009749 6B 01            [ 1]  440 	ld	(0x01, sp), a
                                    441 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      00974B C6 52 34         [ 1]  442 	ld	a, 0x5234
                                    443 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 186: if (NewState != DISABLE)
      00974E 0D 01            [ 1]  444 	tnz	(0x01, sp)
      009750 27 07            [ 1]  445 	jreq	00102$
                                    446 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      009752 A4 DF            [ 1]  447 	and	a, #0xdf
      009754 C7 52 34         [ 1]  448 	ld	0x5234, a
      009757 20 05            [ 2]  449 	jra	00104$
      009759                        450 00102$:
                                    451 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 194: UART1->CR1 |= UART1_CR1_UARTD;  
      009759 AA 20            [ 1]  452 	or	a, #0x20
      00975B C7 52 34         [ 1]  453 	ld	0x5234, a
      00975E                        454 00104$:
                                    455 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 196: }
      00975E 84               [ 1]  456 	pop	a
      00975F 81               [ 4]  457 	ret
                                    458 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 498: void UART1_SendData8(uint8_t Data)
                                    459 ;	-----------------------------------------
                                    460 ;	 function UART1_SendData8
                                    461 ;	-----------------------------------------
      009760                        462 _UART1_SendData8:
                                    463 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 501: UART1->DR = Data;
      009760 C7 52 31         [ 1]  464 	ld	0x5231, a
                                    465 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 502: }
      009763 81               [ 4]  466 	ret
                                    467 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 602: FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
                                    468 ;	-----------------------------------------
                                    469 ;	 function UART1_GetFlagStatus
                                    470 ;	-----------------------------------------
      009764                        471 _UART1_GetFlagStatus:
      009764 52 02            [ 2]  472 	sub	sp, #2
                                    473 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 607: assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
      009766 90 93            [ 1]  474 	ldw	y, x
      009768 A3 01 01         [ 2]  475 	cpw	x, #0x0101
      00976B 26 05            [ 1]  476 	jrne	00253$
      00976D A6 01            [ 1]  477 	ld	a, #0x01
      00976F 6B 01            [ 1]  478 	ld	(0x01, sp), a
      009771 C5                     479 	.byte 0xc5
      009772                        480 00253$:
      009772 0F 01            [ 1]  481 	clr	(0x01, sp)
      009774                        482 00254$:
      009774 A3 02 10         [ 2]  483 	cpw	x, #0x0210
      009777 26 03            [ 1]  484 	jrne	00256$
      009779 A6 01            [ 1]  485 	ld	a, #0x01
      00977B 21                     486 	.byte 0x21
      00977C                        487 00256$:
      00977C 4F               [ 1]  488 	clr	a
      00977D                        489 00257$:
      00977D A3 00 80         [ 2]  490 	cpw	x, #0x0080
      009780 27 3A            [ 1]  491 	jreq	00119$
      009782 A3 00 40         [ 2]  492 	cpw	x, #0x0040
      009785 27 35            [ 1]  493 	jreq	00119$
      009787 A3 00 20         [ 2]  494 	cpw	x, #0x0020
      00978A 27 30            [ 1]  495 	jreq	00119$
      00978C A3 00 10         [ 2]  496 	cpw	x, #0x0010
      00978F 27 2B            [ 1]  497 	jreq	00119$
      009791 A3 00 08         [ 2]  498 	cpw	x, #0x0008
      009794 27 26            [ 1]  499 	jreq	00119$
      009796 A3 00 04         [ 2]  500 	cpw	x, #0x0004
      009799 27 21            [ 1]  501 	jreq	00119$
      00979B A3 00 02         [ 2]  502 	cpw	x, #0x0002
      00979E 27 1C            [ 1]  503 	jreq	00119$
      0097A0 5A               [ 2]  504 	decw	x
      0097A1 27 19            [ 1]  505 	jreq	00119$
      0097A3 0D 01            [ 1]  506 	tnz	(0x01, sp)
      0097A5 26 15            [ 1]  507 	jrne	00119$
      0097A7 4D               [ 1]  508 	tnz	a
      0097A8 26 12            [ 1]  509 	jrne	00119$
      0097AA 88               [ 1]  510 	push	a
      0097AB 90 89            [ 2]  511 	pushw	y
      0097AD 4B 5F            [ 1]  512 	push	#0x5f
      0097AF 4B 02            [ 1]  513 	push	#0x02
      0097B1 5F               [ 1]  514 	clrw	x
      0097B2 89               [ 2]  515 	pushw	x
      0097B3 AE 81 F5         [ 2]  516 	ldw	x, #(___str_0+0)
      0097B6 CD 82 B0         [ 4]  517 	call	_assert_failed
      0097B9 90 85            [ 2]  518 	popw	y
      0097BB 84               [ 1]  519 	pop	a
      0097BC                        520 00119$:
                                    521 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 613: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      0097BC 61               [ 1]  522 	exg	a, yl
      0097BD 6B 02            [ 1]  523 	ld	(0x02, sp), a
      0097BF 61               [ 1]  524 	exg	a, yl
                                    525 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 611: if (UART1_FLAG == UART1_FLAG_LBDF)
      0097C0 4D               [ 1]  526 	tnz	a
      0097C1 27 0E            [ 1]  527 	jreq	00114$
                                    528 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 613: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      0097C3 C6 52 37         [ 1]  529 	ld	a, 0x5237
      0097C6 14 02            [ 1]  530 	and	a, (0x02, sp)
      0097C8 27 04            [ 1]  531 	jreq	00102$
                                    532 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 616: status = SET;
      0097CA A6 01            [ 1]  533 	ld	a, #0x01
      0097CC 20 20            [ 2]  534 	jra	00115$
      0097CE                        535 00102$:
                                    536 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 621: status = RESET;
      0097CE 4F               [ 1]  537 	clr	a
      0097CF 20 1D            [ 2]  538 	jra	00115$
      0097D1                        539 00114$:
                                    540 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 624: else if (UART1_FLAG == UART1_FLAG_SBK)
      0097D1 7B 01            [ 1]  541 	ld	a, (0x01, sp)
      0097D3 27 0E            [ 1]  542 	jreq	00111$
                                    543 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 626: if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      0097D5 C6 52 35         [ 1]  544 	ld	a, 0x5235
      0097D8 14 02            [ 1]  545 	and	a, (0x02, sp)
      0097DA 27 04            [ 1]  546 	jreq	00105$
                                    547 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 629: status = SET;
      0097DC A6 01            [ 1]  548 	ld	a, #0x01
      0097DE 20 0E            [ 2]  549 	jra	00115$
      0097E0                        550 00105$:
                                    551 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 634: status = RESET;
      0097E0 4F               [ 1]  552 	clr	a
      0097E1 20 0B            [ 2]  553 	jra	00115$
      0097E3                        554 00111$:
                                    555 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 639: if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      0097E3 C6 52 30         [ 1]  556 	ld	a, 0x5230
      0097E6 14 02            [ 1]  557 	and	a, (0x02, sp)
      0097E8 27 03            [ 1]  558 	jreq	00108$
                                    559 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 642: status = SET;
      0097EA A6 01            [ 1]  560 	ld	a, #0x01
                                    561 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 647: status = RESET;
      0097EC 21                     562 	.byte 0x21
      0097ED                        563 00108$:
      0097ED 4F               [ 1]  564 	clr	a
      0097EE                        565 00115$:
                                    566 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 651: return status;
                                    567 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 652: }
      0097EE 5B 02            [ 2]  568 	addw	sp, #2
      0097F0 81               [ 4]  569 	ret
                                    570 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 680: void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
                                    571 ;	-----------------------------------------
                                    572 ;	 function UART1_ClearFlag
                                    573 ;	-----------------------------------------
      0097F1                        574 _UART1_ClearFlag:
                                    575 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 682: assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
      0097F1 A3 00 20         [ 2]  576 	cpw	x, #0x0020
      0097F4 26 03            [ 1]  577 	jrne	00133$
      0097F6 A6 01            [ 1]  578 	ld	a, #0x01
      0097F8 21                     579 	.byte 0x21
      0097F9                        580 00133$:
      0097F9 4F               [ 1]  581 	clr	a
      0097FA                        582 00134$:
      0097FA 4D               [ 1]  583 	tnz	a
      0097FB 26 13            [ 1]  584 	jrne	00107$
      0097FD A3 02 10         [ 2]  585 	cpw	x, #0x0210
      009800 27 0E            [ 1]  586 	jreq	00107$
      009802 88               [ 1]  587 	push	a
      009803 4B AA            [ 1]  588 	push	#0xaa
      009805 4B 02            [ 1]  589 	push	#0x02
      009807 5F               [ 1]  590 	clrw	x
      009808 89               [ 2]  591 	pushw	x
      009809 AE 81 F5         [ 2]  592 	ldw	x, #(___str_0+0)
      00980C CD 82 B0         [ 4]  593 	call	_assert_failed
      00980F 84               [ 1]  594 	pop	a
      009810                        595 00107$:
                                    596 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 685: if (UART1_FLAG == UART1_FLAG_RXNE)
      009810 4D               [ 1]  597 	tnz	a
      009811 27 05            [ 1]  598 	jreq	00102$
                                    599 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 687: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
      009813 35 DF 52 30      [ 1]  600 	mov	0x5230+0, #0xdf
      009817 81               [ 4]  601 	ret
      009818                        602 00102$:
                                    603 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 692: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
      009818 72 19 52 37      [ 1]  604 	bres	0x5237, #4
                                    605 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 694: }
      00981C 81               [ 4]  606 	ret
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
