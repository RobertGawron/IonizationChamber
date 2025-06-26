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
      008513                         65 _I2C_DeInit:
                                     66 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 70: I2C->CR1 = I2C_CR1_RESET_VALUE;
      008513 35 00 52 10      [ 1]   67 	mov	0x5210+0, #0x00
                                     68 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 71: I2C->CR2 = I2C_CR2_RESET_VALUE;
      008517 35 00 52 11      [ 1]   69 	mov	0x5211+0, #0x00
                                     70 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 72: I2C->FREQR = I2C_FREQR_RESET_VALUE;
      00851B 35 00 52 12      [ 1]   71 	mov	0x5212+0, #0x00
                                     72 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 73: I2C->OARL = I2C_OARL_RESET_VALUE;
      00851F 35 00 52 13      [ 1]   73 	mov	0x5213+0, #0x00
                                     74 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 74: I2C->OARH = I2C_OARH_RESET_VALUE;
      008523 35 00 52 14      [ 1]   75 	mov	0x5214+0, #0x00
                                     76 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 75: I2C->ITR = I2C_ITR_RESET_VALUE;
      008527 35 00 52 1A      [ 1]   77 	mov	0x521a+0, #0x00
                                     78 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 76: I2C->CCRL = I2C_CCRL_RESET_VALUE;
      00852B 35 00 52 1B      [ 1]   79 	mov	0x521b+0, #0x00
                                     80 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 77: I2C->CCRH = I2C_CCRH_RESET_VALUE;
      00852F 35 00 52 1C      [ 1]   81 	mov	0x521c+0, #0x00
                                     82 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 78: I2C->TRISER = I2C_TRISER_RESET_VALUE;
      008533 35 02 52 1D      [ 1]   83 	mov	0x521d+0, #0x02
                                     84 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 79: }
      008537 81               [ 4]   85 	ret
                                     86 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 99: void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
                                     87 ;	-----------------------------------------
                                     88 ;	 function I2C_Init
                                     89 ;	-----------------------------------------
      008538                         90 _I2C_Init:
      008538 52 07            [ 2]   91 	sub	sp, #7
                                     92 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 105: uint8_t tmpccrh = 0;
      00853A 0F 05            [ 1]   93 	clr	(0x05, sp)
                                     94 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 108: assert_param(IS_I2C_ACK_OK(Ack));
      00853C 0D 11            [ 1]   95 	tnz	(0x11, sp)
      00853E 27 17            [ 1]   96 	jreq	00114$
      008540 7B 11            [ 1]   97 	ld	a, (0x11, sp)
      008542 4A               [ 1]   98 	dec	a
      008543 27 12            [ 1]   99 	jreq	00114$
      008545 7B 11            [ 1]  100 	ld	a, (0x11, sp)
      008547 A1 02            [ 1]  101 	cp	a, #0x02
      008549 27 0C            [ 1]  102 	jreq	00114$
      00854B 4B 6C            [ 1]  103 	push	#0x6c
      00854D 5F               [ 1]  104 	clrw	x
      00854E 89               [ 2]  105 	pushw	x
      00854F 4B 00            [ 1]  106 	push	#0x00
      008551 AE 80 B4         [ 2]  107 	ldw	x, #(___str_0+0)
      008554 CD 82 6A         [ 4]  108 	call	_assert_failed
      008557                        109 00114$:
                                    110 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 109: assert_param(IS_I2C_ADDMODE_OK(AddMode));
      008557 0D 12            [ 1]  111 	tnz	(0x12, sp)
      008559 27 12            [ 1]  112 	jreq	00122$
      00855B 7B 12            [ 1]  113 	ld	a, (0x12, sp)
      00855D A1 80            [ 1]  114 	cp	a, #0x80
      00855F 27 0C            [ 1]  115 	jreq	00122$
      008561 4B 6D            [ 1]  116 	push	#0x6d
      008563 5F               [ 1]  117 	clrw	x
      008564 89               [ 2]  118 	pushw	x
      008565 4B 00            [ 1]  119 	push	#0x00
      008567 AE 80 B4         [ 2]  120 	ldw	x, #(___str_0+0)
      00856A CD 82 6A         [ 4]  121 	call	_assert_failed
      00856D                        122 00122$:
                                    123 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 110: assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
      00856D 1E 0E            [ 2]  124 	ldw	x, (0x0e, sp)
      00856F A3 03 FF         [ 2]  125 	cpw	x, #0x03ff
      008572 23 0C            [ 2]  126 	jrule	00127$
      008574 4B 6E            [ 1]  127 	push	#0x6e
      008576 5F               [ 1]  128 	clrw	x
      008577 89               [ 2]  129 	pushw	x
      008578 4B 00            [ 1]  130 	push	#0x00
      00857A AE 80 B4         [ 2]  131 	ldw	x, #(___str_0+0)
      00857D CD 82 6A         [ 4]  132 	call	_assert_failed
      008580                        133 00127$:
                                    134 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 111: assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
      008580 0D 10            [ 1]  135 	tnz	(0x10, sp)
      008582 27 12            [ 1]  136 	jreq	00129$
      008584 7B 10            [ 1]  137 	ld	a, (0x10, sp)
      008586 A1 40            [ 1]  138 	cp	a, #0x40
      008588 27 0C            [ 1]  139 	jreq	00129$
      00858A 4B 6F            [ 1]  140 	push	#0x6f
      00858C 5F               [ 1]  141 	clrw	x
      00858D 89               [ 2]  142 	pushw	x
      00858E 4B 00            [ 1]  143 	push	#0x00
      008590 AE 80 B4         [ 2]  144 	ldw	x, #(___str_0+0)
      008593 CD 82 6A         [ 4]  145 	call	_assert_failed
      008596                        146 00129$:
                                    147 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 112: assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
      008596 7B 13            [ 1]  148 	ld	a, (0x13, sp)
      008598 A1 01            [ 1]  149 	cp	a, #0x01
      00859A 25 06            [ 1]  150 	jrc	00133$
      00859C 7B 13            [ 1]  151 	ld	a, (0x13, sp)
      00859E A1 10            [ 1]  152 	cp	a, #0x10
      0085A0 23 0C            [ 2]  153 	jrule	00134$
      0085A2                        154 00133$:
      0085A2 4B 70            [ 1]  155 	push	#0x70
      0085A4 5F               [ 1]  156 	clrw	x
      0085A5 89               [ 2]  157 	pushw	x
      0085A6 4B 00            [ 1]  158 	push	#0x00
      0085A8 AE 80 B4         [ 2]  159 	ldw	x, #(___str_0+0)
      0085AB CD 82 6A         [ 4]  160 	call	_assert_failed
      0085AE                        161 00134$:
                                    162 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 113: assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
      0085AE 1E 0C            [ 2]  163 	ldw	x, (0x0c, sp)
      0085B0 A3 00 01         [ 2]  164 	cpw	x, #0x0001
      0085B3 7B 0B            [ 1]  165 	ld	a, (0x0b, sp)
      0085B5 A2 00            [ 1]  166 	sbc	a, #0x00
      0085B7 7B 0A            [ 1]  167 	ld	a, (0x0a, sp)
      0085B9 A2 00            [ 1]  168 	sbc	a, #0x00
      0085BB 25 0E            [ 1]  169 	jrc	00138$
      0085BD AE 1A 80         [ 2]  170 	ldw	x, #0x1a80
      0085C0 13 0C            [ 2]  171 	cpw	x, (0x0c, sp)
      0085C2 A6 06            [ 1]  172 	ld	a, #0x06
      0085C4 12 0B            [ 1]  173 	sbc	a, (0x0b, sp)
      0085C6 4F               [ 1]  174 	clr	a
      0085C7 12 0A            [ 1]  175 	sbc	a, (0x0a, sp)
      0085C9 24 0C            [ 1]  176 	jrnc	00139$
      0085CB                        177 00138$:
      0085CB 4B 71            [ 1]  178 	push	#0x71
      0085CD 5F               [ 1]  179 	clrw	x
      0085CE 89               [ 2]  180 	pushw	x
      0085CF 4B 00            [ 1]  181 	push	#0x00
      0085D1 AE 80 B4         [ 2]  182 	ldw	x, #(___str_0+0)
      0085D4 CD 82 6A         [ 4]  183 	call	_assert_failed
      0085D7                        184 00139$:
                                    185 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 118: I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
      0085D7 C6 52 12         [ 1]  186 	ld	a, 0x5212
      0085DA A4 C0            [ 1]  187 	and	a, #0xc0
      0085DC C7 52 12         [ 1]  188 	ld	0x5212, a
                                    189 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 120: I2C->FREQR |= InputClockFrequencyMHz;
      0085DF C6 52 12         [ 1]  190 	ld	a, 0x5212
      0085E2 1A 13            [ 1]  191 	or	a, (0x13, sp)
      0085E4 C7 52 12         [ 1]  192 	ld	0x5212, a
                                    193 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 124: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      0085E7 72 11 52 10      [ 1]  194 	bres	0x5210, #0
                                    195 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 127: I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
      0085EB C6 52 1C         [ 1]  196 	ld	a, 0x521c
      0085EE A4 30            [ 1]  197 	and	a, #0x30
      0085F0 C7 52 1C         [ 1]  198 	ld	0x521c, a
                                    199 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 128: I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
      0085F3 C6 52 1B         [ 1]  200 	ld	a, 0x521b
      0085F6 35 00 52 1B      [ 1]  201 	mov	0x521b+0, #0x00
                                    202 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 139: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
      0085FA 7B 13            [ 1]  203 	ld	a, (0x13, sp)
      0085FC 5F               [ 1]  204 	clrw	x
      0085FD 0F 01            [ 1]  205 	clr	(0x01, sp)
      0085FF 88               [ 1]  206 	push	a
      008600 89               [ 2]  207 	pushw	x
      008601 4F               [ 1]  208 	clr	a
      008602 88               [ 1]  209 	push	a
      008603 4B 40            [ 1]  210 	push	#0x40
      008605 4B 42            [ 1]  211 	push	#0x42
      008607 4B 0F            [ 1]  212 	push	#0x0f
      008609 4B 00            [ 1]  213 	push	#0x00
      00860B CD 98 2F         [ 4]  214 	call	__mullong
      00860E 5B 08            [ 2]  215 	addw	sp, #8
      008610 1F 03            [ 2]  216 	ldw	(0x03, sp), x
      008612 17 01            [ 2]  217 	ldw	(0x01, sp), y
                                    218 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 131: if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
      008614 AE 86 A0         [ 2]  219 	ldw	x, #0x86a0
      008617 13 0C            [ 2]  220 	cpw	x, (0x0c, sp)
      008619 A6 01            [ 1]  221 	ld	a, #0x01
      00861B 12 0B            [ 1]  222 	sbc	a, (0x0b, sp)
      00861D 4F               [ 1]  223 	clr	a
      00861E 12 0A            [ 1]  224 	sbc	a, (0x0a, sp)
      008620 24 76            [ 1]  225 	jrnc	00109$
                                    226 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 134: tmpccrh = I2C_CCRH_FS;
      008622 A6 80            [ 1]  227 	ld	a, #0x80
      008624 6B 05            [ 1]  228 	ld	(0x05, sp), a
                                    229 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 136: if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
      008626 0D 10            [ 1]  230 	tnz	(0x10, sp)
      008628 26 21            [ 1]  231 	jrne	00102$
                                    232 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 139: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
      00862A 1E 0C            [ 2]  233 	ldw	x, (0x0c, sp)
      00862C 89               [ 2]  234 	pushw	x
      00862D 1E 0C            [ 2]  235 	ldw	x, (0x0c, sp)
      00862F 89               [ 2]  236 	pushw	x
      008630 4B 03            [ 1]  237 	push	#0x03
      008632 5F               [ 1]  238 	clrw	x
      008633 89               [ 2]  239 	pushw	x
      008634 4B 00            [ 1]  240 	push	#0x00
      008636 CD 98 2F         [ 4]  241 	call	__mullong
      008639 5B 08            [ 2]  242 	addw	sp, #8
      00863B 89               [ 2]  243 	pushw	x
      00863C 90 89            [ 2]  244 	pushw	y
      00863E 1E 07            [ 2]  245 	ldw	x, (0x07, sp)
      008640 89               [ 2]  246 	pushw	x
      008641 1E 07            [ 2]  247 	ldw	x, (0x07, sp)
      008643 89               [ 2]  248 	pushw	x
      008644 CD 97 D4         [ 4]  249 	call	__divulong
      008647 5B 08            [ 2]  250 	addw	sp, #8
      008649 20 26            [ 2]  251 	jra	00103$
      00864B                        252 00102$:
                                    253 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 144: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
      00864B 1E 0C            [ 2]  254 	ldw	x, (0x0c, sp)
      00864D 89               [ 2]  255 	pushw	x
      00864E 1E 0C            [ 2]  256 	ldw	x, (0x0c, sp)
      008650 89               [ 2]  257 	pushw	x
      008651 4B 19            [ 1]  258 	push	#0x19
      008653 5F               [ 1]  259 	clrw	x
      008654 89               [ 2]  260 	pushw	x
      008655 4B 00            [ 1]  261 	push	#0x00
      008657 CD 98 2F         [ 4]  262 	call	__mullong
      00865A 5B 08            [ 2]  263 	addw	sp, #8
      00865C 9F               [ 1]  264 	ld	a, xl
      00865D 88               [ 1]  265 	push	a
      00865E 9E               [ 1]  266 	ld	a, xh
      00865F 88               [ 1]  267 	push	a
      008660 90 89            [ 2]  268 	pushw	y
      008662 1E 07            [ 2]  269 	ldw	x, (0x07, sp)
      008664 89               [ 2]  270 	pushw	x
      008665 1E 07            [ 2]  271 	ldw	x, (0x07, sp)
      008667 89               [ 2]  272 	pushw	x
      008668 CD 97 D4         [ 4]  273 	call	__divulong
      00866B 5B 08            [ 2]  274 	addw	sp, #8
                                    275 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 146: tmpccrh |= I2C_CCRH_DUTY;
      00866D A6 C0            [ 1]  276 	ld	a, #0xc0
      00866F 6B 05            [ 1]  277 	ld	(0x05, sp), a
      008671                        278 00103$:
                                    279 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 150: if (result < (uint16_t)0x01)
      008671 A3 00 01         [ 2]  280 	cpw	x, #0x0001
      008674 24 02            [ 1]  281 	jrnc	00105$
                                    282 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 153: result = (uint16_t)0x0001;
      008676 5F               [ 1]  283 	clrw	x
      008677 5C               [ 1]  284 	incw	x
      008678                        285 00105$:
                                    286 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 159: tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
      008678 7B 13            [ 1]  287 	ld	a, (0x13, sp)
      00867A 6B 07            [ 1]  288 	ld	(0x07, sp), a
      00867C 0F 06            [ 1]  289 	clr	(0x06, sp)
      00867E 89               [ 2]  290 	pushw	x
      00867F 1E 08            [ 2]  291 	ldw	x, (0x08, sp)
      008681 58               [ 2]  292 	sllw	x
      008682 72 FB 08         [ 2]  293 	addw	x, (0x08, sp)
      008685 51               [ 1]  294 	exgw	x, y
      008686 4B 0A            [ 1]  295 	push	#0x0a
      008688 4B 00            [ 1]  296 	push	#0x00
      00868A 93               [ 1]  297 	ldw	x, y
      00868B CD 98 AB         [ 4]  298 	call	__divsint
      00868E 90 93            [ 1]  299 	ldw	y, x
      008690 9F               [ 1]  300 	ld	a, xl
      008691 85               [ 2]  301 	popw	x
      008692 4C               [ 1]  302 	inc	a
                                    303 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 160: I2C->TRISER = (uint8_t)tmpval;
      008693 C7 52 1D         [ 1]  304 	ld	0x521d, a
      008696 20 23            [ 2]  305 	jra	00110$
      008698                        306 00109$:
                                    307 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 167: result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
      008698 1E 0C            [ 2]  308 	ldw	x, (0x0c, sp)
      00869A 16 0A            [ 2]  309 	ldw	y, (0x0a, sp)
      00869C 58               [ 2]  310 	sllw	x
      00869D 90 59            [ 2]  311 	rlcw	y
      00869F 89               [ 2]  312 	pushw	x
      0086A0 90 89            [ 2]  313 	pushw	y
      0086A2 1E 07            [ 2]  314 	ldw	x, (0x07, sp)
      0086A4 89               [ 2]  315 	pushw	x
      0086A5 1E 07            [ 2]  316 	ldw	x, (0x07, sp)
      0086A7 89               [ 2]  317 	pushw	x
      0086A8 CD 97 D4         [ 4]  318 	call	__divulong
      0086AB 5B 08            [ 2]  319 	addw	sp, #8
                                    320 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 170: if (result < (uint16_t)0x0004)
      0086AD A3 00 04         [ 2]  321 	cpw	x, #0x0004
      0086B0 24 03            [ 1]  322 	jrnc	00107$
                                    323 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 173: result = (uint16_t)0x0004;
      0086B2 AE 00 04         [ 2]  324 	ldw	x, #0x0004
      0086B5                        325 00107$:
                                    326 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 179: I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
      0086B5 7B 13            [ 1]  327 	ld	a, (0x13, sp)
      0086B7 4C               [ 1]  328 	inc	a
      0086B8 C7 52 1D         [ 1]  329 	ld	0x521d, a
      0086BB                        330 00110$:
                                    331 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 184: I2C->CCRL = (uint8_t)result;
      0086BB 9F               [ 1]  332 	ld	a, xl
      0086BC C7 52 1B         [ 1]  333 	ld	0x521b, a
                                    334 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 185: I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
      0086BF 9E               [ 1]  335 	ld	a, xh
      0086C0 A4 0F            [ 1]  336 	and	a, #0x0f
      0086C2 1A 05            [ 1]  337 	or	a, (0x05, sp)
      0086C4 C7 52 1C         [ 1]  338 	ld	0x521c, a
                                    339 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 188: I2C->CR1 |= I2C_CR1_PE;
      0086C7 72 10 52 10      [ 1]  340 	bset	0x5210, #0
                                    341 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 191: I2C_AcknowledgeConfig(Ack);
      0086CB 7B 11            [ 1]  342 	ld	a, (0x11, sp)
      0086CD CD 87 6E         [ 4]  343 	call	_I2C_AcknowledgeConfig
                                    344 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 194: I2C->OARL = (uint8_t)(OwnAddress);
      0086D0 7B 0F            [ 1]  345 	ld	a, (0x0f, sp)
      0086D2 C7 52 13         [ 1]  346 	ld	0x5213, a
                                    347 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 195: I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
      0086D5 7B 12            [ 1]  348 	ld	a, (0x12, sp)
      0086D7 AA 40            [ 1]  349 	or	a, #0x40
      0086D9 6B 07            [ 1]  350 	ld	(0x07, sp), a
                                    351 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 196: (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
      0086DB 4F               [ 1]  352 	clr	a
      0086DC 97               [ 1]  353 	ld	xl, a
      0086DD 7B 0E            [ 1]  354 	ld	a, (0x0e, sp)
      0086DF A4 03            [ 1]  355 	and	a, #0x03
      0086E1 95               [ 1]  356 	ld	xh, a
      0086E2 A6 80            [ 1]  357 	ld	a, #0x80
      0086E4 62               [ 2]  358 	div	x, a
      0086E5 9F               [ 1]  359 	ld	a, xl
      0086E6 1A 07            [ 1]  360 	or	a, (0x07, sp)
      0086E8 C7 52 14         [ 1]  361 	ld	0x5214, a
                                    362 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 197: }
      0086EB 1E 08            [ 2]  363 	ldw	x, (8, sp)
      0086ED 5B 13            [ 2]  364 	addw	sp, #19
      0086EF FC               [ 2]  365 	jp	(x)
                                    366 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 207: void I2C_Cmd(FunctionalState NewState)
                                    367 ;	-----------------------------------------
                                    368 ;	 function I2C_Cmd
                                    369 ;	-----------------------------------------
      0086F0                        370 _I2C_Cmd:
      0086F0 88               [ 1]  371 	push	a
                                    372 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 210: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0086F1 6B 01            [ 1]  373 	ld	(0x01, sp), a
      0086F3 27 10            [ 1]  374 	jreq	00107$
      0086F5 0D 01            [ 1]  375 	tnz	(0x01, sp)
      0086F7 26 0C            [ 1]  376 	jrne	00107$
      0086F9 4B D2            [ 1]  377 	push	#0xd2
      0086FB 5F               [ 1]  378 	clrw	x
      0086FC 89               [ 2]  379 	pushw	x
      0086FD 4B 00            [ 1]  380 	push	#0x00
      0086FF AE 80 B4         [ 2]  381 	ldw	x, #(___str_0+0)
      008702 CD 82 6A         [ 4]  382 	call	_assert_failed
      008705                        383 00107$:
                                    384 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 215: I2C->CR1 |= I2C_CR1_PE;
      008705 C6 52 10         [ 1]  385 	ld	a, 0x5210
                                    386 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 212: if (NewState != DISABLE)
      008708 0D 01            [ 1]  387 	tnz	(0x01, sp)
      00870A 27 07            [ 1]  388 	jreq	00102$
                                    389 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 215: I2C->CR1 |= I2C_CR1_PE;
      00870C AA 01            [ 1]  390 	or	a, #0x01
      00870E C7 52 10         [ 1]  391 	ld	0x5210, a
      008711 20 05            [ 2]  392 	jra	00104$
      008713                        393 00102$:
                                    394 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 220: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      008713 A4 FE            [ 1]  395 	and	a, #0xfe
      008715 C7 52 10         [ 1]  396 	ld	0x5210, a
      008718                        397 00104$:
                                    398 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 222: }
      008718 84               [ 1]  399 	pop	a
      008719 81               [ 4]  400 	ret
                                    401 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 259: void I2C_GenerateSTART(FunctionalState NewState)
                                    402 ;	-----------------------------------------
                                    403 ;	 function I2C_GenerateSTART
                                    404 ;	-----------------------------------------
      00871A                        405 _I2C_GenerateSTART:
      00871A 88               [ 1]  406 	push	a
                                    407 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 262: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00871B 6B 01            [ 1]  408 	ld	(0x01, sp), a
      00871D 27 10            [ 1]  409 	jreq	00107$
      00871F 0D 01            [ 1]  410 	tnz	(0x01, sp)
      008721 26 0C            [ 1]  411 	jrne	00107$
      008723 4B 06            [ 1]  412 	push	#0x06
      008725 4B 01            [ 1]  413 	push	#0x01
      008727 5F               [ 1]  414 	clrw	x
      008728 89               [ 2]  415 	pushw	x
      008729 AE 80 B4         [ 2]  416 	ldw	x, #(___str_0+0)
      00872C CD 82 6A         [ 4]  417 	call	_assert_failed
      00872F                        418 00107$:
                                    419 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 267: I2C->CR2 |= I2C_CR2_START;
      00872F C6 52 11         [ 1]  420 	ld	a, 0x5211
                                    421 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 264: if (NewState != DISABLE)
      008732 0D 01            [ 1]  422 	tnz	(0x01, sp)
      008734 27 07            [ 1]  423 	jreq	00102$
                                    424 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 267: I2C->CR2 |= I2C_CR2_START;
      008736 AA 01            [ 1]  425 	or	a, #0x01
      008738 C7 52 11         [ 1]  426 	ld	0x5211, a
      00873B 20 05            [ 2]  427 	jra	00104$
      00873D                        428 00102$:
                                    429 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 272: I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
      00873D A4 FE            [ 1]  430 	and	a, #0xfe
      00873F C7 52 11         [ 1]  431 	ld	0x5211, a
      008742                        432 00104$:
                                    433 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 274: }
      008742 84               [ 1]  434 	pop	a
      008743 81               [ 4]  435 	ret
                                    436 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 284: void I2C_GenerateSTOP(FunctionalState NewState)
                                    437 ;	-----------------------------------------
                                    438 ;	 function I2C_GenerateSTOP
                                    439 ;	-----------------------------------------
      008744                        440 _I2C_GenerateSTOP:
      008744 88               [ 1]  441 	push	a
                                    442 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 287: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008745 6B 01            [ 1]  443 	ld	(0x01, sp), a
      008747 27 10            [ 1]  444 	jreq	00107$
      008749 0D 01            [ 1]  445 	tnz	(0x01, sp)
      00874B 26 0C            [ 1]  446 	jrne	00107$
      00874D 4B 1F            [ 1]  447 	push	#0x1f
      00874F 4B 01            [ 1]  448 	push	#0x01
      008751 5F               [ 1]  449 	clrw	x
      008752 89               [ 2]  450 	pushw	x
      008753 AE 80 B4         [ 2]  451 	ldw	x, #(___str_0+0)
      008756 CD 82 6A         [ 4]  452 	call	_assert_failed
      008759                        453 00107$:
                                    454 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 292: I2C->CR2 |= I2C_CR2_STOP;
      008759 C6 52 11         [ 1]  455 	ld	a, 0x5211
                                    456 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 289: if (NewState != DISABLE)
      00875C 0D 01            [ 1]  457 	tnz	(0x01, sp)
      00875E 27 07            [ 1]  458 	jreq	00102$
                                    459 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 292: I2C->CR2 |= I2C_CR2_STOP;
      008760 AA 02            [ 1]  460 	or	a, #0x02
      008762 C7 52 11         [ 1]  461 	ld	0x5211, a
      008765 20 05            [ 2]  462 	jra	00104$
      008767                        463 00102$:
                                    464 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 297: I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
      008767 A4 FD            [ 1]  465 	and	a, #0xfd
      008769 C7 52 11         [ 1]  466 	ld	0x5211, a
      00876C                        467 00104$:
                                    468 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 299: }
      00876C 84               [ 1]  469 	pop	a
      00876D 81               [ 4]  470 	ret
                                    471 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 361: void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
                                    472 ;	-----------------------------------------
                                    473 ;	 function I2C_AcknowledgeConfig
                                    474 ;	-----------------------------------------
      00876E                        475 _I2C_AcknowledgeConfig:
      00876E 52 02            [ 2]  476 	sub	sp, #2
                                    477 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 364: assert_param(IS_I2C_ACK_OK(Ack));
      008770 6B 02            [ 1]  478 	ld	(0x02, sp), a
      008772 4A               [ 1]  479 	dec	a
      008773 26 05            [ 1]  480 	jrne	00153$
      008775 A6 01            [ 1]  481 	ld	a, #0x01
      008777 6B 01            [ 1]  482 	ld	(0x01, sp), a
      008779 C5                     483 	.byte 0xc5
      00877A                        484 00153$:
      00877A 0F 01            [ 1]  485 	clr	(0x01, sp)
      00877C                        486 00154$:
      00877C 0D 02            [ 1]  487 	tnz	(0x02, sp)
      00877E 27 16            [ 1]  488 	jreq	00110$
      008780 0D 01            [ 1]  489 	tnz	(0x01, sp)
      008782 26 12            [ 1]  490 	jrne	00110$
      008784 7B 02            [ 1]  491 	ld	a, (0x02, sp)
      008786 A1 02            [ 1]  492 	cp	a, #0x02
      008788 27 0C            [ 1]  493 	jreq	00110$
      00878A 4B 6C            [ 1]  494 	push	#0x6c
      00878C 4B 01            [ 1]  495 	push	#0x01
      00878E 5F               [ 1]  496 	clrw	x
      00878F 89               [ 2]  497 	pushw	x
      008790 AE 80 B4         [ 2]  498 	ldw	x, #(___str_0+0)
      008793 CD 82 6A         [ 4]  499 	call	_assert_failed
      008796                        500 00110$:
                                    501 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 369: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      008796 C6 52 11         [ 1]  502 	ld	a, 0x5211
                                    503 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 366: if (Ack == I2C_ACK_NONE)
      008799 0D 02            [ 1]  504 	tnz	(0x02, sp)
      00879B 26 07            [ 1]  505 	jrne	00105$
                                    506 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 369: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      00879D A4 FB            [ 1]  507 	and	a, #0xfb
      00879F C7 52 11         [ 1]  508 	ld	0x5211, a
      0087A2 20 1B            [ 2]  509 	jra	00107$
      0087A4                        510 00105$:
                                    511 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 374: I2C->CR2 |= I2C_CR2_ACK;
      0087A4 AA 04            [ 1]  512 	or	a, #0x04
      0087A6 C7 52 11         [ 1]  513 	ld	0x5211, a
                                    514 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 369: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      0087A9 C6 52 11         [ 1]  515 	ld	a, 0x5211
      0087AC 97               [ 1]  516 	ld	xl, a
                                    517 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 376: if (Ack == I2C_ACK_CURR)
      0087AD 7B 01            [ 1]  518 	ld	a, (0x01, sp)
      0087AF 27 08            [ 1]  519 	jreq	00102$
                                    520 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 379: I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
      0087B1 9F               [ 1]  521 	ld	a, xl
      0087B2 A4 F7            [ 1]  522 	and	a, #0xf7
      0087B4 C7 52 11         [ 1]  523 	ld	0x5211, a
      0087B7 20 06            [ 2]  524 	jra	00107$
      0087B9                        525 00102$:
                                    526 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 384: I2C->CR2 |= I2C_CR2_POS;
      0087B9 9F               [ 1]  527 	ld	a, xl
      0087BA AA 08            [ 1]  528 	or	a, #0x08
      0087BC C7 52 11         [ 1]  529 	ld	0x5211, a
      0087BF                        530 00107$:
                                    531 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 387: }
      0087BF 5B 02            [ 2]  532 	addw	sp, #2
      0087C1 81               [ 4]  533 	ret
                                    534 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 399: void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
                                    535 ;	-----------------------------------------
                                    536 ;	 function I2C_ITConfig
                                    537 ;	-----------------------------------------
      0087C2                        538 _I2C_ITConfig:
      0087C2 88               [ 1]  539 	push	a
                                    540 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 402: assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
      0087C3 A1 01            [ 1]  541 	cp	a, #0x01
      0087C5 27 26            [ 1]  542 	jreq	00107$
      0087C7 A1 02            [ 1]  543 	cp	a, #0x02
      0087C9 27 22            [ 1]  544 	jreq	00107$
      0087CB A1 04            [ 1]  545 	cp	a, #0x04
      0087CD 27 1E            [ 1]  546 	jreq	00107$
      0087CF A1 03            [ 1]  547 	cp	a, #0x03
      0087D1 27 1A            [ 1]  548 	jreq	00107$
      0087D3 A1 05            [ 1]  549 	cp	a, #0x05
      0087D5 27 16            [ 1]  550 	jreq	00107$
      0087D7 A1 06            [ 1]  551 	cp	a, #0x06
      0087D9 27 12            [ 1]  552 	jreq	00107$
      0087DB A1 07            [ 1]  553 	cp	a, #0x07
      0087DD 27 0E            [ 1]  554 	jreq	00107$
      0087DF 88               [ 1]  555 	push	a
      0087E0 4B 92            [ 1]  556 	push	#0x92
      0087E2 4B 01            [ 1]  557 	push	#0x01
      0087E4 5F               [ 1]  558 	clrw	x
      0087E5 89               [ 2]  559 	pushw	x
      0087E6 AE 80 B4         [ 2]  560 	ldw	x, #(___str_0+0)
      0087E9 CD 82 6A         [ 4]  561 	call	_assert_failed
      0087EC 84               [ 1]  562 	pop	a
      0087ED                        563 00107$:
                                    564 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 403: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0087ED 0D 04            [ 1]  565 	tnz	(0x04, sp)
      0087EF 27 12            [ 1]  566 	jreq	00127$
      0087F1 0D 04            [ 1]  567 	tnz	(0x04, sp)
      0087F3 26 0E            [ 1]  568 	jrne	00127$
      0087F5 88               [ 1]  569 	push	a
      0087F6 4B 93            [ 1]  570 	push	#0x93
      0087F8 4B 01            [ 1]  571 	push	#0x01
      0087FA 5F               [ 1]  572 	clrw	x
      0087FB 89               [ 2]  573 	pushw	x
      0087FC AE 80 B4         [ 2]  574 	ldw	x, #(___str_0+0)
      0087FF CD 82 6A         [ 4]  575 	call	_assert_failed
      008802 84               [ 1]  576 	pop	a
      008803                        577 00127$:
                                    578 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 408: I2C->ITR |= (uint8_t)I2C_IT;
      008803 AE 52 1A         [ 2]  579 	ldw	x, #0x521a
      008806 88               [ 1]  580 	push	a
      008807 F6               [ 1]  581 	ld	a, (x)
      008808 6B 02            [ 1]  582 	ld	(0x02, sp), a
      00880A 84               [ 1]  583 	pop	a
                                    584 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 405: if (NewState != DISABLE)
      00880B 0D 04            [ 1]  585 	tnz	(0x04, sp)
      00880D 27 07            [ 1]  586 	jreq	00102$
                                    587 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 408: I2C->ITR |= (uint8_t)I2C_IT;
      00880F 1A 01            [ 1]  588 	or	a, (0x01, sp)
      008811 C7 52 1A         [ 1]  589 	ld	0x521a, a
      008814 20 06            [ 2]  590 	jra	00104$
      008816                        591 00102$:
                                    592 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 413: I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
      008816 43               [ 1]  593 	cpl	a
      008817 14 01            [ 1]  594 	and	a, (0x01, sp)
      008819 C7 52 1A         [ 1]  595 	ld	0x521a, a
      00881C                        596 00104$:
                                    597 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 415: }
      00881C 84               [ 1]  598 	pop	a
      00881D 85               [ 2]  599 	popw	x
      00881E 84               [ 1]  600 	pop	a
      00881F FC               [ 2]  601 	jp	(x)
                                    602 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 449: uint8_t I2C_ReceiveData(void)
                                    603 ;	-----------------------------------------
                                    604 ;	 function I2C_ReceiveData
                                    605 ;	-----------------------------------------
      008820                        606 _I2C_ReceiveData:
                                    607 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 452: return ((uint8_t)I2C->DR);
      008820 C6 52 16         [ 1]  608 	ld	a, 0x5216
                                    609 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 453: }
      008823 81               [ 4]  610 	ret
                                    611 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 464: void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
                                    612 ;	-----------------------------------------
                                    613 ;	 function I2C_Send7bitAddress
                                    614 ;	-----------------------------------------
      008824                        615 _I2C_Send7bitAddress:
      008824 88               [ 1]  616 	push	a
                                    617 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 467: assert_param(IS_I2C_ADDRESS_OK(Address));
      008825 A5 01            [ 1]  618 	bcp	a, #0x01
      008827 27 0E            [ 1]  619 	jreq	00104$
      008829 88               [ 1]  620 	push	a
      00882A 4B D3            [ 1]  621 	push	#0xd3
      00882C 4B 01            [ 1]  622 	push	#0x01
      00882E 5F               [ 1]  623 	clrw	x
      00882F 89               [ 2]  624 	pushw	x
      008830 AE 80 B4         [ 2]  625 	ldw	x, #(___str_0+0)
      008833 CD 82 6A         [ 4]  626 	call	_assert_failed
      008836 84               [ 1]  627 	pop	a
      008837                        628 00104$:
                                    629 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 468: assert_param(IS_I2C_DIRECTION_OK(Direction));
      008837 0D 04            [ 1]  630 	tnz	(0x04, sp)
      008839 27 12            [ 1]  631 	jreq	00106$
      00883B 0D 04            [ 1]  632 	tnz	(0x04, sp)
      00883D 26 0E            [ 1]  633 	jrne	00106$
      00883F 88               [ 1]  634 	push	a
      008840 4B D4            [ 1]  635 	push	#0xd4
      008842 4B 01            [ 1]  636 	push	#0x01
      008844 5F               [ 1]  637 	clrw	x
      008845 89               [ 2]  638 	pushw	x
      008846 AE 80 B4         [ 2]  639 	ldw	x, #(___str_0+0)
      008849 CD 82 6A         [ 4]  640 	call	_assert_failed
      00884C 84               [ 1]  641 	pop	a
      00884D                        642 00106$:
                                    643 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 471: Address &= (uint8_t)0xFE;
      00884D A4 FE            [ 1]  644 	and	a, #0xfe
      00884F 6B 01            [ 1]  645 	ld	(0x01, sp), a
                                    646 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 474: I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
      008851 7B 04            [ 1]  647 	ld	a, (0x04, sp)
      008853 1A 01            [ 1]  648 	or	a, (0x01, sp)
      008855 C7 52 16         [ 1]  649 	ld	0x5216, a
                                    650 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 475: }
      008858 84               [ 1]  651 	pop	a
      008859 85               [ 2]  652 	popw	x
      00885A 84               [ 1]  653 	pop	a
      00885B FC               [ 2]  654 	jp	(x)
                                    655 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 484: void I2C_SendData(uint8_t Data)
                                    656 ;	-----------------------------------------
                                    657 ;	 function I2C_SendData
                                    658 ;	-----------------------------------------
      00885C                        659 _I2C_SendData:
                                    660 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 487: I2C->DR = Data;
      00885C C7 52 16         [ 1]  661 	ld	0x5216, a
                                    662 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 488: }
      00885F 81               [ 4]  663 	ret
                                    664 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 606: ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
                                    665 ;	-----------------------------------------
                                    666 ;	 function I2C_CheckEvent
                                    667 ;	-----------------------------------------
      008860                        668 _I2C_CheckEvent:
      008860 52 08            [ 2]  669 	sub	sp, #8
                                    670 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 608: __IO uint16_t lastevent = 0x00;
      008862 0F 02            [ 1]  671 	clr	(0x02, sp)
      008864 0F 01            [ 1]  672 	clr	(0x01, sp)
                                    673 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 614: assert_param(IS_I2C_EVENT_OK(I2C_Event));
      008866 1F 03            [ 2]  674 	ldw	(0x03, sp), x
      008868 A3 00 04         [ 2]  675 	cpw	x, #0x0004
      00886B 26 03            [ 1]  676 	jrne	00283$
      00886D A6 01            [ 1]  677 	ld	a, #0x01
      00886F 21                     678 	.byte 0x21
      008870                        679 00283$:
      008870 4F               [ 1]  680 	clr	a
      008871                        681 00284$:
      008871 1E 03            [ 2]  682 	ldw	x, (0x03, sp)
      008873 A3 06 82         [ 2]  683 	cpw	x, #0x0682
      008876 27 73            [ 1]  684 	jreq	00110$
      008878 1E 03            [ 2]  685 	ldw	x, (0x03, sp)
      00887A A3 02 02         [ 2]  686 	cpw	x, #0x0202
      00887D 27 6C            [ 1]  687 	jreq	00110$
      00887F 1E 03            [ 2]  688 	ldw	x, (0x03, sp)
      008881 A3 12 00         [ 2]  689 	cpw	x, #0x1200
      008884 27 65            [ 1]  690 	jreq	00110$
      008886 1E 03            [ 2]  691 	ldw	x, (0x03, sp)
      008888 A3 02 40         [ 2]  692 	cpw	x, #0x0240
      00888B 27 5E            [ 1]  693 	jreq	00110$
      00888D 1E 03            [ 2]  694 	ldw	x, (0x03, sp)
      00888F A3 03 50         [ 2]  695 	cpw	x, #0x0350
      008892 27 57            [ 1]  696 	jreq	00110$
      008894 1E 03            [ 2]  697 	ldw	x, (0x03, sp)
      008896 A3 06 84         [ 2]  698 	cpw	x, #0x0684
      008899 27 50            [ 1]  699 	jreq	00110$
      00889B 1E 03            [ 2]  700 	ldw	x, (0x03, sp)
      00889D A3 07 94         [ 2]  701 	cpw	x, #0x0794
      0088A0 27 49            [ 1]  702 	jreq	00110$
      0088A2 4D               [ 1]  703 	tnz	a
      0088A3 26 46            [ 1]  704 	jrne	00110$
      0088A5 1E 03            [ 2]  705 	ldw	x, (0x03, sp)
      0088A7 A3 00 10         [ 2]  706 	cpw	x, #0x0010
      0088AA 27 3F            [ 1]  707 	jreq	00110$
      0088AC 1E 03            [ 2]  708 	ldw	x, (0x03, sp)
      0088AE A3 03 01         [ 2]  709 	cpw	x, #0x0301
      0088B1 27 38            [ 1]  710 	jreq	00110$
      0088B3 1E 03            [ 2]  711 	ldw	x, (0x03, sp)
      0088B5 A3 07 82         [ 2]  712 	cpw	x, #0x0782
      0088B8 27 31            [ 1]  713 	jreq	00110$
      0088BA 1E 03            [ 2]  714 	ldw	x, (0x03, sp)
      0088BC A3 03 02         [ 2]  715 	cpw	x, #0x0302
      0088BF 27 2A            [ 1]  716 	jreq	00110$
      0088C1 1E 03            [ 2]  717 	ldw	x, (0x03, sp)
      0088C3 A3 03 40         [ 2]  718 	cpw	x, #0x0340
      0088C6 27 23            [ 1]  719 	jreq	00110$
      0088C8 1E 03            [ 2]  720 	ldw	x, (0x03, sp)
      0088CA A3 07 84         [ 2]  721 	cpw	x, #0x0784
      0088CD 27 1C            [ 1]  722 	jreq	00110$
      0088CF 1E 03            [ 2]  723 	ldw	x, (0x03, sp)
      0088D1 A3 07 80         [ 2]  724 	cpw	x, #0x0780
      0088D4 27 15            [ 1]  725 	jreq	00110$
      0088D6 1E 03            [ 2]  726 	ldw	x, (0x03, sp)
      0088D8 A3 03 08         [ 2]  727 	cpw	x, #0x0308
      0088DB 27 0E            [ 1]  728 	jreq	00110$
      0088DD 88               [ 1]  729 	push	a
      0088DE 4B 66            [ 1]  730 	push	#0x66
      0088E0 4B 02            [ 1]  731 	push	#0x02
      0088E2 5F               [ 1]  732 	clrw	x
      0088E3 89               [ 2]  733 	pushw	x
      0088E4 AE 80 B4         [ 2]  734 	ldw	x, #(___str_0+0)
      0088E7 CD 82 6A         [ 4]  735 	call	_assert_failed
      0088EA 84               [ 1]  736 	pop	a
      0088EB                        737 00110$:
                                    738 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 616: if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
      0088EB 4D               [ 1]  739 	tnz	a
      0088EC 27 0B            [ 1]  740 	jreq	00102$
                                    741 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 618: lastevent = I2C->SR2 & I2C_SR2_AF;
      0088EE C6 52 18         [ 1]  742 	ld	a, 0x5218
      0088F1 A4 04            [ 1]  743 	and	a, #0x04
      0088F3 5F               [ 1]  744 	clrw	x
      0088F4 97               [ 1]  745 	ld	xl, a
      0088F5 1F 01            [ 2]  746 	ldw	(0x01, sp), x
      0088F7 20 0E            [ 2]  747 	jra	00103$
      0088F9                        748 00102$:
                                    749 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 622: flag1 = I2C->SR1;
      0088F9 C6 52 17         [ 1]  750 	ld	a, 0x5217
      0088FC 97               [ 1]  751 	ld	xl, a
                                    752 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 623: flag2 = I2C->SR3;
      0088FD C6 52 19         [ 1]  753 	ld	a, 0x5219
                                    754 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 624: lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
      008900 95               [ 1]  755 	ld	xh, a
      008901 0F 06            [ 1]  756 	clr	(0x06, sp)
      008903 0F 07            [ 1]  757 	clr	(0x07, sp)
      008905 1F 01            [ 2]  758 	ldw	(0x01, sp), x
      008907                        759 00103$:
                                    760 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 627: if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
      008907 7B 02            [ 1]  761 	ld	a, (0x02, sp)
      008909 14 04            [ 1]  762 	and	a, (0x04, sp)
      00890B 97               [ 1]  763 	ld	xl, a
      00890C 7B 01            [ 1]  764 	ld	a, (0x01, sp)
      00890E 14 03            [ 1]  765 	and	a, (0x03, sp)
      008910 95               [ 1]  766 	ld	xh, a
      008911 13 03            [ 2]  767 	cpw	x, (0x03, sp)
      008913 26 03            [ 1]  768 	jrne	00105$
                                    769 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 630: status = SUCCESS;
      008915 A6 01            [ 1]  770 	ld	a, #0x01
                                    771 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 635: status = ERROR;
      008917 21                     772 	.byte 0x21
      008918                        773 00105$:
      008918 4F               [ 1]  774 	clr	a
      008919                        775 00106$:
                                    776 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 639: return status;
                                    777 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 640: }
      008919 5B 08            [ 2]  778 	addw	sp, #8
      00891B 81               [ 4]  779 	ret
                                    780 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 711: FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
                                    781 ;	-----------------------------------------
                                    782 ;	 function I2C_GetFlagStatus
                                    783 ;	-----------------------------------------
      00891C                        784 _I2C_GetFlagStatus:
      00891C 52 03            [ 2]  785 	sub	sp, #3
      00891E 1F 02            [ 2]  786 	ldw	(0x02, sp), x
                                    787 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 713: uint8_t tempreg = 0;
      008920 0F 01            [ 1]  788 	clr	(0x01, sp)
                                    789 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 718: assert_param(IS_I2C_FLAG_OK(I2C_Flag));
      008922 1E 02            [ 2]  790 	ldw	x, (0x02, sp)
      008924 A3 01 80         [ 2]  791 	cpw	x, #0x0180
      008927 27 5B            [ 1]  792 	jreq	00112$
      008929 A3 01 40         [ 2]  793 	cpw	x, #0x0140
      00892C 27 56            [ 1]  794 	jreq	00112$
      00892E A3 01 10         [ 2]  795 	cpw	x, #0x0110
      008931 27 51            [ 1]  796 	jreq	00112$
      008933 A3 01 08         [ 2]  797 	cpw	x, #0x0108
      008936 27 4C            [ 1]  798 	jreq	00112$
      008938 A3 01 04         [ 2]  799 	cpw	x, #0x0104
      00893B 27 47            [ 1]  800 	jreq	00112$
      00893D A3 01 02         [ 2]  801 	cpw	x, #0x0102
      008940 27 42            [ 1]  802 	jreq	00112$
      008942 A3 01 01         [ 2]  803 	cpw	x, #0x0101
      008945 27 3D            [ 1]  804 	jreq	00112$
      008947 A3 02 20         [ 2]  805 	cpw	x, #0x0220
      00894A 27 38            [ 1]  806 	jreq	00112$
      00894C A3 02 08         [ 2]  807 	cpw	x, #0x0208
      00894F 27 33            [ 1]  808 	jreq	00112$
      008951 A3 02 04         [ 2]  809 	cpw	x, #0x0204
      008954 27 2E            [ 1]  810 	jreq	00112$
      008956 A3 02 02         [ 2]  811 	cpw	x, #0x0202
      008959 27 29            [ 1]  812 	jreq	00112$
      00895B A3 02 01         [ 2]  813 	cpw	x, #0x0201
      00895E 27 24            [ 1]  814 	jreq	00112$
      008960 A3 03 10         [ 2]  815 	cpw	x, #0x0310
      008963 27 1F            [ 1]  816 	jreq	00112$
      008965 A3 03 04         [ 2]  817 	cpw	x, #0x0304
      008968 27 1A            [ 1]  818 	jreq	00112$
      00896A A3 03 02         [ 2]  819 	cpw	x, #0x0302
      00896D 27 15            [ 1]  820 	jreq	00112$
      00896F A3 03 01         [ 2]  821 	cpw	x, #0x0301
      008972 27 10            [ 1]  822 	jreq	00112$
      008974 89               [ 2]  823 	pushw	x
      008975 4B CE            [ 1]  824 	push	#0xce
      008977 4B 02            [ 1]  825 	push	#0x02
      008979 4B 00            [ 1]  826 	push	#0x00
      00897B 4B 00            [ 1]  827 	push	#0x00
      00897D AE 80 B4         [ 2]  828 	ldw	x, #(___str_0+0)
      008980 CD 82 6A         [ 4]  829 	call	_assert_failed
      008983 85               [ 2]  830 	popw	x
      008984                        831 00112$:
                                    832 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 721: regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
      008984 9E               [ 1]  833 	ld	a, xh
                                    834 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 723: switch (regindex)
      008985 A1 01            [ 1]  835 	cp	a, #0x01
      008987 27 0A            [ 1]  836 	jreq	00101$
      008989 A1 02            [ 1]  837 	cp	a, #0x02
      00898B 27 0D            [ 1]  838 	jreq	00102$
      00898D A1 03            [ 1]  839 	cp	a, #0x03
      00898F 27 10            [ 1]  840 	jreq	00103$
      008991 20 13            [ 2]  841 	jra	00105$
                                    842 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 726: case 0x01:
      008993                        843 00101$:
                                    844 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 727: tempreg = (uint8_t)I2C->SR1;
      008993 C6 52 17         [ 1]  845 	ld	a, 0x5217
      008996 6B 01            [ 1]  846 	ld	(0x01, sp), a
                                    847 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 728: break;
      008998 20 0C            [ 2]  848 	jra	00105$
                                    849 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 731: case 0x02:
      00899A                        850 00102$:
                                    851 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 732: tempreg = (uint8_t)I2C->SR2;
      00899A C6 52 18         [ 1]  852 	ld	a, 0x5218
      00899D 6B 01            [ 1]  853 	ld	(0x01, sp), a
                                    854 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 733: break;
      00899F 20 05            [ 2]  855 	jra	00105$
                                    856 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 736: case 0x03:
      0089A1                        857 00103$:
                                    858 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 737: tempreg = (uint8_t)I2C->SR3;
      0089A1 C6 52 19         [ 1]  859 	ld	a, 0x5219
      0089A4 6B 01            [ 1]  860 	ld	(0x01, sp), a
                                    861 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 742: }
      0089A6                        862 00105$:
                                    863 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 745: if ((tempreg & (uint8_t)I2C_Flag ) != 0)
      0089A6 7B 03            [ 1]  864 	ld	a, (0x03, sp)
      0089A8 14 01            [ 1]  865 	and	a, (0x01, sp)
      0089AA 27 03            [ 1]  866 	jreq	00107$
                                    867 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 748: bitstatus = SET;
      0089AC A6 01            [ 1]  868 	ld	a, #0x01
                                    869 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 753: bitstatus = RESET;
      0089AE 21                     870 	.byte 0x21
      0089AF                        871 00107$:
      0089AF 4F               [ 1]  872 	clr	a
      0089B0                        873 00108$:
                                    874 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 756: return bitstatus;
                                    875 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 757: }
      0089B0 5B 03            [ 2]  876 	addw	sp, #3
      0089B2 81               [ 4]  877 	ret
                                    878 	.area CODE
                                    879 	.area CONST
                                    880 	.area CONST
      0080B4                        881 ___str_0:
      0080B4 2F 77 6F 72 6B 73 70   882 	.ascii "/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Li"
             61 63 65 2F 53 6F 66
             74 77 61 72 65 2F 46
             69 72 6D 77 61 72 65
             2F 6E 65 77 5F 62 65
             67 69 6E 69 6E 67 2F
             53 54 4D 38 53 5F 53
             74 64 50 65 72 69 70
             68 5F 4C 69
      0080F0 62 2F 73 72 63 2F 73   883 	.ascii "b/src/stm8s_i2c.c"
             74 6D 38 73 5F 69 32
             63 2E 63
      008101 00                     884 	.db 0x00
                                    885 	.area CODE
                                    886 	.area INITIALIZER
                                    887 	.area CABS (ABS)
