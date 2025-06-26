                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_i2c
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _I2C_DeInit
                                     13 	.globl _I2C_Init
                                     14 	.globl _I2C_Cmd
                                     15 	.globl _I2C_GenerateSTART
                                     16 	.globl _I2C_GenerateSTOP
                                     17 	.globl _I2C_AcknowledgeConfig
                                     18 	.globl _I2C_ITConfig
                                     19 	.globl _I2C_ReceiveData
                                     20 	.globl _I2C_Send7bitAddress
                                     21 	.globl _I2C_SendData
                                     22 	.globl _I2C_CheckEvent
                                     23 	.globl _I2C_GetFlagStatus
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
                                     61 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 68: void I2C_DeInit(void)
                                     62 ;	-----------------------------------------
                                     63 ;	 function I2C_DeInit
                                     64 ;	-----------------------------------------
      008316                         65 _I2C_DeInit:
                                     66 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 70: I2C->CR1 = I2C_CR1_RESET_VALUE;
      008316 35 00 52 10      [ 1]   67 	mov	0x5210+0, #0x00
                                     68 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 71: I2C->CR2 = I2C_CR2_RESET_VALUE;
      00831A 35 00 52 11      [ 1]   69 	mov	0x5211+0, #0x00
                                     70 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 72: I2C->FREQR = I2C_FREQR_RESET_VALUE;
      00831E 35 00 52 12      [ 1]   71 	mov	0x5212+0, #0x00
                                     72 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 73: I2C->OARL = I2C_OARL_RESET_VALUE;
      008322 35 00 52 13      [ 1]   73 	mov	0x5213+0, #0x00
                                     74 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 74: I2C->OARH = I2C_OARH_RESET_VALUE;
      008326 35 00 52 14      [ 1]   75 	mov	0x5214+0, #0x00
                                     76 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 75: I2C->ITR = I2C_ITR_RESET_VALUE;
      00832A 35 00 52 1A      [ 1]   77 	mov	0x521a+0, #0x00
                                     78 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 76: I2C->CCRL = I2C_CCRL_RESET_VALUE;
      00832E 35 00 52 1B      [ 1]   79 	mov	0x521b+0, #0x00
                                     80 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 77: I2C->CCRH = I2C_CCRH_RESET_VALUE;
      008332 35 00 52 1C      [ 1]   81 	mov	0x521c+0, #0x00
                                     82 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 78: I2C->TRISER = I2C_TRISER_RESET_VALUE;
      008336 35 02 52 1D      [ 1]   83 	mov	0x521d+0, #0x02
                                     84 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 79: }
      00833A 81               [ 4]   85 	ret
                                     86 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 99: void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
                                     87 ;	-----------------------------------------
                                     88 ;	 function I2C_Init
                                     89 ;	-----------------------------------------
      00833B                         90 _I2C_Init:
      00833B 52 07            [ 2]   91 	sub	sp, #7
                                     92 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 105: uint8_t tmpccrh = 0;
      00833D 0F 05            [ 1]   93 	clr	(0x05, sp)
                                     94 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 108: assert_param(IS_I2C_ACK_OK(Ack));
      00833F 0D 11            [ 1]   95 	tnz	(0x11, sp)
      008341 27 17            [ 1]   96 	jreq	00114$
      008343 7B 11            [ 1]   97 	ld	a, (0x11, sp)
      008345 4A               [ 1]   98 	dec	a
      008346 27 12            [ 1]   99 	jreq	00114$
      008348 7B 11            [ 1]  100 	ld	a, (0x11, sp)
      00834A A1 02            [ 1]  101 	cp	a, #0x02
      00834C 27 0C            [ 1]  102 	jreq	00114$
      00834E 4B 6C            [ 1]  103 	push	#0x6c
      008350 5F               [ 1]  104 	clrw	x
      008351 89               [ 2]  105 	pushw	x
      008352 4B 00            [ 1]  106 	push	#0x00
      008354 AE 80 7C         [ 2]  107 	ldw	x, #(___str_0+0)
      008357 CD 82 14         [ 4]  108 	call	_assert_failed
      00835A                        109 00114$:
                                    110 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 109: assert_param(IS_I2C_ADDMODE_OK(AddMode));
      00835A 0D 12            [ 1]  111 	tnz	(0x12, sp)
      00835C 27 12            [ 1]  112 	jreq	00122$
      00835E 7B 12            [ 1]  113 	ld	a, (0x12, sp)
      008360 A1 80            [ 1]  114 	cp	a, #0x80
      008362 27 0C            [ 1]  115 	jreq	00122$
      008364 4B 6D            [ 1]  116 	push	#0x6d
      008366 5F               [ 1]  117 	clrw	x
      008367 89               [ 2]  118 	pushw	x
      008368 4B 00            [ 1]  119 	push	#0x00
      00836A AE 80 7C         [ 2]  120 	ldw	x, #(___str_0+0)
      00836D CD 82 14         [ 4]  121 	call	_assert_failed
      008370                        122 00122$:
                                    123 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 110: assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
      008370 1E 0E            [ 2]  124 	ldw	x, (0x0e, sp)
      008372 A3 03 FF         [ 2]  125 	cpw	x, #0x03ff
      008375 23 0C            [ 2]  126 	jrule	00127$
      008377 4B 6E            [ 1]  127 	push	#0x6e
      008379 5F               [ 1]  128 	clrw	x
      00837A 89               [ 2]  129 	pushw	x
      00837B 4B 00            [ 1]  130 	push	#0x00
      00837D AE 80 7C         [ 2]  131 	ldw	x, #(___str_0+0)
      008380 CD 82 14         [ 4]  132 	call	_assert_failed
      008383                        133 00127$:
                                    134 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 111: assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
      008383 0D 10            [ 1]  135 	tnz	(0x10, sp)
      008385 27 12            [ 1]  136 	jreq	00129$
      008387 7B 10            [ 1]  137 	ld	a, (0x10, sp)
      008389 A1 40            [ 1]  138 	cp	a, #0x40
      00838B 27 0C            [ 1]  139 	jreq	00129$
      00838D 4B 6F            [ 1]  140 	push	#0x6f
      00838F 5F               [ 1]  141 	clrw	x
      008390 89               [ 2]  142 	pushw	x
      008391 4B 00            [ 1]  143 	push	#0x00
      008393 AE 80 7C         [ 2]  144 	ldw	x, #(___str_0+0)
      008396 CD 82 14         [ 4]  145 	call	_assert_failed
      008399                        146 00129$:
                                    147 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 112: assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
      008399 7B 13            [ 1]  148 	ld	a, (0x13, sp)
      00839B A1 01            [ 1]  149 	cp	a, #0x01
      00839D 25 06            [ 1]  150 	jrc	00133$
      00839F 7B 13            [ 1]  151 	ld	a, (0x13, sp)
      0083A1 A1 10            [ 1]  152 	cp	a, #0x10
      0083A3 23 0C            [ 2]  153 	jrule	00134$
      0083A5                        154 00133$:
      0083A5 4B 70            [ 1]  155 	push	#0x70
      0083A7 5F               [ 1]  156 	clrw	x
      0083A8 89               [ 2]  157 	pushw	x
      0083A9 4B 00            [ 1]  158 	push	#0x00
      0083AB AE 80 7C         [ 2]  159 	ldw	x, #(___str_0+0)
      0083AE CD 82 14         [ 4]  160 	call	_assert_failed
      0083B1                        161 00134$:
                                    162 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 113: assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
      0083B1 1E 0C            [ 2]  163 	ldw	x, (0x0c, sp)
      0083B3 A3 00 01         [ 2]  164 	cpw	x, #0x0001
      0083B6 7B 0B            [ 1]  165 	ld	a, (0x0b, sp)
      0083B8 A2 00            [ 1]  166 	sbc	a, #0x00
      0083BA 7B 0A            [ 1]  167 	ld	a, (0x0a, sp)
      0083BC A2 00            [ 1]  168 	sbc	a, #0x00
      0083BE 25 0E            [ 1]  169 	jrc	00138$
      0083C0 AE 1A 80         [ 2]  170 	ldw	x, #0x1a80
      0083C3 13 0C            [ 2]  171 	cpw	x, (0x0c, sp)
      0083C5 A6 06            [ 1]  172 	ld	a, #0x06
      0083C7 12 0B            [ 1]  173 	sbc	a, (0x0b, sp)
      0083C9 4F               [ 1]  174 	clr	a
      0083CA 12 0A            [ 1]  175 	sbc	a, (0x0a, sp)
      0083CC 24 0C            [ 1]  176 	jrnc	00139$
      0083CE                        177 00138$:
      0083CE 4B 71            [ 1]  178 	push	#0x71
      0083D0 5F               [ 1]  179 	clrw	x
      0083D1 89               [ 2]  180 	pushw	x
      0083D2 4B 00            [ 1]  181 	push	#0x00
      0083D4 AE 80 7C         [ 2]  182 	ldw	x, #(___str_0+0)
      0083D7 CD 82 14         [ 4]  183 	call	_assert_failed
      0083DA                        184 00139$:
                                    185 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 118: I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
      0083DA C6 52 12         [ 1]  186 	ld	a, 0x5212
      0083DD A4 C0            [ 1]  187 	and	a, #0xc0
      0083DF C7 52 12         [ 1]  188 	ld	0x5212, a
                                    189 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 120: I2C->FREQR |= InputClockFrequencyMHz;
      0083E2 C6 52 12         [ 1]  190 	ld	a, 0x5212
      0083E5 1A 13            [ 1]  191 	or	a, (0x13, sp)
      0083E7 C7 52 12         [ 1]  192 	ld	0x5212, a
                                    193 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 124: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      0083EA 72 11 52 10      [ 1]  194 	bres	0x5210, #0
                                    195 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 127: I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
      0083EE C6 52 1C         [ 1]  196 	ld	a, 0x521c
      0083F1 A4 30            [ 1]  197 	and	a, #0x30
      0083F3 C7 52 1C         [ 1]  198 	ld	0x521c, a
                                    199 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 128: I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
      0083F6 C6 52 1B         [ 1]  200 	ld	a, 0x521b
      0083F9 35 00 52 1B      [ 1]  201 	mov	0x521b+0, #0x00
                                    202 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 139: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
      0083FD 7B 13            [ 1]  203 	ld	a, (0x13, sp)
      0083FF 5F               [ 1]  204 	clrw	x
      008400 0F 01            [ 1]  205 	clr	(0x01, sp)
      008402 88               [ 1]  206 	push	a
      008403 89               [ 2]  207 	pushw	x
      008404 4F               [ 1]  208 	clr	a
      008405 88               [ 1]  209 	push	a
      008406 4B 40            [ 1]  210 	push	#0x40
      008408 4B 42            [ 1]  211 	push	#0x42
      00840A 4B 0F            [ 1]  212 	push	#0x0f
      00840C 4B 00            [ 1]  213 	push	#0x00
      00840E CD 93 DE         [ 4]  214 	call	__mullong
      008411 5B 08            [ 2]  215 	addw	sp, #8
      008413 1F 03            [ 2]  216 	ldw	(0x03, sp), x
      008415 17 01            [ 2]  217 	ldw	(0x01, sp), y
                                    218 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 131: if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
      008417 AE 86 A0         [ 2]  219 	ldw	x, #0x86a0
      00841A 13 0C            [ 2]  220 	cpw	x, (0x0c, sp)
      00841C A6 01            [ 1]  221 	ld	a, #0x01
      00841E 12 0B            [ 1]  222 	sbc	a, (0x0b, sp)
      008420 4F               [ 1]  223 	clr	a
      008421 12 0A            [ 1]  224 	sbc	a, (0x0a, sp)
      008423 24 76            [ 1]  225 	jrnc	00109$
                                    226 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 134: tmpccrh = I2C_CCRH_FS;
      008425 A6 80            [ 1]  227 	ld	a, #0x80
      008427 6B 05            [ 1]  228 	ld	(0x05, sp), a
                                    229 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 136: if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
      008429 0D 10            [ 1]  230 	tnz	(0x10, sp)
      00842B 26 21            [ 1]  231 	jrne	00102$
                                    232 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 139: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
      00842D 1E 0C            [ 2]  233 	ldw	x, (0x0c, sp)
      00842F 89               [ 2]  234 	pushw	x
      008430 1E 0C            [ 2]  235 	ldw	x, (0x0c, sp)
      008432 89               [ 2]  236 	pushw	x
      008433 4B 03            [ 1]  237 	push	#0x03
      008435 5F               [ 1]  238 	clrw	x
      008436 89               [ 2]  239 	pushw	x
      008437 4B 00            [ 1]  240 	push	#0x00
      008439 CD 93 DE         [ 4]  241 	call	__mullong
      00843C 5B 08            [ 2]  242 	addw	sp, #8
      00843E 89               [ 2]  243 	pushw	x
      00843F 90 89            [ 2]  244 	pushw	y
      008441 1E 07            [ 2]  245 	ldw	x, (0x07, sp)
      008443 89               [ 2]  246 	pushw	x
      008444 1E 07            [ 2]  247 	ldw	x, (0x07, sp)
      008446 89               [ 2]  248 	pushw	x
      008447 CD 93 83         [ 4]  249 	call	__divulong
      00844A 5B 08            [ 2]  250 	addw	sp, #8
      00844C 20 26            [ 2]  251 	jra	00103$
      00844E                        252 00102$:
                                    253 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 144: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
      00844E 1E 0C            [ 2]  254 	ldw	x, (0x0c, sp)
      008450 89               [ 2]  255 	pushw	x
      008451 1E 0C            [ 2]  256 	ldw	x, (0x0c, sp)
      008453 89               [ 2]  257 	pushw	x
      008454 4B 19            [ 1]  258 	push	#0x19
      008456 5F               [ 1]  259 	clrw	x
      008457 89               [ 2]  260 	pushw	x
      008458 4B 00            [ 1]  261 	push	#0x00
      00845A CD 93 DE         [ 4]  262 	call	__mullong
      00845D 5B 08            [ 2]  263 	addw	sp, #8
      00845F 9F               [ 1]  264 	ld	a, xl
      008460 88               [ 1]  265 	push	a
      008461 9E               [ 1]  266 	ld	a, xh
      008462 88               [ 1]  267 	push	a
      008463 90 89            [ 2]  268 	pushw	y
      008465 1E 07            [ 2]  269 	ldw	x, (0x07, sp)
      008467 89               [ 2]  270 	pushw	x
      008468 1E 07            [ 2]  271 	ldw	x, (0x07, sp)
      00846A 89               [ 2]  272 	pushw	x
      00846B CD 93 83         [ 4]  273 	call	__divulong
      00846E 5B 08            [ 2]  274 	addw	sp, #8
                                    275 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 146: tmpccrh |= I2C_CCRH_DUTY;
      008470 A6 C0            [ 1]  276 	ld	a, #0xc0
      008472 6B 05            [ 1]  277 	ld	(0x05, sp), a
      008474                        278 00103$:
                                    279 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 150: if (result < (uint16_t)0x01)
      008474 A3 00 01         [ 2]  280 	cpw	x, #0x0001
      008477 24 02            [ 1]  281 	jrnc	00105$
                                    282 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 153: result = (uint16_t)0x0001;
      008479 5F               [ 1]  283 	clrw	x
      00847A 5C               [ 1]  284 	incw	x
      00847B                        285 00105$:
                                    286 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 159: tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
      00847B 7B 13            [ 1]  287 	ld	a, (0x13, sp)
      00847D 6B 07            [ 1]  288 	ld	(0x07, sp), a
      00847F 0F 06            [ 1]  289 	clr	(0x06, sp)
      008481 89               [ 2]  290 	pushw	x
      008482 1E 08            [ 2]  291 	ldw	x, (0x08, sp)
      008484 58               [ 2]  292 	sllw	x
      008485 72 FB 08         [ 2]  293 	addw	x, (0x08, sp)
      008488 51               [ 1]  294 	exgw	x, y
      008489 4B 0A            [ 1]  295 	push	#0x0a
      00848B 4B 00            [ 1]  296 	push	#0x00
      00848D 93               [ 1]  297 	ldw	x, y
      00848E CD 94 5A         [ 4]  298 	call	__divsint
      008491 90 93            [ 1]  299 	ldw	y, x
      008493 9F               [ 1]  300 	ld	a, xl
      008494 85               [ 2]  301 	popw	x
      008495 4C               [ 1]  302 	inc	a
                                    303 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 160: I2C->TRISER = (uint8_t)tmpval;
      008496 C7 52 1D         [ 1]  304 	ld	0x521d, a
      008499 20 23            [ 2]  305 	jra	00110$
      00849B                        306 00109$:
                                    307 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 167: result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
      00849B 1E 0C            [ 2]  308 	ldw	x, (0x0c, sp)
      00849D 16 0A            [ 2]  309 	ldw	y, (0x0a, sp)
      00849F 58               [ 2]  310 	sllw	x
      0084A0 90 59            [ 2]  311 	rlcw	y
      0084A2 89               [ 2]  312 	pushw	x
      0084A3 90 89            [ 2]  313 	pushw	y
      0084A5 1E 07            [ 2]  314 	ldw	x, (0x07, sp)
      0084A7 89               [ 2]  315 	pushw	x
      0084A8 1E 07            [ 2]  316 	ldw	x, (0x07, sp)
      0084AA 89               [ 2]  317 	pushw	x
      0084AB CD 93 83         [ 4]  318 	call	__divulong
      0084AE 5B 08            [ 2]  319 	addw	sp, #8
                                    320 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 170: if (result < (uint16_t)0x0004)
      0084B0 A3 00 04         [ 2]  321 	cpw	x, #0x0004
      0084B3 24 03            [ 1]  322 	jrnc	00107$
                                    323 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 173: result = (uint16_t)0x0004;
      0084B5 AE 00 04         [ 2]  324 	ldw	x, #0x0004
      0084B8                        325 00107$:
                                    326 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 179: I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
      0084B8 7B 13            [ 1]  327 	ld	a, (0x13, sp)
      0084BA 4C               [ 1]  328 	inc	a
      0084BB C7 52 1D         [ 1]  329 	ld	0x521d, a
      0084BE                        330 00110$:
                                    331 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 184: I2C->CCRL = (uint8_t)result;
      0084BE 9F               [ 1]  332 	ld	a, xl
      0084BF C7 52 1B         [ 1]  333 	ld	0x521b, a
                                    334 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 185: I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
      0084C2 9E               [ 1]  335 	ld	a, xh
      0084C3 A4 0F            [ 1]  336 	and	a, #0x0f
      0084C5 1A 05            [ 1]  337 	or	a, (0x05, sp)
      0084C7 C7 52 1C         [ 1]  338 	ld	0x521c, a
                                    339 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 188: I2C->CR1 |= I2C_CR1_PE;
      0084CA 72 10 52 10      [ 1]  340 	bset	0x5210, #0
                                    341 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 191: I2C_AcknowledgeConfig(Ack);
      0084CE 7B 11            [ 1]  342 	ld	a, (0x11, sp)
      0084D0 CD 85 71         [ 4]  343 	call	_I2C_AcknowledgeConfig
                                    344 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 194: I2C->OARL = (uint8_t)(OwnAddress);
      0084D3 7B 0F            [ 1]  345 	ld	a, (0x0f, sp)
      0084D5 C7 52 13         [ 1]  346 	ld	0x5213, a
                                    347 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 195: I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
      0084D8 7B 12            [ 1]  348 	ld	a, (0x12, sp)
      0084DA AA 40            [ 1]  349 	or	a, #0x40
      0084DC 6B 07            [ 1]  350 	ld	(0x07, sp), a
                                    351 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 196: (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
      0084DE 4F               [ 1]  352 	clr	a
      0084DF 97               [ 1]  353 	ld	xl, a
      0084E0 7B 0E            [ 1]  354 	ld	a, (0x0e, sp)
      0084E2 A4 03            [ 1]  355 	and	a, #0x03
      0084E4 95               [ 1]  356 	ld	xh, a
      0084E5 A6 80            [ 1]  357 	ld	a, #0x80
      0084E7 62               [ 2]  358 	div	x, a
      0084E8 9F               [ 1]  359 	ld	a, xl
      0084E9 1A 07            [ 1]  360 	or	a, (0x07, sp)
      0084EB C7 52 14         [ 1]  361 	ld	0x5214, a
                                    362 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 197: }
      0084EE 1E 08            [ 2]  363 	ldw	x, (8, sp)
      0084F0 5B 13            [ 2]  364 	addw	sp, #19
      0084F2 FC               [ 2]  365 	jp	(x)
                                    366 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 207: void I2C_Cmd(FunctionalState NewState)
                                    367 ;	-----------------------------------------
                                    368 ;	 function I2C_Cmd
                                    369 ;	-----------------------------------------
      0084F3                        370 _I2C_Cmd:
      0084F3 88               [ 1]  371 	push	a
                                    372 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 210: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0084F4 6B 01            [ 1]  373 	ld	(0x01, sp), a
      0084F6 27 10            [ 1]  374 	jreq	00107$
      0084F8 0D 01            [ 1]  375 	tnz	(0x01, sp)
      0084FA 26 0C            [ 1]  376 	jrne	00107$
      0084FC 4B D2            [ 1]  377 	push	#0xd2
      0084FE 5F               [ 1]  378 	clrw	x
      0084FF 89               [ 2]  379 	pushw	x
      008500 4B 00            [ 1]  380 	push	#0x00
      008502 AE 80 7C         [ 2]  381 	ldw	x, #(___str_0+0)
      008505 CD 82 14         [ 4]  382 	call	_assert_failed
      008508                        383 00107$:
                                    384 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 215: I2C->CR1 |= I2C_CR1_PE;
      008508 C6 52 10         [ 1]  385 	ld	a, 0x5210
                                    386 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 212: if (NewState != DISABLE)
      00850B 0D 01            [ 1]  387 	tnz	(0x01, sp)
      00850D 27 07            [ 1]  388 	jreq	00102$
                                    389 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 215: I2C->CR1 |= I2C_CR1_PE;
      00850F AA 01            [ 1]  390 	or	a, #0x01
      008511 C7 52 10         [ 1]  391 	ld	0x5210, a
      008514 20 05            [ 2]  392 	jra	00104$
      008516                        393 00102$:
                                    394 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 220: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      008516 A4 FE            [ 1]  395 	and	a, #0xfe
      008518 C7 52 10         [ 1]  396 	ld	0x5210, a
      00851B                        397 00104$:
                                    398 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 222: }
      00851B 84               [ 1]  399 	pop	a
      00851C 81               [ 4]  400 	ret
                                    401 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 259: void I2C_GenerateSTART(FunctionalState NewState)
                                    402 ;	-----------------------------------------
                                    403 ;	 function I2C_GenerateSTART
                                    404 ;	-----------------------------------------
      00851D                        405 _I2C_GenerateSTART:
      00851D 88               [ 1]  406 	push	a
                                    407 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 262: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00851E 6B 01            [ 1]  408 	ld	(0x01, sp), a
      008520 27 10            [ 1]  409 	jreq	00107$
      008522 0D 01            [ 1]  410 	tnz	(0x01, sp)
      008524 26 0C            [ 1]  411 	jrne	00107$
      008526 4B 06            [ 1]  412 	push	#0x06
      008528 4B 01            [ 1]  413 	push	#0x01
      00852A 5F               [ 1]  414 	clrw	x
      00852B 89               [ 2]  415 	pushw	x
      00852C AE 80 7C         [ 2]  416 	ldw	x, #(___str_0+0)
      00852F CD 82 14         [ 4]  417 	call	_assert_failed
      008532                        418 00107$:
                                    419 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 267: I2C->CR2 |= I2C_CR2_START;
      008532 C6 52 11         [ 1]  420 	ld	a, 0x5211
                                    421 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 264: if (NewState != DISABLE)
      008535 0D 01            [ 1]  422 	tnz	(0x01, sp)
      008537 27 07            [ 1]  423 	jreq	00102$
                                    424 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 267: I2C->CR2 |= I2C_CR2_START;
      008539 AA 01            [ 1]  425 	or	a, #0x01
      00853B C7 52 11         [ 1]  426 	ld	0x5211, a
      00853E 20 05            [ 2]  427 	jra	00104$
      008540                        428 00102$:
                                    429 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 272: I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
      008540 A4 FE            [ 1]  430 	and	a, #0xfe
      008542 C7 52 11         [ 1]  431 	ld	0x5211, a
      008545                        432 00104$:
                                    433 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 274: }
      008545 84               [ 1]  434 	pop	a
      008546 81               [ 4]  435 	ret
                                    436 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 284: void I2C_GenerateSTOP(FunctionalState NewState)
                                    437 ;	-----------------------------------------
                                    438 ;	 function I2C_GenerateSTOP
                                    439 ;	-----------------------------------------
      008547                        440 _I2C_GenerateSTOP:
      008547 88               [ 1]  441 	push	a
                                    442 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 287: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008548 6B 01            [ 1]  443 	ld	(0x01, sp), a
      00854A 27 10            [ 1]  444 	jreq	00107$
      00854C 0D 01            [ 1]  445 	tnz	(0x01, sp)
      00854E 26 0C            [ 1]  446 	jrne	00107$
      008550 4B 1F            [ 1]  447 	push	#0x1f
      008552 4B 01            [ 1]  448 	push	#0x01
      008554 5F               [ 1]  449 	clrw	x
      008555 89               [ 2]  450 	pushw	x
      008556 AE 80 7C         [ 2]  451 	ldw	x, #(___str_0+0)
      008559 CD 82 14         [ 4]  452 	call	_assert_failed
      00855C                        453 00107$:
                                    454 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 292: I2C->CR2 |= I2C_CR2_STOP;
      00855C C6 52 11         [ 1]  455 	ld	a, 0x5211
                                    456 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 289: if (NewState != DISABLE)
      00855F 0D 01            [ 1]  457 	tnz	(0x01, sp)
      008561 27 07            [ 1]  458 	jreq	00102$
                                    459 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 292: I2C->CR2 |= I2C_CR2_STOP;
      008563 AA 02            [ 1]  460 	or	a, #0x02
      008565 C7 52 11         [ 1]  461 	ld	0x5211, a
      008568 20 05            [ 2]  462 	jra	00104$
      00856A                        463 00102$:
                                    464 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 297: I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
      00856A A4 FD            [ 1]  465 	and	a, #0xfd
      00856C C7 52 11         [ 1]  466 	ld	0x5211, a
      00856F                        467 00104$:
                                    468 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 299: }
      00856F 84               [ 1]  469 	pop	a
      008570 81               [ 4]  470 	ret
                                    471 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 361: void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
                                    472 ;	-----------------------------------------
                                    473 ;	 function I2C_AcknowledgeConfig
                                    474 ;	-----------------------------------------
      008571                        475 _I2C_AcknowledgeConfig:
      008571 52 02            [ 2]  476 	sub	sp, #2
                                    477 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 364: assert_param(IS_I2C_ACK_OK(Ack));
      008573 6B 02            [ 1]  478 	ld	(0x02, sp), a
      008575 4A               [ 1]  479 	dec	a
      008576 26 05            [ 1]  480 	jrne	00153$
      008578 A6 01            [ 1]  481 	ld	a, #0x01
      00857A 6B 01            [ 1]  482 	ld	(0x01, sp), a
      00857C C5                     483 	.byte 0xc5
      00857D                        484 00153$:
      00857D 0F 01            [ 1]  485 	clr	(0x01, sp)
      00857F                        486 00154$:
      00857F 0D 02            [ 1]  487 	tnz	(0x02, sp)
      008581 27 16            [ 1]  488 	jreq	00110$
      008583 0D 01            [ 1]  489 	tnz	(0x01, sp)
      008585 26 12            [ 1]  490 	jrne	00110$
      008587 7B 02            [ 1]  491 	ld	a, (0x02, sp)
      008589 A1 02            [ 1]  492 	cp	a, #0x02
      00858B 27 0C            [ 1]  493 	jreq	00110$
      00858D 4B 6C            [ 1]  494 	push	#0x6c
      00858F 4B 01            [ 1]  495 	push	#0x01
      008591 5F               [ 1]  496 	clrw	x
      008592 89               [ 2]  497 	pushw	x
      008593 AE 80 7C         [ 2]  498 	ldw	x, #(___str_0+0)
      008596 CD 82 14         [ 4]  499 	call	_assert_failed
      008599                        500 00110$:
                                    501 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 369: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      008599 C6 52 11         [ 1]  502 	ld	a, 0x5211
                                    503 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 366: if (Ack == I2C_ACK_NONE)
      00859C 0D 02            [ 1]  504 	tnz	(0x02, sp)
      00859E 26 07            [ 1]  505 	jrne	00105$
                                    506 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 369: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      0085A0 A4 FB            [ 1]  507 	and	a, #0xfb
      0085A2 C7 52 11         [ 1]  508 	ld	0x5211, a
      0085A5 20 1B            [ 2]  509 	jra	00107$
      0085A7                        510 00105$:
                                    511 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 374: I2C->CR2 |= I2C_CR2_ACK;
      0085A7 AA 04            [ 1]  512 	or	a, #0x04
      0085A9 C7 52 11         [ 1]  513 	ld	0x5211, a
                                    514 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 369: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      0085AC C6 52 11         [ 1]  515 	ld	a, 0x5211
      0085AF 97               [ 1]  516 	ld	xl, a
                                    517 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 376: if (Ack == I2C_ACK_CURR)
      0085B0 7B 01            [ 1]  518 	ld	a, (0x01, sp)
      0085B2 27 08            [ 1]  519 	jreq	00102$
                                    520 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 379: I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
      0085B4 9F               [ 1]  521 	ld	a, xl
      0085B5 A4 F7            [ 1]  522 	and	a, #0xf7
      0085B7 C7 52 11         [ 1]  523 	ld	0x5211, a
      0085BA 20 06            [ 2]  524 	jra	00107$
      0085BC                        525 00102$:
                                    526 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 384: I2C->CR2 |= I2C_CR2_POS;
      0085BC 9F               [ 1]  527 	ld	a, xl
      0085BD AA 08            [ 1]  528 	or	a, #0x08
      0085BF C7 52 11         [ 1]  529 	ld	0x5211, a
      0085C2                        530 00107$:
                                    531 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 387: }
      0085C2 5B 02            [ 2]  532 	addw	sp, #2
      0085C4 81               [ 4]  533 	ret
                                    534 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 399: void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
                                    535 ;	-----------------------------------------
                                    536 ;	 function I2C_ITConfig
                                    537 ;	-----------------------------------------
      0085C5                        538 _I2C_ITConfig:
      0085C5 88               [ 1]  539 	push	a
                                    540 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 402: assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
      0085C6 A1 01            [ 1]  541 	cp	a, #0x01
      0085C8 27 26            [ 1]  542 	jreq	00107$
      0085CA A1 02            [ 1]  543 	cp	a, #0x02
      0085CC 27 22            [ 1]  544 	jreq	00107$
      0085CE A1 04            [ 1]  545 	cp	a, #0x04
      0085D0 27 1E            [ 1]  546 	jreq	00107$
      0085D2 A1 03            [ 1]  547 	cp	a, #0x03
      0085D4 27 1A            [ 1]  548 	jreq	00107$
      0085D6 A1 05            [ 1]  549 	cp	a, #0x05
      0085D8 27 16            [ 1]  550 	jreq	00107$
      0085DA A1 06            [ 1]  551 	cp	a, #0x06
      0085DC 27 12            [ 1]  552 	jreq	00107$
      0085DE A1 07            [ 1]  553 	cp	a, #0x07
      0085E0 27 0E            [ 1]  554 	jreq	00107$
      0085E2 88               [ 1]  555 	push	a
      0085E3 4B 92            [ 1]  556 	push	#0x92
      0085E5 4B 01            [ 1]  557 	push	#0x01
      0085E7 5F               [ 1]  558 	clrw	x
      0085E8 89               [ 2]  559 	pushw	x
      0085E9 AE 80 7C         [ 2]  560 	ldw	x, #(___str_0+0)
      0085EC CD 82 14         [ 4]  561 	call	_assert_failed
      0085EF 84               [ 1]  562 	pop	a
      0085F0                        563 00107$:
                                    564 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 403: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0085F0 0D 04            [ 1]  565 	tnz	(0x04, sp)
      0085F2 27 12            [ 1]  566 	jreq	00127$
      0085F4 0D 04            [ 1]  567 	tnz	(0x04, sp)
      0085F6 26 0E            [ 1]  568 	jrne	00127$
      0085F8 88               [ 1]  569 	push	a
      0085F9 4B 93            [ 1]  570 	push	#0x93
      0085FB 4B 01            [ 1]  571 	push	#0x01
      0085FD 5F               [ 1]  572 	clrw	x
      0085FE 89               [ 2]  573 	pushw	x
      0085FF AE 80 7C         [ 2]  574 	ldw	x, #(___str_0+0)
      008602 CD 82 14         [ 4]  575 	call	_assert_failed
      008605 84               [ 1]  576 	pop	a
      008606                        577 00127$:
                                    578 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 408: I2C->ITR |= (uint8_t)I2C_IT;
      008606 AE 52 1A         [ 2]  579 	ldw	x, #0x521a
      008609 88               [ 1]  580 	push	a
      00860A F6               [ 1]  581 	ld	a, (x)
      00860B 6B 02            [ 1]  582 	ld	(0x02, sp), a
      00860D 84               [ 1]  583 	pop	a
                                    584 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 405: if (NewState != DISABLE)
      00860E 0D 04            [ 1]  585 	tnz	(0x04, sp)
      008610 27 07            [ 1]  586 	jreq	00102$
                                    587 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 408: I2C->ITR |= (uint8_t)I2C_IT;
      008612 1A 01            [ 1]  588 	or	a, (0x01, sp)
      008614 C7 52 1A         [ 1]  589 	ld	0x521a, a
      008617 20 06            [ 2]  590 	jra	00104$
      008619                        591 00102$:
                                    592 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 413: I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
      008619 43               [ 1]  593 	cpl	a
      00861A 14 01            [ 1]  594 	and	a, (0x01, sp)
      00861C C7 52 1A         [ 1]  595 	ld	0x521a, a
      00861F                        596 00104$:
                                    597 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 415: }
      00861F 84               [ 1]  598 	pop	a
      008620 85               [ 2]  599 	popw	x
      008621 84               [ 1]  600 	pop	a
      008622 FC               [ 2]  601 	jp	(x)
                                    602 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 449: uint8_t I2C_ReceiveData(void)
                                    603 ;	-----------------------------------------
                                    604 ;	 function I2C_ReceiveData
                                    605 ;	-----------------------------------------
      008623                        606 _I2C_ReceiveData:
                                    607 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 452: return ((uint8_t)I2C->DR);
      008623 C6 52 16         [ 1]  608 	ld	a, 0x5216
                                    609 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 453: }
      008626 81               [ 4]  610 	ret
                                    611 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 464: void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
                                    612 ;	-----------------------------------------
                                    613 ;	 function I2C_Send7bitAddress
                                    614 ;	-----------------------------------------
      008627                        615 _I2C_Send7bitAddress:
      008627 88               [ 1]  616 	push	a
                                    617 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 467: assert_param(IS_I2C_ADDRESS_OK(Address));
      008628 A5 01            [ 1]  618 	bcp	a, #0x01
      00862A 27 0E            [ 1]  619 	jreq	00104$
      00862C 88               [ 1]  620 	push	a
      00862D 4B D3            [ 1]  621 	push	#0xd3
      00862F 4B 01            [ 1]  622 	push	#0x01
      008631 5F               [ 1]  623 	clrw	x
      008632 89               [ 2]  624 	pushw	x
      008633 AE 80 7C         [ 2]  625 	ldw	x, #(___str_0+0)
      008636 CD 82 14         [ 4]  626 	call	_assert_failed
      008639 84               [ 1]  627 	pop	a
      00863A                        628 00104$:
                                    629 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 468: assert_param(IS_I2C_DIRECTION_OK(Direction));
      00863A 0D 04            [ 1]  630 	tnz	(0x04, sp)
      00863C 27 12            [ 1]  631 	jreq	00106$
      00863E 0D 04            [ 1]  632 	tnz	(0x04, sp)
      008640 26 0E            [ 1]  633 	jrne	00106$
      008642 88               [ 1]  634 	push	a
      008643 4B D4            [ 1]  635 	push	#0xd4
      008645 4B 01            [ 1]  636 	push	#0x01
      008647 5F               [ 1]  637 	clrw	x
      008648 89               [ 2]  638 	pushw	x
      008649 AE 80 7C         [ 2]  639 	ldw	x, #(___str_0+0)
      00864C CD 82 14         [ 4]  640 	call	_assert_failed
      00864F 84               [ 1]  641 	pop	a
      008650                        642 00106$:
                                    643 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 471: Address &= (uint8_t)0xFE;
      008650 A4 FE            [ 1]  644 	and	a, #0xfe
      008652 6B 01            [ 1]  645 	ld	(0x01, sp), a
                                    646 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 474: I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
      008654 7B 04            [ 1]  647 	ld	a, (0x04, sp)
      008656 1A 01            [ 1]  648 	or	a, (0x01, sp)
      008658 C7 52 16         [ 1]  649 	ld	0x5216, a
                                    650 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 475: }
      00865B 84               [ 1]  651 	pop	a
      00865C 85               [ 2]  652 	popw	x
      00865D 84               [ 1]  653 	pop	a
      00865E FC               [ 2]  654 	jp	(x)
                                    655 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 484: void I2C_SendData(uint8_t Data)
                                    656 ;	-----------------------------------------
                                    657 ;	 function I2C_SendData
                                    658 ;	-----------------------------------------
      00865F                        659 _I2C_SendData:
                                    660 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 487: I2C->DR = Data;
      00865F C7 52 16         [ 1]  661 	ld	0x5216, a
                                    662 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 488: }
      008662 81               [ 4]  663 	ret
                                    664 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 606: ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
                                    665 ;	-----------------------------------------
                                    666 ;	 function I2C_CheckEvent
                                    667 ;	-----------------------------------------
      008663                        668 _I2C_CheckEvent:
      008663 52 08            [ 2]  669 	sub	sp, #8
                                    670 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 608: __IO uint16_t lastevent = 0x00;
      008665 0F 02            [ 1]  671 	clr	(0x02, sp)
      008667 0F 01            [ 1]  672 	clr	(0x01, sp)
                                    673 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 614: assert_param(IS_I2C_EVENT_OK(I2C_Event));
      008669 1F 03            [ 2]  674 	ldw	(0x03, sp), x
      00866B A3 00 04         [ 2]  675 	cpw	x, #0x0004
      00866E 26 03            [ 1]  676 	jrne	00283$
      008670 A6 01            [ 1]  677 	ld	a, #0x01
      008672 21                     678 	.byte 0x21
      008673                        679 00283$:
      008673 4F               [ 1]  680 	clr	a
      008674                        681 00284$:
      008674 1E 03            [ 2]  682 	ldw	x, (0x03, sp)
      008676 A3 06 82         [ 2]  683 	cpw	x, #0x0682
      008679 27 73            [ 1]  684 	jreq	00110$
      00867B 1E 03            [ 2]  685 	ldw	x, (0x03, sp)
      00867D A3 02 02         [ 2]  686 	cpw	x, #0x0202
      008680 27 6C            [ 1]  687 	jreq	00110$
      008682 1E 03            [ 2]  688 	ldw	x, (0x03, sp)
      008684 A3 12 00         [ 2]  689 	cpw	x, #0x1200
      008687 27 65            [ 1]  690 	jreq	00110$
      008689 1E 03            [ 2]  691 	ldw	x, (0x03, sp)
      00868B A3 02 40         [ 2]  692 	cpw	x, #0x0240
      00868E 27 5E            [ 1]  693 	jreq	00110$
      008690 1E 03            [ 2]  694 	ldw	x, (0x03, sp)
      008692 A3 03 50         [ 2]  695 	cpw	x, #0x0350
      008695 27 57            [ 1]  696 	jreq	00110$
      008697 1E 03            [ 2]  697 	ldw	x, (0x03, sp)
      008699 A3 06 84         [ 2]  698 	cpw	x, #0x0684
      00869C 27 50            [ 1]  699 	jreq	00110$
      00869E 1E 03            [ 2]  700 	ldw	x, (0x03, sp)
      0086A0 A3 07 94         [ 2]  701 	cpw	x, #0x0794
      0086A3 27 49            [ 1]  702 	jreq	00110$
      0086A5 4D               [ 1]  703 	tnz	a
      0086A6 26 46            [ 1]  704 	jrne	00110$
      0086A8 1E 03            [ 2]  705 	ldw	x, (0x03, sp)
      0086AA A3 00 10         [ 2]  706 	cpw	x, #0x0010
      0086AD 27 3F            [ 1]  707 	jreq	00110$
      0086AF 1E 03            [ 2]  708 	ldw	x, (0x03, sp)
      0086B1 A3 03 01         [ 2]  709 	cpw	x, #0x0301
      0086B4 27 38            [ 1]  710 	jreq	00110$
      0086B6 1E 03            [ 2]  711 	ldw	x, (0x03, sp)
      0086B8 A3 07 82         [ 2]  712 	cpw	x, #0x0782
      0086BB 27 31            [ 1]  713 	jreq	00110$
      0086BD 1E 03            [ 2]  714 	ldw	x, (0x03, sp)
      0086BF A3 03 02         [ 2]  715 	cpw	x, #0x0302
      0086C2 27 2A            [ 1]  716 	jreq	00110$
      0086C4 1E 03            [ 2]  717 	ldw	x, (0x03, sp)
      0086C6 A3 03 40         [ 2]  718 	cpw	x, #0x0340
      0086C9 27 23            [ 1]  719 	jreq	00110$
      0086CB 1E 03            [ 2]  720 	ldw	x, (0x03, sp)
      0086CD A3 07 84         [ 2]  721 	cpw	x, #0x0784
      0086D0 27 1C            [ 1]  722 	jreq	00110$
      0086D2 1E 03            [ 2]  723 	ldw	x, (0x03, sp)
      0086D4 A3 07 80         [ 2]  724 	cpw	x, #0x0780
      0086D7 27 15            [ 1]  725 	jreq	00110$
      0086D9 1E 03            [ 2]  726 	ldw	x, (0x03, sp)
      0086DB A3 03 08         [ 2]  727 	cpw	x, #0x0308
      0086DE 27 0E            [ 1]  728 	jreq	00110$
      0086E0 88               [ 1]  729 	push	a
      0086E1 4B 66            [ 1]  730 	push	#0x66
      0086E3 4B 02            [ 1]  731 	push	#0x02
      0086E5 5F               [ 1]  732 	clrw	x
      0086E6 89               [ 2]  733 	pushw	x
      0086E7 AE 80 7C         [ 2]  734 	ldw	x, #(___str_0+0)
      0086EA CD 82 14         [ 4]  735 	call	_assert_failed
      0086ED 84               [ 1]  736 	pop	a
      0086EE                        737 00110$:
                                    738 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 616: if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
      0086EE 4D               [ 1]  739 	tnz	a
      0086EF 27 0B            [ 1]  740 	jreq	00102$
                                    741 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 618: lastevent = I2C->SR2 & I2C_SR2_AF;
      0086F1 C6 52 18         [ 1]  742 	ld	a, 0x5218
      0086F4 A4 04            [ 1]  743 	and	a, #0x04
      0086F6 5F               [ 1]  744 	clrw	x
      0086F7 97               [ 1]  745 	ld	xl, a
      0086F8 1F 01            [ 2]  746 	ldw	(0x01, sp), x
      0086FA 20 0E            [ 2]  747 	jra	00103$
      0086FC                        748 00102$:
                                    749 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 622: flag1 = I2C->SR1;
      0086FC C6 52 17         [ 1]  750 	ld	a, 0x5217
      0086FF 97               [ 1]  751 	ld	xl, a
                                    752 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 623: flag2 = I2C->SR3;
      008700 C6 52 19         [ 1]  753 	ld	a, 0x5219
                                    754 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 624: lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
      008703 95               [ 1]  755 	ld	xh, a
      008704 0F 06            [ 1]  756 	clr	(0x06, sp)
      008706 0F 07            [ 1]  757 	clr	(0x07, sp)
      008708 1F 01            [ 2]  758 	ldw	(0x01, sp), x
      00870A                        759 00103$:
                                    760 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 627: if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
      00870A 7B 02            [ 1]  761 	ld	a, (0x02, sp)
      00870C 14 04            [ 1]  762 	and	a, (0x04, sp)
      00870E 97               [ 1]  763 	ld	xl, a
      00870F 7B 01            [ 1]  764 	ld	a, (0x01, sp)
      008711 14 03            [ 1]  765 	and	a, (0x03, sp)
      008713 95               [ 1]  766 	ld	xh, a
      008714 13 03            [ 2]  767 	cpw	x, (0x03, sp)
      008716 26 03            [ 1]  768 	jrne	00105$
                                    769 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 630: status = SUCCESS;
      008718 A6 01            [ 1]  770 	ld	a, #0x01
                                    771 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 635: status = ERROR;
      00871A 21                     772 	.byte 0x21
      00871B                        773 00105$:
      00871B 4F               [ 1]  774 	clr	a
      00871C                        775 00106$:
                                    776 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 639: return status;
                                    777 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 640: }
      00871C 5B 08            [ 2]  778 	addw	sp, #8
      00871E 81               [ 4]  779 	ret
                                    780 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 711: FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
                                    781 ;	-----------------------------------------
                                    782 ;	 function I2C_GetFlagStatus
                                    783 ;	-----------------------------------------
      00871F                        784 _I2C_GetFlagStatus:
      00871F 52 03            [ 2]  785 	sub	sp, #3
      008721 1F 02            [ 2]  786 	ldw	(0x02, sp), x
                                    787 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 713: uint8_t tempreg = 0;
      008723 0F 01            [ 1]  788 	clr	(0x01, sp)
                                    789 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 718: assert_param(IS_I2C_FLAG_OK(I2C_Flag));
      008725 1E 02            [ 2]  790 	ldw	x, (0x02, sp)
      008727 A3 01 80         [ 2]  791 	cpw	x, #0x0180
      00872A 27 5B            [ 1]  792 	jreq	00112$
      00872C A3 01 40         [ 2]  793 	cpw	x, #0x0140
      00872F 27 56            [ 1]  794 	jreq	00112$
      008731 A3 01 10         [ 2]  795 	cpw	x, #0x0110
      008734 27 51            [ 1]  796 	jreq	00112$
      008736 A3 01 08         [ 2]  797 	cpw	x, #0x0108
      008739 27 4C            [ 1]  798 	jreq	00112$
      00873B A3 01 04         [ 2]  799 	cpw	x, #0x0104
      00873E 27 47            [ 1]  800 	jreq	00112$
      008740 A3 01 02         [ 2]  801 	cpw	x, #0x0102
      008743 27 42            [ 1]  802 	jreq	00112$
      008745 A3 01 01         [ 2]  803 	cpw	x, #0x0101
      008748 27 3D            [ 1]  804 	jreq	00112$
      00874A A3 02 20         [ 2]  805 	cpw	x, #0x0220
      00874D 27 38            [ 1]  806 	jreq	00112$
      00874F A3 02 08         [ 2]  807 	cpw	x, #0x0208
      008752 27 33            [ 1]  808 	jreq	00112$
      008754 A3 02 04         [ 2]  809 	cpw	x, #0x0204
      008757 27 2E            [ 1]  810 	jreq	00112$
      008759 A3 02 02         [ 2]  811 	cpw	x, #0x0202
      00875C 27 29            [ 1]  812 	jreq	00112$
      00875E A3 02 01         [ 2]  813 	cpw	x, #0x0201
      008761 27 24            [ 1]  814 	jreq	00112$
      008763 A3 03 10         [ 2]  815 	cpw	x, #0x0310
      008766 27 1F            [ 1]  816 	jreq	00112$
      008768 A3 03 04         [ 2]  817 	cpw	x, #0x0304
      00876B 27 1A            [ 1]  818 	jreq	00112$
      00876D A3 03 02         [ 2]  819 	cpw	x, #0x0302
      008770 27 15            [ 1]  820 	jreq	00112$
      008772 A3 03 01         [ 2]  821 	cpw	x, #0x0301
      008775 27 10            [ 1]  822 	jreq	00112$
      008777 89               [ 2]  823 	pushw	x
      008778 4B CE            [ 1]  824 	push	#0xce
      00877A 4B 02            [ 1]  825 	push	#0x02
      00877C 4B 00            [ 1]  826 	push	#0x00
      00877E 4B 00            [ 1]  827 	push	#0x00
      008780 AE 80 7C         [ 2]  828 	ldw	x, #(___str_0+0)
      008783 CD 82 14         [ 4]  829 	call	_assert_failed
      008786 85               [ 2]  830 	popw	x
      008787                        831 00112$:
                                    832 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 721: regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
      008787 9E               [ 1]  833 	ld	a, xh
                                    834 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 723: switch (regindex)
      008788 A1 01            [ 1]  835 	cp	a, #0x01
      00878A 27 0A            [ 1]  836 	jreq	00101$
      00878C A1 02            [ 1]  837 	cp	a, #0x02
      00878E 27 0D            [ 1]  838 	jreq	00102$
      008790 A1 03            [ 1]  839 	cp	a, #0x03
      008792 27 10            [ 1]  840 	jreq	00103$
      008794 20 13            [ 2]  841 	jra	00105$
                                    842 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 726: case 0x01:
      008796                        843 00101$:
                                    844 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 727: tempreg = (uint8_t)I2C->SR1;
      008796 C6 52 17         [ 1]  845 	ld	a, 0x5217
      008799 6B 01            [ 1]  846 	ld	(0x01, sp), a
                                    847 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 728: break;
      00879B 20 0C            [ 2]  848 	jra	00105$
                                    849 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 731: case 0x02:
      00879D                        850 00102$:
                                    851 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 732: tempreg = (uint8_t)I2C->SR2;
      00879D C6 52 18         [ 1]  852 	ld	a, 0x5218
      0087A0 6B 01            [ 1]  853 	ld	(0x01, sp), a
                                    854 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 733: break;
      0087A2 20 05            [ 2]  855 	jra	00105$
                                    856 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 736: case 0x03:
      0087A4                        857 00103$:
                                    858 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 737: tempreg = (uint8_t)I2C->SR3;
      0087A4 C6 52 19         [ 1]  859 	ld	a, 0x5219
      0087A7 6B 01            [ 1]  860 	ld	(0x01, sp), a
                                    861 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 742: }
      0087A9                        862 00105$:
                                    863 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 745: if ((tempreg & (uint8_t)I2C_Flag ) != 0)
      0087A9 7B 03            [ 1]  864 	ld	a, (0x03, sp)
      0087AB 14 01            [ 1]  865 	and	a, (0x01, sp)
      0087AD 27 03            [ 1]  866 	jreq	00107$
                                    867 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 748: bitstatus = SET;
      0087AF A6 01            [ 1]  868 	ld	a, #0x01
                                    869 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 753: bitstatus = RESET;
      0087B1 21                     870 	.byte 0x21
      0087B2                        871 00107$:
      0087B2 4F               [ 1]  872 	clr	a
      0087B3                        873 00108$:
                                    874 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 756: return bitstatus;
                                    875 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 757: }
      0087B3 5B 03            [ 2]  876 	addw	sp, #3
      0087B5 81               [ 4]  877 	ret
                                    878 	.area CODE
                                    879 	.area CONST
                                    880 	.area CONST
      00807C                        881 ___str_0:
      00807C 2F 77 6F 72 6B 73 70   882 	.ascii "/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Li"
             61 63 65 2F 53 6F 66
             74 77 61 72 65 2F 46
             69 72 6D 77 61 72 65
             2F 6E 65 77 5F 62 65
             67 69 6E 69 6E 67 2F
             53 54 4D 38 53 5F 53
             74 64 50 65 72 69 70
             68 5F 4C 69
      0080B8 62 2F 73 72 63 2F 73   883 	.ascii "b/src/stm8s_i2c.c"
             74 6D 38 73 5F 69 32
             63 2E 63
      0080C9 00                     884 	.db 0x00
                                    885 	.area CODE
                                    886 	.area INITIALIZER
                                    887 	.area CABS (ABS)
