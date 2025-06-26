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
      00855C                         65 _I2C_DeInit:
                                     66 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 70: I2C->CR1 = I2C_CR1_RESET_VALUE;
      00855C 35 00 52 10      [ 1]   67 	mov	0x5210+0, #0x00
                                     68 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 71: I2C->CR2 = I2C_CR2_RESET_VALUE;
      008560 35 00 52 11      [ 1]   69 	mov	0x5211+0, #0x00
                                     70 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 72: I2C->FREQR = I2C_FREQR_RESET_VALUE;
      008564 35 00 52 12      [ 1]   71 	mov	0x5212+0, #0x00
                                     72 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 73: I2C->OARL = I2C_OARL_RESET_VALUE;
      008568 35 00 52 13      [ 1]   73 	mov	0x5213+0, #0x00
                                     74 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 74: I2C->OARH = I2C_OARH_RESET_VALUE;
      00856C 35 00 52 14      [ 1]   75 	mov	0x5214+0, #0x00
                                     76 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 75: I2C->ITR = I2C_ITR_RESET_VALUE;
      008570 35 00 52 1A      [ 1]   77 	mov	0x521a+0, #0x00
                                     78 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 76: I2C->CCRL = I2C_CCRL_RESET_VALUE;
      008574 35 00 52 1B      [ 1]   79 	mov	0x521b+0, #0x00
                                     80 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 77: I2C->CCRH = I2C_CCRH_RESET_VALUE;
      008578 35 00 52 1C      [ 1]   81 	mov	0x521c+0, #0x00
                                     82 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 78: I2C->TRISER = I2C_TRISER_RESET_VALUE;
      00857C 35 02 52 1D      [ 1]   83 	mov	0x521d+0, #0x02
                                     84 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 79: }
      008580 81               [ 4]   85 	ret
                                     86 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 99: void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
                                     87 ;	-----------------------------------------
                                     88 ;	 function I2C_Init
                                     89 ;	-----------------------------------------
      008581                         90 _I2C_Init:
      008581 52 07            [ 2]   91 	sub	sp, #7
                                     92 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 105: uint8_t tmpccrh = 0;
      008583 0F 05            [ 1]   93 	clr	(0x05, sp)
                                     94 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 108: assert_param(IS_I2C_ACK_OK(Ack));
      008585 0D 11            [ 1]   95 	tnz	(0x11, sp)
      008587 27 17            [ 1]   96 	jreq	00114$
      008589 7B 11            [ 1]   97 	ld	a, (0x11, sp)
      00858B 4A               [ 1]   98 	dec	a
      00858C 27 12            [ 1]   99 	jreq	00114$
      00858E 7B 11            [ 1]  100 	ld	a, (0x11, sp)
      008590 A1 02            [ 1]  101 	cp	a, #0x02
      008592 27 0C            [ 1]  102 	jreq	00114$
      008594 4B 6C            [ 1]  103 	push	#0x6c
      008596 5F               [ 1]  104 	clrw	x
      008597 89               [ 2]  105 	pushw	x
      008598 4B 00            [ 1]  106 	push	#0x00
      00859A AE 80 B0         [ 2]  107 	ldw	x, #(___str_0+0)
      00859D CD 82 B0         [ 4]  108 	call	_assert_failed
      0085A0                        109 00114$:
                                    110 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 109: assert_param(IS_I2C_ADDMODE_OK(AddMode));
      0085A0 0D 12            [ 1]  111 	tnz	(0x12, sp)
      0085A2 27 12            [ 1]  112 	jreq	00122$
      0085A4 7B 12            [ 1]  113 	ld	a, (0x12, sp)
      0085A6 A1 80            [ 1]  114 	cp	a, #0x80
      0085A8 27 0C            [ 1]  115 	jreq	00122$
      0085AA 4B 6D            [ 1]  116 	push	#0x6d
      0085AC 5F               [ 1]  117 	clrw	x
      0085AD 89               [ 2]  118 	pushw	x
      0085AE 4B 00            [ 1]  119 	push	#0x00
      0085B0 AE 80 B0         [ 2]  120 	ldw	x, #(___str_0+0)
      0085B3 CD 82 B0         [ 4]  121 	call	_assert_failed
      0085B6                        122 00122$:
                                    123 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 110: assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
      0085B6 1E 0E            [ 2]  124 	ldw	x, (0x0e, sp)
      0085B8 A3 03 FF         [ 2]  125 	cpw	x, #0x03ff
      0085BB 23 0C            [ 2]  126 	jrule	00127$
      0085BD 4B 6E            [ 1]  127 	push	#0x6e
      0085BF 5F               [ 1]  128 	clrw	x
      0085C0 89               [ 2]  129 	pushw	x
      0085C1 4B 00            [ 1]  130 	push	#0x00
      0085C3 AE 80 B0         [ 2]  131 	ldw	x, #(___str_0+0)
      0085C6 CD 82 B0         [ 4]  132 	call	_assert_failed
      0085C9                        133 00127$:
                                    134 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 111: assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
      0085C9 0D 10            [ 1]  135 	tnz	(0x10, sp)
      0085CB 27 12            [ 1]  136 	jreq	00129$
      0085CD 7B 10            [ 1]  137 	ld	a, (0x10, sp)
      0085CF A1 40            [ 1]  138 	cp	a, #0x40
      0085D1 27 0C            [ 1]  139 	jreq	00129$
      0085D3 4B 6F            [ 1]  140 	push	#0x6f
      0085D5 5F               [ 1]  141 	clrw	x
      0085D6 89               [ 2]  142 	pushw	x
      0085D7 4B 00            [ 1]  143 	push	#0x00
      0085D9 AE 80 B0         [ 2]  144 	ldw	x, #(___str_0+0)
      0085DC CD 82 B0         [ 4]  145 	call	_assert_failed
      0085DF                        146 00129$:
                                    147 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 112: assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
      0085DF 7B 13            [ 1]  148 	ld	a, (0x13, sp)
      0085E1 A1 01            [ 1]  149 	cp	a, #0x01
      0085E3 25 06            [ 1]  150 	jrc	00133$
      0085E5 7B 13            [ 1]  151 	ld	a, (0x13, sp)
      0085E7 A1 10            [ 1]  152 	cp	a, #0x10
      0085E9 23 0C            [ 2]  153 	jrule	00134$
      0085EB                        154 00133$:
      0085EB 4B 70            [ 1]  155 	push	#0x70
      0085ED 5F               [ 1]  156 	clrw	x
      0085EE 89               [ 2]  157 	pushw	x
      0085EF 4B 00            [ 1]  158 	push	#0x00
      0085F1 AE 80 B0         [ 2]  159 	ldw	x, #(___str_0+0)
      0085F4 CD 82 B0         [ 4]  160 	call	_assert_failed
      0085F7                        161 00134$:
                                    162 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 113: assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
      0085F7 1E 0C            [ 2]  163 	ldw	x, (0x0c, sp)
      0085F9 A3 00 01         [ 2]  164 	cpw	x, #0x0001
      0085FC 7B 0B            [ 1]  165 	ld	a, (0x0b, sp)
      0085FE A2 00            [ 1]  166 	sbc	a, #0x00
      008600 7B 0A            [ 1]  167 	ld	a, (0x0a, sp)
      008602 A2 00            [ 1]  168 	sbc	a, #0x00
      008604 25 0E            [ 1]  169 	jrc	00138$
      008606 AE 1A 80         [ 2]  170 	ldw	x, #0x1a80
      008609 13 0C            [ 2]  171 	cpw	x, (0x0c, sp)
      00860B A6 06            [ 1]  172 	ld	a, #0x06
      00860D 12 0B            [ 1]  173 	sbc	a, (0x0b, sp)
      00860F 4F               [ 1]  174 	clr	a
      008610 12 0A            [ 1]  175 	sbc	a, (0x0a, sp)
      008612 24 0C            [ 1]  176 	jrnc	00139$
      008614                        177 00138$:
      008614 4B 71            [ 1]  178 	push	#0x71
      008616 5F               [ 1]  179 	clrw	x
      008617 89               [ 2]  180 	pushw	x
      008618 4B 00            [ 1]  181 	push	#0x00
      00861A AE 80 B0         [ 2]  182 	ldw	x, #(___str_0+0)
      00861D CD 82 B0         [ 4]  183 	call	_assert_failed
      008620                        184 00139$:
                                    185 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 118: I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
      008620 C6 52 12         [ 1]  186 	ld	a, 0x5212
      008623 A4 C0            [ 1]  187 	and	a, #0xc0
      008625 C7 52 12         [ 1]  188 	ld	0x5212, a
                                    189 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 120: I2C->FREQR |= InputClockFrequencyMHz;
      008628 C6 52 12         [ 1]  190 	ld	a, 0x5212
      00862B 1A 13            [ 1]  191 	or	a, (0x13, sp)
      00862D C7 52 12         [ 1]  192 	ld	0x5212, a
                                    193 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 124: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      008630 72 11 52 10      [ 1]  194 	bres	0x5210, #0
                                    195 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 127: I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
      008634 C6 52 1C         [ 1]  196 	ld	a, 0x521c
      008637 A4 30            [ 1]  197 	and	a, #0x30
      008639 C7 52 1C         [ 1]  198 	ld	0x521c, a
                                    199 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 128: I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
      00863C C6 52 1B         [ 1]  200 	ld	a, 0x521b
      00863F 35 00 52 1B      [ 1]  201 	mov	0x521b+0, #0x00
                                    202 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 139: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
      008643 7B 13            [ 1]  203 	ld	a, (0x13, sp)
      008645 5F               [ 1]  204 	clrw	x
      008646 0F 01            [ 1]  205 	clr	(0x01, sp)
      008648 88               [ 1]  206 	push	a
      008649 89               [ 2]  207 	pushw	x
      00864A 4F               [ 1]  208 	clr	a
      00864B 88               [ 1]  209 	push	a
      00864C 4B 40            [ 1]  210 	push	#0x40
      00864E 4B 42            [ 1]  211 	push	#0x42
      008650 4B 0F            [ 1]  212 	push	#0x0f
      008652 4B 00            [ 1]  213 	push	#0x00
      008654 CD 98 78         [ 4]  214 	call	__mullong
      008657 5B 08            [ 2]  215 	addw	sp, #8
      008659 1F 03            [ 2]  216 	ldw	(0x03, sp), x
      00865B 17 01            [ 2]  217 	ldw	(0x01, sp), y
                                    218 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 131: if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
      00865D AE 86 A0         [ 2]  219 	ldw	x, #0x86a0
      008660 13 0C            [ 2]  220 	cpw	x, (0x0c, sp)
      008662 A6 01            [ 1]  221 	ld	a, #0x01
      008664 12 0B            [ 1]  222 	sbc	a, (0x0b, sp)
      008666 4F               [ 1]  223 	clr	a
      008667 12 0A            [ 1]  224 	sbc	a, (0x0a, sp)
      008669 24 76            [ 1]  225 	jrnc	00109$
                                    226 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 134: tmpccrh = I2C_CCRH_FS;
      00866B A6 80            [ 1]  227 	ld	a, #0x80
      00866D 6B 05            [ 1]  228 	ld	(0x05, sp), a
                                    229 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 136: if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
      00866F 0D 10            [ 1]  230 	tnz	(0x10, sp)
      008671 26 21            [ 1]  231 	jrne	00102$
                                    232 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 139: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
      008673 1E 0C            [ 2]  233 	ldw	x, (0x0c, sp)
      008675 89               [ 2]  234 	pushw	x
      008676 1E 0C            [ 2]  235 	ldw	x, (0x0c, sp)
      008678 89               [ 2]  236 	pushw	x
      008679 4B 03            [ 1]  237 	push	#0x03
      00867B 5F               [ 1]  238 	clrw	x
      00867C 89               [ 2]  239 	pushw	x
      00867D 4B 00            [ 1]  240 	push	#0x00
      00867F CD 98 78         [ 4]  241 	call	__mullong
      008682 5B 08            [ 2]  242 	addw	sp, #8
      008684 89               [ 2]  243 	pushw	x
      008685 90 89            [ 2]  244 	pushw	y
      008687 1E 07            [ 2]  245 	ldw	x, (0x07, sp)
      008689 89               [ 2]  246 	pushw	x
      00868A 1E 07            [ 2]  247 	ldw	x, (0x07, sp)
      00868C 89               [ 2]  248 	pushw	x
      00868D CD 98 1D         [ 4]  249 	call	__divulong
      008690 5B 08            [ 2]  250 	addw	sp, #8
      008692 20 26            [ 2]  251 	jra	00103$
      008694                        252 00102$:
                                    253 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 144: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
      008694 1E 0C            [ 2]  254 	ldw	x, (0x0c, sp)
      008696 89               [ 2]  255 	pushw	x
      008697 1E 0C            [ 2]  256 	ldw	x, (0x0c, sp)
      008699 89               [ 2]  257 	pushw	x
      00869A 4B 19            [ 1]  258 	push	#0x19
      00869C 5F               [ 1]  259 	clrw	x
      00869D 89               [ 2]  260 	pushw	x
      00869E 4B 00            [ 1]  261 	push	#0x00
      0086A0 CD 98 78         [ 4]  262 	call	__mullong
      0086A3 5B 08            [ 2]  263 	addw	sp, #8
      0086A5 9F               [ 1]  264 	ld	a, xl
      0086A6 88               [ 1]  265 	push	a
      0086A7 9E               [ 1]  266 	ld	a, xh
      0086A8 88               [ 1]  267 	push	a
      0086A9 90 89            [ 2]  268 	pushw	y
      0086AB 1E 07            [ 2]  269 	ldw	x, (0x07, sp)
      0086AD 89               [ 2]  270 	pushw	x
      0086AE 1E 07            [ 2]  271 	ldw	x, (0x07, sp)
      0086B0 89               [ 2]  272 	pushw	x
      0086B1 CD 98 1D         [ 4]  273 	call	__divulong
      0086B4 5B 08            [ 2]  274 	addw	sp, #8
                                    275 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 146: tmpccrh |= I2C_CCRH_DUTY;
      0086B6 A6 C0            [ 1]  276 	ld	a, #0xc0
      0086B8 6B 05            [ 1]  277 	ld	(0x05, sp), a
      0086BA                        278 00103$:
                                    279 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 150: if (result < (uint16_t)0x01)
      0086BA A3 00 01         [ 2]  280 	cpw	x, #0x0001
      0086BD 24 02            [ 1]  281 	jrnc	00105$
                                    282 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 153: result = (uint16_t)0x0001;
      0086BF 5F               [ 1]  283 	clrw	x
      0086C0 5C               [ 1]  284 	incw	x
      0086C1                        285 00105$:
                                    286 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 159: tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
      0086C1 7B 13            [ 1]  287 	ld	a, (0x13, sp)
      0086C3 6B 07            [ 1]  288 	ld	(0x07, sp), a
      0086C5 0F 06            [ 1]  289 	clr	(0x06, sp)
      0086C7 89               [ 2]  290 	pushw	x
      0086C8 1E 08            [ 2]  291 	ldw	x, (0x08, sp)
      0086CA 58               [ 2]  292 	sllw	x
      0086CB 72 FB 08         [ 2]  293 	addw	x, (0x08, sp)
      0086CE 51               [ 1]  294 	exgw	x, y
      0086CF 4B 0A            [ 1]  295 	push	#0x0a
      0086D1 4B 00            [ 1]  296 	push	#0x00
      0086D3 93               [ 1]  297 	ldw	x, y
      0086D4 CD 98 F4         [ 4]  298 	call	__divsint
      0086D7 90 93            [ 1]  299 	ldw	y, x
      0086D9 9F               [ 1]  300 	ld	a, xl
      0086DA 85               [ 2]  301 	popw	x
      0086DB 4C               [ 1]  302 	inc	a
                                    303 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 160: I2C->TRISER = (uint8_t)tmpval;
      0086DC C7 52 1D         [ 1]  304 	ld	0x521d, a
      0086DF 20 23            [ 2]  305 	jra	00110$
      0086E1                        306 00109$:
                                    307 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 167: result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
      0086E1 1E 0C            [ 2]  308 	ldw	x, (0x0c, sp)
      0086E3 16 0A            [ 2]  309 	ldw	y, (0x0a, sp)
      0086E5 58               [ 2]  310 	sllw	x
      0086E6 90 59            [ 2]  311 	rlcw	y
      0086E8 89               [ 2]  312 	pushw	x
      0086E9 90 89            [ 2]  313 	pushw	y
      0086EB 1E 07            [ 2]  314 	ldw	x, (0x07, sp)
      0086ED 89               [ 2]  315 	pushw	x
      0086EE 1E 07            [ 2]  316 	ldw	x, (0x07, sp)
      0086F0 89               [ 2]  317 	pushw	x
      0086F1 CD 98 1D         [ 4]  318 	call	__divulong
      0086F4 5B 08            [ 2]  319 	addw	sp, #8
                                    320 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 170: if (result < (uint16_t)0x0004)
      0086F6 A3 00 04         [ 2]  321 	cpw	x, #0x0004
      0086F9 24 03            [ 1]  322 	jrnc	00107$
                                    323 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 173: result = (uint16_t)0x0004;
      0086FB AE 00 04         [ 2]  324 	ldw	x, #0x0004
      0086FE                        325 00107$:
                                    326 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 179: I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
      0086FE 7B 13            [ 1]  327 	ld	a, (0x13, sp)
      008700 4C               [ 1]  328 	inc	a
      008701 C7 52 1D         [ 1]  329 	ld	0x521d, a
      008704                        330 00110$:
                                    331 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 184: I2C->CCRL = (uint8_t)result;
      008704 9F               [ 1]  332 	ld	a, xl
      008705 C7 52 1B         [ 1]  333 	ld	0x521b, a
                                    334 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 185: I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
      008708 9E               [ 1]  335 	ld	a, xh
      008709 A4 0F            [ 1]  336 	and	a, #0x0f
      00870B 1A 05            [ 1]  337 	or	a, (0x05, sp)
      00870D C7 52 1C         [ 1]  338 	ld	0x521c, a
                                    339 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 188: I2C->CR1 |= I2C_CR1_PE;
      008710 72 10 52 10      [ 1]  340 	bset	0x5210, #0
                                    341 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 191: I2C_AcknowledgeConfig(Ack);
      008714 7B 11            [ 1]  342 	ld	a, (0x11, sp)
      008716 CD 87 B7         [ 4]  343 	call	_I2C_AcknowledgeConfig
                                    344 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 194: I2C->OARL = (uint8_t)(OwnAddress);
      008719 7B 0F            [ 1]  345 	ld	a, (0x0f, sp)
      00871B C7 52 13         [ 1]  346 	ld	0x5213, a
                                    347 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 195: I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
      00871E 7B 12            [ 1]  348 	ld	a, (0x12, sp)
      008720 AA 40            [ 1]  349 	or	a, #0x40
      008722 6B 07            [ 1]  350 	ld	(0x07, sp), a
                                    351 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 196: (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
      008724 4F               [ 1]  352 	clr	a
      008725 97               [ 1]  353 	ld	xl, a
      008726 7B 0E            [ 1]  354 	ld	a, (0x0e, sp)
      008728 A4 03            [ 1]  355 	and	a, #0x03
      00872A 95               [ 1]  356 	ld	xh, a
      00872B A6 80            [ 1]  357 	ld	a, #0x80
      00872D 62               [ 2]  358 	div	x, a
      00872E 9F               [ 1]  359 	ld	a, xl
      00872F 1A 07            [ 1]  360 	or	a, (0x07, sp)
      008731 C7 52 14         [ 1]  361 	ld	0x5214, a
                                    362 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 197: }
      008734 1E 08            [ 2]  363 	ldw	x, (8, sp)
      008736 5B 13            [ 2]  364 	addw	sp, #19
      008738 FC               [ 2]  365 	jp	(x)
                                    366 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 207: void I2C_Cmd(FunctionalState NewState)
                                    367 ;	-----------------------------------------
                                    368 ;	 function I2C_Cmd
                                    369 ;	-----------------------------------------
      008739                        370 _I2C_Cmd:
      008739 88               [ 1]  371 	push	a
                                    372 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 210: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00873A 6B 01            [ 1]  373 	ld	(0x01, sp), a
      00873C 27 10            [ 1]  374 	jreq	00107$
      00873E 0D 01            [ 1]  375 	tnz	(0x01, sp)
      008740 26 0C            [ 1]  376 	jrne	00107$
      008742 4B D2            [ 1]  377 	push	#0xd2
      008744 5F               [ 1]  378 	clrw	x
      008745 89               [ 2]  379 	pushw	x
      008746 4B 00            [ 1]  380 	push	#0x00
      008748 AE 80 B0         [ 2]  381 	ldw	x, #(___str_0+0)
      00874B CD 82 B0         [ 4]  382 	call	_assert_failed
      00874E                        383 00107$:
                                    384 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 215: I2C->CR1 |= I2C_CR1_PE;
      00874E C6 52 10         [ 1]  385 	ld	a, 0x5210
                                    386 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 212: if (NewState != DISABLE)
      008751 0D 01            [ 1]  387 	tnz	(0x01, sp)
      008753 27 07            [ 1]  388 	jreq	00102$
                                    389 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 215: I2C->CR1 |= I2C_CR1_PE;
      008755 AA 01            [ 1]  390 	or	a, #0x01
      008757 C7 52 10         [ 1]  391 	ld	0x5210, a
      00875A 20 05            [ 2]  392 	jra	00104$
      00875C                        393 00102$:
                                    394 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 220: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      00875C A4 FE            [ 1]  395 	and	a, #0xfe
      00875E C7 52 10         [ 1]  396 	ld	0x5210, a
      008761                        397 00104$:
                                    398 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 222: }
      008761 84               [ 1]  399 	pop	a
      008762 81               [ 4]  400 	ret
                                    401 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 259: void I2C_GenerateSTART(FunctionalState NewState)
                                    402 ;	-----------------------------------------
                                    403 ;	 function I2C_GenerateSTART
                                    404 ;	-----------------------------------------
      008763                        405 _I2C_GenerateSTART:
      008763 88               [ 1]  406 	push	a
                                    407 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 262: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008764 6B 01            [ 1]  408 	ld	(0x01, sp), a
      008766 27 10            [ 1]  409 	jreq	00107$
      008768 0D 01            [ 1]  410 	tnz	(0x01, sp)
      00876A 26 0C            [ 1]  411 	jrne	00107$
      00876C 4B 06            [ 1]  412 	push	#0x06
      00876E 4B 01            [ 1]  413 	push	#0x01
      008770 5F               [ 1]  414 	clrw	x
      008771 89               [ 2]  415 	pushw	x
      008772 AE 80 B0         [ 2]  416 	ldw	x, #(___str_0+0)
      008775 CD 82 B0         [ 4]  417 	call	_assert_failed
      008778                        418 00107$:
                                    419 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 267: I2C->CR2 |= I2C_CR2_START;
      008778 C6 52 11         [ 1]  420 	ld	a, 0x5211
                                    421 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 264: if (NewState != DISABLE)
      00877B 0D 01            [ 1]  422 	tnz	(0x01, sp)
      00877D 27 07            [ 1]  423 	jreq	00102$
                                    424 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 267: I2C->CR2 |= I2C_CR2_START;
      00877F AA 01            [ 1]  425 	or	a, #0x01
      008781 C7 52 11         [ 1]  426 	ld	0x5211, a
      008784 20 05            [ 2]  427 	jra	00104$
      008786                        428 00102$:
                                    429 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 272: I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
      008786 A4 FE            [ 1]  430 	and	a, #0xfe
      008788 C7 52 11         [ 1]  431 	ld	0x5211, a
      00878B                        432 00104$:
                                    433 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 274: }
      00878B 84               [ 1]  434 	pop	a
      00878C 81               [ 4]  435 	ret
                                    436 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 284: void I2C_GenerateSTOP(FunctionalState NewState)
                                    437 ;	-----------------------------------------
                                    438 ;	 function I2C_GenerateSTOP
                                    439 ;	-----------------------------------------
      00878D                        440 _I2C_GenerateSTOP:
      00878D 88               [ 1]  441 	push	a
                                    442 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 287: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00878E 6B 01            [ 1]  443 	ld	(0x01, sp), a
      008790 27 10            [ 1]  444 	jreq	00107$
      008792 0D 01            [ 1]  445 	tnz	(0x01, sp)
      008794 26 0C            [ 1]  446 	jrne	00107$
      008796 4B 1F            [ 1]  447 	push	#0x1f
      008798 4B 01            [ 1]  448 	push	#0x01
      00879A 5F               [ 1]  449 	clrw	x
      00879B 89               [ 2]  450 	pushw	x
      00879C AE 80 B0         [ 2]  451 	ldw	x, #(___str_0+0)
      00879F CD 82 B0         [ 4]  452 	call	_assert_failed
      0087A2                        453 00107$:
                                    454 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 292: I2C->CR2 |= I2C_CR2_STOP;
      0087A2 C6 52 11         [ 1]  455 	ld	a, 0x5211
                                    456 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 289: if (NewState != DISABLE)
      0087A5 0D 01            [ 1]  457 	tnz	(0x01, sp)
      0087A7 27 07            [ 1]  458 	jreq	00102$
                                    459 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 292: I2C->CR2 |= I2C_CR2_STOP;
      0087A9 AA 02            [ 1]  460 	or	a, #0x02
      0087AB C7 52 11         [ 1]  461 	ld	0x5211, a
      0087AE 20 05            [ 2]  462 	jra	00104$
      0087B0                        463 00102$:
                                    464 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 297: I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
      0087B0 A4 FD            [ 1]  465 	and	a, #0xfd
      0087B2 C7 52 11         [ 1]  466 	ld	0x5211, a
      0087B5                        467 00104$:
                                    468 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 299: }
      0087B5 84               [ 1]  469 	pop	a
      0087B6 81               [ 4]  470 	ret
                                    471 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 361: void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
                                    472 ;	-----------------------------------------
                                    473 ;	 function I2C_AcknowledgeConfig
                                    474 ;	-----------------------------------------
      0087B7                        475 _I2C_AcknowledgeConfig:
      0087B7 52 02            [ 2]  476 	sub	sp, #2
                                    477 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 364: assert_param(IS_I2C_ACK_OK(Ack));
      0087B9 6B 02            [ 1]  478 	ld	(0x02, sp), a
      0087BB 4A               [ 1]  479 	dec	a
      0087BC 26 05            [ 1]  480 	jrne	00153$
      0087BE A6 01            [ 1]  481 	ld	a, #0x01
      0087C0 6B 01            [ 1]  482 	ld	(0x01, sp), a
      0087C2 C5                     483 	.byte 0xc5
      0087C3                        484 00153$:
      0087C3 0F 01            [ 1]  485 	clr	(0x01, sp)
      0087C5                        486 00154$:
      0087C5 0D 02            [ 1]  487 	tnz	(0x02, sp)
      0087C7 27 16            [ 1]  488 	jreq	00110$
      0087C9 0D 01            [ 1]  489 	tnz	(0x01, sp)
      0087CB 26 12            [ 1]  490 	jrne	00110$
      0087CD 7B 02            [ 1]  491 	ld	a, (0x02, sp)
      0087CF A1 02            [ 1]  492 	cp	a, #0x02
      0087D1 27 0C            [ 1]  493 	jreq	00110$
      0087D3 4B 6C            [ 1]  494 	push	#0x6c
      0087D5 4B 01            [ 1]  495 	push	#0x01
      0087D7 5F               [ 1]  496 	clrw	x
      0087D8 89               [ 2]  497 	pushw	x
      0087D9 AE 80 B0         [ 2]  498 	ldw	x, #(___str_0+0)
      0087DC CD 82 B0         [ 4]  499 	call	_assert_failed
      0087DF                        500 00110$:
                                    501 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 369: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      0087DF C6 52 11         [ 1]  502 	ld	a, 0x5211
                                    503 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 366: if (Ack == I2C_ACK_NONE)
      0087E2 0D 02            [ 1]  504 	tnz	(0x02, sp)
      0087E4 26 07            [ 1]  505 	jrne	00105$
                                    506 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 369: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      0087E6 A4 FB            [ 1]  507 	and	a, #0xfb
      0087E8 C7 52 11         [ 1]  508 	ld	0x5211, a
      0087EB 20 1B            [ 2]  509 	jra	00107$
      0087ED                        510 00105$:
                                    511 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 374: I2C->CR2 |= I2C_CR2_ACK;
      0087ED AA 04            [ 1]  512 	or	a, #0x04
      0087EF C7 52 11         [ 1]  513 	ld	0x5211, a
                                    514 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 369: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      0087F2 C6 52 11         [ 1]  515 	ld	a, 0x5211
      0087F5 97               [ 1]  516 	ld	xl, a
                                    517 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 376: if (Ack == I2C_ACK_CURR)
      0087F6 7B 01            [ 1]  518 	ld	a, (0x01, sp)
      0087F8 27 08            [ 1]  519 	jreq	00102$
                                    520 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 379: I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
      0087FA 9F               [ 1]  521 	ld	a, xl
      0087FB A4 F7            [ 1]  522 	and	a, #0xf7
      0087FD C7 52 11         [ 1]  523 	ld	0x5211, a
      008800 20 06            [ 2]  524 	jra	00107$
      008802                        525 00102$:
                                    526 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 384: I2C->CR2 |= I2C_CR2_POS;
      008802 9F               [ 1]  527 	ld	a, xl
      008803 AA 08            [ 1]  528 	or	a, #0x08
      008805 C7 52 11         [ 1]  529 	ld	0x5211, a
      008808                        530 00107$:
                                    531 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 387: }
      008808 5B 02            [ 2]  532 	addw	sp, #2
      00880A 81               [ 4]  533 	ret
                                    534 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 399: void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
                                    535 ;	-----------------------------------------
                                    536 ;	 function I2C_ITConfig
                                    537 ;	-----------------------------------------
      00880B                        538 _I2C_ITConfig:
      00880B 88               [ 1]  539 	push	a
                                    540 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 402: assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
      00880C A1 01            [ 1]  541 	cp	a, #0x01
      00880E 27 26            [ 1]  542 	jreq	00107$
      008810 A1 02            [ 1]  543 	cp	a, #0x02
      008812 27 22            [ 1]  544 	jreq	00107$
      008814 A1 04            [ 1]  545 	cp	a, #0x04
      008816 27 1E            [ 1]  546 	jreq	00107$
      008818 A1 03            [ 1]  547 	cp	a, #0x03
      00881A 27 1A            [ 1]  548 	jreq	00107$
      00881C A1 05            [ 1]  549 	cp	a, #0x05
      00881E 27 16            [ 1]  550 	jreq	00107$
      008820 A1 06            [ 1]  551 	cp	a, #0x06
      008822 27 12            [ 1]  552 	jreq	00107$
      008824 A1 07            [ 1]  553 	cp	a, #0x07
      008826 27 0E            [ 1]  554 	jreq	00107$
      008828 88               [ 1]  555 	push	a
      008829 4B 92            [ 1]  556 	push	#0x92
      00882B 4B 01            [ 1]  557 	push	#0x01
      00882D 5F               [ 1]  558 	clrw	x
      00882E 89               [ 2]  559 	pushw	x
      00882F AE 80 B0         [ 2]  560 	ldw	x, #(___str_0+0)
      008832 CD 82 B0         [ 4]  561 	call	_assert_failed
      008835 84               [ 1]  562 	pop	a
      008836                        563 00107$:
                                    564 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 403: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008836 0D 04            [ 1]  565 	tnz	(0x04, sp)
      008838 27 12            [ 1]  566 	jreq	00127$
      00883A 0D 04            [ 1]  567 	tnz	(0x04, sp)
      00883C 26 0E            [ 1]  568 	jrne	00127$
      00883E 88               [ 1]  569 	push	a
      00883F 4B 93            [ 1]  570 	push	#0x93
      008841 4B 01            [ 1]  571 	push	#0x01
      008843 5F               [ 1]  572 	clrw	x
      008844 89               [ 2]  573 	pushw	x
      008845 AE 80 B0         [ 2]  574 	ldw	x, #(___str_0+0)
      008848 CD 82 B0         [ 4]  575 	call	_assert_failed
      00884B 84               [ 1]  576 	pop	a
      00884C                        577 00127$:
                                    578 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 408: I2C->ITR |= (uint8_t)I2C_IT;
      00884C AE 52 1A         [ 2]  579 	ldw	x, #0x521a
      00884F 88               [ 1]  580 	push	a
      008850 F6               [ 1]  581 	ld	a, (x)
      008851 6B 02            [ 1]  582 	ld	(0x02, sp), a
      008853 84               [ 1]  583 	pop	a
                                    584 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 405: if (NewState != DISABLE)
      008854 0D 04            [ 1]  585 	tnz	(0x04, sp)
      008856 27 07            [ 1]  586 	jreq	00102$
                                    587 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 408: I2C->ITR |= (uint8_t)I2C_IT;
      008858 1A 01            [ 1]  588 	or	a, (0x01, sp)
      00885A C7 52 1A         [ 1]  589 	ld	0x521a, a
      00885D 20 06            [ 2]  590 	jra	00104$
      00885F                        591 00102$:
                                    592 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 413: I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
      00885F 43               [ 1]  593 	cpl	a
      008860 14 01            [ 1]  594 	and	a, (0x01, sp)
      008862 C7 52 1A         [ 1]  595 	ld	0x521a, a
      008865                        596 00104$:
                                    597 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 415: }
      008865 84               [ 1]  598 	pop	a
      008866 85               [ 2]  599 	popw	x
      008867 84               [ 1]  600 	pop	a
      008868 FC               [ 2]  601 	jp	(x)
                                    602 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 449: uint8_t I2C_ReceiveData(void)
                                    603 ;	-----------------------------------------
                                    604 ;	 function I2C_ReceiveData
                                    605 ;	-----------------------------------------
      008869                        606 _I2C_ReceiveData:
                                    607 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 452: return ((uint8_t)I2C->DR);
      008869 C6 52 16         [ 1]  608 	ld	a, 0x5216
                                    609 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 453: }
      00886C 81               [ 4]  610 	ret
                                    611 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 464: void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
                                    612 ;	-----------------------------------------
                                    613 ;	 function I2C_Send7bitAddress
                                    614 ;	-----------------------------------------
      00886D                        615 _I2C_Send7bitAddress:
      00886D 88               [ 1]  616 	push	a
                                    617 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 467: assert_param(IS_I2C_ADDRESS_OK(Address));
      00886E A5 01            [ 1]  618 	bcp	a, #0x01
      008870 27 0E            [ 1]  619 	jreq	00104$
      008872 88               [ 1]  620 	push	a
      008873 4B D3            [ 1]  621 	push	#0xd3
      008875 4B 01            [ 1]  622 	push	#0x01
      008877 5F               [ 1]  623 	clrw	x
      008878 89               [ 2]  624 	pushw	x
      008879 AE 80 B0         [ 2]  625 	ldw	x, #(___str_0+0)
      00887C CD 82 B0         [ 4]  626 	call	_assert_failed
      00887F 84               [ 1]  627 	pop	a
      008880                        628 00104$:
                                    629 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 468: assert_param(IS_I2C_DIRECTION_OK(Direction));
      008880 0D 04            [ 1]  630 	tnz	(0x04, sp)
      008882 27 12            [ 1]  631 	jreq	00106$
      008884 0D 04            [ 1]  632 	tnz	(0x04, sp)
      008886 26 0E            [ 1]  633 	jrne	00106$
      008888 88               [ 1]  634 	push	a
      008889 4B D4            [ 1]  635 	push	#0xd4
      00888B 4B 01            [ 1]  636 	push	#0x01
      00888D 5F               [ 1]  637 	clrw	x
      00888E 89               [ 2]  638 	pushw	x
      00888F AE 80 B0         [ 2]  639 	ldw	x, #(___str_0+0)
      008892 CD 82 B0         [ 4]  640 	call	_assert_failed
      008895 84               [ 1]  641 	pop	a
      008896                        642 00106$:
                                    643 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 471: Address &= (uint8_t)0xFE;
      008896 A4 FE            [ 1]  644 	and	a, #0xfe
      008898 6B 01            [ 1]  645 	ld	(0x01, sp), a
                                    646 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 474: I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
      00889A 7B 04            [ 1]  647 	ld	a, (0x04, sp)
      00889C 1A 01            [ 1]  648 	or	a, (0x01, sp)
      00889E C7 52 16         [ 1]  649 	ld	0x5216, a
                                    650 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 475: }
      0088A1 84               [ 1]  651 	pop	a
      0088A2 85               [ 2]  652 	popw	x
      0088A3 84               [ 1]  653 	pop	a
      0088A4 FC               [ 2]  654 	jp	(x)
                                    655 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 484: void I2C_SendData(uint8_t Data)
                                    656 ;	-----------------------------------------
                                    657 ;	 function I2C_SendData
                                    658 ;	-----------------------------------------
      0088A5                        659 _I2C_SendData:
                                    660 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 487: I2C->DR = Data;
      0088A5 C7 52 16         [ 1]  661 	ld	0x5216, a
                                    662 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 488: }
      0088A8 81               [ 4]  663 	ret
                                    664 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 606: ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
                                    665 ;	-----------------------------------------
                                    666 ;	 function I2C_CheckEvent
                                    667 ;	-----------------------------------------
      0088A9                        668 _I2C_CheckEvent:
      0088A9 52 08            [ 2]  669 	sub	sp, #8
                                    670 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 608: __IO uint16_t lastevent = 0x00;
      0088AB 0F 02            [ 1]  671 	clr	(0x02, sp)
      0088AD 0F 01            [ 1]  672 	clr	(0x01, sp)
                                    673 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 614: assert_param(IS_I2C_EVENT_OK(I2C_Event));
      0088AF 1F 03            [ 2]  674 	ldw	(0x03, sp), x
      0088B1 A3 00 04         [ 2]  675 	cpw	x, #0x0004
      0088B4 26 03            [ 1]  676 	jrne	00283$
      0088B6 A6 01            [ 1]  677 	ld	a, #0x01
      0088B8 21                     678 	.byte 0x21
      0088B9                        679 00283$:
      0088B9 4F               [ 1]  680 	clr	a
      0088BA                        681 00284$:
      0088BA 1E 03            [ 2]  682 	ldw	x, (0x03, sp)
      0088BC A3 06 82         [ 2]  683 	cpw	x, #0x0682
      0088BF 27 73            [ 1]  684 	jreq	00110$
      0088C1 1E 03            [ 2]  685 	ldw	x, (0x03, sp)
      0088C3 A3 02 02         [ 2]  686 	cpw	x, #0x0202
      0088C6 27 6C            [ 1]  687 	jreq	00110$
      0088C8 1E 03            [ 2]  688 	ldw	x, (0x03, sp)
      0088CA A3 12 00         [ 2]  689 	cpw	x, #0x1200
      0088CD 27 65            [ 1]  690 	jreq	00110$
      0088CF 1E 03            [ 2]  691 	ldw	x, (0x03, sp)
      0088D1 A3 02 40         [ 2]  692 	cpw	x, #0x0240
      0088D4 27 5E            [ 1]  693 	jreq	00110$
      0088D6 1E 03            [ 2]  694 	ldw	x, (0x03, sp)
      0088D8 A3 03 50         [ 2]  695 	cpw	x, #0x0350
      0088DB 27 57            [ 1]  696 	jreq	00110$
      0088DD 1E 03            [ 2]  697 	ldw	x, (0x03, sp)
      0088DF A3 06 84         [ 2]  698 	cpw	x, #0x0684
      0088E2 27 50            [ 1]  699 	jreq	00110$
      0088E4 1E 03            [ 2]  700 	ldw	x, (0x03, sp)
      0088E6 A3 07 94         [ 2]  701 	cpw	x, #0x0794
      0088E9 27 49            [ 1]  702 	jreq	00110$
      0088EB 4D               [ 1]  703 	tnz	a
      0088EC 26 46            [ 1]  704 	jrne	00110$
      0088EE 1E 03            [ 2]  705 	ldw	x, (0x03, sp)
      0088F0 A3 00 10         [ 2]  706 	cpw	x, #0x0010
      0088F3 27 3F            [ 1]  707 	jreq	00110$
      0088F5 1E 03            [ 2]  708 	ldw	x, (0x03, sp)
      0088F7 A3 03 01         [ 2]  709 	cpw	x, #0x0301
      0088FA 27 38            [ 1]  710 	jreq	00110$
      0088FC 1E 03            [ 2]  711 	ldw	x, (0x03, sp)
      0088FE A3 07 82         [ 2]  712 	cpw	x, #0x0782
      008901 27 31            [ 1]  713 	jreq	00110$
      008903 1E 03            [ 2]  714 	ldw	x, (0x03, sp)
      008905 A3 03 02         [ 2]  715 	cpw	x, #0x0302
      008908 27 2A            [ 1]  716 	jreq	00110$
      00890A 1E 03            [ 2]  717 	ldw	x, (0x03, sp)
      00890C A3 03 40         [ 2]  718 	cpw	x, #0x0340
      00890F 27 23            [ 1]  719 	jreq	00110$
      008911 1E 03            [ 2]  720 	ldw	x, (0x03, sp)
      008913 A3 07 84         [ 2]  721 	cpw	x, #0x0784
      008916 27 1C            [ 1]  722 	jreq	00110$
      008918 1E 03            [ 2]  723 	ldw	x, (0x03, sp)
      00891A A3 07 80         [ 2]  724 	cpw	x, #0x0780
      00891D 27 15            [ 1]  725 	jreq	00110$
      00891F 1E 03            [ 2]  726 	ldw	x, (0x03, sp)
      008921 A3 03 08         [ 2]  727 	cpw	x, #0x0308
      008924 27 0E            [ 1]  728 	jreq	00110$
      008926 88               [ 1]  729 	push	a
      008927 4B 66            [ 1]  730 	push	#0x66
      008929 4B 02            [ 1]  731 	push	#0x02
      00892B 5F               [ 1]  732 	clrw	x
      00892C 89               [ 2]  733 	pushw	x
      00892D AE 80 B0         [ 2]  734 	ldw	x, #(___str_0+0)
      008930 CD 82 B0         [ 4]  735 	call	_assert_failed
      008933 84               [ 1]  736 	pop	a
      008934                        737 00110$:
                                    738 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 616: if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
      008934 4D               [ 1]  739 	tnz	a
      008935 27 0B            [ 1]  740 	jreq	00102$
                                    741 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 618: lastevent = I2C->SR2 & I2C_SR2_AF;
      008937 C6 52 18         [ 1]  742 	ld	a, 0x5218
      00893A A4 04            [ 1]  743 	and	a, #0x04
      00893C 5F               [ 1]  744 	clrw	x
      00893D 97               [ 1]  745 	ld	xl, a
      00893E 1F 01            [ 2]  746 	ldw	(0x01, sp), x
      008940 20 0E            [ 2]  747 	jra	00103$
      008942                        748 00102$:
                                    749 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 622: flag1 = I2C->SR1;
      008942 C6 52 17         [ 1]  750 	ld	a, 0x5217
      008945 97               [ 1]  751 	ld	xl, a
                                    752 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 623: flag2 = I2C->SR3;
      008946 C6 52 19         [ 1]  753 	ld	a, 0x5219
                                    754 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 624: lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
      008949 95               [ 1]  755 	ld	xh, a
      00894A 0F 06            [ 1]  756 	clr	(0x06, sp)
      00894C 0F 07            [ 1]  757 	clr	(0x07, sp)
      00894E 1F 01            [ 2]  758 	ldw	(0x01, sp), x
      008950                        759 00103$:
                                    760 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 627: if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
      008950 7B 02            [ 1]  761 	ld	a, (0x02, sp)
      008952 14 04            [ 1]  762 	and	a, (0x04, sp)
      008954 97               [ 1]  763 	ld	xl, a
      008955 7B 01            [ 1]  764 	ld	a, (0x01, sp)
      008957 14 03            [ 1]  765 	and	a, (0x03, sp)
      008959 95               [ 1]  766 	ld	xh, a
      00895A 13 03            [ 2]  767 	cpw	x, (0x03, sp)
      00895C 26 03            [ 1]  768 	jrne	00105$
                                    769 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 630: status = SUCCESS;
      00895E A6 01            [ 1]  770 	ld	a, #0x01
                                    771 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 635: status = ERROR;
      008960 21                     772 	.byte 0x21
      008961                        773 00105$:
      008961 4F               [ 1]  774 	clr	a
      008962                        775 00106$:
                                    776 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 639: return status;
                                    777 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 640: }
      008962 5B 08            [ 2]  778 	addw	sp, #8
      008964 81               [ 4]  779 	ret
                                    780 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 711: FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
                                    781 ;	-----------------------------------------
                                    782 ;	 function I2C_GetFlagStatus
                                    783 ;	-----------------------------------------
      008965                        784 _I2C_GetFlagStatus:
      008965 52 03            [ 2]  785 	sub	sp, #3
      008967 1F 02            [ 2]  786 	ldw	(0x02, sp), x
                                    787 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 713: uint8_t tempreg = 0;
      008969 0F 01            [ 1]  788 	clr	(0x01, sp)
                                    789 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 718: assert_param(IS_I2C_FLAG_OK(I2C_Flag));
      00896B 1E 02            [ 2]  790 	ldw	x, (0x02, sp)
      00896D A3 01 80         [ 2]  791 	cpw	x, #0x0180
      008970 27 5B            [ 1]  792 	jreq	00112$
      008972 A3 01 40         [ 2]  793 	cpw	x, #0x0140
      008975 27 56            [ 1]  794 	jreq	00112$
      008977 A3 01 10         [ 2]  795 	cpw	x, #0x0110
      00897A 27 51            [ 1]  796 	jreq	00112$
      00897C A3 01 08         [ 2]  797 	cpw	x, #0x0108
      00897F 27 4C            [ 1]  798 	jreq	00112$
      008981 A3 01 04         [ 2]  799 	cpw	x, #0x0104
      008984 27 47            [ 1]  800 	jreq	00112$
      008986 A3 01 02         [ 2]  801 	cpw	x, #0x0102
      008989 27 42            [ 1]  802 	jreq	00112$
      00898B A3 01 01         [ 2]  803 	cpw	x, #0x0101
      00898E 27 3D            [ 1]  804 	jreq	00112$
      008990 A3 02 20         [ 2]  805 	cpw	x, #0x0220
      008993 27 38            [ 1]  806 	jreq	00112$
      008995 A3 02 08         [ 2]  807 	cpw	x, #0x0208
      008998 27 33            [ 1]  808 	jreq	00112$
      00899A A3 02 04         [ 2]  809 	cpw	x, #0x0204
      00899D 27 2E            [ 1]  810 	jreq	00112$
      00899F A3 02 02         [ 2]  811 	cpw	x, #0x0202
      0089A2 27 29            [ 1]  812 	jreq	00112$
      0089A4 A3 02 01         [ 2]  813 	cpw	x, #0x0201
      0089A7 27 24            [ 1]  814 	jreq	00112$
      0089A9 A3 03 10         [ 2]  815 	cpw	x, #0x0310
      0089AC 27 1F            [ 1]  816 	jreq	00112$
      0089AE A3 03 04         [ 2]  817 	cpw	x, #0x0304
      0089B1 27 1A            [ 1]  818 	jreq	00112$
      0089B3 A3 03 02         [ 2]  819 	cpw	x, #0x0302
      0089B6 27 15            [ 1]  820 	jreq	00112$
      0089B8 A3 03 01         [ 2]  821 	cpw	x, #0x0301
      0089BB 27 10            [ 1]  822 	jreq	00112$
      0089BD 89               [ 2]  823 	pushw	x
      0089BE 4B CE            [ 1]  824 	push	#0xce
      0089C0 4B 02            [ 1]  825 	push	#0x02
      0089C2 4B 00            [ 1]  826 	push	#0x00
      0089C4 4B 00            [ 1]  827 	push	#0x00
      0089C6 AE 80 B0         [ 2]  828 	ldw	x, #(___str_0+0)
      0089C9 CD 82 B0         [ 4]  829 	call	_assert_failed
      0089CC 85               [ 2]  830 	popw	x
      0089CD                        831 00112$:
                                    832 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 721: regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
      0089CD 9E               [ 1]  833 	ld	a, xh
                                    834 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 723: switch (regindex)
      0089CE A1 01            [ 1]  835 	cp	a, #0x01
      0089D0 27 0A            [ 1]  836 	jreq	00101$
      0089D2 A1 02            [ 1]  837 	cp	a, #0x02
      0089D4 27 0D            [ 1]  838 	jreq	00102$
      0089D6 A1 03            [ 1]  839 	cp	a, #0x03
      0089D8 27 10            [ 1]  840 	jreq	00103$
      0089DA 20 13            [ 2]  841 	jra	00105$
                                    842 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 726: case 0x01:
      0089DC                        843 00101$:
                                    844 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 727: tempreg = (uint8_t)I2C->SR1;
      0089DC C6 52 17         [ 1]  845 	ld	a, 0x5217
      0089DF 6B 01            [ 1]  846 	ld	(0x01, sp), a
                                    847 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 728: break;
      0089E1 20 0C            [ 2]  848 	jra	00105$
                                    849 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 731: case 0x02:
      0089E3                        850 00102$:
                                    851 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 732: tempreg = (uint8_t)I2C->SR2;
      0089E3 C6 52 18         [ 1]  852 	ld	a, 0x5218
      0089E6 6B 01            [ 1]  853 	ld	(0x01, sp), a
                                    854 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 733: break;
      0089E8 20 05            [ 2]  855 	jra	00105$
                                    856 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 736: case 0x03:
      0089EA                        857 00103$:
                                    858 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 737: tempreg = (uint8_t)I2C->SR3;
      0089EA C6 52 19         [ 1]  859 	ld	a, 0x5219
      0089ED 6B 01            [ 1]  860 	ld	(0x01, sp), a
                                    861 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 742: }
      0089EF                        862 00105$:
                                    863 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 745: if ((tempreg & (uint8_t)I2C_Flag ) != 0)
      0089EF 7B 03            [ 1]  864 	ld	a, (0x03, sp)
      0089F1 14 01            [ 1]  865 	and	a, (0x01, sp)
      0089F3 27 03            [ 1]  866 	jreq	00107$
                                    867 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 748: bitstatus = SET;
      0089F5 A6 01            [ 1]  868 	ld	a, #0x01
                                    869 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 753: bitstatus = RESET;
      0089F7 21                     870 	.byte 0x21
      0089F8                        871 00107$:
      0089F8 4F               [ 1]  872 	clr	a
      0089F9                        873 00108$:
                                    874 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 756: return bitstatus;
                                    875 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_i2c.c: 757: }
      0089F9 5B 03            [ 2]  876 	addw	sp, #3
      0089FB 81               [ 4]  877 	ret
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
