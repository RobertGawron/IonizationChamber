                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_clk
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CLKPrescTable
                                     12 	.globl _HSIDivFactor
                                     13 	.globl _assert_failed
                                     14 	.globl _CLK_DeInit
                                     15 	.globl _CLK_HSECmd
                                     16 	.globl _CLK_HSICmd
                                     17 	.globl _CLK_LSICmd
                                     18 	.globl _CLK_ClockSwitchCmd
                                     19 	.globl _CLK_PeripheralClockConfig
                                     20 	.globl _CLK_ClockSwitchConfig
                                     21 	.globl _CLK_HSIPrescalerConfig
                                     22 	.globl _CLK_SYSCLKConfig
                                     23 	.globl _CLK_GetClockFreq
                                     24 	.globl _CLK_GetFlagStatus
                                     25 ;--------------------------------------------------------
                                     26 ; ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area DATA
                                     29 ;--------------------------------------------------------
                                     30 ; ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area INITIALIZED
                                     33 ;--------------------------------------------------------
                                     34 ; absolute external ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area DABS (ABS)
                                     37 
                                     38 ; default segment ordering for linker
                                     39 	.area HOME
                                     40 	.area GSINIT
                                     41 	.area GSFINAL
                                     42 	.area CONST
                                     43 	.area INITIALIZER
                                     44 	.area CODE
                                     45 
                                     46 ;--------------------------------------------------------
                                     47 ; global & static initialisations
                                     48 ;--------------------------------------------------------
                                     49 	.area HOME
                                     50 	.area GSINIT
                                     51 	.area GSFINAL
                                     52 	.area GSINIT
                                     53 ;--------------------------------------------------------
                                     54 ; Home
                                     55 ;--------------------------------------------------------
                                     56 	.area HOME
                                     57 	.area HOME
                                     58 ;--------------------------------------------------------
                                     59 ; code
                                     60 ;--------------------------------------------------------
                                     61 	.area CODE
                                     62 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 72: void CLK_DeInit(void)
                                     63 ;	-----------------------------------------
                                     64 ;	 function CLK_DeInit
                                     65 ;	-----------------------------------------
      008C10                         66 _CLK_DeInit:
                                     67 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      008C10 35 01 50 C0      [ 1]   68 	mov	0x50c0+0, #0x01
                                     69 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      008C14 35 00 50 C1      [ 1]   70 	mov	0x50c1+0, #0x00
                                     71 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      008C18 35 E1 50 C4      [ 1]   72 	mov	0x50c4+0, #0xe1
                                     73 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      008C1C 35 00 50 C5      [ 1]   74 	mov	0x50c5+0, #0x00
                                     75 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      008C20 35 18 50 C6      [ 1]   76 	mov	0x50c6+0, #0x18
                                     77 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      008C24 35 FF 50 C7      [ 1]   78 	mov	0x50c7+0, #0xff
                                     79 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      008C28 35 FF 50 CA      [ 1]   80 	mov	0x50ca+0, #0xff
                                     81 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      008C2C 35 00 50 C8      [ 1]   82 	mov	0x50c8+0, #0x00
                                     83 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      008C30 35 00 50 C9      [ 1]   84 	mov	0x50c9+0, #0x00
                                     85 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      008C34                         86 00101$:
      008C34 72 00 50 C9 FB   [ 2]   87 	btjt	0x50c9, #0, 00101$
                                     88 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      008C39 35 00 50 C9      [ 1]   89 	mov	0x50c9+0, #0x00
                                     90 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      008C3D 35 00 50 CC      [ 1]   91 	mov	0x50cc+0, #0x00
                                     92 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      008C41 35 00 50 CD      [ 1]   93 	mov	0x50cd+0, #0x00
                                     94 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 88: }
      008C45 81               [ 4]   95 	ret
                                     96 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 124: void CLK_HSECmd(FunctionalState NewState)
                                     97 ;	-----------------------------------------
                                     98 ;	 function CLK_HSECmd
                                     99 ;	-----------------------------------------
      008C46                        100 _CLK_HSECmd:
      008C46 88               [ 1]  101 	push	a
                                    102 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 127: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008C47 6B 01            [ 1]  103 	ld	(0x01, sp), a
      008C49 27 10            [ 1]  104 	jreq	00107$
      008C4B 0D 01            [ 1]  105 	tnz	(0x01, sp)
      008C4D 26 0C            [ 1]  106 	jrne	00107$
      008C4F 4B 7F            [ 1]  107 	push	#0x7f
      008C51 5F               [ 1]  108 	clrw	x
      008C52 89               [ 2]  109 	pushw	x
      008C53 4B 00            [ 1]  110 	push	#0x00
      008C55 AE 81 25         [ 2]  111 	ldw	x, #(___str_0+0)
      008C58 CD 82 14         [ 4]  112 	call	_assert_failed
      008C5B                        113 00107$:
                                    114 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 132: CLK->ECKR |= CLK_ECKR_HSEEN;
      008C5B C6 50 C1         [ 1]  115 	ld	a, 0x50c1
                                    116 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 129: if (NewState != DISABLE)
      008C5E 0D 01            [ 1]  117 	tnz	(0x01, sp)
      008C60 27 07            [ 1]  118 	jreq	00102$
                                    119 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 132: CLK->ECKR |= CLK_ECKR_HSEEN;
      008C62 AA 01            [ 1]  120 	or	a, #0x01
      008C64 C7 50 C1         [ 1]  121 	ld	0x50c1, a
      008C67 20 05            [ 2]  122 	jra	00104$
      008C69                        123 00102$:
                                    124 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 137: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      008C69 A4 FE            [ 1]  125 	and	a, #0xfe
      008C6B C7 50 C1         [ 1]  126 	ld	0x50c1, a
      008C6E                        127 00104$:
                                    128 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 139: }
      008C6E 84               [ 1]  129 	pop	a
      008C6F 81               [ 4]  130 	ret
                                    131 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 148: void CLK_HSICmd(FunctionalState NewState)
                                    132 ;	-----------------------------------------
                                    133 ;	 function CLK_HSICmd
                                    134 ;	-----------------------------------------
      008C70                        135 _CLK_HSICmd:
      008C70 88               [ 1]  136 	push	a
                                    137 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 151: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008C71 6B 01            [ 1]  138 	ld	(0x01, sp), a
      008C73 27 10            [ 1]  139 	jreq	00107$
      008C75 0D 01            [ 1]  140 	tnz	(0x01, sp)
      008C77 26 0C            [ 1]  141 	jrne	00107$
      008C79 4B 97            [ 1]  142 	push	#0x97
      008C7B 5F               [ 1]  143 	clrw	x
      008C7C 89               [ 2]  144 	pushw	x
      008C7D 4B 00            [ 1]  145 	push	#0x00
      008C7F AE 81 25         [ 2]  146 	ldw	x, #(___str_0+0)
      008C82 CD 82 14         [ 4]  147 	call	_assert_failed
      008C85                        148 00107$:
                                    149 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 156: CLK->ICKR |= CLK_ICKR_HSIEN;
      008C85 C6 50 C0         [ 1]  150 	ld	a, 0x50c0
                                    151 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 153: if (NewState != DISABLE)
      008C88 0D 01            [ 1]  152 	tnz	(0x01, sp)
      008C8A 27 07            [ 1]  153 	jreq	00102$
                                    154 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 156: CLK->ICKR |= CLK_ICKR_HSIEN;
      008C8C AA 01            [ 1]  155 	or	a, #0x01
      008C8E C7 50 C0         [ 1]  156 	ld	0x50c0, a
      008C91 20 05            [ 2]  157 	jra	00104$
      008C93                        158 00102$:
                                    159 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 161: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      008C93 A4 FE            [ 1]  160 	and	a, #0xfe
      008C95 C7 50 C0         [ 1]  161 	ld	0x50c0, a
      008C98                        162 00104$:
                                    163 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 163: }
      008C98 84               [ 1]  164 	pop	a
      008C99 81               [ 4]  165 	ret
                                    166 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 173: void CLK_LSICmd(FunctionalState NewState)
                                    167 ;	-----------------------------------------
                                    168 ;	 function CLK_LSICmd
                                    169 ;	-----------------------------------------
      008C9A                        170 _CLK_LSICmd:
      008C9A 88               [ 1]  171 	push	a
                                    172 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 176: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008C9B 6B 01            [ 1]  173 	ld	(0x01, sp), a
      008C9D 27 10            [ 1]  174 	jreq	00107$
      008C9F 0D 01            [ 1]  175 	tnz	(0x01, sp)
      008CA1 26 0C            [ 1]  176 	jrne	00107$
      008CA3 4B B0            [ 1]  177 	push	#0xb0
      008CA5 5F               [ 1]  178 	clrw	x
      008CA6 89               [ 2]  179 	pushw	x
      008CA7 4B 00            [ 1]  180 	push	#0x00
      008CA9 AE 81 25         [ 2]  181 	ldw	x, #(___str_0+0)
      008CAC CD 82 14         [ 4]  182 	call	_assert_failed
      008CAF                        183 00107$:
                                    184 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 181: CLK->ICKR |= CLK_ICKR_LSIEN;
      008CAF C6 50 C0         [ 1]  185 	ld	a, 0x50c0
                                    186 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 178: if (NewState != DISABLE)
      008CB2 0D 01            [ 1]  187 	tnz	(0x01, sp)
      008CB4 27 07            [ 1]  188 	jreq	00102$
                                    189 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 181: CLK->ICKR |= CLK_ICKR_LSIEN;
      008CB6 AA 08            [ 1]  190 	or	a, #0x08
      008CB8 C7 50 C0         [ 1]  191 	ld	0x50c0, a
      008CBB 20 05            [ 2]  192 	jra	00104$
      008CBD                        193 00102$:
                                    194 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 186: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      008CBD A4 F7            [ 1]  195 	and	a, #0xf7
      008CBF C7 50 C0         [ 1]  196 	ld	0x50c0, a
      008CC2                        197 00104$:
                                    198 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 188: }
      008CC2 84               [ 1]  199 	pop	a
      008CC3 81               [ 4]  200 	ret
                                    201 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 224: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    202 ;	-----------------------------------------
                                    203 ;	 function CLK_ClockSwitchCmd
                                    204 ;	-----------------------------------------
      008CC4                        205 _CLK_ClockSwitchCmd:
      008CC4 88               [ 1]  206 	push	a
                                    207 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 227: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008CC5 6B 01            [ 1]  208 	ld	(0x01, sp), a
      008CC7 27 10            [ 1]  209 	jreq	00107$
      008CC9 0D 01            [ 1]  210 	tnz	(0x01, sp)
      008CCB 26 0C            [ 1]  211 	jrne	00107$
      008CCD 4B E3            [ 1]  212 	push	#0xe3
      008CCF 5F               [ 1]  213 	clrw	x
      008CD0 89               [ 2]  214 	pushw	x
      008CD1 4B 00            [ 1]  215 	push	#0x00
      008CD3 AE 81 25         [ 2]  216 	ldw	x, #(___str_0+0)
      008CD6 CD 82 14         [ 4]  217 	call	_assert_failed
      008CD9                        218 00107$:
                                    219 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 232: CLK->SWCR |= CLK_SWCR_SWEN;
      008CD9 C6 50 C5         [ 1]  220 	ld	a, 0x50c5
                                    221 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 229: if (NewState != DISABLE )
      008CDC 0D 01            [ 1]  222 	tnz	(0x01, sp)
      008CDE 27 07            [ 1]  223 	jreq	00102$
                                    224 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 232: CLK->SWCR |= CLK_SWCR_SWEN;
      008CE0 AA 02            [ 1]  225 	or	a, #0x02
      008CE2 C7 50 C5         [ 1]  226 	ld	0x50c5, a
      008CE5 20 05            [ 2]  227 	jra	00104$
      008CE7                        228 00102$:
                                    229 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 237: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      008CE7 A4 FD            [ 1]  230 	and	a, #0xfd
      008CE9 C7 50 C5         [ 1]  231 	ld	0x50c5, a
      008CEC                        232 00104$:
                                    233 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 239: }
      008CEC 84               [ 1]  234 	pop	a
      008CED 81               [ 4]  235 	ret
                                    236 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 278: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    237 ;	-----------------------------------------
                                    238 ;	 function CLK_PeripheralClockConfig
                                    239 ;	-----------------------------------------
      008CEE                        240 _CLK_PeripheralClockConfig:
      008CEE 52 03            [ 2]  241 	sub	sp, #3
      008CF0 6B 03            [ 1]  242 	ld	(0x03, sp), a
                                    243 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 281: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008CF2 0D 06            [ 1]  244 	tnz	(0x06, sp)
      008CF4 27 10            [ 1]  245 	jreq	00113$
      008CF6 0D 06            [ 1]  246 	tnz	(0x06, sp)
      008CF8 26 0C            [ 1]  247 	jrne	00113$
      008CFA 4B 19            [ 1]  248 	push	#0x19
      008CFC 4B 01            [ 1]  249 	push	#0x01
      008CFE 5F               [ 1]  250 	clrw	x
      008CFF 89               [ 2]  251 	pushw	x
      008D00 AE 81 25         [ 2]  252 	ldw	x, #(___str_0+0)
      008D03 CD 82 14         [ 4]  253 	call	_assert_failed
      008D06                        254 00113$:
                                    255 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 282: assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
      008D06 0D 03            [ 1]  256 	tnz	(0x03, sp)
      008D08 27 64            [ 1]  257 	jreq	00118$
      008D0A 7B 03            [ 1]  258 	ld	a, (0x03, sp)
      008D0C 4A               [ 1]  259 	dec	a
      008D0D 27 5F            [ 1]  260 	jreq	00118$
      008D0F 7B 03            [ 1]  261 	ld	a, (0x03, sp)
      008D11 A0 03            [ 1]  262 	sub	a, #0x03
      008D13 26 02            [ 1]  263 	jrne	00298$
      008D15 4C               [ 1]  264 	inc	a
      008D16 21                     265 	.byte 0x21
      008D17                        266 00298$:
      008D17 4F               [ 1]  267 	clr	a
      008D18                        268 00299$:
      008D18 4D               [ 1]  269 	tnz	a
      008D19 26 53            [ 1]  270 	jrne	00118$
      008D1B 4D               [ 1]  271 	tnz	a
      008D1C 26 50            [ 1]  272 	jrne	00118$
      008D1E 4D               [ 1]  273 	tnz	a
      008D1F 26 4D            [ 1]  274 	jrne	00118$
      008D21 7B 03            [ 1]  275 	ld	a, (0x03, sp)
      008D23 A0 04            [ 1]  276 	sub	a, #0x04
      008D25 26 04            [ 1]  277 	jrne	00304$
      008D27 4C               [ 1]  278 	inc	a
      008D28 97               [ 1]  279 	ld	xl, a
      008D29 20 02            [ 2]  280 	jra	00305$
      008D2B                        281 00304$:
      008D2B 4F               [ 1]  282 	clr	a
      008D2C 97               [ 1]  283 	ld	xl, a
      008D2D                        284 00305$:
      008D2D 9F               [ 1]  285 	ld	a, xl
      008D2E 4D               [ 1]  286 	tnz	a
      008D2F 26 3D            [ 1]  287 	jrne	00118$
      008D31 7B 03            [ 1]  288 	ld	a, (0x03, sp)
      008D33 A0 05            [ 1]  289 	sub	a, #0x05
      008D35 26 02            [ 1]  290 	jrne	00308$
      008D37 4C               [ 1]  291 	inc	a
      008D38 21                     292 	.byte 0x21
      008D39                        293 00308$:
      008D39 4F               [ 1]  294 	clr	a
      008D3A                        295 00309$:
      008D3A 4D               [ 1]  296 	tnz	a
      008D3B 26 31            [ 1]  297 	jrne	00118$
      008D3D 4D               [ 1]  298 	tnz	a
      008D3E 26 2E            [ 1]  299 	jrne	00118$
      008D40 9F               [ 1]  300 	ld	a, xl
      008D41 4D               [ 1]  301 	tnz	a
      008D42 26 2A            [ 1]  302 	jrne	00118$
      008D44 7B 03            [ 1]  303 	ld	a, (0x03, sp)
      008D46 A1 06            [ 1]  304 	cp	a, #0x06
      008D48 27 24            [ 1]  305 	jreq	00118$
      008D4A 7B 03            [ 1]  306 	ld	a, (0x03, sp)
      008D4C A1 07            [ 1]  307 	cp	a, #0x07
      008D4E 27 1E            [ 1]  308 	jreq	00118$
      008D50 7B 03            [ 1]  309 	ld	a, (0x03, sp)
      008D52 A1 17            [ 1]  310 	cp	a, #0x17
      008D54 27 18            [ 1]  311 	jreq	00118$
      008D56 7B 03            [ 1]  312 	ld	a, (0x03, sp)
      008D58 A1 13            [ 1]  313 	cp	a, #0x13
      008D5A 27 12            [ 1]  314 	jreq	00118$
      008D5C 7B 03            [ 1]  315 	ld	a, (0x03, sp)
      008D5E A1 12            [ 1]  316 	cp	a, #0x12
      008D60 27 0C            [ 1]  317 	jreq	00118$
      008D62 4B 1A            [ 1]  318 	push	#0x1a
      008D64 4B 01            [ 1]  319 	push	#0x01
      008D66 5F               [ 1]  320 	clrw	x
      008D67 89               [ 2]  321 	pushw	x
      008D68 AE 81 25         [ 2]  322 	ldw	x, #(___str_0+0)
      008D6B CD 82 14         [ 4]  323 	call	_assert_failed
      008D6E                        324 00118$:
                                    325 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 289: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008D6E 7B 03            [ 1]  326 	ld	a, (0x03, sp)
      008D70 A4 0F            [ 1]  327 	and	a, #0x0f
      008D72 88               [ 1]  328 	push	a
      008D73 A6 01            [ 1]  329 	ld	a, #0x01
      008D75 6B 02            [ 1]  330 	ld	(0x02, sp), a
      008D77 84               [ 1]  331 	pop	a
      008D78 4D               [ 1]  332 	tnz	a
      008D79 27 05            [ 1]  333 	jreq	00329$
      008D7B                        334 00328$:
      008D7B 08 01            [ 1]  335 	sll	(0x01, sp)
      008D7D 4A               [ 1]  336 	dec	a
      008D7E 26 FB            [ 1]  337 	jrne	00328$
      008D80                        338 00329$:
                                    339 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 294: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008D80 7B 01            [ 1]  340 	ld	a, (0x01, sp)
      008D82 43               [ 1]  341 	cpl	a
      008D83 6B 02            [ 1]  342 	ld	(0x02, sp), a
                                    343 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 284: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      008D85 7B 03            [ 1]  344 	ld	a, (0x03, sp)
      008D87 A5 10            [ 1]  345 	bcp	a, #0x10
      008D89 26 15            [ 1]  346 	jrne	00108$
                                    347 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 289: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008D8B C6 50 C7         [ 1]  348 	ld	a, 0x50c7
                                    349 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 286: if (NewState != DISABLE)
      008D8E 0D 06            [ 1]  350 	tnz	(0x06, sp)
      008D90 27 07            [ 1]  351 	jreq	00102$
                                    352 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 289: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008D92 1A 01            [ 1]  353 	or	a, (0x01, sp)
      008D94 C7 50 C7         [ 1]  354 	ld	0x50c7, a
      008D97 20 1A            [ 2]  355 	jra	00110$
      008D99                        356 00102$:
                                    357 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 294: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008D99 14 02            [ 1]  358 	and	a, (0x02, sp)
      008D9B C7 50 C7         [ 1]  359 	ld	0x50c7, a
      008D9E 20 13            [ 2]  360 	jra	00110$
      008DA0                        361 00108$:
                                    362 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 302: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008DA0 C6 50 CA         [ 1]  363 	ld	a, 0x50ca
                                    364 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 299: if (NewState != DISABLE)
      008DA3 0D 06            [ 1]  365 	tnz	(0x06, sp)
      008DA5 27 07            [ 1]  366 	jreq	00105$
                                    367 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 302: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008DA7 1A 01            [ 1]  368 	or	a, (0x01, sp)
      008DA9 C7 50 CA         [ 1]  369 	ld	0x50ca, a
      008DAC 20 05            [ 2]  370 	jra	00110$
      008DAE                        371 00105$:
                                    372 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 307: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008DAE 14 02            [ 1]  373 	and	a, (0x02, sp)
      008DB0 C7 50 CA         [ 1]  374 	ld	0x50ca, a
      008DB3                        375 00110$:
                                    376 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 310: }
      008DB3 5B 03            [ 2]  377 	addw	sp, #3
      008DB5 85               [ 2]  378 	popw	x
      008DB6 84               [ 1]  379 	pop	a
      008DB7 FC               [ 2]  380 	jp	(x)
                                    381 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 326: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    382 ;	-----------------------------------------
                                    383 ;	 function CLK_ClockSwitchConfig
                                    384 ;	-----------------------------------------
      008DB8                        385 _CLK_ClockSwitchConfig:
      008DB8 88               [ 1]  386 	push	a
      008DB9 6B 01            [ 1]  387 	ld	(0x01, sp), a
                                    388 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 333: assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
      008DBB 7B 04            [ 1]  389 	ld	a, (0x04, sp)
      008DBD A1 E1            [ 1]  390 	cp	a, #0xe1
      008DBF 27 18            [ 1]  391 	jreq	00140$
      008DC1 7B 04            [ 1]  392 	ld	a, (0x04, sp)
      008DC3 A1 D2            [ 1]  393 	cp	a, #0xd2
      008DC5 27 12            [ 1]  394 	jreq	00140$
      008DC7 7B 04            [ 1]  395 	ld	a, (0x04, sp)
      008DC9 A1 B4            [ 1]  396 	cp	a, #0xb4
      008DCB 27 0C            [ 1]  397 	jreq	00140$
      008DCD 4B 4D            [ 1]  398 	push	#0x4d
      008DCF 4B 01            [ 1]  399 	push	#0x01
      008DD1 5F               [ 1]  400 	clrw	x
      008DD2 89               [ 2]  401 	pushw	x
      008DD3 AE 81 25         [ 2]  402 	ldw	x, #(___str_0+0)
      008DD6 CD 82 14         [ 4]  403 	call	_assert_failed
      008DD9                        404 00140$:
                                    405 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 334: assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
      008DD9 0D 01            [ 1]  406 	tnz	(0x01, sp)
      008DDB 27 10            [ 1]  407 	jreq	00148$
      008DDD 0D 01            [ 1]  408 	tnz	(0x01, sp)
      008DDF 26 0C            [ 1]  409 	jrne	00148$
      008DE1 4B 4E            [ 1]  410 	push	#0x4e
      008DE3 4B 01            [ 1]  411 	push	#0x01
      008DE5 5F               [ 1]  412 	clrw	x
      008DE6 89               [ 2]  413 	pushw	x
      008DE7 AE 81 25         [ 2]  414 	ldw	x, #(___str_0+0)
      008DEA CD 82 14         [ 4]  415 	call	_assert_failed
      008DED                        416 00148$:
                                    417 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 335: assert_param(IS_FUNCTIONALSTATE_OK(ITState));
      008DED 0D 05            [ 1]  418 	tnz	(0x05, sp)
      008DEF 27 10            [ 1]  419 	jreq	00153$
      008DF1 0D 05            [ 1]  420 	tnz	(0x05, sp)
      008DF3 26 0C            [ 1]  421 	jrne	00153$
      008DF5 4B 4F            [ 1]  422 	push	#0x4f
      008DF7 4B 01            [ 1]  423 	push	#0x01
      008DF9 5F               [ 1]  424 	clrw	x
      008DFA 89               [ 2]  425 	pushw	x
      008DFB AE 81 25         [ 2]  426 	ldw	x, #(___str_0+0)
      008DFE CD 82 14         [ 4]  427 	call	_assert_failed
      008E01                        428 00153$:
                                    429 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 336: assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
      008E01 0D 06            [ 1]  430 	tnz	(0x06, sp)
      008E03 27 10            [ 1]  431 	jreq	00158$
      008E05 0D 06            [ 1]  432 	tnz	(0x06, sp)
      008E07 26 0C            [ 1]  433 	jrne	00158$
      008E09 4B 50            [ 1]  434 	push	#0x50
      008E0B 4B 01            [ 1]  435 	push	#0x01
      008E0D 5F               [ 1]  436 	clrw	x
      008E0E 89               [ 2]  437 	pushw	x
      008E0F AE 81 25         [ 2]  438 	ldw	x, #(___str_0+0)
      008E12 CD 82 14         [ 4]  439 	call	_assert_failed
      008E15                        440 00158$:
                                    441 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 339: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      008E15 C6 50 C3         [ 1]  442 	ld	a, 0x50c3
      008E18 90 97            [ 1]  443 	ld	yl, a
                                    444 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 345: CLK->SWCR |= CLK_SWCR_SWEN;
      008E1A C6 50 C5         [ 1]  445 	ld	a, 0x50c5
                                    446 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 342: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      008E1D 0D 01            [ 1]  447 	tnz	(0x01, sp)
      008E1F 27 36            [ 1]  448 	jreq	00122$
                                    449 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 345: CLK->SWCR |= CLK_SWCR_SWEN;
      008E21 AA 02            [ 1]  450 	or	a, #0x02
      008E23 C7 50 C5         [ 1]  451 	ld	0x50c5, a
      008E26 C6 50 C5         [ 1]  452 	ld	a, 0x50c5
                                    453 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 348: if (ITState != DISABLE)
      008E29 0D 05            [ 1]  454 	tnz	(0x05, sp)
      008E2B 27 07            [ 1]  455 	jreq	00102$
                                    456 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 350: CLK->SWCR |= CLK_SWCR_SWIEN;
      008E2D AA 04            [ 1]  457 	or	a, #0x04
      008E2F C7 50 C5         [ 1]  458 	ld	0x50c5, a
      008E32 20 05            [ 2]  459 	jra	00103$
      008E34                        460 00102$:
                                    461 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 354: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      008E34 A4 FB            [ 1]  462 	and	a, #0xfb
      008E36 C7 50 C5         [ 1]  463 	ld	0x50c5, a
      008E39                        464 00103$:
                                    465 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 358: CLK->SWR = (uint8_t)CLK_NewClock;
      008E39 AE 50 C4         [ 2]  466 	ldw	x, #0x50c4
      008E3C 7B 04            [ 1]  467 	ld	a, (0x04, sp)
      008E3E F7               [ 1]  468 	ld	(x), a
                                    469 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 361: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      008E3F 5F               [ 1]  470 	clrw	x
      008E40 5A               [ 2]  471 	decw	x
      008E41                        472 00105$:
      008E41 72 01 50 C5 06   [ 2]  473 	btjf	0x50c5, #0, 00107$
      008E46 5D               [ 2]  474 	tnzw	x
      008E47 27 03            [ 1]  475 	jreq	00107$
                                    476 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 363: DownCounter--;
      008E49 5A               [ 2]  477 	decw	x
      008E4A 20 F5            [ 2]  478 	jra	00105$
      008E4C                        479 00107$:
                                    480 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 366: if(DownCounter != 0)
      008E4C 5D               [ 2]  481 	tnzw	x
      008E4D 27 05            [ 1]  482 	jreq	00109$
                                    483 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 368: Swif = SUCCESS;
      008E4F A6 01            [ 1]  484 	ld	a, #0x01
      008E51 97               [ 1]  485 	ld	xl, a
      008E52 20 32            [ 2]  486 	jra	00123$
      008E54                        487 00109$:
                                    488 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 372: Swif = ERROR;
      008E54 5F               [ 1]  489 	clrw	x
      008E55 20 2F            [ 2]  490 	jra	00123$
      008E57                        491 00122$:
                                    492 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 378: if (ITState != DISABLE)
      008E57 0D 05            [ 1]  493 	tnz	(0x05, sp)
      008E59 27 07            [ 1]  494 	jreq	00112$
                                    495 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 380: CLK->SWCR |= CLK_SWCR_SWIEN;
      008E5B AA 04            [ 1]  496 	or	a, #0x04
      008E5D C7 50 C5         [ 1]  497 	ld	0x50c5, a
      008E60 20 05            [ 2]  498 	jra	00113$
      008E62                        499 00112$:
                                    500 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 384: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      008E62 A4 FB            [ 1]  501 	and	a, #0xfb
      008E64 C7 50 C5         [ 1]  502 	ld	0x50c5, a
      008E67                        503 00113$:
                                    504 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 388: CLK->SWR = (uint8_t)CLK_NewClock;
      008E67 AE 50 C4         [ 2]  505 	ldw	x, #0x50c4
      008E6A 7B 04            [ 1]  506 	ld	a, (0x04, sp)
      008E6C F7               [ 1]  507 	ld	(x), a
                                    508 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 391: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      008E6D 5F               [ 1]  509 	clrw	x
      008E6E 5A               [ 2]  510 	decw	x
      008E6F                        511 00115$:
      008E6F 72 07 50 C5 06   [ 2]  512 	btjf	0x50c5, #3, 00117$
      008E74 5D               [ 2]  513 	tnzw	x
      008E75 27 03            [ 1]  514 	jreq	00117$
                                    515 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 393: DownCounter--;
      008E77 5A               [ 2]  516 	decw	x
      008E78 20 F5            [ 2]  517 	jra	00115$
      008E7A                        518 00117$:
                                    519 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 396: if(DownCounter != 0)
      008E7A 5D               [ 2]  520 	tnzw	x
      008E7B 27 08            [ 1]  521 	jreq	00119$
                                    522 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 399: CLK->SWCR |= CLK_SWCR_SWEN;
      008E7D 72 12 50 C5      [ 1]  523 	bset	0x50c5, #1
                                    524 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 400: Swif = SUCCESS;
      008E81 A6 01            [ 1]  525 	ld	a, #0x01
      008E83 97               [ 1]  526 	ld	xl, a
                                    527 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 404: Swif = ERROR;
      008E84 21                     528 	.byte 0x21
      008E85                        529 00119$:
      008E85 5F               [ 1]  530 	clrw	x
      008E86                        531 00123$:
                                    532 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 407: if(Swif != ERROR)
      008E86 9F               [ 1]  533 	ld	a, xl
      008E87 4D               [ 1]  534 	tnz	a
      008E88 27 2E            [ 1]  535 	jreq	00136$
                                    536 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 410: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      008E8A 0D 06            [ 1]  537 	tnz	(0x06, sp)
      008E8C 26 0C            [ 1]  538 	jrne	00132$
      008E8E 90 9F            [ 1]  539 	ld	a, yl
      008E90 A1 E1            [ 1]  540 	cp	a, #0xe1
      008E92 26 06            [ 1]  541 	jrne	00132$
                                    542 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 412: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      008E94 72 11 50 C0      [ 1]  543 	bres	0x50c0, #0
      008E98 20 1E            [ 2]  544 	jra	00136$
      008E9A                        545 00132$:
                                    546 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 414: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      008E9A 0D 06            [ 1]  547 	tnz	(0x06, sp)
      008E9C 26 0C            [ 1]  548 	jrne	00128$
      008E9E 90 9F            [ 1]  549 	ld	a, yl
      008EA0 A1 D2            [ 1]  550 	cp	a, #0xd2
      008EA2 26 06            [ 1]  551 	jrne	00128$
                                    552 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 416: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      008EA4 72 17 50 C0      [ 1]  553 	bres	0x50c0, #3
      008EA8 20 0E            [ 2]  554 	jra	00136$
      008EAA                        555 00128$:
                                    556 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 418: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      008EAA 0D 06            [ 1]  557 	tnz	(0x06, sp)
      008EAC 26 0A            [ 1]  558 	jrne	00136$
      008EAE 90 9F            [ 1]  559 	ld	a, yl
      008EB0 A1 B4            [ 1]  560 	cp	a, #0xb4
      008EB2 26 04            [ 1]  561 	jrne	00136$
                                    562 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 420: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      008EB4 72 11 50 C1      [ 1]  563 	bres	0x50c1, #0
      008EB8                        564 00136$:
                                    565 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 423: return(Swif);
      008EB8 9F               [ 1]  566 	ld	a, xl
                                    567 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 424: }
      008EB9 1E 02            [ 2]  568 	ldw	x, (2, sp)
      008EBB 5B 06            [ 2]  569 	addw	sp, #6
      008EBD FC               [ 2]  570 	jp	(x)
                                    571 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 434: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    572 ;	-----------------------------------------
                                    573 ;	 function CLK_HSIPrescalerConfig
                                    574 ;	-----------------------------------------
      008EBE                        575 _CLK_HSIPrescalerConfig:
      008EBE 88               [ 1]  576 	push	a
                                    577 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 437: assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
      008EBF 6B 01            [ 1]  578 	ld	(0x01, sp), a
      008EC1 27 1E            [ 1]  579 	jreq	00104$
      008EC3 7B 01            [ 1]  580 	ld	a, (0x01, sp)
      008EC5 A1 08            [ 1]  581 	cp	a, #0x08
      008EC7 27 18            [ 1]  582 	jreq	00104$
      008EC9 7B 01            [ 1]  583 	ld	a, (0x01, sp)
      008ECB A1 10            [ 1]  584 	cp	a, #0x10
      008ECD 27 12            [ 1]  585 	jreq	00104$
      008ECF 7B 01            [ 1]  586 	ld	a, (0x01, sp)
      008ED1 A1 18            [ 1]  587 	cp	a, #0x18
      008ED3 27 0C            [ 1]  588 	jreq	00104$
      008ED5 4B B5            [ 1]  589 	push	#0xb5
      008ED7 4B 01            [ 1]  590 	push	#0x01
      008ED9 5F               [ 1]  591 	clrw	x
      008EDA 89               [ 2]  592 	pushw	x
      008EDB AE 81 25         [ 2]  593 	ldw	x, #(___str_0+0)
      008EDE CD 82 14         [ 4]  594 	call	_assert_failed
      008EE1                        595 00104$:
                                    596 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 440: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      008EE1 C6 50 C6         [ 1]  597 	ld	a, 0x50c6
      008EE4 A4 E7            [ 1]  598 	and	a, #0xe7
      008EE6 C7 50 C6         [ 1]  599 	ld	0x50c6, a
                                    600 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 443: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      008EE9 C6 50 C6         [ 1]  601 	ld	a, 0x50c6
      008EEC 1A 01            [ 1]  602 	or	a, (0x01, sp)
      008EEE C7 50 C6         [ 1]  603 	ld	0x50c6, a
                                    604 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 444: }
      008EF1 84               [ 1]  605 	pop	a
      008EF2 81               [ 4]  606 	ret
                                    607 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 525: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    608 ;	-----------------------------------------
                                    609 ;	 function CLK_SYSCLKConfig
                                    610 ;	-----------------------------------------
      008EF3                        611 _CLK_SYSCLKConfig:
      008EF3 88               [ 1]  612 	push	a
                                    613 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 528: assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
      008EF4 95               [ 1]  614 	ld	xh, a
      008EF5 4D               [ 1]  615 	tnz	a
      008EF6 27 4B            [ 1]  616 	jreq	00107$
      008EF8 9E               [ 1]  617 	ld	a, xh
      008EF9 A1 08            [ 1]  618 	cp	a, #0x08
      008EFB 27 46            [ 1]  619 	jreq	00107$
      008EFD 9E               [ 1]  620 	ld	a, xh
      008EFE A1 10            [ 1]  621 	cp	a, #0x10
      008F00 27 41            [ 1]  622 	jreq	00107$
      008F02 9E               [ 1]  623 	ld	a, xh
      008F03 A1 18            [ 1]  624 	cp	a, #0x18
      008F05 27 3C            [ 1]  625 	jreq	00107$
      008F07 9E               [ 1]  626 	ld	a, xh
      008F08 A1 80            [ 1]  627 	cp	a, #0x80
      008F0A 27 37            [ 1]  628 	jreq	00107$
      008F0C 9E               [ 1]  629 	ld	a, xh
      008F0D A1 81            [ 1]  630 	cp	a, #0x81
      008F0F 27 32            [ 1]  631 	jreq	00107$
      008F11 9E               [ 1]  632 	ld	a, xh
      008F12 A1 82            [ 1]  633 	cp	a, #0x82
      008F14 27 2D            [ 1]  634 	jreq	00107$
      008F16 9E               [ 1]  635 	ld	a, xh
      008F17 A1 83            [ 1]  636 	cp	a, #0x83
      008F19 27 28            [ 1]  637 	jreq	00107$
      008F1B 9E               [ 1]  638 	ld	a, xh
      008F1C A1 84            [ 1]  639 	cp	a, #0x84
      008F1E 27 23            [ 1]  640 	jreq	00107$
      008F20 9E               [ 1]  641 	ld	a, xh
      008F21 A1 85            [ 1]  642 	cp	a, #0x85
      008F23 27 1E            [ 1]  643 	jreq	00107$
      008F25 9E               [ 1]  644 	ld	a, xh
      008F26 A1 86            [ 1]  645 	cp	a, #0x86
      008F28 27 19            [ 1]  646 	jreq	00107$
      008F2A 9E               [ 1]  647 	ld	a, xh
      008F2B A1 87            [ 1]  648 	cp	a, #0x87
      008F2D 27 14            [ 1]  649 	jreq	00107$
      008F2F 89               [ 2]  650 	pushw	x
      008F30 4B 10            [ 1]  651 	push	#0x10
      008F32 4B 02            [ 1]  652 	push	#0x02
      008F34 4B 00            [ 1]  653 	push	#0x00
      008F36 4B 00            [ 1]  654 	push	#0x00
      008F38 AE 81 25         [ 2]  655 	ldw	x, #(___str_0+0)
      008F3B CD 82 14         [ 4]  656 	call	_assert_failed
      008F3E 02               [ 1]  657 	rlwa	x
      008F3F 84               [ 1]  658 	pop	a
      008F40 01               [ 1]  659 	rrwa	x
      008F41 5B 01            [ 2]  660 	addw	sp, #1
      008F43                        661 00107$:
                                    662 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 532: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      008F43 C6 50 C6         [ 1]  663 	ld	a, 0x50c6
                                    664 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 530: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      008F46 5D               [ 2]  665 	tnzw	x
      008F47 2B 14            [ 1]  666 	jrmi	00102$
                                    667 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 532: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      008F49 A4 E7            [ 1]  668 	and	a, #0xe7
      008F4B C7 50 C6         [ 1]  669 	ld	0x50c6, a
                                    670 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 533: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      008F4E C6 50 C6         [ 1]  671 	ld	a, 0x50c6
      008F51 6B 01            [ 1]  672 	ld	(0x01, sp), a
      008F53 9E               [ 1]  673 	ld	a, xh
      008F54 A4 18            [ 1]  674 	and	a, #0x18
      008F56 1A 01            [ 1]  675 	or	a, (0x01, sp)
      008F58 C7 50 C6         [ 1]  676 	ld	0x50c6, a
      008F5B 20 12            [ 2]  677 	jra	00104$
      008F5D                        678 00102$:
                                    679 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 537: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      008F5D A4 F8            [ 1]  680 	and	a, #0xf8
      008F5F C7 50 C6         [ 1]  681 	ld	0x50c6, a
                                    682 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 538: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      008F62 C6 50 C6         [ 1]  683 	ld	a, 0x50c6
      008F65 6B 01            [ 1]  684 	ld	(0x01, sp), a
      008F67 9E               [ 1]  685 	ld	a, xh
      008F68 A4 07            [ 1]  686 	and	a, #0x07
      008F6A 1A 01            [ 1]  687 	or	a, (0x01, sp)
      008F6C C7 50 C6         [ 1]  688 	ld	0x50c6, a
      008F6F                        689 00104$:
                                    690 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 540: }
      008F6F 84               [ 1]  691 	pop	a
      008F70 81               [ 4]  692 	ret
                                    693 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 602: uint32_t CLK_GetClockFreq(void)
                                    694 ;	-----------------------------------------
                                    695 ;	 function CLK_GetClockFreq
                                    696 ;	-----------------------------------------
      008F71                        697 _CLK_GetClockFreq:
      008F71 52 04            [ 2]  698 	sub	sp, #4
                                    699 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 609: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      008F73 C6 50 C3         [ 1]  700 	ld	a, 0x50c3
                                    701 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 611: if (clocksource == CLK_SOURCE_HSI)
      008F76 6B 04            [ 1]  702 	ld	(0x04, sp), a
      008F78 A1 E1            [ 1]  703 	cp	a, #0xe1
      008F7A 26 23            [ 1]  704 	jrne	00105$
                                    705 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 613: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      008F7C C6 50 C6         [ 1]  706 	ld	a, 0x50c6
      008F7F A4 18            [ 1]  707 	and	a, #0x18
                                    708 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 614: tmp = (uint8_t)(tmp >> 3);
      008F81 44               [ 1]  709 	srl	a
      008F82 44               [ 1]  710 	srl	a
      008F83 44               [ 1]  711 	srl	a
                                    712 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 615: presc = HSIDivFactor[tmp];
      008F84 5F               [ 1]  713 	clrw	x
      008F85 97               [ 1]  714 	ld	xl, a
      008F86 D6 81 19         [ 1]  715 	ld	a, (_HSIDivFactor+0, x)
                                    716 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 616: clockfrequency = HSI_VALUE / presc;
      008F89 5F               [ 1]  717 	clrw	x
      008F8A 0F 01            [ 1]  718 	clr	(0x01, sp)
      008F8C 88               [ 1]  719 	push	a
      008F8D 89               [ 2]  720 	pushw	x
      008F8E 4F               [ 1]  721 	clr	a
      008F8F 88               [ 1]  722 	push	a
      008F90 4B 00            [ 1]  723 	push	#0x00
      008F92 4B 24            [ 1]  724 	push	#0x24
      008F94 4B F4            [ 1]  725 	push	#0xf4
      008F96 4B 00            [ 1]  726 	push	#0x00
      008F98 CD 93 83         [ 4]  727 	call	__divulong
      008F9B 5B 08            [ 2]  728 	addw	sp, #8
      008F9D 20 16            [ 2]  729 	jra	00106$
      008F9F                        730 00105$:
                                    731 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 618: else if ( clocksource == CLK_SOURCE_LSI)
      008F9F 7B 04            [ 1]  732 	ld	a, (0x04, sp)
      008FA1 A1 D2            [ 1]  733 	cp	a, #0xd2
      008FA3 26 09            [ 1]  734 	jrne	00102$
                                    735 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 620: clockfrequency = LSI_VALUE;
      008FA5 AE F4 00         [ 2]  736 	ldw	x, #0xf400
      008FA8 90 AE 00 01      [ 2]  737 	ldw	y, #0x0001
      008FAC 20 07            [ 2]  738 	jra	00106$
      008FAE                        739 00102$:
                                    740 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 624: clockfrequency = HSE_VALUE;
      008FAE AE 12 00         [ 2]  741 	ldw	x, #0x1200
      008FB1 90 AE 00 7A      [ 2]  742 	ldw	y, #0x007a
      008FB5                        743 00106$:
                                    744 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 627: return((uint32_t)clockfrequency);
                                    745 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 628: }
      008FB5 5B 04            [ 2]  746 	addw	sp, #4
      008FB7 81               [ 4]  747 	ret
                                    748 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 673: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                    749 ;	-----------------------------------------
                                    750 ;	 function CLK_GetFlagStatus
                                    751 ;	-----------------------------------------
      008FB8                        752 _CLK_GetFlagStatus:
      008FB8 52 03            [ 2]  753 	sub	sp, #3
                                    754 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 680: assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
      008FBA 1F 02            [ 2]  755 	ldw	(0x02, sp), x
      008FBC A3 01 10         [ 2]  756 	cpw	x, #0x0110
      008FBF 27 38            [ 1]  757 	jreq	00119$
      008FC1 A3 01 02         [ 2]  758 	cpw	x, #0x0102
      008FC4 27 33            [ 1]  759 	jreq	00119$
      008FC6 A3 02 02         [ 2]  760 	cpw	x, #0x0202
      008FC9 27 2E            [ 1]  761 	jreq	00119$
      008FCB A3 03 08         [ 2]  762 	cpw	x, #0x0308
      008FCE 27 29            [ 1]  763 	jreq	00119$
      008FD0 A3 03 01         [ 2]  764 	cpw	x, #0x0301
      008FD3 27 24            [ 1]  765 	jreq	00119$
      008FD5 A3 04 08         [ 2]  766 	cpw	x, #0x0408
      008FD8 27 1F            [ 1]  767 	jreq	00119$
      008FDA A3 04 02         [ 2]  768 	cpw	x, #0x0402
      008FDD 27 1A            [ 1]  769 	jreq	00119$
      008FDF A3 05 04         [ 2]  770 	cpw	x, #0x0504
      008FE2 27 15            [ 1]  771 	jreq	00119$
      008FE4 A3 05 02         [ 2]  772 	cpw	x, #0x0502
      008FE7 27 10            [ 1]  773 	jreq	00119$
      008FE9 89               [ 2]  774 	pushw	x
      008FEA 4B A8            [ 1]  775 	push	#0xa8
      008FEC 4B 02            [ 1]  776 	push	#0x02
      008FEE 4B 00            [ 1]  777 	push	#0x00
      008FF0 4B 00            [ 1]  778 	push	#0x00
      008FF2 AE 81 25         [ 2]  779 	ldw	x, #(___str_0+0)
      008FF5 CD 82 14         [ 4]  780 	call	_assert_failed
      008FF8 85               [ 2]  781 	popw	x
      008FF9                        782 00119$:
                                    783 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 683: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      008FF9 4F               [ 1]  784 	clr	a
                                    785 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 686: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      008FFA 97               [ 1]  786 	ld	xl, a
      008FFB A3 01 00         [ 2]  787 	cpw	x, #0x0100
      008FFE 26 05            [ 1]  788 	jrne	00111$
                                    789 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 688: tmpreg = CLK->ICKR;
      009000 C6 50 C0         [ 1]  790 	ld	a, 0x50c0
      009003 20 21            [ 2]  791 	jra	00112$
      009005                        792 00111$:
                                    793 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 690: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      009005 A3 02 00         [ 2]  794 	cpw	x, #0x0200
      009008 26 05            [ 1]  795 	jrne	00108$
                                    796 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 692: tmpreg = CLK->ECKR;
      00900A C6 50 C1         [ 1]  797 	ld	a, 0x50c1
      00900D 20 17            [ 2]  798 	jra	00112$
      00900F                        799 00108$:
                                    800 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 694: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      00900F A3 03 00         [ 2]  801 	cpw	x, #0x0300
      009012 26 05            [ 1]  802 	jrne	00105$
                                    803 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 696: tmpreg = CLK->SWCR;
      009014 C6 50 C5         [ 1]  804 	ld	a, 0x50c5
      009017 20 0D            [ 2]  805 	jra	00112$
      009019                        806 00105$:
                                    807 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 698: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      009019 A3 04 00         [ 2]  808 	cpw	x, #0x0400
      00901C 26 05            [ 1]  809 	jrne	00102$
                                    810 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 700: tmpreg = CLK->CSSR;
      00901E C6 50 C8         [ 1]  811 	ld	a, 0x50c8
      009021 20 03            [ 2]  812 	jra	00112$
      009023                        813 00102$:
                                    814 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 704: tmpreg = CLK->CCOR;
      009023 C6 50 C9         [ 1]  815 	ld	a, 0x50c9
      009026                        816 00112$:
                                    817 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 707: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      009026 88               [ 1]  818 	push	a
      009027 7B 04            [ 1]  819 	ld	a, (0x04, sp)
      009029 6B 02            [ 1]  820 	ld	(0x02, sp), a
      00902B 84               [ 1]  821 	pop	a
      00902C 14 01            [ 1]  822 	and	a, (0x01, sp)
      00902E 27 03            [ 1]  823 	jreq	00114$
                                    824 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 709: bitstatus = SET;
      009030 A6 01            [ 1]  825 	ld	a, #0x01
                                    826 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 713: bitstatus = RESET;
      009032 21                     827 	.byte 0x21
      009033                        828 00114$:
      009033 4F               [ 1]  829 	clr	a
      009034                        830 00115$:
                                    831 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 717: return((FlagStatus)bitstatus);
                                    832 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 718: }
      009034 5B 03            [ 2]  833 	addw	sp, #3
      009036 81               [ 4]  834 	ret
                                    835 	.area CODE
                                    836 	.area CONST
      008119                        837 _HSIDivFactor:
      008119 01                     838 	.db #0x01	; 1
      00811A 02                     839 	.db #0x02	; 2
      00811B 04                     840 	.db #0x04	; 4
      00811C 08                     841 	.db #0x08	; 8
      00811D                        842 _CLKPrescTable:
      00811D 01                     843 	.db #0x01	; 1
      00811E 02                     844 	.db #0x02	; 2
      00811F 04                     845 	.db #0x04	; 4
      008120 08                     846 	.db #0x08	; 8
      008121 0A                     847 	.db #0x0a	; 10
      008122 10                     848 	.db #0x10	; 16
      008123 14                     849 	.db #0x14	; 20
      008124 28                     850 	.db #0x28	; 40
                                    851 	.area CONST
      008125                        852 ___str_0:
      008125 2F 77 6F 72 6B 73 70   853 	.ascii "/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Li"
             61 63 65 2F 53 6F 66
             74 77 61 72 65 2F 46
             69 72 6D 77 61 72 65
             2F 6E 65 77 5F 62 65
             67 69 6E 69 6E 67 2F
             53 54 4D 38 53 5F 53
             74 64 50 65 72 69 70
             68 5F 4C 69
      008161 62 2F 73 72 63 2F 73   854 	.ascii "b/src/stm8s_clk.c"
             74 6D 38 73 5F 63 6C
             6B 2E 63
      008172 00                     855 	.db 0x00
                                    856 	.area CODE
                                    857 	.area INITIALIZER
                                    858 	.area CABS (ABS)
