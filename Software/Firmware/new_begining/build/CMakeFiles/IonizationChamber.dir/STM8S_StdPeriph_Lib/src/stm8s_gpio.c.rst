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
      008413                         57 _GPIO_DeInit:
      008413 51               [ 1]   58 	exgw	x, y
                                     59 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
      008414 90 7F            [ 1]   60 	clr	(y)
                                     61 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
      008416 93               [ 1]   62 	ldw	x, y
      008417 5C               [ 1]   63 	incw	x
      008418 5C               [ 1]   64 	incw	x
      008419 7F               [ 1]   65 	clr	(x)
                                     66 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
      00841A 93               [ 1]   67 	ldw	x, y
      00841B 6F 03            [ 1]   68 	clr	(0x0003, x)
                                     69 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
      00841D 93               [ 1]   70 	ldw	x, y
      00841E 6F 04            [ 1]   71 	clr	(0x0004, x)
                                     72 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 59: }
      008420 81               [ 4]   73 	ret
                                     74 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     75 ;	-----------------------------------------
                                     76 ;	 function GPIO_Init
                                     77 ;	-----------------------------------------
      008421                         78 _GPIO_Init:
      008421 52 06            [ 2]   79 	sub	sp, #6
      008423 1F 05            [ 2]   80 	ldw	(0x05, sp), x
      008425 6B 04            [ 1]   81 	ld	(0x04, sp), a
                                     82 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 77: assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
      008427 0D 09            [ 1]   83 	tnz	(0x09, sp)
      008429 27 4E            [ 1]   84 	jreq	00116$
      00842B 7B 09            [ 1]   85 	ld	a, (0x09, sp)
      00842D A1 40            [ 1]   86 	cp	a, #0x40
      00842F 27 48            [ 1]   87 	jreq	00116$
      008431 7B 09            [ 1]   88 	ld	a, (0x09, sp)
      008433 A1 20            [ 1]   89 	cp	a, #0x20
      008435 27 42            [ 1]   90 	jreq	00116$
      008437 7B 09            [ 1]   91 	ld	a, (0x09, sp)
      008439 A1 60            [ 1]   92 	cp	a, #0x60
      00843B 27 3C            [ 1]   93 	jreq	00116$
      00843D 7B 09            [ 1]   94 	ld	a, (0x09, sp)
      00843F A1 A0            [ 1]   95 	cp	a, #0xa0
      008441 27 36            [ 1]   96 	jreq	00116$
      008443 7B 09            [ 1]   97 	ld	a, (0x09, sp)
      008445 A1 E0            [ 1]   98 	cp	a, #0xe0
      008447 27 30            [ 1]   99 	jreq	00116$
      008449 7B 09            [ 1]  100 	ld	a, (0x09, sp)
      00844B A1 80            [ 1]  101 	cp	a, #0x80
      00844D 27 2A            [ 1]  102 	jreq	00116$
      00844F 7B 09            [ 1]  103 	ld	a, (0x09, sp)
      008451 A1 C0            [ 1]  104 	cp	a, #0xc0
      008453 27 24            [ 1]  105 	jreq	00116$
      008455 7B 09            [ 1]  106 	ld	a, (0x09, sp)
      008457 A1 B0            [ 1]  107 	cp	a, #0xb0
      008459 27 1E            [ 1]  108 	jreq	00116$
      00845B 7B 09            [ 1]  109 	ld	a, (0x09, sp)
      00845D A1 F0            [ 1]  110 	cp	a, #0xf0
      00845F 27 18            [ 1]  111 	jreq	00116$
      008461 7B 09            [ 1]  112 	ld	a, (0x09, sp)
      008463 A1 90            [ 1]  113 	cp	a, #0x90
      008465 27 12            [ 1]  114 	jreq	00116$
      008467 7B 09            [ 1]  115 	ld	a, (0x09, sp)
      008469 A1 D0            [ 1]  116 	cp	a, #0xd0
      00846B 27 0C            [ 1]  117 	jreq	00116$
      00846D 4B 4D            [ 1]  118 	push	#0x4d
      00846F 5F               [ 1]  119 	clrw	x
      008470 89               [ 2]  120 	pushw	x
      008471 4B 00            [ 1]  121 	push	#0x00
      008473 AE 80 61         [ 2]  122 	ldw	x, #(___str_0+0)
      008476 CD 82 7D         [ 4]  123 	call	_assert_failed
      008479                        124 00116$:
                                    125 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 78: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
      008479 0D 04            [ 1]  126 	tnz	(0x04, sp)
      00847B 26 0C            [ 1]  127 	jrne	00151$
      00847D 4B 4E            [ 1]  128 	push	#0x4e
      00847F 5F               [ 1]  129 	clrw	x
      008480 89               [ 2]  130 	pushw	x
      008481 4B 00            [ 1]  131 	push	#0x00
      008483 AE 80 61         [ 2]  132 	ldw	x, #(___str_0+0)
      008486 CD 82 7D         [ 4]  133 	call	_assert_failed
      008489                        134 00151$:
                                    135 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008489 1E 05            [ 2]  136 	ldw	x, (0x05, sp)
      00848B 1C 00 04         [ 2]  137 	addw	x, #0x0004
      00848E 1F 01            [ 2]  138 	ldw	(0x01, sp), x
      008490 F6               [ 1]  139 	ld	a, (x)
      008491 88               [ 1]  140 	push	a
      008492 7B 05            [ 1]  141 	ld	a, (0x05, sp)
      008494 43               [ 1]  142 	cpl	a
      008495 6B 04            [ 1]  143 	ld	(0x04, sp), a
      008497 84               [ 1]  144 	pop	a
      008498 14 03            [ 1]  145 	and	a, (0x03, sp)
      00849A 1E 01            [ 2]  146 	ldw	x, (0x01, sp)
      00849C F7               [ 1]  147 	ld	(x), a
                                    148 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      00849D 1E 05            [ 2]  149 	ldw	x, (0x05, sp)
      00849F 5C               [ 1]  150 	incw	x
      0084A0 5C               [ 1]  151 	incw	x
                                    152 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      0084A1 0D 09            [ 1]  153 	tnz	(0x09, sp)
      0084A3 2A 20            [ 1]  154 	jrpl	00105$
                                    155 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      0084A5 16 05            [ 2]  156 	ldw	y, (0x05, sp)
      0084A7 90 F6            [ 1]  157 	ld	a, (y)
                                    158 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      0084A9 88               [ 1]  159 	push	a
      0084AA 7B 0A            [ 1]  160 	ld	a, (0x0a, sp)
      0084AC A5 10            [ 1]  161 	bcp	a, #0x10
      0084AE 84               [ 1]  162 	pop	a
      0084AF 27 08            [ 1]  163 	jreq	00102$
                                    164 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      0084B1 1A 04            [ 1]  165 	or	a, (0x04, sp)
      0084B3 16 05            [ 2]  166 	ldw	y, (0x05, sp)
      0084B5 90 F7            [ 1]  167 	ld	(y), a
      0084B7 20 06            [ 2]  168 	jra	00103$
      0084B9                        169 00102$:
                                    170 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      0084B9 14 03            [ 1]  171 	and	a, (0x03, sp)
      0084BB 16 05            [ 2]  172 	ldw	y, (0x05, sp)
      0084BD 90 F7            [ 1]  173 	ld	(y), a
      0084BF                        174 00103$:
                                    175 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      0084BF F6               [ 1]  176 	ld	a, (x)
      0084C0 1A 04            [ 1]  177 	or	a, (0x04, sp)
      0084C2 F7               [ 1]  178 	ld	(x), a
      0084C3 20 04            [ 2]  179 	jra	00106$
      0084C5                        180 00105$:
                                    181 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      0084C5 F6               [ 1]  182 	ld	a, (x)
      0084C6 14 03            [ 1]  183 	and	a, (0x03, sp)
      0084C8 F7               [ 1]  184 	ld	(x), a
      0084C9                        185 00106$:
                                    186 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      0084C9 1E 05            [ 2]  187 	ldw	x, (0x05, sp)
      0084CB 1C 00 03         [ 2]  188 	addw	x, #0x0003
      0084CE F6               [ 1]  189 	ld	a, (x)
                                    190 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      0084CF 88               [ 1]  191 	push	a
      0084D0 7B 0A            [ 1]  192 	ld	a, (0x0a, sp)
      0084D2 A5 40            [ 1]  193 	bcp	a, #0x40
      0084D4 84               [ 1]  194 	pop	a
      0084D5 27 05            [ 1]  195 	jreq	00108$
                                    196 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      0084D7 1A 04            [ 1]  197 	or	a, (0x04, sp)
      0084D9 F7               [ 1]  198 	ld	(x), a
      0084DA 20 03            [ 2]  199 	jra	00109$
      0084DC                        200 00108$:
                                    201 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      0084DC 14 03            [ 1]  202 	and	a, (0x03, sp)
      0084DE F7               [ 1]  203 	ld	(x), a
      0084DF                        204 00109$:
                                    205 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      0084DF 1E 01            [ 2]  206 	ldw	x, (0x01, sp)
      0084E1 F6               [ 1]  207 	ld	a, (x)
                                    208 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      0084E2 88               [ 1]  209 	push	a
      0084E3 7B 0A            [ 1]  210 	ld	a, (0x0a, sp)
      0084E5 A5 20            [ 1]  211 	bcp	a, #0x20
      0084E7 84               [ 1]  212 	pop	a
      0084E8 27 07            [ 1]  213 	jreq	00111$
                                    214 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      0084EA 1A 04            [ 1]  215 	or	a, (0x04, sp)
      0084EC 1E 01            [ 2]  216 	ldw	x, (0x01, sp)
      0084EE F7               [ 1]  217 	ld	(x), a
      0084EF 20 05            [ 2]  218 	jra	00113$
      0084F1                        219 00111$:
                                    220 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      0084F1 14 03            [ 1]  221 	and	a, (0x03, sp)
      0084F3 1E 01            [ 2]  222 	ldw	x, (0x01, sp)
      0084F5 F7               [ 1]  223 	ld	(x), a
      0084F6                        224 00113$:
                                    225 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 131: }
      0084F6 5B 06            [ 2]  226 	addw	sp, #6
      0084F8 85               [ 2]  227 	popw	x
      0084F9 84               [ 1]  228 	pop	a
      0084FA FC               [ 2]  229 	jp	(x)
                                    230 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 157: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    231 ;	-----------------------------------------
                                    232 ;	 function GPIO_WriteHigh
                                    233 ;	-----------------------------------------
      0084FB                        234 _GPIO_WriteHigh:
      0084FB 88               [ 1]  235 	push	a
      0084FC 6B 01            [ 1]  236 	ld	(0x01, sp), a
                                    237 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 159: GPIOx->ODR |= (uint8_t)PortPins;
      0084FE F6               [ 1]  238 	ld	a, (x)
      0084FF 1A 01            [ 1]  239 	or	a, (0x01, sp)
      008501 F7               [ 1]  240 	ld	(x), a
                                    241 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 160: }
      008502 84               [ 1]  242 	pop	a
      008503 81               [ 4]  243 	ret
                                    244 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 172: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    245 ;	-----------------------------------------
                                    246 ;	 function GPIO_WriteLow
                                    247 ;	-----------------------------------------
      008504                        248 _GPIO_WriteLow:
      008504 88               [ 1]  249 	push	a
                                    250 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 174: GPIOx->ODR &= (uint8_t)(~PortPins);
      008505 88               [ 1]  251 	push	a
      008506 F6               [ 1]  252 	ld	a, (x)
      008507 6B 02            [ 1]  253 	ld	(0x02, sp), a
      008509 84               [ 1]  254 	pop	a
      00850A 43               [ 1]  255 	cpl	a
      00850B 14 01            [ 1]  256 	and	a, (0x01, sp)
      00850D F7               [ 1]  257 	ld	(x), a
                                    258 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 175: }
      00850E 84               [ 1]  259 	pop	a
      00850F 81               [ 4]  260 	ret
                                    261 	.area CODE
                                    262 	.area CONST
                                    263 	.area CONST
      008061                        264 ___str_0:
      008061 2F 77 6F 72 6B 73 70   265 	.ascii "/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Li"
             61 63 65 2F 53 6F 66
             74 77 61 72 65 2F 46
             69 72 6D 77 61 72 65
             2F 6E 65 77 5F 62 65
             67 69 6E 69 6E 67 2F
             53 54 4D 38 53 5F 53
             74 64 50 65 72 69 70
             68 5F 4C 69
      00809D 62 2F 73 72 63 2F 73   266 	.ascii "b/src/stm8s_gpio.c"
             74 6D 38 73 5F 67 70
             69 6F 2E 63
      0080AF 00                     267 	.db 0x00
                                    268 	.area CODE
                                    269 	.area INITIALIZER
                                    270 	.area CABS (ABS)
