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
      009037                         60 _UART1_DeInit:
                                     61 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 57: (void)UART1->SR;
      009037 C6 52 30         [ 1]   62 	ld	a, 0x5230
                                     63 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 58: (void)UART1->DR;
      00903A C6 52 31         [ 1]   64 	ld	a, 0x5231
                                     65 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 60: UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
      00903D 35 00 52 33      [ 1]   66 	mov	0x5233+0, #0x00
                                     67 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 61: UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
      009041 35 00 52 32      [ 1]   68 	mov	0x5232+0, #0x00
                                     69 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 63: UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
      009045 35 00 52 34      [ 1]   70 	mov	0x5234+0, #0x00
                                     71 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 64: UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
      009049 35 00 52 35      [ 1]   72 	mov	0x5235+0, #0x00
                                     73 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 65: UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
      00904D 35 00 52 36      [ 1]   74 	mov	0x5236+0, #0x00
                                     75 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 66: UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
      009051 35 00 52 37      [ 1]   76 	mov	0x5237+0, #0x00
                                     77 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 67: UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
      009055 35 00 52 38      [ 1]   78 	mov	0x5238+0, #0x00
                                     79 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 69: UART1->GTR = UART1_GTR_RESET_VALUE;
      009059 35 00 52 39      [ 1]   80 	mov	0x5239+0, #0x00
                                     81 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 70: UART1->PSCR = UART1_PSCR_RESET_VALUE;
      00905D 35 00 52 3A      [ 1]   82 	mov	0x523a+0, #0x00
                                     83 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 71: }
      009061 81               [ 4]   84 	ret
                                     85 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 90: void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
                                     86 ;	-----------------------------------------
                                     87 ;	 function UART1_Init
                                     88 ;	-----------------------------------------
      009062                         89 _UART1_Init:
      009062 52 0D            [ 2]   90 	sub	sp, #13
                                     91 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 97: assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
      009064 AE 89 68         [ 2]   92 	ldw	x, #0x8968
      009067 13 12            [ 2]   93 	cpw	x, (0x12, sp)
      009069 A6 09            [ 1]   94 	ld	a, #0x09
      00906B 12 11            [ 1]   95 	sbc	a, (0x11, sp)
      00906D 4F               [ 1]   96 	clr	a
      00906E 12 10            [ 1]   97 	sbc	a, (0x10, sp)
      009070 24 0C            [ 1]   98 	jrnc	00113$
      009072 4B 61            [ 1]   99 	push	#0x61
      009074 5F               [ 1]  100 	clrw	x
      009075 89               [ 2]  101 	pushw	x
      009076 4B 00            [ 1]  102 	push	#0x00
      009078 AE 81 73         [ 2]  103 	ldw	x, #(___str_0+0)
      00907B CD 82 14         [ 4]  104 	call	_assert_failed
      00907E                        105 00113$:
                                    106 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 98: assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
      00907E 0D 14            [ 1]  107 	tnz	(0x14, sp)
      009080 27 12            [ 1]  108 	jreq	00115$
      009082 7B 14            [ 1]  109 	ld	a, (0x14, sp)
      009084 A1 10            [ 1]  110 	cp	a, #0x10
      009086 27 0C            [ 1]  111 	jreq	00115$
      009088 4B 62            [ 1]  112 	push	#0x62
      00908A 5F               [ 1]  113 	clrw	x
      00908B 89               [ 2]  114 	pushw	x
      00908C 4B 00            [ 1]  115 	push	#0x00
      00908E AE 81 73         [ 2]  116 	ldw	x, #(___str_0+0)
      009091 CD 82 14         [ 4]  117 	call	_assert_failed
      009094                        118 00115$:
                                    119 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 99: assert_param(IS_UART1_STOPBITS_OK(StopBits));
      009094 0D 15            [ 1]  120 	tnz	(0x15, sp)
      009096 27 1E            [ 1]  121 	jreq	00120$
      009098 7B 15            [ 1]  122 	ld	a, (0x15, sp)
      00909A A1 10            [ 1]  123 	cp	a, #0x10
      00909C 27 18            [ 1]  124 	jreq	00120$
      00909E 7B 15            [ 1]  125 	ld	a, (0x15, sp)
      0090A0 A1 20            [ 1]  126 	cp	a, #0x20
      0090A2 27 12            [ 1]  127 	jreq	00120$
      0090A4 7B 15            [ 1]  128 	ld	a, (0x15, sp)
      0090A6 A1 30            [ 1]  129 	cp	a, #0x30
      0090A8 27 0C            [ 1]  130 	jreq	00120$
      0090AA 4B 63            [ 1]  131 	push	#0x63
      0090AC 5F               [ 1]  132 	clrw	x
      0090AD 89               [ 2]  133 	pushw	x
      0090AE 4B 00            [ 1]  134 	push	#0x00
      0090B0 AE 81 73         [ 2]  135 	ldw	x, #(___str_0+0)
      0090B3 CD 82 14         [ 4]  136 	call	_assert_failed
      0090B6                        137 00120$:
                                    138 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 100: assert_param(IS_UART1_PARITY_OK(Parity));
      0090B6 0D 16            [ 1]  139 	tnz	(0x16, sp)
      0090B8 27 18            [ 1]  140 	jreq	00131$
      0090BA 7B 16            [ 1]  141 	ld	a, (0x16, sp)
      0090BC A1 04            [ 1]  142 	cp	a, #0x04
      0090BE 27 12            [ 1]  143 	jreq	00131$
      0090C0 7B 16            [ 1]  144 	ld	a, (0x16, sp)
      0090C2 A1 06            [ 1]  145 	cp	a, #0x06
      0090C4 27 0C            [ 1]  146 	jreq	00131$
      0090C6 4B 64            [ 1]  147 	push	#0x64
      0090C8 5F               [ 1]  148 	clrw	x
      0090C9 89               [ 2]  149 	pushw	x
      0090CA 4B 00            [ 1]  150 	push	#0x00
      0090CC AE 81 73         [ 2]  151 	ldw	x, #(___str_0+0)
      0090CF CD 82 14         [ 4]  152 	call	_assert_failed
      0090D2                        153 00131$:
                                    154 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 101: assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
      0090D2 7B 18            [ 1]  155 	ld	a, (0x18, sp)
      0090D4 A1 08            [ 1]  156 	cp	a, #0x08
      0090D6 27 3F            [ 1]  157 	jreq	00139$
      0090D8 7B 18            [ 1]  158 	ld	a, (0x18, sp)
      0090DA A1 40            [ 1]  159 	cp	a, #0x40
      0090DC 27 39            [ 1]  160 	jreq	00139$
      0090DE 7B 18            [ 1]  161 	ld	a, (0x18, sp)
      0090E0 A1 04            [ 1]  162 	cp	a, #0x04
      0090E2 27 33            [ 1]  163 	jreq	00139$
      0090E4 7B 18            [ 1]  164 	ld	a, (0x18, sp)
      0090E6 A1 80            [ 1]  165 	cp	a, #0x80
      0090E8 27 2D            [ 1]  166 	jreq	00139$
      0090EA 7B 18            [ 1]  167 	ld	a, (0x18, sp)
      0090EC A0 0C            [ 1]  168 	sub	a, #0x0c
      0090EE 26 02            [ 1]  169 	jrne	00388$
      0090F0 4C               [ 1]  170 	inc	a
      0090F1 21                     171 	.byte 0x21
      0090F2                        172 00388$:
      0090F2 4F               [ 1]  173 	clr	a
      0090F3                        174 00389$:
      0090F3 4D               [ 1]  175 	tnz	a
      0090F4 26 21            [ 1]  176 	jrne	00139$
      0090F6 4D               [ 1]  177 	tnz	a
      0090F7 26 1E            [ 1]  178 	jrne	00139$
      0090F9 7B 18            [ 1]  179 	ld	a, (0x18, sp)
      0090FB A1 44            [ 1]  180 	cp	a, #0x44
      0090FD 27 18            [ 1]  181 	jreq	00139$
      0090FF 7B 18            [ 1]  182 	ld	a, (0x18, sp)
      009101 A1 C0            [ 1]  183 	cp	a, #0xc0
      009103 27 12            [ 1]  184 	jreq	00139$
      009105 7B 18            [ 1]  185 	ld	a, (0x18, sp)
      009107 A1 88            [ 1]  186 	cp	a, #0x88
      009109 27 0C            [ 1]  187 	jreq	00139$
      00910B 4B 65            [ 1]  188 	push	#0x65
      00910D 5F               [ 1]  189 	clrw	x
      00910E 89               [ 2]  190 	pushw	x
      00910F 4B 00            [ 1]  191 	push	#0x00
      009111 AE 81 73         [ 2]  192 	ldw	x, #(___str_0+0)
      009114 CD 82 14         [ 4]  193 	call	_assert_failed
      009117                        194 00139$:
                                    195 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 102: assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
      009117 7B 17            [ 1]  196 	ld	a, (0x17, sp)
      009119 43               [ 1]  197 	cpl	a
      00911A A5 88            [ 1]  198 	bcp	a, #0x88
      00911C 27 15            [ 1]  199 	jreq	00167$
      00911E 7B 17            [ 1]  200 	ld	a, (0x17, sp)
      009120 43               [ 1]  201 	cpl	a
      009121 A5 44            [ 1]  202 	bcp	a, #0x44
      009123 27 0E            [ 1]  203 	jreq	00167$
      009125 7B 17            [ 1]  204 	ld	a, (0x17, sp)
      009127 43               [ 1]  205 	cpl	a
      009128 A5 22            [ 1]  206 	bcp	a, #0x22
      00912A 27 07            [ 1]  207 	jreq	00167$
      00912C 7B 17            [ 1]  208 	ld	a, (0x17, sp)
      00912E 43               [ 1]  209 	cpl	a
      00912F A5 11            [ 1]  210 	bcp	a, #0x11
      009131 26 0C            [ 1]  211 	jrne	00165$
      009133                        212 00167$:
      009133 4B 66            [ 1]  213 	push	#0x66
      009135 5F               [ 1]  214 	clrw	x
      009136 89               [ 2]  215 	pushw	x
      009137 4B 00            [ 1]  216 	push	#0x00
      009139 AE 81 73         [ 2]  217 	ldw	x, #(___str_0+0)
      00913C CD 82 14         [ 4]  218 	call	_assert_failed
      00913F                        219 00165$:
                                    220 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 105: UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
      00913F 72 19 52 34      [ 1]  221 	bres	0x5234, #4
                                    222 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 108: UART1->CR1 |= (uint8_t)WordLength;
      009143 C6 52 34         [ 1]  223 	ld	a, 0x5234
      009146 1A 14            [ 1]  224 	or	a, (0x14, sp)
      009148 C7 52 34         [ 1]  225 	ld	0x5234, a
                                    226 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      00914B C6 52 36         [ 1]  227 	ld	a, 0x5236
      00914E A4 CF            [ 1]  228 	and	a, #0xcf
      009150 C7 52 36         [ 1]  229 	ld	0x5236, a
                                    230 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 113: UART1->CR3 |= (uint8_t)StopBits;  
      009153 C6 52 36         [ 1]  231 	ld	a, 0x5236
      009156 1A 15            [ 1]  232 	or	a, (0x15, sp)
      009158 C7 52 36         [ 1]  233 	ld	0x5236, a
                                    234 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 116: UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
      00915B C6 52 34         [ 1]  235 	ld	a, 0x5234
      00915E A4 F9            [ 1]  236 	and	a, #0xf9
      009160 C7 52 34         [ 1]  237 	ld	0x5234, a
                                    238 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 118: UART1->CR1 |= (uint8_t)Parity;  
      009163 C6 52 34         [ 1]  239 	ld	a, 0x5234
      009166 1A 16            [ 1]  240 	or	a, (0x16, sp)
      009168 C7 52 34         [ 1]  241 	ld	0x5234, a
                                    242 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 121: UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
      00916B C6 52 32         [ 1]  243 	ld	a, 0x5232
      00916E 35 00 52 32      [ 1]  244 	mov	0x5232+0, #0x00
                                    245 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 123: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
      009172 C6 52 33         [ 1]  246 	ld	a, 0x5233
      009175 A4 0F            [ 1]  247 	and	a, #0x0f
      009177 C7 52 33         [ 1]  248 	ld	0x5233, a
                                    249 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 125: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
      00917A C6 52 33         [ 1]  250 	ld	a, 0x5233
      00917D A4 F0            [ 1]  251 	and	a, #0xf0
      00917F C7 52 33         [ 1]  252 	ld	0x5233, a
                                    253 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 128: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      009182 CD 8F 71         [ 4]  254 	call	_CLK_GetClockFreq
      009185 1F 0C            [ 2]  255 	ldw	(0x0c, sp), x
      009187 1E 10            [ 2]  256 	ldw	x, (0x10, sp)
      009189 1F 06            [ 2]  257 	ldw	(0x06, sp), x
      00918B 1E 12            [ 2]  258 	ldw	x, (0x12, sp)
      00918D A6 04            [ 1]  259 	ld	a, #0x04
      00918F                        260 00413$:
      00918F 58               [ 2]  261 	sllw	x
      009190 09 07            [ 1]  262 	rlc	(0x07, sp)
      009192 09 06            [ 1]  263 	rlc	(0x06, sp)
      009194 4A               [ 1]  264 	dec	a
      009195 26 F8            [ 1]  265 	jrne	00413$
      009197 1F 08            [ 2]  266 	ldw	(0x08, sp), x
      009199 89               [ 2]  267 	pushw	x
      00919A 1E 08            [ 2]  268 	ldw	x, (0x08, sp)
      00919C 89               [ 2]  269 	pushw	x
      00919D 1E 10            [ 2]  270 	ldw	x, (0x10, sp)
      00919F 89               [ 2]  271 	pushw	x
      0091A0 90 89            [ 2]  272 	pushw	y
                                    273 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 129: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      0091A2 CD 93 83         [ 4]  274 	call	__divulong
      0091A5 5B 08            [ 2]  275 	addw	sp, #8
      0091A7 1F 03            [ 2]  276 	ldw	(0x03, sp), x
      0091A9 17 01            [ 2]  277 	ldw	(0x01, sp), y
      0091AB CD 8F 71         [ 4]  278 	call	_CLK_GetClockFreq
      0091AE 89               [ 2]  279 	pushw	x
      0091AF 90 89            [ 2]  280 	pushw	y
      0091B1 4B 64            [ 1]  281 	push	#0x64
      0091B3 5F               [ 1]  282 	clrw	x
      0091B4 89               [ 2]  283 	pushw	x
      0091B5 4B 00            [ 1]  284 	push	#0x00
      0091B7 CD 93 DE         [ 4]  285 	call	__mullong
      0091BA 5B 08            [ 2]  286 	addw	sp, #8
      0091BC 1F 0C            [ 2]  287 	ldw	(0x0c, sp), x
      0091BE 1E 08            [ 2]  288 	ldw	x, (0x08, sp)
      0091C0 89               [ 2]  289 	pushw	x
      0091C1 1E 08            [ 2]  290 	ldw	x, (0x08, sp)
      0091C3 89               [ 2]  291 	pushw	x
      0091C4 1E 10            [ 2]  292 	ldw	x, (0x10, sp)
      0091C6 89               [ 2]  293 	pushw	x
      0091C7 90 89            [ 2]  294 	pushw	y
                                    295 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 131: UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
      0091C9 CD 93 83         [ 4]  296 	call	__divulong
      0091CC 5B 08            [ 2]  297 	addw	sp, #8
      0091CE 1F 07            [ 2]  298 	ldw	(0x07, sp), x
      0091D0 90 02            [ 1]  299 	rlwa	y
      0091D2 6B 05            [ 1]  300 	ld	(0x05, sp), a
      0091D4 90 01            [ 1]  301 	rrwa	y
      0091D6 90 9F            [ 1]  302 	ld	a, yl
      0091D8 AE 52 33         [ 2]  303 	ldw	x, #0x5233
      0091DB 88               [ 1]  304 	push	a
      0091DC F6               [ 1]  305 	ld	a, (x)
      0091DD 6B 0A            [ 1]  306 	ld	(0x0a, sp), a
      0091DF 1E 04            [ 2]  307 	ldw	x, (0x04, sp)
      0091E1 89               [ 2]  308 	pushw	x
      0091E2 1E 04            [ 2]  309 	ldw	x, (0x04, sp)
      0091E4 89               [ 2]  310 	pushw	x
      0091E5 4B 64            [ 1]  311 	push	#0x64
      0091E7 5F               [ 1]  312 	clrw	x
      0091E8 89               [ 2]  313 	pushw	x
      0091E9 4B 00            [ 1]  314 	push	#0x00
      0091EB CD 93 DE         [ 4]  315 	call	__mullong
      0091EE 5B 08            [ 2]  316 	addw	sp, #8
      0091F0 1F 0D            [ 2]  317 	ldw	(0x0d, sp), x
      0091F2 17 0B            [ 2]  318 	ldw	(0x0b, sp), y
      0091F4 84               [ 1]  319 	pop	a
      0091F5 16 07            [ 2]  320 	ldw	y, (0x07, sp)
      0091F7 72 F2 0C         [ 2]  321 	subw	y, (0x0c, sp)
      0091FA 12 0B            [ 1]  322 	sbc	a, (0x0b, sp)
      0091FC 97               [ 1]  323 	ld	xl, a
      0091FD 7B 05            [ 1]  324 	ld	a, (0x05, sp)
      0091FF 12 0A            [ 1]  325 	sbc	a, (0x0a, sp)
      009201 95               [ 1]  326 	ld	xh, a
      009202 A6 04            [ 1]  327 	ld	a, #0x04
      009204                        328 00415$:
      009204 90 58            [ 2]  329 	sllw	y
      009206 59               [ 2]  330 	rlcw	x
      009207 4A               [ 1]  331 	dec	a
      009208 26 FA            [ 1]  332 	jrne	00415$
      00920A 4B 64            [ 1]  333 	push	#0x64
      00920C 4B 00            [ 1]  334 	push	#0x00
      00920E 4B 00            [ 1]  335 	push	#0x00
      009210 4B 00            [ 1]  336 	push	#0x00
      009212 90 89            [ 2]  337 	pushw	y
      009214 89               [ 2]  338 	pushw	x
      009215 CD 93 83         [ 4]  339 	call	__divulong
      009218 5B 08            [ 2]  340 	addw	sp, #8
      00921A 9F               [ 1]  341 	ld	a, xl
      00921B A4 0F            [ 1]  342 	and	a, #0x0f
      00921D 1A 09            [ 1]  343 	or	a, (0x09, sp)
      00921F C7 52 33         [ 1]  344 	ld	0x5233, a
                                    345 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 133: UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
      009222 C6 52 33         [ 1]  346 	ld	a, 0x5233
      009225 6B 0D            [ 1]  347 	ld	(0x0d, sp), a
      009227 1E 03            [ 2]  348 	ldw	x, (0x03, sp)
      009229 A6 10            [ 1]  349 	ld	a, #0x10
      00922B 62               [ 2]  350 	div	x, a
      00922C 90 93            [ 1]  351 	ldw	y, x
      00922E 9F               [ 1]  352 	ld	a, xl
      00922F A4 F0            [ 1]  353 	and	a, #0xf0
      009231 1A 0D            [ 1]  354 	or	a, (0x0d, sp)
      009233 C7 52 33         [ 1]  355 	ld	0x5233, a
                                    356 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 135: UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
      009236 C6 52 32         [ 1]  357 	ld	a, 0x5232
      009239 6B 0D            [ 1]  358 	ld	(0x0d, sp), a
      00923B 7B 04            [ 1]  359 	ld	a, (0x04, sp)
      00923D 1A 0D            [ 1]  360 	or	a, (0x0d, sp)
      00923F C7 52 32         [ 1]  361 	ld	0x5232, a
                                    362 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      009242 C6 52 35         [ 1]  363 	ld	a, 0x5235
      009245 A4 F3            [ 1]  364 	and	a, #0xf3
      009247 C7 52 35         [ 1]  365 	ld	0x5235, a
                                    366 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 140: UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
      00924A C6 52 36         [ 1]  367 	ld	a, 0x5236
      00924D A4 F8            [ 1]  368 	and	a, #0xf8
      00924F C7 52 36         [ 1]  369 	ld	0x5236, a
                                    370 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 142: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
      009252 C6 52 36         [ 1]  371 	ld	a, 0x5236
      009255 6B 0D            [ 1]  372 	ld	(0x0d, sp), a
      009257 7B 17            [ 1]  373 	ld	a, (0x17, sp)
      009259 A4 07            [ 1]  374 	and	a, #0x07
      00925B 1A 0D            [ 1]  375 	or	a, (0x0d, sp)
      00925D C7 52 36         [ 1]  376 	ld	0x5236, a
                                    377 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      009260 C6 52 35         [ 1]  378 	ld	a, 0x5235
                                    379 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 145: if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
      009263 88               [ 1]  380 	push	a
      009264 7B 19            [ 1]  381 	ld	a, (0x19, sp)
      009266 A5 04            [ 1]  382 	bcp	a, #0x04
      009268 84               [ 1]  383 	pop	a
      009269 27 07            [ 1]  384 	jreq	00102$
                                    385 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 148: UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
      00926B AA 08            [ 1]  386 	or	a, #0x08
      00926D C7 52 35         [ 1]  387 	ld	0x5235, a
      009270 20 05            [ 2]  388 	jra	00103$
      009272                        389 00102$:
                                    390 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 153: UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
      009272 A4 F7            [ 1]  391 	and	a, #0xf7
      009274 C7 52 35         [ 1]  392 	ld	0x5235, a
      009277                        393 00103$:
                                    394 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      009277 C6 52 35         [ 1]  395 	ld	a, 0x5235
                                    396 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 155: if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
      00927A 88               [ 1]  397 	push	a
      00927B 7B 19            [ 1]  398 	ld	a, (0x19, sp)
      00927D A5 08            [ 1]  399 	bcp	a, #0x08
      00927F 84               [ 1]  400 	pop	a
      009280 27 07            [ 1]  401 	jreq	00105$
                                    402 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 158: UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
      009282 AA 04            [ 1]  403 	or	a, #0x04
      009284 C7 52 35         [ 1]  404 	ld	0x5235, a
      009287 20 05            [ 2]  405 	jra	00106$
      009289                        406 00105$:
                                    407 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 163: UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
      009289 A4 FB            [ 1]  408 	and	a, #0xfb
      00928B C7 52 35         [ 1]  409 	ld	0x5235, a
      00928E                        410 00106$:
                                    411 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      00928E C6 52 36         [ 1]  412 	ld	a, 0x5236
                                    413 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 167: if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
      009291 0D 17            [ 1]  414 	tnz	(0x17, sp)
      009293 2A 07            [ 1]  415 	jrpl	00108$
                                    416 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 170: UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
      009295 A4 F7            [ 1]  417 	and	a, #0xf7
      009297 C7 52 36         [ 1]  418 	ld	0x5236, a
      00929A 20 0D            [ 2]  419 	jra	00110$
      00929C                        420 00108$:
                                    421 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 174: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
      00929C 88               [ 1]  422 	push	a
      00929D 7B 18            [ 1]  423 	ld	a, (0x18, sp)
      00929F A4 08            [ 1]  424 	and	a, #0x08
      0092A1 6B 0E            [ 1]  425 	ld	(0x0e, sp), a
      0092A3 84               [ 1]  426 	pop	a
      0092A4 1A 0D            [ 1]  427 	or	a, (0x0d, sp)
      0092A6 C7 52 36         [ 1]  428 	ld	0x5236, a
      0092A9                        429 00110$:
                                    430 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 176: }
      0092A9 1E 0E            [ 2]  431 	ldw	x, (14, sp)
      0092AB 5B 18            [ 2]  432 	addw	sp, #24
      0092AD FC               [ 2]  433 	jp	(x)
                                    434 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 184: void UART1_Cmd(FunctionalState NewState)
                                    435 ;	-----------------------------------------
                                    436 ;	 function UART1_Cmd
                                    437 ;	-----------------------------------------
      0092AE                        438 _UART1_Cmd:
      0092AE 88               [ 1]  439 	push	a
      0092AF 6B 01            [ 1]  440 	ld	(0x01, sp), a
                                    441 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      0092B1 C6 52 34         [ 1]  442 	ld	a, 0x5234
                                    443 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 186: if (NewState != DISABLE)
      0092B4 0D 01            [ 1]  444 	tnz	(0x01, sp)
      0092B6 27 07            [ 1]  445 	jreq	00102$
                                    446 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      0092B8 A4 DF            [ 1]  447 	and	a, #0xdf
      0092BA C7 52 34         [ 1]  448 	ld	0x5234, a
      0092BD 20 05            [ 2]  449 	jra	00104$
      0092BF                        450 00102$:
                                    451 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 194: UART1->CR1 |= UART1_CR1_UARTD;  
      0092BF AA 20            [ 1]  452 	or	a, #0x20
      0092C1 C7 52 34         [ 1]  453 	ld	0x5234, a
      0092C4                        454 00104$:
                                    455 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 196: }
      0092C4 84               [ 1]  456 	pop	a
      0092C5 81               [ 4]  457 	ret
                                    458 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 498: void UART1_SendData8(uint8_t Data)
                                    459 ;	-----------------------------------------
                                    460 ;	 function UART1_SendData8
                                    461 ;	-----------------------------------------
      0092C6                        462 _UART1_SendData8:
                                    463 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 501: UART1->DR = Data;
      0092C6 C7 52 31         [ 1]  464 	ld	0x5231, a
                                    465 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 502: }
      0092C9 81               [ 4]  466 	ret
                                    467 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 602: FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
                                    468 ;	-----------------------------------------
                                    469 ;	 function UART1_GetFlagStatus
                                    470 ;	-----------------------------------------
      0092CA                        471 _UART1_GetFlagStatus:
      0092CA 52 02            [ 2]  472 	sub	sp, #2
                                    473 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 607: assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
      0092CC 90 93            [ 1]  474 	ldw	y, x
      0092CE A3 01 01         [ 2]  475 	cpw	x, #0x0101
      0092D1 26 05            [ 1]  476 	jrne	00253$
      0092D3 A6 01            [ 1]  477 	ld	a, #0x01
      0092D5 6B 01            [ 1]  478 	ld	(0x01, sp), a
      0092D7 C5                     479 	.byte 0xc5
      0092D8                        480 00253$:
      0092D8 0F 01            [ 1]  481 	clr	(0x01, sp)
      0092DA                        482 00254$:
      0092DA A3 02 10         [ 2]  483 	cpw	x, #0x0210
      0092DD 26 03            [ 1]  484 	jrne	00256$
      0092DF A6 01            [ 1]  485 	ld	a, #0x01
      0092E1 21                     486 	.byte 0x21
      0092E2                        487 00256$:
      0092E2 4F               [ 1]  488 	clr	a
      0092E3                        489 00257$:
      0092E3 A3 00 80         [ 2]  490 	cpw	x, #0x0080
      0092E6 27 3A            [ 1]  491 	jreq	00119$
      0092E8 A3 00 40         [ 2]  492 	cpw	x, #0x0040
      0092EB 27 35            [ 1]  493 	jreq	00119$
      0092ED A3 00 20         [ 2]  494 	cpw	x, #0x0020
      0092F0 27 30            [ 1]  495 	jreq	00119$
      0092F2 A3 00 10         [ 2]  496 	cpw	x, #0x0010
      0092F5 27 2B            [ 1]  497 	jreq	00119$
      0092F7 A3 00 08         [ 2]  498 	cpw	x, #0x0008
      0092FA 27 26            [ 1]  499 	jreq	00119$
      0092FC A3 00 04         [ 2]  500 	cpw	x, #0x0004
      0092FF 27 21            [ 1]  501 	jreq	00119$
      009301 A3 00 02         [ 2]  502 	cpw	x, #0x0002
      009304 27 1C            [ 1]  503 	jreq	00119$
      009306 5A               [ 2]  504 	decw	x
      009307 27 19            [ 1]  505 	jreq	00119$
      009309 0D 01            [ 1]  506 	tnz	(0x01, sp)
      00930B 26 15            [ 1]  507 	jrne	00119$
      00930D 4D               [ 1]  508 	tnz	a
      00930E 26 12            [ 1]  509 	jrne	00119$
      009310 88               [ 1]  510 	push	a
      009311 90 89            [ 2]  511 	pushw	y
      009313 4B 5F            [ 1]  512 	push	#0x5f
      009315 4B 02            [ 1]  513 	push	#0x02
      009317 5F               [ 1]  514 	clrw	x
      009318 89               [ 2]  515 	pushw	x
      009319 AE 81 73         [ 2]  516 	ldw	x, #(___str_0+0)
      00931C CD 82 14         [ 4]  517 	call	_assert_failed
      00931F 90 85            [ 2]  518 	popw	y
      009321 84               [ 1]  519 	pop	a
      009322                        520 00119$:
                                    521 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 613: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      009322 61               [ 1]  522 	exg	a, yl
      009323 6B 02            [ 1]  523 	ld	(0x02, sp), a
      009325 61               [ 1]  524 	exg	a, yl
                                    525 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 611: if (UART1_FLAG == UART1_FLAG_LBDF)
      009326 4D               [ 1]  526 	tnz	a
      009327 27 0E            [ 1]  527 	jreq	00114$
                                    528 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 613: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      009329 C6 52 37         [ 1]  529 	ld	a, 0x5237
      00932C 14 02            [ 1]  530 	and	a, (0x02, sp)
      00932E 27 04            [ 1]  531 	jreq	00102$
                                    532 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 616: status = SET;
      009330 A6 01            [ 1]  533 	ld	a, #0x01
      009332 20 20            [ 2]  534 	jra	00115$
      009334                        535 00102$:
                                    536 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 621: status = RESET;
      009334 4F               [ 1]  537 	clr	a
      009335 20 1D            [ 2]  538 	jra	00115$
      009337                        539 00114$:
                                    540 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 624: else if (UART1_FLAG == UART1_FLAG_SBK)
      009337 7B 01            [ 1]  541 	ld	a, (0x01, sp)
      009339 27 0E            [ 1]  542 	jreq	00111$
                                    543 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 626: if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      00933B C6 52 35         [ 1]  544 	ld	a, 0x5235
      00933E 14 02            [ 1]  545 	and	a, (0x02, sp)
      009340 27 04            [ 1]  546 	jreq	00105$
                                    547 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 629: status = SET;
      009342 A6 01            [ 1]  548 	ld	a, #0x01
      009344 20 0E            [ 2]  549 	jra	00115$
      009346                        550 00105$:
                                    551 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 634: status = RESET;
      009346 4F               [ 1]  552 	clr	a
      009347 20 0B            [ 2]  553 	jra	00115$
      009349                        554 00111$:
                                    555 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 639: if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      009349 C6 52 30         [ 1]  556 	ld	a, 0x5230
      00934C 14 02            [ 1]  557 	and	a, (0x02, sp)
      00934E 27 03            [ 1]  558 	jreq	00108$
                                    559 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 642: status = SET;
      009350 A6 01            [ 1]  560 	ld	a, #0x01
                                    561 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 647: status = RESET;
      009352 21                     562 	.byte 0x21
      009353                        563 00108$:
      009353 4F               [ 1]  564 	clr	a
      009354                        565 00115$:
                                    566 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 651: return status;
                                    567 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 652: }
      009354 5B 02            [ 2]  568 	addw	sp, #2
      009356 81               [ 4]  569 	ret
                                    570 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 680: void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
                                    571 ;	-----------------------------------------
                                    572 ;	 function UART1_ClearFlag
                                    573 ;	-----------------------------------------
      009357                        574 _UART1_ClearFlag:
                                    575 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 682: assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
      009357 A3 00 20         [ 2]  576 	cpw	x, #0x0020
      00935A 26 03            [ 1]  577 	jrne	00133$
      00935C A6 01            [ 1]  578 	ld	a, #0x01
      00935E 21                     579 	.byte 0x21
      00935F                        580 00133$:
      00935F 4F               [ 1]  581 	clr	a
      009360                        582 00134$:
      009360 4D               [ 1]  583 	tnz	a
      009361 26 13            [ 1]  584 	jrne	00107$
      009363 A3 02 10         [ 2]  585 	cpw	x, #0x0210
      009366 27 0E            [ 1]  586 	jreq	00107$
      009368 88               [ 1]  587 	push	a
      009369 4B AA            [ 1]  588 	push	#0xaa
      00936B 4B 02            [ 1]  589 	push	#0x02
      00936D 5F               [ 1]  590 	clrw	x
      00936E 89               [ 2]  591 	pushw	x
      00936F AE 81 73         [ 2]  592 	ldw	x, #(___str_0+0)
      009372 CD 82 14         [ 4]  593 	call	_assert_failed
      009375 84               [ 1]  594 	pop	a
      009376                        595 00107$:
                                    596 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 685: if (UART1_FLAG == UART1_FLAG_RXNE)
      009376 4D               [ 1]  597 	tnz	a
      009377 27 05            [ 1]  598 	jreq	00102$
                                    599 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 687: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
      009379 35 DF 52 30      [ 1]  600 	mov	0x5230+0, #0xdf
      00937D 81               [ 4]  601 	ret
      00937E                        602 00102$:
                                    603 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 692: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
      00937E 72 19 52 37      [ 1]  604 	bres	0x5237, #4
                                    605 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 694: }
      009382 81               [ 4]  606 	ret
                                    607 	.area CODE
                                    608 	.area CONST
                                    609 	.area CONST
      008173                        610 ___str_0:
      008173 2F 77 6F 72 6B 73 70   611 	.ascii "/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Li"
             61 63 65 2F 53 6F 66
             74 77 61 72 65 2F 46
             69 72 6D 77 61 72 65
             2F 6E 65 77 5F 62 65
             67 69 6E 69 6E 67 2F
             53 54 4D 38 53 5F 53
             74 64 50 65 72 69 70
             68 5F 4C 69
      0081AF 62 2F 73 72 63 2F 73   612 	.ascii "b/src/stm8s_uart1.c"
             74 6D 38 73 5F 75 61
             72 74 31 2E 63
      0081C2 00                     613 	.db 0x00
                                    614 	.area CODE
                                    615 	.area INITIALIZER
                                    616 	.area CABS (ABS)
