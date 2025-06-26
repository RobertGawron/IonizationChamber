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
      009488                         60 _UART1_DeInit:
                                     61 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 57: (void)UART1->SR;
      009488 C6 52 30         [ 1]   62 	ld	a, 0x5230
                                     63 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 58: (void)UART1->DR;
      00948B C6 52 31         [ 1]   64 	ld	a, 0x5231
                                     65 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 60: UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
      00948E 35 00 52 33      [ 1]   66 	mov	0x5233+0, #0x00
                                     67 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 61: UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
      009492 35 00 52 32      [ 1]   68 	mov	0x5232+0, #0x00
                                     69 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 63: UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
      009496 35 00 52 34      [ 1]   70 	mov	0x5234+0, #0x00
                                     71 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 64: UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
      00949A 35 00 52 35      [ 1]   72 	mov	0x5235+0, #0x00
                                     73 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 65: UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
      00949E 35 00 52 36      [ 1]   74 	mov	0x5236+0, #0x00
                                     75 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 66: UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
      0094A2 35 00 52 37      [ 1]   76 	mov	0x5237+0, #0x00
                                     77 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 67: UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
      0094A6 35 00 52 38      [ 1]   78 	mov	0x5238+0, #0x00
                                     79 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 69: UART1->GTR = UART1_GTR_RESET_VALUE;
      0094AA 35 00 52 39      [ 1]   80 	mov	0x5239+0, #0x00
                                     81 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 70: UART1->PSCR = UART1_PSCR_RESET_VALUE;
      0094AE 35 00 52 3A      [ 1]   82 	mov	0x523a+0, #0x00
                                     83 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 71: }
      0094B2 81               [ 4]   84 	ret
                                     85 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 90: void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
                                     86 ;	-----------------------------------------
                                     87 ;	 function UART1_Init
                                     88 ;	-----------------------------------------
      0094B3                         89 _UART1_Init:
      0094B3 52 0D            [ 2]   90 	sub	sp, #13
                                     91 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 97: assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
      0094B5 AE 89 68         [ 2]   92 	ldw	x, #0x8968
      0094B8 13 12            [ 2]   93 	cpw	x, (0x12, sp)
      0094BA A6 09            [ 1]   94 	ld	a, #0x09
      0094BC 12 11            [ 1]   95 	sbc	a, (0x11, sp)
      0094BE 4F               [ 1]   96 	clr	a
      0094BF 12 10            [ 1]   97 	sbc	a, (0x10, sp)
      0094C1 24 0C            [ 1]   98 	jrnc	00113$
      0094C3 4B 61            [ 1]   99 	push	#0x61
      0094C5 5F               [ 1]  100 	clrw	x
      0094C6 89               [ 2]  101 	pushw	x
      0094C7 4B 00            [ 1]  102 	push	#0x00
      0094C9 AE 81 F9         [ 2]  103 	ldw	x, #(___str_0+0)
      0094CC CD 82 6A         [ 4]  104 	call	_assert_failed
      0094CF                        105 00113$:
                                    106 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 98: assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
      0094CF 0D 14            [ 1]  107 	tnz	(0x14, sp)
      0094D1 27 12            [ 1]  108 	jreq	00115$
      0094D3 7B 14            [ 1]  109 	ld	a, (0x14, sp)
      0094D5 A1 10            [ 1]  110 	cp	a, #0x10
      0094D7 27 0C            [ 1]  111 	jreq	00115$
      0094D9 4B 62            [ 1]  112 	push	#0x62
      0094DB 5F               [ 1]  113 	clrw	x
      0094DC 89               [ 2]  114 	pushw	x
      0094DD 4B 00            [ 1]  115 	push	#0x00
      0094DF AE 81 F9         [ 2]  116 	ldw	x, #(___str_0+0)
      0094E2 CD 82 6A         [ 4]  117 	call	_assert_failed
      0094E5                        118 00115$:
                                    119 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 99: assert_param(IS_UART1_STOPBITS_OK(StopBits));
      0094E5 0D 15            [ 1]  120 	tnz	(0x15, sp)
      0094E7 27 1E            [ 1]  121 	jreq	00120$
      0094E9 7B 15            [ 1]  122 	ld	a, (0x15, sp)
      0094EB A1 10            [ 1]  123 	cp	a, #0x10
      0094ED 27 18            [ 1]  124 	jreq	00120$
      0094EF 7B 15            [ 1]  125 	ld	a, (0x15, sp)
      0094F1 A1 20            [ 1]  126 	cp	a, #0x20
      0094F3 27 12            [ 1]  127 	jreq	00120$
      0094F5 7B 15            [ 1]  128 	ld	a, (0x15, sp)
      0094F7 A1 30            [ 1]  129 	cp	a, #0x30
      0094F9 27 0C            [ 1]  130 	jreq	00120$
      0094FB 4B 63            [ 1]  131 	push	#0x63
      0094FD 5F               [ 1]  132 	clrw	x
      0094FE 89               [ 2]  133 	pushw	x
      0094FF 4B 00            [ 1]  134 	push	#0x00
      009501 AE 81 F9         [ 2]  135 	ldw	x, #(___str_0+0)
      009504 CD 82 6A         [ 4]  136 	call	_assert_failed
      009507                        137 00120$:
                                    138 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 100: assert_param(IS_UART1_PARITY_OK(Parity));
      009507 0D 16            [ 1]  139 	tnz	(0x16, sp)
      009509 27 18            [ 1]  140 	jreq	00131$
      00950B 7B 16            [ 1]  141 	ld	a, (0x16, sp)
      00950D A1 04            [ 1]  142 	cp	a, #0x04
      00950F 27 12            [ 1]  143 	jreq	00131$
      009511 7B 16            [ 1]  144 	ld	a, (0x16, sp)
      009513 A1 06            [ 1]  145 	cp	a, #0x06
      009515 27 0C            [ 1]  146 	jreq	00131$
      009517 4B 64            [ 1]  147 	push	#0x64
      009519 5F               [ 1]  148 	clrw	x
      00951A 89               [ 2]  149 	pushw	x
      00951B 4B 00            [ 1]  150 	push	#0x00
      00951D AE 81 F9         [ 2]  151 	ldw	x, #(___str_0+0)
      009520 CD 82 6A         [ 4]  152 	call	_assert_failed
      009523                        153 00131$:
                                    154 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 101: assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
      009523 7B 18            [ 1]  155 	ld	a, (0x18, sp)
      009525 A1 08            [ 1]  156 	cp	a, #0x08
      009527 27 3F            [ 1]  157 	jreq	00139$
      009529 7B 18            [ 1]  158 	ld	a, (0x18, sp)
      00952B A1 40            [ 1]  159 	cp	a, #0x40
      00952D 27 39            [ 1]  160 	jreq	00139$
      00952F 7B 18            [ 1]  161 	ld	a, (0x18, sp)
      009531 A1 04            [ 1]  162 	cp	a, #0x04
      009533 27 33            [ 1]  163 	jreq	00139$
      009535 7B 18            [ 1]  164 	ld	a, (0x18, sp)
      009537 A1 80            [ 1]  165 	cp	a, #0x80
      009539 27 2D            [ 1]  166 	jreq	00139$
      00953B 7B 18            [ 1]  167 	ld	a, (0x18, sp)
      00953D A0 0C            [ 1]  168 	sub	a, #0x0c
      00953F 26 02            [ 1]  169 	jrne	00388$
      009541 4C               [ 1]  170 	inc	a
      009542 21                     171 	.byte 0x21
      009543                        172 00388$:
      009543 4F               [ 1]  173 	clr	a
      009544                        174 00389$:
      009544 4D               [ 1]  175 	tnz	a
      009545 26 21            [ 1]  176 	jrne	00139$
      009547 4D               [ 1]  177 	tnz	a
      009548 26 1E            [ 1]  178 	jrne	00139$
      00954A 7B 18            [ 1]  179 	ld	a, (0x18, sp)
      00954C A1 44            [ 1]  180 	cp	a, #0x44
      00954E 27 18            [ 1]  181 	jreq	00139$
      009550 7B 18            [ 1]  182 	ld	a, (0x18, sp)
      009552 A1 C0            [ 1]  183 	cp	a, #0xc0
      009554 27 12            [ 1]  184 	jreq	00139$
      009556 7B 18            [ 1]  185 	ld	a, (0x18, sp)
      009558 A1 88            [ 1]  186 	cp	a, #0x88
      00955A 27 0C            [ 1]  187 	jreq	00139$
      00955C 4B 65            [ 1]  188 	push	#0x65
      00955E 5F               [ 1]  189 	clrw	x
      00955F 89               [ 2]  190 	pushw	x
      009560 4B 00            [ 1]  191 	push	#0x00
      009562 AE 81 F9         [ 2]  192 	ldw	x, #(___str_0+0)
      009565 CD 82 6A         [ 4]  193 	call	_assert_failed
      009568                        194 00139$:
                                    195 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 102: assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
      009568 7B 17            [ 1]  196 	ld	a, (0x17, sp)
      00956A 43               [ 1]  197 	cpl	a
      00956B A5 88            [ 1]  198 	bcp	a, #0x88
      00956D 27 15            [ 1]  199 	jreq	00167$
      00956F 7B 17            [ 1]  200 	ld	a, (0x17, sp)
      009571 43               [ 1]  201 	cpl	a
      009572 A5 44            [ 1]  202 	bcp	a, #0x44
      009574 27 0E            [ 1]  203 	jreq	00167$
      009576 7B 17            [ 1]  204 	ld	a, (0x17, sp)
      009578 43               [ 1]  205 	cpl	a
      009579 A5 22            [ 1]  206 	bcp	a, #0x22
      00957B 27 07            [ 1]  207 	jreq	00167$
      00957D 7B 17            [ 1]  208 	ld	a, (0x17, sp)
      00957F 43               [ 1]  209 	cpl	a
      009580 A5 11            [ 1]  210 	bcp	a, #0x11
      009582 26 0C            [ 1]  211 	jrne	00165$
      009584                        212 00167$:
      009584 4B 66            [ 1]  213 	push	#0x66
      009586 5F               [ 1]  214 	clrw	x
      009587 89               [ 2]  215 	pushw	x
      009588 4B 00            [ 1]  216 	push	#0x00
      00958A AE 81 F9         [ 2]  217 	ldw	x, #(___str_0+0)
      00958D CD 82 6A         [ 4]  218 	call	_assert_failed
      009590                        219 00165$:
                                    220 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 105: UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
      009590 72 19 52 34      [ 1]  221 	bres	0x5234, #4
                                    222 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 108: UART1->CR1 |= (uint8_t)WordLength;
      009594 C6 52 34         [ 1]  223 	ld	a, 0x5234
      009597 1A 14            [ 1]  224 	or	a, (0x14, sp)
      009599 C7 52 34         [ 1]  225 	ld	0x5234, a
                                    226 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      00959C C6 52 36         [ 1]  227 	ld	a, 0x5236
      00959F A4 CF            [ 1]  228 	and	a, #0xcf
      0095A1 C7 52 36         [ 1]  229 	ld	0x5236, a
                                    230 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 113: UART1->CR3 |= (uint8_t)StopBits;  
      0095A4 C6 52 36         [ 1]  231 	ld	a, 0x5236
      0095A7 1A 15            [ 1]  232 	or	a, (0x15, sp)
      0095A9 C7 52 36         [ 1]  233 	ld	0x5236, a
                                    234 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 116: UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
      0095AC C6 52 34         [ 1]  235 	ld	a, 0x5234
      0095AF A4 F9            [ 1]  236 	and	a, #0xf9
      0095B1 C7 52 34         [ 1]  237 	ld	0x5234, a
                                    238 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 118: UART1->CR1 |= (uint8_t)Parity;  
      0095B4 C6 52 34         [ 1]  239 	ld	a, 0x5234
      0095B7 1A 16            [ 1]  240 	or	a, (0x16, sp)
      0095B9 C7 52 34         [ 1]  241 	ld	0x5234, a
                                    242 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 121: UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
      0095BC C6 52 32         [ 1]  243 	ld	a, 0x5232
      0095BF 35 00 52 32      [ 1]  244 	mov	0x5232+0, #0x00
                                    245 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 123: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
      0095C3 C6 52 33         [ 1]  246 	ld	a, 0x5233
      0095C6 A4 0F            [ 1]  247 	and	a, #0x0f
      0095C8 C7 52 33         [ 1]  248 	ld	0x5233, a
                                    249 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 125: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
      0095CB C6 52 33         [ 1]  250 	ld	a, 0x5233
      0095CE A4 F0            [ 1]  251 	and	a, #0xf0
      0095D0 C7 52 33         [ 1]  252 	ld	0x5233, a
                                    253 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 128: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      0095D3 CD 93 C2         [ 4]  254 	call	_CLK_GetClockFreq
      0095D6 1F 0C            [ 2]  255 	ldw	(0x0c, sp), x
      0095D8 1E 10            [ 2]  256 	ldw	x, (0x10, sp)
      0095DA 1F 06            [ 2]  257 	ldw	(0x06, sp), x
      0095DC 1E 12            [ 2]  258 	ldw	x, (0x12, sp)
      0095DE A6 04            [ 1]  259 	ld	a, #0x04
      0095E0                        260 00413$:
      0095E0 58               [ 2]  261 	sllw	x
      0095E1 09 07            [ 1]  262 	rlc	(0x07, sp)
      0095E3 09 06            [ 1]  263 	rlc	(0x06, sp)
      0095E5 4A               [ 1]  264 	dec	a
      0095E6 26 F8            [ 1]  265 	jrne	00413$
      0095E8 1F 08            [ 2]  266 	ldw	(0x08, sp), x
      0095EA 89               [ 2]  267 	pushw	x
      0095EB 1E 08            [ 2]  268 	ldw	x, (0x08, sp)
      0095ED 89               [ 2]  269 	pushw	x
      0095EE 1E 10            [ 2]  270 	ldw	x, (0x10, sp)
      0095F0 89               [ 2]  271 	pushw	x
      0095F1 90 89            [ 2]  272 	pushw	y
                                    273 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 129: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      0095F3 CD 97 D4         [ 4]  274 	call	__divulong
      0095F6 5B 08            [ 2]  275 	addw	sp, #8
      0095F8 1F 03            [ 2]  276 	ldw	(0x03, sp), x
      0095FA 17 01            [ 2]  277 	ldw	(0x01, sp), y
      0095FC CD 93 C2         [ 4]  278 	call	_CLK_GetClockFreq
      0095FF 89               [ 2]  279 	pushw	x
      009600 90 89            [ 2]  280 	pushw	y
      009602 4B 64            [ 1]  281 	push	#0x64
      009604 5F               [ 1]  282 	clrw	x
      009605 89               [ 2]  283 	pushw	x
      009606 4B 00            [ 1]  284 	push	#0x00
      009608 CD 98 2F         [ 4]  285 	call	__mullong
      00960B 5B 08            [ 2]  286 	addw	sp, #8
      00960D 1F 0C            [ 2]  287 	ldw	(0x0c, sp), x
      00960F 1E 08            [ 2]  288 	ldw	x, (0x08, sp)
      009611 89               [ 2]  289 	pushw	x
      009612 1E 08            [ 2]  290 	ldw	x, (0x08, sp)
      009614 89               [ 2]  291 	pushw	x
      009615 1E 10            [ 2]  292 	ldw	x, (0x10, sp)
      009617 89               [ 2]  293 	pushw	x
      009618 90 89            [ 2]  294 	pushw	y
                                    295 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 131: UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
      00961A CD 97 D4         [ 4]  296 	call	__divulong
      00961D 5B 08            [ 2]  297 	addw	sp, #8
      00961F 1F 07            [ 2]  298 	ldw	(0x07, sp), x
      009621 90 02            [ 1]  299 	rlwa	y
      009623 6B 05            [ 1]  300 	ld	(0x05, sp), a
      009625 90 01            [ 1]  301 	rrwa	y
      009627 90 9F            [ 1]  302 	ld	a, yl
      009629 AE 52 33         [ 2]  303 	ldw	x, #0x5233
      00962C 88               [ 1]  304 	push	a
      00962D F6               [ 1]  305 	ld	a, (x)
      00962E 6B 0A            [ 1]  306 	ld	(0x0a, sp), a
      009630 1E 04            [ 2]  307 	ldw	x, (0x04, sp)
      009632 89               [ 2]  308 	pushw	x
      009633 1E 04            [ 2]  309 	ldw	x, (0x04, sp)
      009635 89               [ 2]  310 	pushw	x
      009636 4B 64            [ 1]  311 	push	#0x64
      009638 5F               [ 1]  312 	clrw	x
      009639 89               [ 2]  313 	pushw	x
      00963A 4B 00            [ 1]  314 	push	#0x00
      00963C CD 98 2F         [ 4]  315 	call	__mullong
      00963F 5B 08            [ 2]  316 	addw	sp, #8
      009641 1F 0D            [ 2]  317 	ldw	(0x0d, sp), x
      009643 17 0B            [ 2]  318 	ldw	(0x0b, sp), y
      009645 84               [ 1]  319 	pop	a
      009646 16 07            [ 2]  320 	ldw	y, (0x07, sp)
      009648 72 F2 0C         [ 2]  321 	subw	y, (0x0c, sp)
      00964B 12 0B            [ 1]  322 	sbc	a, (0x0b, sp)
      00964D 97               [ 1]  323 	ld	xl, a
      00964E 7B 05            [ 1]  324 	ld	a, (0x05, sp)
      009650 12 0A            [ 1]  325 	sbc	a, (0x0a, sp)
      009652 95               [ 1]  326 	ld	xh, a
      009653 A6 04            [ 1]  327 	ld	a, #0x04
      009655                        328 00415$:
      009655 90 58            [ 2]  329 	sllw	y
      009657 59               [ 2]  330 	rlcw	x
      009658 4A               [ 1]  331 	dec	a
      009659 26 FA            [ 1]  332 	jrne	00415$
      00965B 4B 64            [ 1]  333 	push	#0x64
      00965D 4B 00            [ 1]  334 	push	#0x00
      00965F 4B 00            [ 1]  335 	push	#0x00
      009661 4B 00            [ 1]  336 	push	#0x00
      009663 90 89            [ 2]  337 	pushw	y
      009665 89               [ 2]  338 	pushw	x
      009666 CD 97 D4         [ 4]  339 	call	__divulong
      009669 5B 08            [ 2]  340 	addw	sp, #8
      00966B 9F               [ 1]  341 	ld	a, xl
      00966C A4 0F            [ 1]  342 	and	a, #0x0f
      00966E 1A 09            [ 1]  343 	or	a, (0x09, sp)
      009670 C7 52 33         [ 1]  344 	ld	0x5233, a
                                    345 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 133: UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
      009673 C6 52 33         [ 1]  346 	ld	a, 0x5233
      009676 6B 0D            [ 1]  347 	ld	(0x0d, sp), a
      009678 1E 03            [ 2]  348 	ldw	x, (0x03, sp)
      00967A A6 10            [ 1]  349 	ld	a, #0x10
      00967C 62               [ 2]  350 	div	x, a
      00967D 90 93            [ 1]  351 	ldw	y, x
      00967F 9F               [ 1]  352 	ld	a, xl
      009680 A4 F0            [ 1]  353 	and	a, #0xf0
      009682 1A 0D            [ 1]  354 	or	a, (0x0d, sp)
      009684 C7 52 33         [ 1]  355 	ld	0x5233, a
                                    356 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 135: UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
      009687 C6 52 32         [ 1]  357 	ld	a, 0x5232
      00968A 6B 0D            [ 1]  358 	ld	(0x0d, sp), a
      00968C 7B 04            [ 1]  359 	ld	a, (0x04, sp)
      00968E 1A 0D            [ 1]  360 	or	a, (0x0d, sp)
      009690 C7 52 32         [ 1]  361 	ld	0x5232, a
                                    362 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      009693 C6 52 35         [ 1]  363 	ld	a, 0x5235
      009696 A4 F3            [ 1]  364 	and	a, #0xf3
      009698 C7 52 35         [ 1]  365 	ld	0x5235, a
                                    366 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 140: UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
      00969B C6 52 36         [ 1]  367 	ld	a, 0x5236
      00969E A4 F8            [ 1]  368 	and	a, #0xf8
      0096A0 C7 52 36         [ 1]  369 	ld	0x5236, a
                                    370 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 142: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
      0096A3 C6 52 36         [ 1]  371 	ld	a, 0x5236
      0096A6 6B 0D            [ 1]  372 	ld	(0x0d, sp), a
      0096A8 7B 17            [ 1]  373 	ld	a, (0x17, sp)
      0096AA A4 07            [ 1]  374 	and	a, #0x07
      0096AC 1A 0D            [ 1]  375 	or	a, (0x0d, sp)
      0096AE C7 52 36         [ 1]  376 	ld	0x5236, a
                                    377 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      0096B1 C6 52 35         [ 1]  378 	ld	a, 0x5235
                                    379 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 145: if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
      0096B4 88               [ 1]  380 	push	a
      0096B5 7B 19            [ 1]  381 	ld	a, (0x19, sp)
      0096B7 A5 04            [ 1]  382 	bcp	a, #0x04
      0096B9 84               [ 1]  383 	pop	a
      0096BA 27 07            [ 1]  384 	jreq	00102$
                                    385 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 148: UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
      0096BC AA 08            [ 1]  386 	or	a, #0x08
      0096BE C7 52 35         [ 1]  387 	ld	0x5235, a
      0096C1 20 05            [ 2]  388 	jra	00103$
      0096C3                        389 00102$:
                                    390 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 153: UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
      0096C3 A4 F7            [ 1]  391 	and	a, #0xf7
      0096C5 C7 52 35         [ 1]  392 	ld	0x5235, a
      0096C8                        393 00103$:
                                    394 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      0096C8 C6 52 35         [ 1]  395 	ld	a, 0x5235
                                    396 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 155: if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
      0096CB 88               [ 1]  397 	push	a
      0096CC 7B 19            [ 1]  398 	ld	a, (0x19, sp)
      0096CE A5 08            [ 1]  399 	bcp	a, #0x08
      0096D0 84               [ 1]  400 	pop	a
      0096D1 27 07            [ 1]  401 	jreq	00105$
                                    402 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 158: UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
      0096D3 AA 04            [ 1]  403 	or	a, #0x04
      0096D5 C7 52 35         [ 1]  404 	ld	0x5235, a
      0096D8 20 05            [ 2]  405 	jra	00106$
      0096DA                        406 00105$:
                                    407 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 163: UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
      0096DA A4 FB            [ 1]  408 	and	a, #0xfb
      0096DC C7 52 35         [ 1]  409 	ld	0x5235, a
      0096DF                        410 00106$:
                                    411 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      0096DF C6 52 36         [ 1]  412 	ld	a, 0x5236
                                    413 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 167: if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
      0096E2 0D 17            [ 1]  414 	tnz	(0x17, sp)
      0096E4 2A 07            [ 1]  415 	jrpl	00108$
                                    416 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 170: UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
      0096E6 A4 F7            [ 1]  417 	and	a, #0xf7
      0096E8 C7 52 36         [ 1]  418 	ld	0x5236, a
      0096EB 20 0D            [ 2]  419 	jra	00110$
      0096ED                        420 00108$:
                                    421 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 174: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
      0096ED 88               [ 1]  422 	push	a
      0096EE 7B 18            [ 1]  423 	ld	a, (0x18, sp)
      0096F0 A4 08            [ 1]  424 	and	a, #0x08
      0096F2 6B 0E            [ 1]  425 	ld	(0x0e, sp), a
      0096F4 84               [ 1]  426 	pop	a
      0096F5 1A 0D            [ 1]  427 	or	a, (0x0d, sp)
      0096F7 C7 52 36         [ 1]  428 	ld	0x5236, a
      0096FA                        429 00110$:
                                    430 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 176: }
      0096FA 1E 0E            [ 2]  431 	ldw	x, (14, sp)
      0096FC 5B 18            [ 2]  432 	addw	sp, #24
      0096FE FC               [ 2]  433 	jp	(x)
                                    434 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 184: void UART1_Cmd(FunctionalState NewState)
                                    435 ;	-----------------------------------------
                                    436 ;	 function UART1_Cmd
                                    437 ;	-----------------------------------------
      0096FF                        438 _UART1_Cmd:
      0096FF 88               [ 1]  439 	push	a
      009700 6B 01            [ 1]  440 	ld	(0x01, sp), a
                                    441 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      009702 C6 52 34         [ 1]  442 	ld	a, 0x5234
                                    443 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 186: if (NewState != DISABLE)
      009705 0D 01            [ 1]  444 	tnz	(0x01, sp)
      009707 27 07            [ 1]  445 	jreq	00102$
                                    446 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      009709 A4 DF            [ 1]  447 	and	a, #0xdf
      00970B C7 52 34         [ 1]  448 	ld	0x5234, a
      00970E 20 05            [ 2]  449 	jra	00104$
      009710                        450 00102$:
                                    451 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 194: UART1->CR1 |= UART1_CR1_UARTD;  
      009710 AA 20            [ 1]  452 	or	a, #0x20
      009712 C7 52 34         [ 1]  453 	ld	0x5234, a
      009715                        454 00104$:
                                    455 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 196: }
      009715 84               [ 1]  456 	pop	a
      009716 81               [ 4]  457 	ret
                                    458 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 498: void UART1_SendData8(uint8_t Data)
                                    459 ;	-----------------------------------------
                                    460 ;	 function UART1_SendData8
                                    461 ;	-----------------------------------------
      009717                        462 _UART1_SendData8:
                                    463 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 501: UART1->DR = Data;
      009717 C7 52 31         [ 1]  464 	ld	0x5231, a
                                    465 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 502: }
      00971A 81               [ 4]  466 	ret
                                    467 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 602: FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
                                    468 ;	-----------------------------------------
                                    469 ;	 function UART1_GetFlagStatus
                                    470 ;	-----------------------------------------
      00971B                        471 _UART1_GetFlagStatus:
      00971B 52 02            [ 2]  472 	sub	sp, #2
                                    473 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 607: assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
      00971D 90 93            [ 1]  474 	ldw	y, x
      00971F A3 01 01         [ 2]  475 	cpw	x, #0x0101
      009722 26 05            [ 1]  476 	jrne	00253$
      009724 A6 01            [ 1]  477 	ld	a, #0x01
      009726 6B 01            [ 1]  478 	ld	(0x01, sp), a
      009728 C5                     479 	.byte 0xc5
      009729                        480 00253$:
      009729 0F 01            [ 1]  481 	clr	(0x01, sp)
      00972B                        482 00254$:
      00972B A3 02 10         [ 2]  483 	cpw	x, #0x0210
      00972E 26 03            [ 1]  484 	jrne	00256$
      009730 A6 01            [ 1]  485 	ld	a, #0x01
      009732 21                     486 	.byte 0x21
      009733                        487 00256$:
      009733 4F               [ 1]  488 	clr	a
      009734                        489 00257$:
      009734 A3 00 80         [ 2]  490 	cpw	x, #0x0080
      009737 27 3A            [ 1]  491 	jreq	00119$
      009739 A3 00 40         [ 2]  492 	cpw	x, #0x0040
      00973C 27 35            [ 1]  493 	jreq	00119$
      00973E A3 00 20         [ 2]  494 	cpw	x, #0x0020
      009741 27 30            [ 1]  495 	jreq	00119$
      009743 A3 00 10         [ 2]  496 	cpw	x, #0x0010
      009746 27 2B            [ 1]  497 	jreq	00119$
      009748 A3 00 08         [ 2]  498 	cpw	x, #0x0008
      00974B 27 26            [ 1]  499 	jreq	00119$
      00974D A3 00 04         [ 2]  500 	cpw	x, #0x0004
      009750 27 21            [ 1]  501 	jreq	00119$
      009752 A3 00 02         [ 2]  502 	cpw	x, #0x0002
      009755 27 1C            [ 1]  503 	jreq	00119$
      009757 5A               [ 2]  504 	decw	x
      009758 27 19            [ 1]  505 	jreq	00119$
      00975A 0D 01            [ 1]  506 	tnz	(0x01, sp)
      00975C 26 15            [ 1]  507 	jrne	00119$
      00975E 4D               [ 1]  508 	tnz	a
      00975F 26 12            [ 1]  509 	jrne	00119$
      009761 88               [ 1]  510 	push	a
      009762 90 89            [ 2]  511 	pushw	y
      009764 4B 5F            [ 1]  512 	push	#0x5f
      009766 4B 02            [ 1]  513 	push	#0x02
      009768 5F               [ 1]  514 	clrw	x
      009769 89               [ 2]  515 	pushw	x
      00976A AE 81 F9         [ 2]  516 	ldw	x, #(___str_0+0)
      00976D CD 82 6A         [ 4]  517 	call	_assert_failed
      009770 90 85            [ 2]  518 	popw	y
      009772 84               [ 1]  519 	pop	a
      009773                        520 00119$:
                                    521 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 613: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      009773 61               [ 1]  522 	exg	a, yl
      009774 6B 02            [ 1]  523 	ld	(0x02, sp), a
      009776 61               [ 1]  524 	exg	a, yl
                                    525 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 611: if (UART1_FLAG == UART1_FLAG_LBDF)
      009777 4D               [ 1]  526 	tnz	a
      009778 27 0E            [ 1]  527 	jreq	00114$
                                    528 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 613: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      00977A C6 52 37         [ 1]  529 	ld	a, 0x5237
      00977D 14 02            [ 1]  530 	and	a, (0x02, sp)
      00977F 27 04            [ 1]  531 	jreq	00102$
                                    532 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 616: status = SET;
      009781 A6 01            [ 1]  533 	ld	a, #0x01
      009783 20 20            [ 2]  534 	jra	00115$
      009785                        535 00102$:
                                    536 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 621: status = RESET;
      009785 4F               [ 1]  537 	clr	a
      009786 20 1D            [ 2]  538 	jra	00115$
      009788                        539 00114$:
                                    540 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 624: else if (UART1_FLAG == UART1_FLAG_SBK)
      009788 7B 01            [ 1]  541 	ld	a, (0x01, sp)
      00978A 27 0E            [ 1]  542 	jreq	00111$
                                    543 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 626: if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      00978C C6 52 35         [ 1]  544 	ld	a, 0x5235
      00978F 14 02            [ 1]  545 	and	a, (0x02, sp)
      009791 27 04            [ 1]  546 	jreq	00105$
                                    547 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 629: status = SET;
      009793 A6 01            [ 1]  548 	ld	a, #0x01
      009795 20 0E            [ 2]  549 	jra	00115$
      009797                        550 00105$:
                                    551 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 634: status = RESET;
      009797 4F               [ 1]  552 	clr	a
      009798 20 0B            [ 2]  553 	jra	00115$
      00979A                        554 00111$:
                                    555 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 639: if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      00979A C6 52 30         [ 1]  556 	ld	a, 0x5230
      00979D 14 02            [ 1]  557 	and	a, (0x02, sp)
      00979F 27 03            [ 1]  558 	jreq	00108$
                                    559 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 642: status = SET;
      0097A1 A6 01            [ 1]  560 	ld	a, #0x01
                                    561 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 647: status = RESET;
      0097A3 21                     562 	.byte 0x21
      0097A4                        563 00108$:
      0097A4 4F               [ 1]  564 	clr	a
      0097A5                        565 00115$:
                                    566 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 651: return status;
                                    567 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 652: }
      0097A5 5B 02            [ 2]  568 	addw	sp, #2
      0097A7 81               [ 4]  569 	ret
                                    570 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 680: void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
                                    571 ;	-----------------------------------------
                                    572 ;	 function UART1_ClearFlag
                                    573 ;	-----------------------------------------
      0097A8                        574 _UART1_ClearFlag:
                                    575 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 682: assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
      0097A8 A3 00 20         [ 2]  576 	cpw	x, #0x0020
      0097AB 26 03            [ 1]  577 	jrne	00133$
      0097AD A6 01            [ 1]  578 	ld	a, #0x01
      0097AF 21                     579 	.byte 0x21
      0097B0                        580 00133$:
      0097B0 4F               [ 1]  581 	clr	a
      0097B1                        582 00134$:
      0097B1 4D               [ 1]  583 	tnz	a
      0097B2 26 13            [ 1]  584 	jrne	00107$
      0097B4 A3 02 10         [ 2]  585 	cpw	x, #0x0210
      0097B7 27 0E            [ 1]  586 	jreq	00107$
      0097B9 88               [ 1]  587 	push	a
      0097BA 4B AA            [ 1]  588 	push	#0xaa
      0097BC 4B 02            [ 1]  589 	push	#0x02
      0097BE 5F               [ 1]  590 	clrw	x
      0097BF 89               [ 2]  591 	pushw	x
      0097C0 AE 81 F9         [ 2]  592 	ldw	x, #(___str_0+0)
      0097C3 CD 82 6A         [ 4]  593 	call	_assert_failed
      0097C6 84               [ 1]  594 	pop	a
      0097C7                        595 00107$:
                                    596 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 685: if (UART1_FLAG == UART1_FLAG_RXNE)
      0097C7 4D               [ 1]  597 	tnz	a
      0097C8 27 05            [ 1]  598 	jreq	00102$
                                    599 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 687: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
      0097CA 35 DF 52 30      [ 1]  600 	mov	0x5230+0, #0xdf
      0097CE 81               [ 4]  601 	ret
      0097CF                        602 00102$:
                                    603 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 692: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
      0097CF 72 19 52 37      [ 1]  604 	bres	0x5237, #4
                                    605 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 694: }
      0097D3 81               [ 4]  606 	ret
                                    607 	.area CODE
                                    608 	.area CONST
                                    609 	.area CONST
      0081F9                        610 ___str_0:
      0081F9 2F 77 6F 72 6B 73 70   611 	.ascii "/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Li"
             61 63 65 2F 53 6F 66
             74 77 61 72 65 2F 46
             69 72 6D 77 61 72 65
             2F 6E 65 77 5F 62 65
             67 69 6E 69 6E 67 2F
             53 54 4D 38 53 5F 53
             74 64 50 65 72 69 70
             68 5F 4C 69
      008235 62 2F 73 72 63 2F 73   612 	.ascii "b/src/stm8s_uart1.c"
             74 6D 38 73 5F 75 61
             72 74 31 2E 63
      008248 00                     613 	.db 0x00
                                    614 	.area CODE
                                    615 	.area INITIALIZER
                                    616 	.area CABS (ABS)
