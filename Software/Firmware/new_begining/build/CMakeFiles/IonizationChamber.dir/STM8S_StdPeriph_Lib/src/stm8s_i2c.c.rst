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
      00853F                         65 _I2C_DeInit:
                                     66 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 70: I2C->CR1 = I2C_CR1_RESET_VALUE;
      00853F 35 00 52 10      [ 1]   67 	mov	0x5210+0, #0x00
                                     68 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 71: I2C->CR2 = I2C_CR2_RESET_VALUE;
      008543 35 00 52 11      [ 1]   69 	mov	0x5211+0, #0x00
                                     70 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 72: I2C->FREQR = I2C_FREQR_RESET_VALUE;
      008547 35 00 52 12      [ 1]   71 	mov	0x5212+0, #0x00
                                     72 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 73: I2C->OARL = I2C_OARL_RESET_VALUE;
      00854B 35 00 52 13      [ 1]   73 	mov	0x5213+0, #0x00
                                     74 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 74: I2C->OARH = I2C_OARH_RESET_VALUE;
      00854F 35 00 52 14      [ 1]   75 	mov	0x5214+0, #0x00
                                     76 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 75: I2C->ITR = I2C_ITR_RESET_VALUE;
      008553 35 00 52 1A      [ 1]   77 	mov	0x521a+0, #0x00
                                     78 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 76: I2C->CCRL = I2C_CCRL_RESET_VALUE;
      008557 35 00 52 1B      [ 1]   79 	mov	0x521b+0, #0x00
                                     80 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 77: I2C->CCRH = I2C_CCRH_RESET_VALUE;
      00855B 35 00 52 1C      [ 1]   81 	mov	0x521c+0, #0x00
                                     82 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 78: I2C->TRISER = I2C_TRISER_RESET_VALUE;
      00855F 35 02 52 1D      [ 1]   83 	mov	0x521d+0, #0x02
                                     84 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 79: }
      008563 81               [ 4]   85 	ret
                                     86 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 99: void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
                                     87 ;	-----------------------------------------
                                     88 ;	 function I2C_Init
                                     89 ;	-----------------------------------------
      008564                         90 _I2C_Init:
      008564 52 07            [ 2]   91 	sub	sp, #7
                                     92 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 105: uint8_t tmpccrh = 0;
      008566 0F 05            [ 1]   93 	clr	(0x05, sp)
                                     94 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 108: assert_param(IS_I2C_ACK_OK(Ack));
      008568 0D 11            [ 1]   95 	tnz	(0x11, sp)
      00856A 27 17            [ 1]   96 	jreq	00114$
      00856C 7B 11            [ 1]   97 	ld	a, (0x11, sp)
      00856E 4A               [ 1]   98 	dec	a
      00856F 27 12            [ 1]   99 	jreq	00114$
      008571 7B 11            [ 1]  100 	ld	a, (0x11, sp)
      008573 A1 02            [ 1]  101 	cp	a, #0x02
      008575 27 0C            [ 1]  102 	jreq	00114$
      008577 4B 6C            [ 1]  103 	push	#0x6c
      008579 5F               [ 1]  104 	clrw	x
      00857A 89               [ 2]  105 	pushw	x
      00857B 4B 00            [ 1]  106 	push	#0x00
      00857D AE 80 B0         [ 2]  107 	ldw	x, #(___str_0+0)
      008580 CD 82 93         [ 4]  108 	call	_assert_failed
      008583                        109 00114$:
                                    110 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 109: assert_param(IS_I2C_ADDMODE_OK(AddMode));
      008583 0D 12            [ 1]  111 	tnz	(0x12, sp)
      008585 27 12            [ 1]  112 	jreq	00122$
      008587 7B 12            [ 1]  113 	ld	a, (0x12, sp)
      008589 A1 80            [ 1]  114 	cp	a, #0x80
      00858B 27 0C            [ 1]  115 	jreq	00122$
      00858D 4B 6D            [ 1]  116 	push	#0x6d
      00858F 5F               [ 1]  117 	clrw	x
      008590 89               [ 2]  118 	pushw	x
      008591 4B 00            [ 1]  119 	push	#0x00
      008593 AE 80 B0         [ 2]  120 	ldw	x, #(___str_0+0)
      008596 CD 82 93         [ 4]  121 	call	_assert_failed
      008599                        122 00122$:
                                    123 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 110: assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
      008599 1E 0E            [ 2]  124 	ldw	x, (0x0e, sp)
      00859B A3 03 FF         [ 2]  125 	cpw	x, #0x03ff
      00859E 23 0C            [ 2]  126 	jrule	00127$
      0085A0 4B 6E            [ 1]  127 	push	#0x6e
      0085A2 5F               [ 1]  128 	clrw	x
      0085A3 89               [ 2]  129 	pushw	x
      0085A4 4B 00            [ 1]  130 	push	#0x00
      0085A6 AE 80 B0         [ 2]  131 	ldw	x, #(___str_0+0)
      0085A9 CD 82 93         [ 4]  132 	call	_assert_failed
      0085AC                        133 00127$:
                                    134 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 111: assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
      0085AC 0D 10            [ 1]  135 	tnz	(0x10, sp)
      0085AE 27 12            [ 1]  136 	jreq	00129$
      0085B0 7B 10            [ 1]  137 	ld	a, (0x10, sp)
      0085B2 A1 40            [ 1]  138 	cp	a, #0x40
      0085B4 27 0C            [ 1]  139 	jreq	00129$
      0085B6 4B 6F            [ 1]  140 	push	#0x6f
      0085B8 5F               [ 1]  141 	clrw	x
      0085B9 89               [ 2]  142 	pushw	x
      0085BA 4B 00            [ 1]  143 	push	#0x00
      0085BC AE 80 B0         [ 2]  144 	ldw	x, #(___str_0+0)
      0085BF CD 82 93         [ 4]  145 	call	_assert_failed
      0085C2                        146 00129$:
                                    147 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 112: assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
      0085C2 7B 13            [ 1]  148 	ld	a, (0x13, sp)
      0085C4 A1 01            [ 1]  149 	cp	a, #0x01
      0085C6 25 06            [ 1]  150 	jrc	00133$
      0085C8 7B 13            [ 1]  151 	ld	a, (0x13, sp)
      0085CA A1 10            [ 1]  152 	cp	a, #0x10
      0085CC 23 0C            [ 2]  153 	jrule	00134$
      0085CE                        154 00133$:
      0085CE 4B 70            [ 1]  155 	push	#0x70
      0085D0 5F               [ 1]  156 	clrw	x
      0085D1 89               [ 2]  157 	pushw	x
      0085D2 4B 00            [ 1]  158 	push	#0x00
      0085D4 AE 80 B0         [ 2]  159 	ldw	x, #(___str_0+0)
      0085D7 CD 82 93         [ 4]  160 	call	_assert_failed
      0085DA                        161 00134$:
                                    162 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 113: assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
      0085DA 1E 0C            [ 2]  163 	ldw	x, (0x0c, sp)
      0085DC A3 00 01         [ 2]  164 	cpw	x, #0x0001
      0085DF 7B 0B            [ 1]  165 	ld	a, (0x0b, sp)
      0085E1 A2 00            [ 1]  166 	sbc	a, #0x00
      0085E3 7B 0A            [ 1]  167 	ld	a, (0x0a, sp)
      0085E5 A2 00            [ 1]  168 	sbc	a, #0x00
      0085E7 25 0E            [ 1]  169 	jrc	00138$
      0085E9 AE 1A 80         [ 2]  170 	ldw	x, #0x1a80
      0085EC 13 0C            [ 2]  171 	cpw	x, (0x0c, sp)
      0085EE A6 06            [ 1]  172 	ld	a, #0x06
      0085F0 12 0B            [ 1]  173 	sbc	a, (0x0b, sp)
      0085F2 4F               [ 1]  174 	clr	a
      0085F3 12 0A            [ 1]  175 	sbc	a, (0x0a, sp)
      0085F5 24 0C            [ 1]  176 	jrnc	00139$
      0085F7                        177 00138$:
      0085F7 4B 71            [ 1]  178 	push	#0x71
      0085F9 5F               [ 1]  179 	clrw	x
      0085FA 89               [ 2]  180 	pushw	x
      0085FB 4B 00            [ 1]  181 	push	#0x00
      0085FD AE 80 B0         [ 2]  182 	ldw	x, #(___str_0+0)
      008600 CD 82 93         [ 4]  183 	call	_assert_failed
      008603                        184 00139$:
                                    185 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 118: I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
      008603 C6 52 12         [ 1]  186 	ld	a, 0x5212
      008606 A4 C0            [ 1]  187 	and	a, #0xc0
      008608 C7 52 12         [ 1]  188 	ld	0x5212, a
                                    189 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 120: I2C->FREQR |= InputClockFrequencyMHz;
      00860B C6 52 12         [ 1]  190 	ld	a, 0x5212
      00860E 1A 13            [ 1]  191 	or	a, (0x13, sp)
      008610 C7 52 12         [ 1]  192 	ld	0x5212, a
                                    193 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 124: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      008613 72 11 52 10      [ 1]  194 	bres	0x5210, #0
                                    195 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 127: I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
      008617 C6 52 1C         [ 1]  196 	ld	a, 0x521c
      00861A A4 30            [ 1]  197 	and	a, #0x30
      00861C C7 52 1C         [ 1]  198 	ld	0x521c, a
                                    199 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 128: I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
      00861F C6 52 1B         [ 1]  200 	ld	a, 0x521b
      008622 35 00 52 1B      [ 1]  201 	mov	0x521b+0, #0x00
                                    202 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 139: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
      008626 7B 13            [ 1]  203 	ld	a, (0x13, sp)
      008628 5F               [ 1]  204 	clrw	x
      008629 0F 01            [ 1]  205 	clr	(0x01, sp)
      00862B 88               [ 1]  206 	push	a
      00862C 89               [ 2]  207 	pushw	x
      00862D 4F               [ 1]  208 	clr	a
      00862E 88               [ 1]  209 	push	a
      00862F 4B 40            [ 1]  210 	push	#0x40
      008631 4B 42            [ 1]  211 	push	#0x42
      008633 4B 0F            [ 1]  212 	push	#0x0f
      008635 4B 00            [ 1]  213 	push	#0x00
      008637 CD 98 5B         [ 4]  214 	call	__mullong
      00863A 5B 08            [ 2]  215 	addw	sp, #8
      00863C 1F 03            [ 2]  216 	ldw	(0x03, sp), x
      00863E 17 01            [ 2]  217 	ldw	(0x01, sp), y
                                    218 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 131: if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
      008640 AE 86 A0         [ 2]  219 	ldw	x, #0x86a0
      008643 13 0C            [ 2]  220 	cpw	x, (0x0c, sp)
      008645 A6 01            [ 1]  221 	ld	a, #0x01
      008647 12 0B            [ 1]  222 	sbc	a, (0x0b, sp)
      008649 4F               [ 1]  223 	clr	a
      00864A 12 0A            [ 1]  224 	sbc	a, (0x0a, sp)
      00864C 24 76            [ 1]  225 	jrnc	00109$
                                    226 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 134: tmpccrh = I2C_CCRH_FS;
      00864E A6 80            [ 1]  227 	ld	a, #0x80
      008650 6B 05            [ 1]  228 	ld	(0x05, sp), a
                                    229 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 136: if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
      008652 0D 10            [ 1]  230 	tnz	(0x10, sp)
      008654 26 21            [ 1]  231 	jrne	00102$
                                    232 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 139: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
      008656 1E 0C            [ 2]  233 	ldw	x, (0x0c, sp)
      008658 89               [ 2]  234 	pushw	x
      008659 1E 0C            [ 2]  235 	ldw	x, (0x0c, sp)
      00865B 89               [ 2]  236 	pushw	x
      00865C 4B 03            [ 1]  237 	push	#0x03
      00865E 5F               [ 1]  238 	clrw	x
      00865F 89               [ 2]  239 	pushw	x
      008660 4B 00            [ 1]  240 	push	#0x00
      008662 CD 98 5B         [ 4]  241 	call	__mullong
      008665 5B 08            [ 2]  242 	addw	sp, #8
      008667 89               [ 2]  243 	pushw	x
      008668 90 89            [ 2]  244 	pushw	y
      00866A 1E 07            [ 2]  245 	ldw	x, (0x07, sp)
      00866C 89               [ 2]  246 	pushw	x
      00866D 1E 07            [ 2]  247 	ldw	x, (0x07, sp)
      00866F 89               [ 2]  248 	pushw	x
      008670 CD 98 00         [ 4]  249 	call	__divulong
      008673 5B 08            [ 2]  250 	addw	sp, #8
      008675 20 26            [ 2]  251 	jra	00103$
      008677                        252 00102$:
                                    253 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 144: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
      008677 1E 0C            [ 2]  254 	ldw	x, (0x0c, sp)
      008679 89               [ 2]  255 	pushw	x
      00867A 1E 0C            [ 2]  256 	ldw	x, (0x0c, sp)
      00867C 89               [ 2]  257 	pushw	x
      00867D 4B 19            [ 1]  258 	push	#0x19
      00867F 5F               [ 1]  259 	clrw	x
      008680 89               [ 2]  260 	pushw	x
      008681 4B 00            [ 1]  261 	push	#0x00
      008683 CD 98 5B         [ 4]  262 	call	__mullong
      008686 5B 08            [ 2]  263 	addw	sp, #8
      008688 9F               [ 1]  264 	ld	a, xl
      008689 88               [ 1]  265 	push	a
      00868A 9E               [ 1]  266 	ld	a, xh
      00868B 88               [ 1]  267 	push	a
      00868C 90 89            [ 2]  268 	pushw	y
      00868E 1E 07            [ 2]  269 	ldw	x, (0x07, sp)
      008690 89               [ 2]  270 	pushw	x
      008691 1E 07            [ 2]  271 	ldw	x, (0x07, sp)
      008693 89               [ 2]  272 	pushw	x
      008694 CD 98 00         [ 4]  273 	call	__divulong
      008697 5B 08            [ 2]  274 	addw	sp, #8
                                    275 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 146: tmpccrh |= I2C_CCRH_DUTY;
      008699 A6 C0            [ 1]  276 	ld	a, #0xc0
      00869B 6B 05            [ 1]  277 	ld	(0x05, sp), a
      00869D                        278 00103$:
                                    279 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 150: if (result < (uint16_t)0x01)
      00869D A3 00 01         [ 2]  280 	cpw	x, #0x0001
      0086A0 24 02            [ 1]  281 	jrnc	00105$
                                    282 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 153: result = (uint16_t)0x0001;
      0086A2 5F               [ 1]  283 	clrw	x
      0086A3 5C               [ 1]  284 	incw	x
      0086A4                        285 00105$:
                                    286 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 159: tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
      0086A4 7B 13            [ 1]  287 	ld	a, (0x13, sp)
      0086A6 6B 07            [ 1]  288 	ld	(0x07, sp), a
      0086A8 0F 06            [ 1]  289 	clr	(0x06, sp)
      0086AA 89               [ 2]  290 	pushw	x
      0086AB 1E 08            [ 2]  291 	ldw	x, (0x08, sp)
      0086AD 58               [ 2]  292 	sllw	x
      0086AE 72 FB 08         [ 2]  293 	addw	x, (0x08, sp)
      0086B1 51               [ 1]  294 	exgw	x, y
      0086B2 4B 0A            [ 1]  295 	push	#0x0a
      0086B4 4B 00            [ 1]  296 	push	#0x00
      0086B6 93               [ 1]  297 	ldw	x, y
      0086B7 CD 98 D7         [ 4]  298 	call	__divsint
      0086BA 90 93            [ 1]  299 	ldw	y, x
      0086BC 9F               [ 1]  300 	ld	a, xl
      0086BD 85               [ 2]  301 	popw	x
      0086BE 4C               [ 1]  302 	inc	a
                                    303 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 160: I2C->TRISER = (uint8_t)tmpval;
      0086BF C7 52 1D         [ 1]  304 	ld	0x521d, a
      0086C2 20 23            [ 2]  305 	jra	00110$
      0086C4                        306 00109$:
                                    307 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 167: result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
      0086C4 1E 0C            [ 2]  308 	ldw	x, (0x0c, sp)
      0086C6 16 0A            [ 2]  309 	ldw	y, (0x0a, sp)
      0086C8 58               [ 2]  310 	sllw	x
      0086C9 90 59            [ 2]  311 	rlcw	y
      0086CB 89               [ 2]  312 	pushw	x
      0086CC 90 89            [ 2]  313 	pushw	y
      0086CE 1E 07            [ 2]  314 	ldw	x, (0x07, sp)
      0086D0 89               [ 2]  315 	pushw	x
      0086D1 1E 07            [ 2]  316 	ldw	x, (0x07, sp)
      0086D3 89               [ 2]  317 	pushw	x
      0086D4 CD 98 00         [ 4]  318 	call	__divulong
      0086D7 5B 08            [ 2]  319 	addw	sp, #8
                                    320 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 170: if (result < (uint16_t)0x0004)
      0086D9 A3 00 04         [ 2]  321 	cpw	x, #0x0004
      0086DC 24 03            [ 1]  322 	jrnc	00107$
                                    323 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 173: result = (uint16_t)0x0004;
      0086DE AE 00 04         [ 2]  324 	ldw	x, #0x0004
      0086E1                        325 00107$:
                                    326 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 179: I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
      0086E1 7B 13            [ 1]  327 	ld	a, (0x13, sp)
      0086E3 4C               [ 1]  328 	inc	a
      0086E4 C7 52 1D         [ 1]  329 	ld	0x521d, a
      0086E7                        330 00110$:
                                    331 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 184: I2C->CCRL = (uint8_t)result;
      0086E7 9F               [ 1]  332 	ld	a, xl
      0086E8 C7 52 1B         [ 1]  333 	ld	0x521b, a
                                    334 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 185: I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
      0086EB 9E               [ 1]  335 	ld	a, xh
      0086EC A4 0F            [ 1]  336 	and	a, #0x0f
      0086EE 1A 05            [ 1]  337 	or	a, (0x05, sp)
      0086F0 C7 52 1C         [ 1]  338 	ld	0x521c, a
                                    339 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 188: I2C->CR1 |= I2C_CR1_PE;
      0086F3 72 10 52 10      [ 1]  340 	bset	0x5210, #0
                                    341 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 191: I2C_AcknowledgeConfig(Ack);
      0086F7 7B 11            [ 1]  342 	ld	a, (0x11, sp)
      0086F9 CD 87 9A         [ 4]  343 	call	_I2C_AcknowledgeConfig
                                    344 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 194: I2C->OARL = (uint8_t)(OwnAddress);
      0086FC 7B 0F            [ 1]  345 	ld	a, (0x0f, sp)
      0086FE C7 52 13         [ 1]  346 	ld	0x5213, a
                                    347 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 195: I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
      008701 7B 12            [ 1]  348 	ld	a, (0x12, sp)
      008703 AA 40            [ 1]  349 	or	a, #0x40
      008705 6B 07            [ 1]  350 	ld	(0x07, sp), a
                                    351 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 196: (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
      008707 4F               [ 1]  352 	clr	a
      008708 97               [ 1]  353 	ld	xl, a
      008709 7B 0E            [ 1]  354 	ld	a, (0x0e, sp)
      00870B A4 03            [ 1]  355 	and	a, #0x03
      00870D 95               [ 1]  356 	ld	xh, a
      00870E A6 80            [ 1]  357 	ld	a, #0x80
      008710 62               [ 2]  358 	div	x, a
      008711 9F               [ 1]  359 	ld	a, xl
      008712 1A 07            [ 1]  360 	or	a, (0x07, sp)
      008714 C7 52 14         [ 1]  361 	ld	0x5214, a
                                    362 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 197: }
      008717 1E 08            [ 2]  363 	ldw	x, (8, sp)
      008719 5B 13            [ 2]  364 	addw	sp, #19
      00871B FC               [ 2]  365 	jp	(x)
                                    366 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 207: void I2C_Cmd(FunctionalState NewState)
                                    367 ;	-----------------------------------------
                                    368 ;	 function I2C_Cmd
                                    369 ;	-----------------------------------------
      00871C                        370 _I2C_Cmd:
      00871C 88               [ 1]  371 	push	a
                                    372 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 210: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00871D 6B 01            [ 1]  373 	ld	(0x01, sp), a
      00871F 27 10            [ 1]  374 	jreq	00107$
      008721 0D 01            [ 1]  375 	tnz	(0x01, sp)
      008723 26 0C            [ 1]  376 	jrne	00107$
      008725 4B D2            [ 1]  377 	push	#0xd2
      008727 5F               [ 1]  378 	clrw	x
      008728 89               [ 2]  379 	pushw	x
      008729 4B 00            [ 1]  380 	push	#0x00
      00872B AE 80 B0         [ 2]  381 	ldw	x, #(___str_0+0)
      00872E CD 82 93         [ 4]  382 	call	_assert_failed
      008731                        383 00107$:
                                    384 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 215: I2C->CR1 |= I2C_CR1_PE;
      008731 C6 52 10         [ 1]  385 	ld	a, 0x5210
                                    386 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 212: if (NewState != DISABLE)
      008734 0D 01            [ 1]  387 	tnz	(0x01, sp)
      008736 27 07            [ 1]  388 	jreq	00102$
                                    389 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 215: I2C->CR1 |= I2C_CR1_PE;
      008738 AA 01            [ 1]  390 	or	a, #0x01
      00873A C7 52 10         [ 1]  391 	ld	0x5210, a
      00873D 20 05            [ 2]  392 	jra	00104$
      00873F                        393 00102$:
                                    394 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 220: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      00873F A4 FE            [ 1]  395 	and	a, #0xfe
      008741 C7 52 10         [ 1]  396 	ld	0x5210, a
      008744                        397 00104$:
                                    398 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 222: }
      008744 84               [ 1]  399 	pop	a
      008745 81               [ 4]  400 	ret
                                    401 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 259: void I2C_GenerateSTART(FunctionalState NewState)
                                    402 ;	-----------------------------------------
                                    403 ;	 function I2C_GenerateSTART
                                    404 ;	-----------------------------------------
      008746                        405 _I2C_GenerateSTART:
      008746 88               [ 1]  406 	push	a
                                    407 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 262: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008747 6B 01            [ 1]  408 	ld	(0x01, sp), a
      008749 27 10            [ 1]  409 	jreq	00107$
      00874B 0D 01            [ 1]  410 	tnz	(0x01, sp)
      00874D 26 0C            [ 1]  411 	jrne	00107$
      00874F 4B 06            [ 1]  412 	push	#0x06
      008751 4B 01            [ 1]  413 	push	#0x01
      008753 5F               [ 1]  414 	clrw	x
      008754 89               [ 2]  415 	pushw	x
      008755 AE 80 B0         [ 2]  416 	ldw	x, #(___str_0+0)
      008758 CD 82 93         [ 4]  417 	call	_assert_failed
      00875B                        418 00107$:
                                    419 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 267: I2C->CR2 |= I2C_CR2_START;
      00875B C6 52 11         [ 1]  420 	ld	a, 0x5211
                                    421 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 264: if (NewState != DISABLE)
      00875E 0D 01            [ 1]  422 	tnz	(0x01, sp)
      008760 27 07            [ 1]  423 	jreq	00102$
                                    424 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 267: I2C->CR2 |= I2C_CR2_START;
      008762 AA 01            [ 1]  425 	or	a, #0x01
      008764 C7 52 11         [ 1]  426 	ld	0x5211, a
      008767 20 05            [ 2]  427 	jra	00104$
      008769                        428 00102$:
                                    429 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 272: I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
      008769 A4 FE            [ 1]  430 	and	a, #0xfe
      00876B C7 52 11         [ 1]  431 	ld	0x5211, a
      00876E                        432 00104$:
                                    433 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 274: }
      00876E 84               [ 1]  434 	pop	a
      00876F 81               [ 4]  435 	ret
                                    436 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 284: void I2C_GenerateSTOP(FunctionalState NewState)
                                    437 ;	-----------------------------------------
                                    438 ;	 function I2C_GenerateSTOP
                                    439 ;	-----------------------------------------
      008770                        440 _I2C_GenerateSTOP:
      008770 88               [ 1]  441 	push	a
                                    442 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 287: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008771 6B 01            [ 1]  443 	ld	(0x01, sp), a
      008773 27 10            [ 1]  444 	jreq	00107$
      008775 0D 01            [ 1]  445 	tnz	(0x01, sp)
      008777 26 0C            [ 1]  446 	jrne	00107$
      008779 4B 1F            [ 1]  447 	push	#0x1f
      00877B 4B 01            [ 1]  448 	push	#0x01
      00877D 5F               [ 1]  449 	clrw	x
      00877E 89               [ 2]  450 	pushw	x
      00877F AE 80 B0         [ 2]  451 	ldw	x, #(___str_0+0)
      008782 CD 82 93         [ 4]  452 	call	_assert_failed
      008785                        453 00107$:
                                    454 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 292: I2C->CR2 |= I2C_CR2_STOP;
      008785 C6 52 11         [ 1]  455 	ld	a, 0x5211
                                    456 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 289: if (NewState != DISABLE)
      008788 0D 01            [ 1]  457 	tnz	(0x01, sp)
      00878A 27 07            [ 1]  458 	jreq	00102$
                                    459 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 292: I2C->CR2 |= I2C_CR2_STOP;
      00878C AA 02            [ 1]  460 	or	a, #0x02
      00878E C7 52 11         [ 1]  461 	ld	0x5211, a
      008791 20 05            [ 2]  462 	jra	00104$
      008793                        463 00102$:
                                    464 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 297: I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
      008793 A4 FD            [ 1]  465 	and	a, #0xfd
      008795 C7 52 11         [ 1]  466 	ld	0x5211, a
      008798                        467 00104$:
                                    468 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 299: }
      008798 84               [ 1]  469 	pop	a
      008799 81               [ 4]  470 	ret
                                    471 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 361: void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
                                    472 ;	-----------------------------------------
                                    473 ;	 function I2C_AcknowledgeConfig
                                    474 ;	-----------------------------------------
      00879A                        475 _I2C_AcknowledgeConfig:
      00879A 52 02            [ 2]  476 	sub	sp, #2
                                    477 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 364: assert_param(IS_I2C_ACK_OK(Ack));
      00879C 6B 02            [ 1]  478 	ld	(0x02, sp), a
      00879E 4A               [ 1]  479 	dec	a
      00879F 26 05            [ 1]  480 	jrne	00153$
      0087A1 A6 01            [ 1]  481 	ld	a, #0x01
      0087A3 6B 01            [ 1]  482 	ld	(0x01, sp), a
      0087A5 C5                     483 	.byte 0xc5
      0087A6                        484 00153$:
      0087A6 0F 01            [ 1]  485 	clr	(0x01, sp)
      0087A8                        486 00154$:
      0087A8 0D 02            [ 1]  487 	tnz	(0x02, sp)
      0087AA 27 16            [ 1]  488 	jreq	00110$
      0087AC 0D 01            [ 1]  489 	tnz	(0x01, sp)
      0087AE 26 12            [ 1]  490 	jrne	00110$
      0087B0 7B 02            [ 1]  491 	ld	a, (0x02, sp)
      0087B2 A1 02            [ 1]  492 	cp	a, #0x02
      0087B4 27 0C            [ 1]  493 	jreq	00110$
      0087B6 4B 6C            [ 1]  494 	push	#0x6c
      0087B8 4B 01            [ 1]  495 	push	#0x01
      0087BA 5F               [ 1]  496 	clrw	x
      0087BB 89               [ 2]  497 	pushw	x
      0087BC AE 80 B0         [ 2]  498 	ldw	x, #(___str_0+0)
      0087BF CD 82 93         [ 4]  499 	call	_assert_failed
      0087C2                        500 00110$:
                                    501 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 369: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      0087C2 C6 52 11         [ 1]  502 	ld	a, 0x5211
                                    503 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 366: if (Ack == I2C_ACK_NONE)
      0087C5 0D 02            [ 1]  504 	tnz	(0x02, sp)
      0087C7 26 07            [ 1]  505 	jrne	00105$
                                    506 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 369: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      0087C9 A4 FB            [ 1]  507 	and	a, #0xfb
      0087CB C7 52 11         [ 1]  508 	ld	0x5211, a
      0087CE 20 1B            [ 2]  509 	jra	00107$
      0087D0                        510 00105$:
                                    511 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 374: I2C->CR2 |= I2C_CR2_ACK;
      0087D0 AA 04            [ 1]  512 	or	a, #0x04
      0087D2 C7 52 11         [ 1]  513 	ld	0x5211, a
                                    514 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 369: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      0087D5 C6 52 11         [ 1]  515 	ld	a, 0x5211
      0087D8 97               [ 1]  516 	ld	xl, a
                                    517 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 376: if (Ack == I2C_ACK_CURR)
      0087D9 7B 01            [ 1]  518 	ld	a, (0x01, sp)
      0087DB 27 08            [ 1]  519 	jreq	00102$
                                    520 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 379: I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
      0087DD 9F               [ 1]  521 	ld	a, xl
      0087DE A4 F7            [ 1]  522 	and	a, #0xf7
      0087E0 C7 52 11         [ 1]  523 	ld	0x5211, a
      0087E3 20 06            [ 2]  524 	jra	00107$
      0087E5                        525 00102$:
                                    526 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 384: I2C->CR2 |= I2C_CR2_POS;
      0087E5 9F               [ 1]  527 	ld	a, xl
      0087E6 AA 08            [ 1]  528 	or	a, #0x08
      0087E8 C7 52 11         [ 1]  529 	ld	0x5211, a
      0087EB                        530 00107$:
                                    531 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 387: }
      0087EB 5B 02            [ 2]  532 	addw	sp, #2
      0087ED 81               [ 4]  533 	ret
                                    534 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 399: void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
                                    535 ;	-----------------------------------------
                                    536 ;	 function I2C_ITConfig
                                    537 ;	-----------------------------------------
      0087EE                        538 _I2C_ITConfig:
      0087EE 88               [ 1]  539 	push	a
                                    540 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 402: assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
      0087EF A1 01            [ 1]  541 	cp	a, #0x01
      0087F1 27 26            [ 1]  542 	jreq	00107$
      0087F3 A1 02            [ 1]  543 	cp	a, #0x02
      0087F5 27 22            [ 1]  544 	jreq	00107$
      0087F7 A1 04            [ 1]  545 	cp	a, #0x04
      0087F9 27 1E            [ 1]  546 	jreq	00107$
      0087FB A1 03            [ 1]  547 	cp	a, #0x03
      0087FD 27 1A            [ 1]  548 	jreq	00107$
      0087FF A1 05            [ 1]  549 	cp	a, #0x05
      008801 27 16            [ 1]  550 	jreq	00107$
      008803 A1 06            [ 1]  551 	cp	a, #0x06
      008805 27 12            [ 1]  552 	jreq	00107$
      008807 A1 07            [ 1]  553 	cp	a, #0x07
      008809 27 0E            [ 1]  554 	jreq	00107$
      00880B 88               [ 1]  555 	push	a
      00880C 4B 92            [ 1]  556 	push	#0x92
      00880E 4B 01            [ 1]  557 	push	#0x01
      008810 5F               [ 1]  558 	clrw	x
      008811 89               [ 2]  559 	pushw	x
      008812 AE 80 B0         [ 2]  560 	ldw	x, #(___str_0+0)
      008815 CD 82 93         [ 4]  561 	call	_assert_failed
      008818 84               [ 1]  562 	pop	a
      008819                        563 00107$:
                                    564 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 403: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008819 0D 04            [ 1]  565 	tnz	(0x04, sp)
      00881B 27 12            [ 1]  566 	jreq	00127$
      00881D 0D 04            [ 1]  567 	tnz	(0x04, sp)
      00881F 26 0E            [ 1]  568 	jrne	00127$
      008821 88               [ 1]  569 	push	a
      008822 4B 93            [ 1]  570 	push	#0x93
      008824 4B 01            [ 1]  571 	push	#0x01
      008826 5F               [ 1]  572 	clrw	x
      008827 89               [ 2]  573 	pushw	x
      008828 AE 80 B0         [ 2]  574 	ldw	x, #(___str_0+0)
      00882B CD 82 93         [ 4]  575 	call	_assert_failed
      00882E 84               [ 1]  576 	pop	a
      00882F                        577 00127$:
                                    578 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 408: I2C->ITR |= (uint8_t)I2C_IT;
      00882F AE 52 1A         [ 2]  579 	ldw	x, #0x521a
      008832 88               [ 1]  580 	push	a
      008833 F6               [ 1]  581 	ld	a, (x)
      008834 6B 02            [ 1]  582 	ld	(0x02, sp), a
      008836 84               [ 1]  583 	pop	a
                                    584 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 405: if (NewState != DISABLE)
      008837 0D 04            [ 1]  585 	tnz	(0x04, sp)
      008839 27 07            [ 1]  586 	jreq	00102$
                                    587 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 408: I2C->ITR |= (uint8_t)I2C_IT;
      00883B 1A 01            [ 1]  588 	or	a, (0x01, sp)
      00883D C7 52 1A         [ 1]  589 	ld	0x521a, a
      008840 20 06            [ 2]  590 	jra	00104$
      008842                        591 00102$:
                                    592 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 413: I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
      008842 43               [ 1]  593 	cpl	a
      008843 14 01            [ 1]  594 	and	a, (0x01, sp)
      008845 C7 52 1A         [ 1]  595 	ld	0x521a, a
      008848                        596 00104$:
                                    597 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 415: }
      008848 84               [ 1]  598 	pop	a
      008849 85               [ 2]  599 	popw	x
      00884A 84               [ 1]  600 	pop	a
      00884B FC               [ 2]  601 	jp	(x)
                                    602 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 449: uint8_t I2C_ReceiveData(void)
                                    603 ;	-----------------------------------------
                                    604 ;	 function I2C_ReceiveData
                                    605 ;	-----------------------------------------
      00884C                        606 _I2C_ReceiveData:
                                    607 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 452: return ((uint8_t)I2C->DR);
      00884C C6 52 16         [ 1]  608 	ld	a, 0x5216
                                    609 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 453: }
      00884F 81               [ 4]  610 	ret
                                    611 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 464: void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
                                    612 ;	-----------------------------------------
                                    613 ;	 function I2C_Send7bitAddress
                                    614 ;	-----------------------------------------
      008850                        615 _I2C_Send7bitAddress:
      008850 88               [ 1]  616 	push	a
                                    617 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 467: assert_param(IS_I2C_ADDRESS_OK(Address));
      008851 A5 01            [ 1]  618 	bcp	a, #0x01
      008853 27 0E            [ 1]  619 	jreq	00104$
      008855 88               [ 1]  620 	push	a
      008856 4B D3            [ 1]  621 	push	#0xd3
      008858 4B 01            [ 1]  622 	push	#0x01
      00885A 5F               [ 1]  623 	clrw	x
      00885B 89               [ 2]  624 	pushw	x
      00885C AE 80 B0         [ 2]  625 	ldw	x, #(___str_0+0)
      00885F CD 82 93         [ 4]  626 	call	_assert_failed
      008862 84               [ 1]  627 	pop	a
      008863                        628 00104$:
                                    629 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 468: assert_param(IS_I2C_DIRECTION_OK(Direction));
      008863 0D 04            [ 1]  630 	tnz	(0x04, sp)
      008865 27 12            [ 1]  631 	jreq	00106$
      008867 0D 04            [ 1]  632 	tnz	(0x04, sp)
      008869 26 0E            [ 1]  633 	jrne	00106$
      00886B 88               [ 1]  634 	push	a
      00886C 4B D4            [ 1]  635 	push	#0xd4
      00886E 4B 01            [ 1]  636 	push	#0x01
      008870 5F               [ 1]  637 	clrw	x
      008871 89               [ 2]  638 	pushw	x
      008872 AE 80 B0         [ 2]  639 	ldw	x, #(___str_0+0)
      008875 CD 82 93         [ 4]  640 	call	_assert_failed
      008878 84               [ 1]  641 	pop	a
      008879                        642 00106$:
                                    643 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 471: Address &= (uint8_t)0xFE;
      008879 A4 FE            [ 1]  644 	and	a, #0xfe
      00887B 6B 01            [ 1]  645 	ld	(0x01, sp), a
                                    646 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 474: I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
      00887D 7B 04            [ 1]  647 	ld	a, (0x04, sp)
      00887F 1A 01            [ 1]  648 	or	a, (0x01, sp)
      008881 C7 52 16         [ 1]  649 	ld	0x5216, a
                                    650 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 475: }
      008884 84               [ 1]  651 	pop	a
      008885 85               [ 2]  652 	popw	x
      008886 84               [ 1]  653 	pop	a
      008887 FC               [ 2]  654 	jp	(x)
                                    655 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 484: void I2C_SendData(uint8_t Data)
                                    656 ;	-----------------------------------------
                                    657 ;	 function I2C_SendData
                                    658 ;	-----------------------------------------
      008888                        659 _I2C_SendData:
                                    660 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 487: I2C->DR = Data;
      008888 C7 52 16         [ 1]  661 	ld	0x5216, a
                                    662 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 488: }
      00888B 81               [ 4]  663 	ret
                                    664 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 606: ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
                                    665 ;	-----------------------------------------
                                    666 ;	 function I2C_CheckEvent
                                    667 ;	-----------------------------------------
      00888C                        668 _I2C_CheckEvent:
      00888C 52 08            [ 2]  669 	sub	sp, #8
                                    670 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 608: __IO uint16_t lastevent = 0x00;
      00888E 0F 02            [ 1]  671 	clr	(0x02, sp)
      008890 0F 01            [ 1]  672 	clr	(0x01, sp)
                                    673 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 614: assert_param(IS_I2C_EVENT_OK(I2C_Event));
      008892 1F 03            [ 2]  674 	ldw	(0x03, sp), x
      008894 A3 00 04         [ 2]  675 	cpw	x, #0x0004
      008897 26 03            [ 1]  676 	jrne	00283$
      008899 A6 01            [ 1]  677 	ld	a, #0x01
      00889B 21                     678 	.byte 0x21
      00889C                        679 00283$:
      00889C 4F               [ 1]  680 	clr	a
      00889D                        681 00284$:
      00889D 1E 03            [ 2]  682 	ldw	x, (0x03, sp)
      00889F A3 06 82         [ 2]  683 	cpw	x, #0x0682
      0088A2 27 73            [ 1]  684 	jreq	00110$
      0088A4 1E 03            [ 2]  685 	ldw	x, (0x03, sp)
      0088A6 A3 02 02         [ 2]  686 	cpw	x, #0x0202
      0088A9 27 6C            [ 1]  687 	jreq	00110$
      0088AB 1E 03            [ 2]  688 	ldw	x, (0x03, sp)
      0088AD A3 12 00         [ 2]  689 	cpw	x, #0x1200
      0088B0 27 65            [ 1]  690 	jreq	00110$
      0088B2 1E 03            [ 2]  691 	ldw	x, (0x03, sp)
      0088B4 A3 02 40         [ 2]  692 	cpw	x, #0x0240
      0088B7 27 5E            [ 1]  693 	jreq	00110$
      0088B9 1E 03            [ 2]  694 	ldw	x, (0x03, sp)
      0088BB A3 03 50         [ 2]  695 	cpw	x, #0x0350
      0088BE 27 57            [ 1]  696 	jreq	00110$
      0088C0 1E 03            [ 2]  697 	ldw	x, (0x03, sp)
      0088C2 A3 06 84         [ 2]  698 	cpw	x, #0x0684
      0088C5 27 50            [ 1]  699 	jreq	00110$
      0088C7 1E 03            [ 2]  700 	ldw	x, (0x03, sp)
      0088C9 A3 07 94         [ 2]  701 	cpw	x, #0x0794
      0088CC 27 49            [ 1]  702 	jreq	00110$
      0088CE 4D               [ 1]  703 	tnz	a
      0088CF 26 46            [ 1]  704 	jrne	00110$
      0088D1 1E 03            [ 2]  705 	ldw	x, (0x03, sp)
      0088D3 A3 00 10         [ 2]  706 	cpw	x, #0x0010
      0088D6 27 3F            [ 1]  707 	jreq	00110$
      0088D8 1E 03            [ 2]  708 	ldw	x, (0x03, sp)
      0088DA A3 03 01         [ 2]  709 	cpw	x, #0x0301
      0088DD 27 38            [ 1]  710 	jreq	00110$
      0088DF 1E 03            [ 2]  711 	ldw	x, (0x03, sp)
      0088E1 A3 07 82         [ 2]  712 	cpw	x, #0x0782
      0088E4 27 31            [ 1]  713 	jreq	00110$
      0088E6 1E 03            [ 2]  714 	ldw	x, (0x03, sp)
      0088E8 A3 03 02         [ 2]  715 	cpw	x, #0x0302
      0088EB 27 2A            [ 1]  716 	jreq	00110$
      0088ED 1E 03            [ 2]  717 	ldw	x, (0x03, sp)
      0088EF A3 03 40         [ 2]  718 	cpw	x, #0x0340
      0088F2 27 23            [ 1]  719 	jreq	00110$
      0088F4 1E 03            [ 2]  720 	ldw	x, (0x03, sp)
      0088F6 A3 07 84         [ 2]  721 	cpw	x, #0x0784
      0088F9 27 1C            [ 1]  722 	jreq	00110$
      0088FB 1E 03            [ 2]  723 	ldw	x, (0x03, sp)
      0088FD A3 07 80         [ 2]  724 	cpw	x, #0x0780
      008900 27 15            [ 1]  725 	jreq	00110$
      008902 1E 03            [ 2]  726 	ldw	x, (0x03, sp)
      008904 A3 03 08         [ 2]  727 	cpw	x, #0x0308
      008907 27 0E            [ 1]  728 	jreq	00110$
      008909 88               [ 1]  729 	push	a
      00890A 4B 66            [ 1]  730 	push	#0x66
      00890C 4B 02            [ 1]  731 	push	#0x02
      00890E 5F               [ 1]  732 	clrw	x
      00890F 89               [ 2]  733 	pushw	x
      008910 AE 80 B0         [ 2]  734 	ldw	x, #(___str_0+0)
      008913 CD 82 93         [ 4]  735 	call	_assert_failed
      008916 84               [ 1]  736 	pop	a
      008917                        737 00110$:
                                    738 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 616: if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
      008917 4D               [ 1]  739 	tnz	a
      008918 27 0B            [ 1]  740 	jreq	00102$
                                    741 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 618: lastevent = I2C->SR2 & I2C_SR2_AF;
      00891A C6 52 18         [ 1]  742 	ld	a, 0x5218
      00891D A4 04            [ 1]  743 	and	a, #0x04
      00891F 5F               [ 1]  744 	clrw	x
      008920 97               [ 1]  745 	ld	xl, a
      008921 1F 01            [ 2]  746 	ldw	(0x01, sp), x
      008923 20 0E            [ 2]  747 	jra	00103$
      008925                        748 00102$:
                                    749 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 622: flag1 = I2C->SR1;
      008925 C6 52 17         [ 1]  750 	ld	a, 0x5217
      008928 97               [ 1]  751 	ld	xl, a
                                    752 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 623: flag2 = I2C->SR3;
      008929 C6 52 19         [ 1]  753 	ld	a, 0x5219
                                    754 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 624: lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
      00892C 95               [ 1]  755 	ld	xh, a
      00892D 0F 06            [ 1]  756 	clr	(0x06, sp)
      00892F 0F 07            [ 1]  757 	clr	(0x07, sp)
      008931 1F 01            [ 2]  758 	ldw	(0x01, sp), x
      008933                        759 00103$:
                                    760 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 627: if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
      008933 7B 02            [ 1]  761 	ld	a, (0x02, sp)
      008935 14 04            [ 1]  762 	and	a, (0x04, sp)
      008937 97               [ 1]  763 	ld	xl, a
      008938 7B 01            [ 1]  764 	ld	a, (0x01, sp)
      00893A 14 03            [ 1]  765 	and	a, (0x03, sp)
      00893C 95               [ 1]  766 	ld	xh, a
      00893D 13 03            [ 2]  767 	cpw	x, (0x03, sp)
      00893F 26 03            [ 1]  768 	jrne	00105$
                                    769 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 630: status = SUCCESS;
      008941 A6 01            [ 1]  770 	ld	a, #0x01
                                    771 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 635: status = ERROR;
      008943 21                     772 	.byte 0x21
      008944                        773 00105$:
      008944 4F               [ 1]  774 	clr	a
      008945                        775 00106$:
                                    776 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 639: return status;
                                    777 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 640: }
      008945 5B 08            [ 2]  778 	addw	sp, #8
      008947 81               [ 4]  779 	ret
                                    780 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 711: FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
                                    781 ;	-----------------------------------------
                                    782 ;	 function I2C_GetFlagStatus
                                    783 ;	-----------------------------------------
      008948                        784 _I2C_GetFlagStatus:
      008948 52 03            [ 2]  785 	sub	sp, #3
      00894A 1F 02            [ 2]  786 	ldw	(0x02, sp), x
                                    787 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 713: uint8_t tempreg = 0;
      00894C 0F 01            [ 1]  788 	clr	(0x01, sp)
                                    789 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 718: assert_param(IS_I2C_FLAG_OK(I2C_Flag));
      00894E 1E 02            [ 2]  790 	ldw	x, (0x02, sp)
      008950 A3 01 80         [ 2]  791 	cpw	x, #0x0180
      008953 27 5B            [ 1]  792 	jreq	00112$
      008955 A3 01 40         [ 2]  793 	cpw	x, #0x0140
      008958 27 56            [ 1]  794 	jreq	00112$
      00895A A3 01 10         [ 2]  795 	cpw	x, #0x0110
      00895D 27 51            [ 1]  796 	jreq	00112$
      00895F A3 01 08         [ 2]  797 	cpw	x, #0x0108
      008962 27 4C            [ 1]  798 	jreq	00112$
      008964 A3 01 04         [ 2]  799 	cpw	x, #0x0104
      008967 27 47            [ 1]  800 	jreq	00112$
      008969 A3 01 02         [ 2]  801 	cpw	x, #0x0102
      00896C 27 42            [ 1]  802 	jreq	00112$
      00896E A3 01 01         [ 2]  803 	cpw	x, #0x0101
      008971 27 3D            [ 1]  804 	jreq	00112$
      008973 A3 02 20         [ 2]  805 	cpw	x, #0x0220
      008976 27 38            [ 1]  806 	jreq	00112$
      008978 A3 02 08         [ 2]  807 	cpw	x, #0x0208
      00897B 27 33            [ 1]  808 	jreq	00112$
      00897D A3 02 04         [ 2]  809 	cpw	x, #0x0204
      008980 27 2E            [ 1]  810 	jreq	00112$
      008982 A3 02 02         [ 2]  811 	cpw	x, #0x0202
      008985 27 29            [ 1]  812 	jreq	00112$
      008987 A3 02 01         [ 2]  813 	cpw	x, #0x0201
      00898A 27 24            [ 1]  814 	jreq	00112$
      00898C A3 03 10         [ 2]  815 	cpw	x, #0x0310
      00898F 27 1F            [ 1]  816 	jreq	00112$
      008991 A3 03 04         [ 2]  817 	cpw	x, #0x0304
      008994 27 1A            [ 1]  818 	jreq	00112$
      008996 A3 03 02         [ 2]  819 	cpw	x, #0x0302
      008999 27 15            [ 1]  820 	jreq	00112$
      00899B A3 03 01         [ 2]  821 	cpw	x, #0x0301
      00899E 27 10            [ 1]  822 	jreq	00112$
      0089A0 89               [ 2]  823 	pushw	x
      0089A1 4B CE            [ 1]  824 	push	#0xce
      0089A3 4B 02            [ 1]  825 	push	#0x02
      0089A5 4B 00            [ 1]  826 	push	#0x00
      0089A7 4B 00            [ 1]  827 	push	#0x00
      0089A9 AE 80 B0         [ 2]  828 	ldw	x, #(___str_0+0)
      0089AC CD 82 93         [ 4]  829 	call	_assert_failed
      0089AF 85               [ 2]  830 	popw	x
      0089B0                        831 00112$:
                                    832 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 721: regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
      0089B0 9E               [ 1]  833 	ld	a, xh
                                    834 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 723: switch (regindex)
      0089B1 A1 01            [ 1]  835 	cp	a, #0x01
      0089B3 27 0A            [ 1]  836 	jreq	00101$
      0089B5 A1 02            [ 1]  837 	cp	a, #0x02
      0089B7 27 0D            [ 1]  838 	jreq	00102$
      0089B9 A1 03            [ 1]  839 	cp	a, #0x03
      0089BB 27 10            [ 1]  840 	jreq	00103$
      0089BD 20 13            [ 2]  841 	jra	00105$
                                    842 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 726: case 0x01:
      0089BF                        843 00101$:
                                    844 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 727: tempreg = (uint8_t)I2C->SR1;
      0089BF C6 52 17         [ 1]  845 	ld	a, 0x5217
      0089C2 6B 01            [ 1]  846 	ld	(0x01, sp), a
                                    847 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 728: break;
      0089C4 20 0C            [ 2]  848 	jra	00105$
                                    849 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 731: case 0x02:
      0089C6                        850 00102$:
                                    851 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 732: tempreg = (uint8_t)I2C->SR2;
      0089C6 C6 52 18         [ 1]  852 	ld	a, 0x5218
      0089C9 6B 01            [ 1]  853 	ld	(0x01, sp), a
                                    854 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 733: break;
      0089CB 20 05            [ 2]  855 	jra	00105$
                                    856 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 736: case 0x03:
      0089CD                        857 00103$:
                                    858 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 737: tempreg = (uint8_t)I2C->SR3;
      0089CD C6 52 19         [ 1]  859 	ld	a, 0x5219
      0089D0 6B 01            [ 1]  860 	ld	(0x01, sp), a
                                    861 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 742: }
      0089D2                        862 00105$:
                                    863 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 745: if ((tempreg & (uint8_t)I2C_Flag ) != 0)
      0089D2 7B 03            [ 1]  864 	ld	a, (0x03, sp)
      0089D4 14 01            [ 1]  865 	and	a, (0x01, sp)
      0089D6 27 03            [ 1]  866 	jreq	00107$
                                    867 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 748: bitstatus = SET;
      0089D8 A6 01            [ 1]  868 	ld	a, #0x01
                                    869 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 753: bitstatus = RESET;
      0089DA 21                     870 	.byte 0x21
      0089DB                        871 00107$:
      0089DB 4F               [ 1]  872 	clr	a
      0089DC                        873 00108$:
                                    874 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 756: return bitstatus;
                                    875 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 757: }
      0089DC 5B 03            [ 2]  876 	addw	sp, #3
      0089DE 81               [ 4]  877 	ret
                                    878 	.area CODE
                                    879 	.area CONST
                                    880 	.area CONST
      0080B0                        881 ___str_0:
      0080B0 2F 77 6F 72 6B 73 70   882 	.ascii "/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Li"
             61 63 65 2F 53 6F 66
             74 77 61 72 65 2F 46
             69 72 6D 77 61 72 65
             2F 6E 65 77 5F 62 65
             67 69 6E 69 6E 67 2F
             53 54 4D 38 53 5F 53
             74 64 50 65 72 69 70
             68 5F 4C 69
      0080EC 62 2F 73 72 63 2F 73   883 	.ascii "b/src/stm8s_i2c.c"
             74 6D 38 73 5F 69 32
             63 2E 63
      0080FD 00                     884 	.db 0x00
                                    885 	.area CODE
                                    886 	.area INITIALIZER
                                    887 	.area CABS (ABS)
