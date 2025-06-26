                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_gpio
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _GPIO_DeInit
                                     13 	.globl _GPIO_Init
                                     14 	.globl _GPIO_WriteHigh
                                     15 	.globl _GPIO_WriteLow
                                     16 ;--------------------------------------------------------
                                     17 ; ram data
                                     18 ;--------------------------------------------------------
                                     19 	.area DATA
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area INITIALIZED
                                     24 ;--------------------------------------------------------
                                     25 ; absolute external ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area DABS (ABS)
                                     28 
                                     29 ; default segment ordering for linker
                                     30 	.area HOME
                                     31 	.area GSINIT
                                     32 	.area GSFINAL
                                     33 	.area CONST
                                     34 	.area INITIALIZER
                                     35 	.area CODE
                                     36 
                                     37 ;--------------------------------------------------------
                                     38 ; global & static initialisations
                                     39 ;--------------------------------------------------------
                                     40 	.area HOME
                                     41 	.area GSINIT
                                     42 	.area GSFINAL
                                     43 	.area GSINIT
                                     44 ;--------------------------------------------------------
                                     45 ; Home
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
                                     48 	.area HOME
                                     49 ;--------------------------------------------------------
                                     50 ; code
                                     51 ;--------------------------------------------------------
                                     52 	.area CODE
                                     53 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     54 ;	-----------------------------------------
                                     55 ;	 function GPIO_DeInit
                                     56 ;	-----------------------------------------
      008344                         57 _GPIO_DeInit:
      008344 51               [ 1]   58 	exgw	x, y
                                     59 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
      008345 90 7F            [ 1]   60 	clr	(y)
                                     61 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
      008347 93               [ 1]   62 	ldw	x, y
      008348 5C               [ 1]   63 	incw	x
      008349 5C               [ 1]   64 	incw	x
      00834A 7F               [ 1]   65 	clr	(x)
                                     66 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
      00834B 93               [ 1]   67 	ldw	x, y
      00834C 6F 03            [ 1]   68 	clr	(0x0003, x)
                                     69 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
      00834E 93               [ 1]   70 	ldw	x, y
      00834F 6F 04            [ 1]   71 	clr	(0x0004, x)
                                     72 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 59: }
      008351 81               [ 4]   73 	ret
                                     74 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     75 ;	-----------------------------------------
                                     76 ;	 function GPIO_Init
                                     77 ;	-----------------------------------------
      008352                         78 _GPIO_Init:
      008352 52 06            [ 2]   79 	sub	sp, #6
      008354 1F 05            [ 2]   80 	ldw	(0x05, sp), x
      008356 6B 04            [ 1]   81 	ld	(0x04, sp), a
                                     82 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 77: assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
      008358 0D 09            [ 1]   83 	tnz	(0x09, sp)
      00835A 27 4E            [ 1]   84 	jreq	00116$
      00835C 7B 09            [ 1]   85 	ld	a, (0x09, sp)
      00835E A1 40            [ 1]   86 	cp	a, #0x40
      008360 27 48            [ 1]   87 	jreq	00116$
      008362 7B 09            [ 1]   88 	ld	a, (0x09, sp)
      008364 A1 20            [ 1]   89 	cp	a, #0x20
      008366 27 42            [ 1]   90 	jreq	00116$
      008368 7B 09            [ 1]   91 	ld	a, (0x09, sp)
      00836A A1 60            [ 1]   92 	cp	a, #0x60
      00836C 27 3C            [ 1]   93 	jreq	00116$
      00836E 7B 09            [ 1]   94 	ld	a, (0x09, sp)
      008370 A1 A0            [ 1]   95 	cp	a, #0xa0
      008372 27 36            [ 1]   96 	jreq	00116$
      008374 7B 09            [ 1]   97 	ld	a, (0x09, sp)
      008376 A1 E0            [ 1]   98 	cp	a, #0xe0
      008378 27 30            [ 1]   99 	jreq	00116$
      00837A 7B 09            [ 1]  100 	ld	a, (0x09, sp)
      00837C A1 80            [ 1]  101 	cp	a, #0x80
      00837E 27 2A            [ 1]  102 	jreq	00116$
      008380 7B 09            [ 1]  103 	ld	a, (0x09, sp)
      008382 A1 C0            [ 1]  104 	cp	a, #0xc0
      008384 27 24            [ 1]  105 	jreq	00116$
      008386 7B 09            [ 1]  106 	ld	a, (0x09, sp)
      008388 A1 B0            [ 1]  107 	cp	a, #0xb0
      00838A 27 1E            [ 1]  108 	jreq	00116$
      00838C 7B 09            [ 1]  109 	ld	a, (0x09, sp)
      00838E A1 F0            [ 1]  110 	cp	a, #0xf0
      008390 27 18            [ 1]  111 	jreq	00116$
      008392 7B 09            [ 1]  112 	ld	a, (0x09, sp)
      008394 A1 90            [ 1]  113 	cp	a, #0x90
      008396 27 12            [ 1]  114 	jreq	00116$
      008398 7B 09            [ 1]  115 	ld	a, (0x09, sp)
      00839A A1 D0            [ 1]  116 	cp	a, #0xd0
      00839C 27 0C            [ 1]  117 	jreq	00116$
      00839E 4B 4D            [ 1]  118 	push	#0x4d
      0083A0 5F               [ 1]  119 	clrw	x
      0083A1 89               [ 2]  120 	pushw	x
      0083A2 4B 00            [ 1]  121 	push	#0x00
      0083A4 AE 80 65         [ 2]  122 	ldw	x, #(___str_0+0)
      0083A7 CD 82 1C         [ 4]  123 	call	_assert_failed
      0083AA                        124 00116$:
                                    125 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 78: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
      0083AA 0D 04            [ 1]  126 	tnz	(0x04, sp)
      0083AC 26 0C            [ 1]  127 	jrne	00151$
      0083AE 4B 4E            [ 1]  128 	push	#0x4e
      0083B0 5F               [ 1]  129 	clrw	x
      0083B1 89               [ 2]  130 	pushw	x
      0083B2 4B 00            [ 1]  131 	push	#0x00
      0083B4 AE 80 65         [ 2]  132 	ldw	x, #(___str_0+0)
      0083B7 CD 82 1C         [ 4]  133 	call	_assert_failed
      0083BA                        134 00151$:
                                    135 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      0083BA 1E 05            [ 2]  136 	ldw	x, (0x05, sp)
      0083BC 1C 00 04         [ 2]  137 	addw	x, #0x0004
      0083BF 1F 01            [ 2]  138 	ldw	(0x01, sp), x
      0083C1 F6               [ 1]  139 	ld	a, (x)
      0083C2 88               [ 1]  140 	push	a
      0083C3 7B 05            [ 1]  141 	ld	a, (0x05, sp)
      0083C5 43               [ 1]  142 	cpl	a
      0083C6 6B 04            [ 1]  143 	ld	(0x04, sp), a
      0083C8 84               [ 1]  144 	pop	a
      0083C9 14 03            [ 1]  145 	and	a, (0x03, sp)
      0083CB 1E 01            [ 2]  146 	ldw	x, (0x01, sp)
      0083CD F7               [ 1]  147 	ld	(x), a
                                    148 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      0083CE 1E 05            [ 2]  149 	ldw	x, (0x05, sp)
      0083D0 5C               [ 1]  150 	incw	x
      0083D1 5C               [ 1]  151 	incw	x
                                    152 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      0083D2 0D 09            [ 1]  153 	tnz	(0x09, sp)
      0083D4 2A 20            [ 1]  154 	jrpl	00105$
                                    155 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      0083D6 16 05            [ 2]  156 	ldw	y, (0x05, sp)
      0083D8 90 F6            [ 1]  157 	ld	a, (y)
                                    158 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      0083DA 88               [ 1]  159 	push	a
      0083DB 7B 0A            [ 1]  160 	ld	a, (0x0a, sp)
      0083DD A5 10            [ 1]  161 	bcp	a, #0x10
      0083DF 84               [ 1]  162 	pop	a
      0083E0 27 08            [ 1]  163 	jreq	00102$
                                    164 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      0083E2 1A 04            [ 1]  165 	or	a, (0x04, sp)
      0083E4 16 05            [ 2]  166 	ldw	y, (0x05, sp)
      0083E6 90 F7            [ 1]  167 	ld	(y), a
      0083E8 20 06            [ 2]  168 	jra	00103$
      0083EA                        169 00102$:
                                    170 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      0083EA 14 03            [ 1]  171 	and	a, (0x03, sp)
      0083EC 16 05            [ 2]  172 	ldw	y, (0x05, sp)
      0083EE 90 F7            [ 1]  173 	ld	(y), a
      0083F0                        174 00103$:
                                    175 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      0083F0 F6               [ 1]  176 	ld	a, (x)
      0083F1 1A 04            [ 1]  177 	or	a, (0x04, sp)
      0083F3 F7               [ 1]  178 	ld	(x), a
      0083F4 20 04            [ 2]  179 	jra	00106$
      0083F6                        180 00105$:
                                    181 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      0083F6 F6               [ 1]  182 	ld	a, (x)
      0083F7 14 03            [ 1]  183 	and	a, (0x03, sp)
      0083F9 F7               [ 1]  184 	ld	(x), a
      0083FA                        185 00106$:
                                    186 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      0083FA 1E 05            [ 2]  187 	ldw	x, (0x05, sp)
      0083FC 1C 00 03         [ 2]  188 	addw	x, #0x0003
      0083FF F6               [ 1]  189 	ld	a, (x)
                                    190 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      008400 88               [ 1]  191 	push	a
      008401 7B 0A            [ 1]  192 	ld	a, (0x0a, sp)
      008403 A5 40            [ 1]  193 	bcp	a, #0x40
      008405 84               [ 1]  194 	pop	a
      008406 27 05            [ 1]  195 	jreq	00108$
                                    196 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008408 1A 04            [ 1]  197 	or	a, (0x04, sp)
      00840A F7               [ 1]  198 	ld	(x), a
      00840B 20 03            [ 2]  199 	jra	00109$
      00840D                        200 00108$:
                                    201 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      00840D 14 03            [ 1]  202 	and	a, (0x03, sp)
      00840F F7               [ 1]  203 	ld	(x), a
      008410                        204 00109$:
                                    205 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008410 1E 01            [ 2]  206 	ldw	x, (0x01, sp)
      008412 F6               [ 1]  207 	ld	a, (x)
                                    208 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      008413 88               [ 1]  209 	push	a
      008414 7B 0A            [ 1]  210 	ld	a, (0x0a, sp)
      008416 A5 20            [ 1]  211 	bcp	a, #0x20
      008418 84               [ 1]  212 	pop	a
      008419 27 07            [ 1]  213 	jreq	00111$
                                    214 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      00841B 1A 04            [ 1]  215 	or	a, (0x04, sp)
      00841D 1E 01            [ 2]  216 	ldw	x, (0x01, sp)
      00841F F7               [ 1]  217 	ld	(x), a
      008420 20 05            [ 2]  218 	jra	00113$
      008422                        219 00111$:
                                    220 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008422 14 03            [ 1]  221 	and	a, (0x03, sp)
      008424 1E 01            [ 2]  222 	ldw	x, (0x01, sp)
      008426 F7               [ 1]  223 	ld	(x), a
      008427                        224 00113$:
                                    225 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 131: }
      008427 5B 06            [ 2]  226 	addw	sp, #6
      008429 85               [ 2]  227 	popw	x
      00842A 84               [ 1]  228 	pop	a
      00842B FC               [ 2]  229 	jp	(x)
                                    230 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 157: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    231 ;	-----------------------------------------
                                    232 ;	 function GPIO_WriteHigh
                                    233 ;	-----------------------------------------
      00842C                        234 _GPIO_WriteHigh:
      00842C 88               [ 1]  235 	push	a
      00842D 6B 01            [ 1]  236 	ld	(0x01, sp), a
                                    237 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 159: GPIOx->ODR |= (uint8_t)PortPins;
      00842F F6               [ 1]  238 	ld	a, (x)
      008430 1A 01            [ 1]  239 	or	a, (0x01, sp)
      008432 F7               [ 1]  240 	ld	(x), a
                                    241 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 160: }
      008433 84               [ 1]  242 	pop	a
      008434 81               [ 4]  243 	ret
                                    244 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 172: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    245 ;	-----------------------------------------
                                    246 ;	 function GPIO_WriteLow
                                    247 ;	-----------------------------------------
      008435                        248 _GPIO_WriteLow:
      008435 88               [ 1]  249 	push	a
                                    250 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 174: GPIOx->ODR &= (uint8_t)(~PortPins);
      008436 88               [ 1]  251 	push	a
      008437 F6               [ 1]  252 	ld	a, (x)
      008438 6B 02            [ 1]  253 	ld	(0x02, sp), a
      00843A 84               [ 1]  254 	pop	a
      00843B 43               [ 1]  255 	cpl	a
      00843C 14 01            [ 1]  256 	and	a, (0x01, sp)
      00843E F7               [ 1]  257 	ld	(x), a
                                    258 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 175: }
      00843F 84               [ 1]  259 	pop	a
      008440 81               [ 4]  260 	ret
                                    261 	.area CODE
                                    262 	.area CONST
                                    263 	.area CONST
      008065                        264 ___str_0:
      008065 2F 77 6F 72 6B 73 70   265 	.ascii "/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Li"
             61 63 65 2F 53 6F 66
             74 77 61 72 65 2F 46
             69 72 6D 77 61 72 65
             2F 6E 65 77 5F 62 65
             67 69 6E 69 6E 67 2F
             53 54 4D 38 53 5F 53
             74 64 50 65 72 69 70
             68 5F 4C 69
      0080A1 62 2F 73 72 63 2F 73   266 	.ascii "b/src/stm8s_gpio.c"
             74 6D 38 73 5F 67 70
             69 6F 2E 63
      0080B3 00                     267 	.db 0x00
                                    268 	.area CODE
                                    269 	.area INITIALIZER
                                    270 	.area CABS (ABS)
