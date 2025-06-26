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
      00918C                         60 _UART1_DeInit:
                                     61 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 57: (void)UART1->SR;
      00918C C6 52 30         [ 1]   62 	ld	a, 0x5230
                                     63 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 58: (void)UART1->DR;
      00918F C6 52 31         [ 1]   64 	ld	a, 0x5231
                                     65 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 60: UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
      009192 35 00 52 33      [ 1]   66 	mov	0x5233+0, #0x00
                                     67 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 61: UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
      009196 35 00 52 32      [ 1]   68 	mov	0x5232+0, #0x00
                                     69 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 63: UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
      00919A 35 00 52 34      [ 1]   70 	mov	0x5234+0, #0x00
                                     71 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 64: UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
      00919E 35 00 52 35      [ 1]   72 	mov	0x5235+0, #0x00
                                     73 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 65: UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
      0091A2 35 00 52 36      [ 1]   74 	mov	0x5236+0, #0x00
                                     75 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 66: UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
      0091A6 35 00 52 37      [ 1]   76 	mov	0x5237+0, #0x00
                                     77 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 67: UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
      0091AA 35 00 52 38      [ 1]   78 	mov	0x5238+0, #0x00
                                     79 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 69: UART1->GTR = UART1_GTR_RESET_VALUE;
      0091AE 35 00 52 39      [ 1]   80 	mov	0x5239+0, #0x00
                                     81 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 70: UART1->PSCR = UART1_PSCR_RESET_VALUE;
      0091B2 35 00 52 3A      [ 1]   82 	mov	0x523a+0, #0x00
                                     83 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 71: }
      0091B6 81               [ 4]   84 	ret
                                     85 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 90: void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
                                     86 ;	-----------------------------------------
                                     87 ;	 function UART1_Init
                                     88 ;	-----------------------------------------
      0091B7                         89 _UART1_Init:
      0091B7 52 0D            [ 2]   90 	sub	sp, #13
                                     91 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 97: assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
      0091B9 AE 89 68         [ 2]   92 	ldw	x, #0x8968
      0091BC 13 12            [ 2]   93 	cpw	x, (0x12, sp)
      0091BE A6 09            [ 1]   94 	ld	a, #0x09
      0091C0 12 11            [ 1]   95 	sbc	a, (0x11, sp)
      0091C2 4F               [ 1]   96 	clr	a
      0091C3 12 10            [ 1]   97 	sbc	a, (0x10, sp)
      0091C5 24 0C            [ 1]   98 	jrnc	00113$
      0091C7 4B 61            [ 1]   99 	push	#0x61
      0091C9 5F               [ 1]  100 	clrw	x
      0091CA 89               [ 2]  101 	pushw	x
      0091CB 4B 00            [ 1]  102 	push	#0x00
      0091CD AE 81 AB         [ 2]  103 	ldw	x, #(___str_0+0)
      0091D0 CD 82 1C         [ 4]  104 	call	_assert_failed
      0091D3                        105 00113$:
                                    106 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 98: assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
      0091D3 0D 14            [ 1]  107 	tnz	(0x14, sp)
      0091D5 27 12            [ 1]  108 	jreq	00115$
      0091D7 7B 14            [ 1]  109 	ld	a, (0x14, sp)
      0091D9 A1 10            [ 1]  110 	cp	a, #0x10
      0091DB 27 0C            [ 1]  111 	jreq	00115$
      0091DD 4B 62            [ 1]  112 	push	#0x62
      0091DF 5F               [ 1]  113 	clrw	x
      0091E0 89               [ 2]  114 	pushw	x
      0091E1 4B 00            [ 1]  115 	push	#0x00
      0091E3 AE 81 AB         [ 2]  116 	ldw	x, #(___str_0+0)
      0091E6 CD 82 1C         [ 4]  117 	call	_assert_failed
      0091E9                        118 00115$:
                                    119 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 99: assert_param(IS_UART1_STOPBITS_OK(StopBits));
      0091E9 0D 15            [ 1]  120 	tnz	(0x15, sp)
      0091EB 27 1E            [ 1]  121 	jreq	00120$
      0091ED 7B 15            [ 1]  122 	ld	a, (0x15, sp)
      0091EF A1 10            [ 1]  123 	cp	a, #0x10
      0091F1 27 18            [ 1]  124 	jreq	00120$
      0091F3 7B 15            [ 1]  125 	ld	a, (0x15, sp)
      0091F5 A1 20            [ 1]  126 	cp	a, #0x20
      0091F7 27 12            [ 1]  127 	jreq	00120$
      0091F9 7B 15            [ 1]  128 	ld	a, (0x15, sp)
      0091FB A1 30            [ 1]  129 	cp	a, #0x30
      0091FD 27 0C            [ 1]  130 	jreq	00120$
      0091FF 4B 63            [ 1]  131 	push	#0x63
      009201 5F               [ 1]  132 	clrw	x
      009202 89               [ 2]  133 	pushw	x
      009203 4B 00            [ 1]  134 	push	#0x00
      009205 AE 81 AB         [ 2]  135 	ldw	x, #(___str_0+0)
      009208 CD 82 1C         [ 4]  136 	call	_assert_failed
      00920B                        137 00120$:
                                    138 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 100: assert_param(IS_UART1_PARITY_OK(Parity));
      00920B 0D 16            [ 1]  139 	tnz	(0x16, sp)
      00920D 27 18            [ 1]  140 	jreq	00131$
      00920F 7B 16            [ 1]  141 	ld	a, (0x16, sp)
      009211 A1 04            [ 1]  142 	cp	a, #0x04
      009213 27 12            [ 1]  143 	jreq	00131$
      009215 7B 16            [ 1]  144 	ld	a, (0x16, sp)
      009217 A1 06            [ 1]  145 	cp	a, #0x06
      009219 27 0C            [ 1]  146 	jreq	00131$
      00921B 4B 64            [ 1]  147 	push	#0x64
      00921D 5F               [ 1]  148 	clrw	x
      00921E 89               [ 2]  149 	pushw	x
      00921F 4B 00            [ 1]  150 	push	#0x00
      009221 AE 81 AB         [ 2]  151 	ldw	x, #(___str_0+0)
      009224 CD 82 1C         [ 4]  152 	call	_assert_failed
      009227                        153 00131$:
                                    154 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 101: assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
      009227 7B 18            [ 1]  155 	ld	a, (0x18, sp)
      009229 A1 08            [ 1]  156 	cp	a, #0x08
      00922B 27 3F            [ 1]  157 	jreq	00139$
      00922D 7B 18            [ 1]  158 	ld	a, (0x18, sp)
      00922F A1 40            [ 1]  159 	cp	a, #0x40
      009231 27 39            [ 1]  160 	jreq	00139$
      009233 7B 18            [ 1]  161 	ld	a, (0x18, sp)
      009235 A1 04            [ 1]  162 	cp	a, #0x04
      009237 27 33            [ 1]  163 	jreq	00139$
      009239 7B 18            [ 1]  164 	ld	a, (0x18, sp)
      00923B A1 80            [ 1]  165 	cp	a, #0x80
      00923D 27 2D            [ 1]  166 	jreq	00139$
      00923F 7B 18            [ 1]  167 	ld	a, (0x18, sp)
      009241 A0 0C            [ 1]  168 	sub	a, #0x0c
      009243 26 02            [ 1]  169 	jrne	00388$
      009245 4C               [ 1]  170 	inc	a
      009246 21                     171 	.byte 0x21
      009247                        172 00388$:
      009247 4F               [ 1]  173 	clr	a
      009248                        174 00389$:
      009248 4D               [ 1]  175 	tnz	a
      009249 26 21            [ 1]  176 	jrne	00139$
      00924B 4D               [ 1]  177 	tnz	a
      00924C 26 1E            [ 1]  178 	jrne	00139$
      00924E 7B 18            [ 1]  179 	ld	a, (0x18, sp)
      009250 A1 44            [ 1]  180 	cp	a, #0x44
      009252 27 18            [ 1]  181 	jreq	00139$
      009254 7B 18            [ 1]  182 	ld	a, (0x18, sp)
      009256 A1 C0            [ 1]  183 	cp	a, #0xc0
      009258 27 12            [ 1]  184 	jreq	00139$
      00925A 7B 18            [ 1]  185 	ld	a, (0x18, sp)
      00925C A1 88            [ 1]  186 	cp	a, #0x88
      00925E 27 0C            [ 1]  187 	jreq	00139$
      009260 4B 65            [ 1]  188 	push	#0x65
      009262 5F               [ 1]  189 	clrw	x
      009263 89               [ 2]  190 	pushw	x
      009264 4B 00            [ 1]  191 	push	#0x00
      009266 AE 81 AB         [ 2]  192 	ldw	x, #(___str_0+0)
      009269 CD 82 1C         [ 4]  193 	call	_assert_failed
      00926C                        194 00139$:
                                    195 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 102: assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
      00926C 7B 17            [ 1]  196 	ld	a, (0x17, sp)
      00926E 43               [ 1]  197 	cpl	a
      00926F A5 88            [ 1]  198 	bcp	a, #0x88
      009271 27 15            [ 1]  199 	jreq	00167$
      009273 7B 17            [ 1]  200 	ld	a, (0x17, sp)
      009275 43               [ 1]  201 	cpl	a
      009276 A5 44            [ 1]  202 	bcp	a, #0x44
      009278 27 0E            [ 1]  203 	jreq	00167$
      00927A 7B 17            [ 1]  204 	ld	a, (0x17, sp)
      00927C 43               [ 1]  205 	cpl	a
      00927D A5 22            [ 1]  206 	bcp	a, #0x22
      00927F 27 07            [ 1]  207 	jreq	00167$
      009281 7B 17            [ 1]  208 	ld	a, (0x17, sp)
      009283 43               [ 1]  209 	cpl	a
      009284 A5 11            [ 1]  210 	bcp	a, #0x11
      009286 26 0C            [ 1]  211 	jrne	00165$
      009288                        212 00167$:
      009288 4B 66            [ 1]  213 	push	#0x66
      00928A 5F               [ 1]  214 	clrw	x
      00928B 89               [ 2]  215 	pushw	x
      00928C 4B 00            [ 1]  216 	push	#0x00
      00928E AE 81 AB         [ 2]  217 	ldw	x, #(___str_0+0)
      009291 CD 82 1C         [ 4]  218 	call	_assert_failed
      009294                        219 00165$:
                                    220 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 105: UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
      009294 72 19 52 34      [ 1]  221 	bres	0x5234, #4
                                    222 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 108: UART1->CR1 |= (uint8_t)WordLength;
      009298 C6 52 34         [ 1]  223 	ld	a, 0x5234
      00929B 1A 14            [ 1]  224 	or	a, (0x14, sp)
      00929D C7 52 34         [ 1]  225 	ld	0x5234, a
                                    226 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      0092A0 C6 52 36         [ 1]  227 	ld	a, 0x5236
      0092A3 A4 CF            [ 1]  228 	and	a, #0xcf
      0092A5 C7 52 36         [ 1]  229 	ld	0x5236, a
                                    230 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 113: UART1->CR3 |= (uint8_t)StopBits;  
      0092A8 C6 52 36         [ 1]  231 	ld	a, 0x5236
      0092AB 1A 15            [ 1]  232 	or	a, (0x15, sp)
      0092AD C7 52 36         [ 1]  233 	ld	0x5236, a
                                    234 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 116: UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
      0092B0 C6 52 34         [ 1]  235 	ld	a, 0x5234
      0092B3 A4 F9            [ 1]  236 	and	a, #0xf9
      0092B5 C7 52 34         [ 1]  237 	ld	0x5234, a
                                    238 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 118: UART1->CR1 |= (uint8_t)Parity;  
      0092B8 C6 52 34         [ 1]  239 	ld	a, 0x5234
      0092BB 1A 16            [ 1]  240 	or	a, (0x16, sp)
      0092BD C7 52 34         [ 1]  241 	ld	0x5234, a
                                    242 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 121: UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
      0092C0 C6 52 32         [ 1]  243 	ld	a, 0x5232
      0092C3 35 00 52 32      [ 1]  244 	mov	0x5232+0, #0x00
                                    245 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 123: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
      0092C7 C6 52 33         [ 1]  246 	ld	a, 0x5233
      0092CA A4 0F            [ 1]  247 	and	a, #0x0f
      0092CC C7 52 33         [ 1]  248 	ld	0x5233, a
                                    249 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 125: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
      0092CF C6 52 33         [ 1]  250 	ld	a, 0x5233
      0092D2 A4 F0            [ 1]  251 	and	a, #0xf0
      0092D4 C7 52 33         [ 1]  252 	ld	0x5233, a
                                    253 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 128: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      0092D7 CD 90 C6         [ 4]  254 	call	_CLK_GetClockFreq
      0092DA 1F 0C            [ 2]  255 	ldw	(0x0c, sp), x
      0092DC 1E 10            [ 2]  256 	ldw	x, (0x10, sp)
      0092DE 1F 06            [ 2]  257 	ldw	(0x06, sp), x
      0092E0 1E 12            [ 2]  258 	ldw	x, (0x12, sp)
      0092E2 A6 04            [ 1]  259 	ld	a, #0x04
      0092E4                        260 00413$:
      0092E4 58               [ 2]  261 	sllw	x
      0092E5 09 07            [ 1]  262 	rlc	(0x07, sp)
      0092E7 09 06            [ 1]  263 	rlc	(0x06, sp)
      0092E9 4A               [ 1]  264 	dec	a
      0092EA 26 F8            [ 1]  265 	jrne	00413$
      0092EC 1F 08            [ 2]  266 	ldw	(0x08, sp), x
      0092EE 89               [ 2]  267 	pushw	x
      0092EF 1E 08            [ 2]  268 	ldw	x, (0x08, sp)
      0092F1 89               [ 2]  269 	pushw	x
      0092F2 1E 10            [ 2]  270 	ldw	x, (0x10, sp)
      0092F4 89               [ 2]  271 	pushw	x
      0092F5 90 89            [ 2]  272 	pushw	y
                                    273 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 129: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      0092F7 CD 94 D8         [ 4]  274 	call	__divulong
      0092FA 5B 08            [ 2]  275 	addw	sp, #8
      0092FC 1F 03            [ 2]  276 	ldw	(0x03, sp), x
      0092FE 17 01            [ 2]  277 	ldw	(0x01, sp), y
      009300 CD 90 C6         [ 4]  278 	call	_CLK_GetClockFreq
      009303 89               [ 2]  279 	pushw	x
      009304 90 89            [ 2]  280 	pushw	y
      009306 4B 64            [ 1]  281 	push	#0x64
      009308 5F               [ 1]  282 	clrw	x
      009309 89               [ 2]  283 	pushw	x
      00930A 4B 00            [ 1]  284 	push	#0x00
      00930C CD 95 33         [ 4]  285 	call	__mullong
      00930F 5B 08            [ 2]  286 	addw	sp, #8
      009311 1F 0C            [ 2]  287 	ldw	(0x0c, sp), x
      009313 1E 08            [ 2]  288 	ldw	x, (0x08, sp)
      009315 89               [ 2]  289 	pushw	x
      009316 1E 08            [ 2]  290 	ldw	x, (0x08, sp)
      009318 89               [ 2]  291 	pushw	x
      009319 1E 10            [ 2]  292 	ldw	x, (0x10, sp)
      00931B 89               [ 2]  293 	pushw	x
      00931C 90 89            [ 2]  294 	pushw	y
                                    295 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 131: UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
      00931E CD 94 D8         [ 4]  296 	call	__divulong
      009321 5B 08            [ 2]  297 	addw	sp, #8
      009323 1F 07            [ 2]  298 	ldw	(0x07, sp), x
      009325 90 02            [ 1]  299 	rlwa	y
      009327 6B 05            [ 1]  300 	ld	(0x05, sp), a
      009329 90 01            [ 1]  301 	rrwa	y
      00932B 90 9F            [ 1]  302 	ld	a, yl
      00932D AE 52 33         [ 2]  303 	ldw	x, #0x5233
      009330 88               [ 1]  304 	push	a
      009331 F6               [ 1]  305 	ld	a, (x)
      009332 6B 0A            [ 1]  306 	ld	(0x0a, sp), a
      009334 1E 04            [ 2]  307 	ldw	x, (0x04, sp)
      009336 89               [ 2]  308 	pushw	x
      009337 1E 04            [ 2]  309 	ldw	x, (0x04, sp)
      009339 89               [ 2]  310 	pushw	x
      00933A 4B 64            [ 1]  311 	push	#0x64
      00933C 5F               [ 1]  312 	clrw	x
      00933D 89               [ 2]  313 	pushw	x
      00933E 4B 00            [ 1]  314 	push	#0x00
      009340 CD 95 33         [ 4]  315 	call	__mullong
      009343 5B 08            [ 2]  316 	addw	sp, #8
      009345 1F 0D            [ 2]  317 	ldw	(0x0d, sp), x
      009347 17 0B            [ 2]  318 	ldw	(0x0b, sp), y
      009349 84               [ 1]  319 	pop	a
      00934A 16 07            [ 2]  320 	ldw	y, (0x07, sp)
      00934C 72 F2 0C         [ 2]  321 	subw	y, (0x0c, sp)
      00934F 12 0B            [ 1]  322 	sbc	a, (0x0b, sp)
      009351 97               [ 1]  323 	ld	xl, a
      009352 7B 05            [ 1]  324 	ld	a, (0x05, sp)
      009354 12 0A            [ 1]  325 	sbc	a, (0x0a, sp)
      009356 95               [ 1]  326 	ld	xh, a
      009357 A6 04            [ 1]  327 	ld	a, #0x04
      009359                        328 00415$:
      009359 90 58            [ 2]  329 	sllw	y
      00935B 59               [ 2]  330 	rlcw	x
      00935C 4A               [ 1]  331 	dec	a
      00935D 26 FA            [ 1]  332 	jrne	00415$
      00935F 4B 64            [ 1]  333 	push	#0x64
      009361 4B 00            [ 1]  334 	push	#0x00
      009363 4B 00            [ 1]  335 	push	#0x00
      009365 4B 00            [ 1]  336 	push	#0x00
      009367 90 89            [ 2]  337 	pushw	y
      009369 89               [ 2]  338 	pushw	x
      00936A CD 94 D8         [ 4]  339 	call	__divulong
      00936D 5B 08            [ 2]  340 	addw	sp, #8
      00936F 9F               [ 1]  341 	ld	a, xl
      009370 A4 0F            [ 1]  342 	and	a, #0x0f
      009372 1A 09            [ 1]  343 	or	a, (0x09, sp)
      009374 C7 52 33         [ 1]  344 	ld	0x5233, a
                                    345 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 133: UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
      009377 C6 52 33         [ 1]  346 	ld	a, 0x5233
      00937A 6B 0D            [ 1]  347 	ld	(0x0d, sp), a
      00937C 1E 03            [ 2]  348 	ldw	x, (0x03, sp)
      00937E A6 10            [ 1]  349 	ld	a, #0x10
      009380 62               [ 2]  350 	div	x, a
      009381 90 93            [ 1]  351 	ldw	y, x
      009383 9F               [ 1]  352 	ld	a, xl
      009384 A4 F0            [ 1]  353 	and	a, #0xf0
      009386 1A 0D            [ 1]  354 	or	a, (0x0d, sp)
      009388 C7 52 33         [ 1]  355 	ld	0x5233, a
                                    356 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 135: UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
      00938B C6 52 32         [ 1]  357 	ld	a, 0x5232
      00938E 6B 0D            [ 1]  358 	ld	(0x0d, sp), a
      009390 7B 04            [ 1]  359 	ld	a, (0x04, sp)
      009392 1A 0D            [ 1]  360 	or	a, (0x0d, sp)
      009394 C7 52 32         [ 1]  361 	ld	0x5232, a
                                    362 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      009397 C6 52 35         [ 1]  363 	ld	a, 0x5235
      00939A A4 F3            [ 1]  364 	and	a, #0xf3
      00939C C7 52 35         [ 1]  365 	ld	0x5235, a
                                    366 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 140: UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
      00939F C6 52 36         [ 1]  367 	ld	a, 0x5236
      0093A2 A4 F8            [ 1]  368 	and	a, #0xf8
      0093A4 C7 52 36         [ 1]  369 	ld	0x5236, a
                                    370 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 142: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
      0093A7 C6 52 36         [ 1]  371 	ld	a, 0x5236
      0093AA 6B 0D            [ 1]  372 	ld	(0x0d, sp), a
      0093AC 7B 17            [ 1]  373 	ld	a, (0x17, sp)
      0093AE A4 07            [ 1]  374 	and	a, #0x07
      0093B0 1A 0D            [ 1]  375 	or	a, (0x0d, sp)
      0093B2 C7 52 36         [ 1]  376 	ld	0x5236, a
                                    377 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      0093B5 C6 52 35         [ 1]  378 	ld	a, 0x5235
                                    379 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 145: if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
      0093B8 88               [ 1]  380 	push	a
      0093B9 7B 19            [ 1]  381 	ld	a, (0x19, sp)
      0093BB A5 04            [ 1]  382 	bcp	a, #0x04
      0093BD 84               [ 1]  383 	pop	a
      0093BE 27 07            [ 1]  384 	jreq	00102$
                                    385 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 148: UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
      0093C0 AA 08            [ 1]  386 	or	a, #0x08
      0093C2 C7 52 35         [ 1]  387 	ld	0x5235, a
      0093C5 20 05            [ 2]  388 	jra	00103$
      0093C7                        389 00102$:
                                    390 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 153: UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
      0093C7 A4 F7            [ 1]  391 	and	a, #0xf7
      0093C9 C7 52 35         [ 1]  392 	ld	0x5235, a
      0093CC                        393 00103$:
                                    394 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      0093CC C6 52 35         [ 1]  395 	ld	a, 0x5235
                                    396 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 155: if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
      0093CF 88               [ 1]  397 	push	a
      0093D0 7B 19            [ 1]  398 	ld	a, (0x19, sp)
      0093D2 A5 08            [ 1]  399 	bcp	a, #0x08
      0093D4 84               [ 1]  400 	pop	a
      0093D5 27 07            [ 1]  401 	jreq	00105$
                                    402 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 158: UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
      0093D7 AA 04            [ 1]  403 	or	a, #0x04
      0093D9 C7 52 35         [ 1]  404 	ld	0x5235, a
      0093DC 20 05            [ 2]  405 	jra	00106$
      0093DE                        406 00105$:
                                    407 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 163: UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
      0093DE A4 FB            [ 1]  408 	and	a, #0xfb
      0093E0 C7 52 35         [ 1]  409 	ld	0x5235, a
      0093E3                        410 00106$:
                                    411 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      0093E3 C6 52 36         [ 1]  412 	ld	a, 0x5236
                                    413 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 167: if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
      0093E6 0D 17            [ 1]  414 	tnz	(0x17, sp)
      0093E8 2A 07            [ 1]  415 	jrpl	00108$
                                    416 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 170: UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
      0093EA A4 F7            [ 1]  417 	and	a, #0xf7
      0093EC C7 52 36         [ 1]  418 	ld	0x5236, a
      0093EF 20 0D            [ 2]  419 	jra	00110$
      0093F1                        420 00108$:
                                    421 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 174: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
      0093F1 88               [ 1]  422 	push	a
      0093F2 7B 18            [ 1]  423 	ld	a, (0x18, sp)
      0093F4 A4 08            [ 1]  424 	and	a, #0x08
      0093F6 6B 0E            [ 1]  425 	ld	(0x0e, sp), a
      0093F8 84               [ 1]  426 	pop	a
      0093F9 1A 0D            [ 1]  427 	or	a, (0x0d, sp)
      0093FB C7 52 36         [ 1]  428 	ld	0x5236, a
      0093FE                        429 00110$:
                                    430 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 176: }
      0093FE 1E 0E            [ 2]  431 	ldw	x, (14, sp)
      009400 5B 18            [ 2]  432 	addw	sp, #24
      009402 FC               [ 2]  433 	jp	(x)
                                    434 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 184: void UART1_Cmd(FunctionalState NewState)
                                    435 ;	-----------------------------------------
                                    436 ;	 function UART1_Cmd
                                    437 ;	-----------------------------------------
      009403                        438 _UART1_Cmd:
      009403 88               [ 1]  439 	push	a
      009404 6B 01            [ 1]  440 	ld	(0x01, sp), a
                                    441 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      009406 C6 52 34         [ 1]  442 	ld	a, 0x5234
                                    443 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 186: if (NewState != DISABLE)
      009409 0D 01            [ 1]  444 	tnz	(0x01, sp)
      00940B 27 07            [ 1]  445 	jreq	00102$
                                    446 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      00940D A4 DF            [ 1]  447 	and	a, #0xdf
      00940F C7 52 34         [ 1]  448 	ld	0x5234, a
      009412 20 05            [ 2]  449 	jra	00104$
      009414                        450 00102$:
                                    451 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 194: UART1->CR1 |= UART1_CR1_UARTD;  
      009414 AA 20            [ 1]  452 	or	a, #0x20
      009416 C7 52 34         [ 1]  453 	ld	0x5234, a
      009419                        454 00104$:
                                    455 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 196: }
      009419 84               [ 1]  456 	pop	a
      00941A 81               [ 4]  457 	ret
                                    458 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 498: void UART1_SendData8(uint8_t Data)
                                    459 ;	-----------------------------------------
                                    460 ;	 function UART1_SendData8
                                    461 ;	-----------------------------------------
      00941B                        462 _UART1_SendData8:
                                    463 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 501: UART1->DR = Data;
      00941B C7 52 31         [ 1]  464 	ld	0x5231, a
                                    465 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 502: }
      00941E 81               [ 4]  466 	ret
                                    467 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 602: FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
                                    468 ;	-----------------------------------------
                                    469 ;	 function UART1_GetFlagStatus
                                    470 ;	-----------------------------------------
      00941F                        471 _UART1_GetFlagStatus:
      00941F 52 02            [ 2]  472 	sub	sp, #2
                                    473 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 607: assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
      009421 90 93            [ 1]  474 	ldw	y, x
      009423 A3 01 01         [ 2]  475 	cpw	x, #0x0101
      009426 26 05            [ 1]  476 	jrne	00253$
      009428 A6 01            [ 1]  477 	ld	a, #0x01
      00942A 6B 01            [ 1]  478 	ld	(0x01, sp), a
      00942C C5                     479 	.byte 0xc5
      00942D                        480 00253$:
      00942D 0F 01            [ 1]  481 	clr	(0x01, sp)
      00942F                        482 00254$:
      00942F A3 02 10         [ 2]  483 	cpw	x, #0x0210
      009432 26 03            [ 1]  484 	jrne	00256$
      009434 A6 01            [ 1]  485 	ld	a, #0x01
      009436 21                     486 	.byte 0x21
      009437                        487 00256$:
      009437 4F               [ 1]  488 	clr	a
      009438                        489 00257$:
      009438 A3 00 80         [ 2]  490 	cpw	x, #0x0080
      00943B 27 3A            [ 1]  491 	jreq	00119$
      00943D A3 00 40         [ 2]  492 	cpw	x, #0x0040
      009440 27 35            [ 1]  493 	jreq	00119$
      009442 A3 00 20         [ 2]  494 	cpw	x, #0x0020
      009445 27 30            [ 1]  495 	jreq	00119$
      009447 A3 00 10         [ 2]  496 	cpw	x, #0x0010
      00944A 27 2B            [ 1]  497 	jreq	00119$
      00944C A3 00 08         [ 2]  498 	cpw	x, #0x0008
      00944F 27 26            [ 1]  499 	jreq	00119$
      009451 A3 00 04         [ 2]  500 	cpw	x, #0x0004
      009454 27 21            [ 1]  501 	jreq	00119$
      009456 A3 00 02         [ 2]  502 	cpw	x, #0x0002
      009459 27 1C            [ 1]  503 	jreq	00119$
      00945B 5A               [ 2]  504 	decw	x
      00945C 27 19            [ 1]  505 	jreq	00119$
      00945E 0D 01            [ 1]  506 	tnz	(0x01, sp)
      009460 26 15            [ 1]  507 	jrne	00119$
      009462 4D               [ 1]  508 	tnz	a
      009463 26 12            [ 1]  509 	jrne	00119$
      009465 88               [ 1]  510 	push	a
      009466 90 89            [ 2]  511 	pushw	y
      009468 4B 5F            [ 1]  512 	push	#0x5f
      00946A 4B 02            [ 1]  513 	push	#0x02
      00946C 5F               [ 1]  514 	clrw	x
      00946D 89               [ 2]  515 	pushw	x
      00946E AE 81 AB         [ 2]  516 	ldw	x, #(___str_0+0)
      009471 CD 82 1C         [ 4]  517 	call	_assert_failed
      009474 90 85            [ 2]  518 	popw	y
      009476 84               [ 1]  519 	pop	a
      009477                        520 00119$:
                                    521 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 613: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      009477 61               [ 1]  522 	exg	a, yl
      009478 6B 02            [ 1]  523 	ld	(0x02, sp), a
      00947A 61               [ 1]  524 	exg	a, yl
                                    525 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 611: if (UART1_FLAG == UART1_FLAG_LBDF)
      00947B 4D               [ 1]  526 	tnz	a
      00947C 27 0E            [ 1]  527 	jreq	00114$
                                    528 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 613: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      00947E C6 52 37         [ 1]  529 	ld	a, 0x5237
      009481 14 02            [ 1]  530 	and	a, (0x02, sp)
      009483 27 04            [ 1]  531 	jreq	00102$
                                    532 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 616: status = SET;
      009485 A6 01            [ 1]  533 	ld	a, #0x01
      009487 20 20            [ 2]  534 	jra	00115$
      009489                        535 00102$:
                                    536 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 621: status = RESET;
      009489 4F               [ 1]  537 	clr	a
      00948A 20 1D            [ 2]  538 	jra	00115$
      00948C                        539 00114$:
                                    540 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 624: else if (UART1_FLAG == UART1_FLAG_SBK)
      00948C 7B 01            [ 1]  541 	ld	a, (0x01, sp)
      00948E 27 0E            [ 1]  542 	jreq	00111$
                                    543 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 626: if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      009490 C6 52 35         [ 1]  544 	ld	a, 0x5235
      009493 14 02            [ 1]  545 	and	a, (0x02, sp)
      009495 27 04            [ 1]  546 	jreq	00105$
                                    547 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 629: status = SET;
      009497 A6 01            [ 1]  548 	ld	a, #0x01
      009499 20 0E            [ 2]  549 	jra	00115$
      00949B                        550 00105$:
                                    551 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 634: status = RESET;
      00949B 4F               [ 1]  552 	clr	a
      00949C 20 0B            [ 2]  553 	jra	00115$
      00949E                        554 00111$:
                                    555 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 639: if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      00949E C6 52 30         [ 1]  556 	ld	a, 0x5230
      0094A1 14 02            [ 1]  557 	and	a, (0x02, sp)
      0094A3 27 03            [ 1]  558 	jreq	00108$
                                    559 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 642: status = SET;
      0094A5 A6 01            [ 1]  560 	ld	a, #0x01
                                    561 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 647: status = RESET;
      0094A7 21                     562 	.byte 0x21
      0094A8                        563 00108$:
      0094A8 4F               [ 1]  564 	clr	a
      0094A9                        565 00115$:
                                    566 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 651: return status;
                                    567 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 652: }
      0094A9 5B 02            [ 2]  568 	addw	sp, #2
      0094AB 81               [ 4]  569 	ret
                                    570 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 680: void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
                                    571 ;	-----------------------------------------
                                    572 ;	 function UART1_ClearFlag
                                    573 ;	-----------------------------------------
      0094AC                        574 _UART1_ClearFlag:
                                    575 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 682: assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
      0094AC A3 00 20         [ 2]  576 	cpw	x, #0x0020
      0094AF 26 03            [ 1]  577 	jrne	00133$
      0094B1 A6 01            [ 1]  578 	ld	a, #0x01
      0094B3 21                     579 	.byte 0x21
      0094B4                        580 00133$:
      0094B4 4F               [ 1]  581 	clr	a
      0094B5                        582 00134$:
      0094B5 4D               [ 1]  583 	tnz	a
      0094B6 26 13            [ 1]  584 	jrne	00107$
      0094B8 A3 02 10         [ 2]  585 	cpw	x, #0x0210
      0094BB 27 0E            [ 1]  586 	jreq	00107$
      0094BD 88               [ 1]  587 	push	a
      0094BE 4B AA            [ 1]  588 	push	#0xaa
      0094C0 4B 02            [ 1]  589 	push	#0x02
      0094C2 5F               [ 1]  590 	clrw	x
      0094C3 89               [ 2]  591 	pushw	x
      0094C4 AE 81 AB         [ 2]  592 	ldw	x, #(___str_0+0)
      0094C7 CD 82 1C         [ 4]  593 	call	_assert_failed
      0094CA 84               [ 1]  594 	pop	a
      0094CB                        595 00107$:
                                    596 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 685: if (UART1_FLAG == UART1_FLAG_RXNE)
      0094CB 4D               [ 1]  597 	tnz	a
      0094CC 27 05            [ 1]  598 	jreq	00102$
                                    599 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 687: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
      0094CE 35 DF 52 30      [ 1]  600 	mov	0x5230+0, #0xdf
      0094D2 81               [ 4]  601 	ret
      0094D3                        602 00102$:
                                    603 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 692: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
      0094D3 72 19 52 37      [ 1]  604 	bres	0x5237, #4
                                    605 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_uart1.c: 694: }
      0094D7 81               [ 4]  606 	ret
                                    607 	.area CODE
                                    608 	.area CONST
                                    609 	.area CONST
      0081AB                        610 ___str_0:
      0081AB 2F 77 6F 72 6B 73 70   611 	.ascii "/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Li"
             61 63 65 2F 53 6F 66
             74 77 61 72 65 2F 46
             69 72 6D 77 61 72 65
             2F 6E 65 77 5F 62 65
             67 69 6E 69 6E 67 2F
             53 54 4D 38 53 5F 53
             74 64 50 65 72 69 70
             68 5F 4C 69
      0081E7 62 2F 73 72 63 2F 73   612 	.ascii "b/src/stm8s_uart1.c"
             74 6D 38 73 5F 75 61
             72 74 31 2E 63
      0081FA 00                     613 	.db 0x00
                                    614 	.area CODE
                                    615 	.area INITIALIZER
                                    616 	.area CABS (ABS)
