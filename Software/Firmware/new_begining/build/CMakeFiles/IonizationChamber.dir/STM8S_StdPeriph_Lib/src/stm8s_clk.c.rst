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
      009061                         66 _CLK_DeInit:
                                     67 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      009061 35 01 50 C0      [ 1]   68 	mov	0x50c0+0, #0x01
                                     69 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      009065 35 00 50 C1      [ 1]   70 	mov	0x50c1+0, #0x00
                                     71 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      009069 35 E1 50 C4      [ 1]   72 	mov	0x50c4+0, #0xe1
                                     73 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      00906D 35 00 50 C5      [ 1]   74 	mov	0x50c5+0, #0x00
                                     75 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      009071 35 18 50 C6      [ 1]   76 	mov	0x50c6+0, #0x18
                                     77 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      009075 35 FF 50 C7      [ 1]   78 	mov	0x50c7+0, #0xff
                                     79 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      009079 35 FF 50 CA      [ 1]   80 	mov	0x50ca+0, #0xff
                                     81 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      00907D 35 00 50 C8      [ 1]   82 	mov	0x50c8+0, #0x00
                                     83 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      009081 35 00 50 C9      [ 1]   84 	mov	0x50c9+0, #0x00
                                     85 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      009085                         86 00101$:
      009085 72 00 50 C9 FB   [ 2]   87 	btjt	0x50c9, #0, 00101$
                                     88 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      00908A 35 00 50 C9      [ 1]   89 	mov	0x50c9+0, #0x00
                                     90 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      00908E 35 00 50 CC      [ 1]   91 	mov	0x50cc+0, #0x00
                                     92 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      009092 35 00 50 CD      [ 1]   93 	mov	0x50cd+0, #0x00
                                     94 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 88: }
      009096 81               [ 4]   95 	ret
                                     96 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 124: void CLK_HSECmd(FunctionalState NewState)
                                     97 ;	-----------------------------------------
                                     98 ;	 function CLK_HSECmd
                                     99 ;	-----------------------------------------
      009097                        100 _CLK_HSECmd:
      009097 88               [ 1]  101 	push	a
                                    102 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 127: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009098 6B 01            [ 1]  103 	ld	(0x01, sp), a
      00909A 27 10            [ 1]  104 	jreq	00107$
      00909C 0D 01            [ 1]  105 	tnz	(0x01, sp)
      00909E 26 0C            [ 1]  106 	jrne	00107$
      0090A0 4B 7F            [ 1]  107 	push	#0x7f
      0090A2 5F               [ 1]  108 	clrw	x
      0090A3 89               [ 2]  109 	pushw	x
      0090A4 4B 00            [ 1]  110 	push	#0x00
      0090A6 AE 81 AB         [ 2]  111 	ldw	x, #(___str_0+0)
      0090A9 CD 82 6A         [ 4]  112 	call	_assert_failed
      0090AC                        113 00107$:
                                    114 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 132: CLK->ECKR |= CLK_ECKR_HSEEN;
      0090AC C6 50 C1         [ 1]  115 	ld	a, 0x50c1
                                    116 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 129: if (NewState != DISABLE)
      0090AF 0D 01            [ 1]  117 	tnz	(0x01, sp)
      0090B1 27 07            [ 1]  118 	jreq	00102$
                                    119 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 132: CLK->ECKR |= CLK_ECKR_HSEEN;
      0090B3 AA 01            [ 1]  120 	or	a, #0x01
      0090B5 C7 50 C1         [ 1]  121 	ld	0x50c1, a
      0090B8 20 05            [ 2]  122 	jra	00104$
      0090BA                        123 00102$:
                                    124 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 137: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      0090BA A4 FE            [ 1]  125 	and	a, #0xfe
      0090BC C7 50 C1         [ 1]  126 	ld	0x50c1, a
      0090BF                        127 00104$:
                                    128 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 139: }
      0090BF 84               [ 1]  129 	pop	a
      0090C0 81               [ 4]  130 	ret
                                    131 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 148: void CLK_HSICmd(FunctionalState NewState)
                                    132 ;	-----------------------------------------
                                    133 ;	 function CLK_HSICmd
                                    134 ;	-----------------------------------------
      0090C1                        135 _CLK_HSICmd:
      0090C1 88               [ 1]  136 	push	a
                                    137 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 151: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0090C2 6B 01            [ 1]  138 	ld	(0x01, sp), a
      0090C4 27 10            [ 1]  139 	jreq	00107$
      0090C6 0D 01            [ 1]  140 	tnz	(0x01, sp)
      0090C8 26 0C            [ 1]  141 	jrne	00107$
      0090CA 4B 97            [ 1]  142 	push	#0x97
      0090CC 5F               [ 1]  143 	clrw	x
      0090CD 89               [ 2]  144 	pushw	x
      0090CE 4B 00            [ 1]  145 	push	#0x00
      0090D0 AE 81 AB         [ 2]  146 	ldw	x, #(___str_0+0)
      0090D3 CD 82 6A         [ 4]  147 	call	_assert_failed
      0090D6                        148 00107$:
                                    149 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 156: CLK->ICKR |= CLK_ICKR_HSIEN;
      0090D6 C6 50 C0         [ 1]  150 	ld	a, 0x50c0
                                    151 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 153: if (NewState != DISABLE)
      0090D9 0D 01            [ 1]  152 	tnz	(0x01, sp)
      0090DB 27 07            [ 1]  153 	jreq	00102$
                                    154 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 156: CLK->ICKR |= CLK_ICKR_HSIEN;
      0090DD AA 01            [ 1]  155 	or	a, #0x01
      0090DF C7 50 C0         [ 1]  156 	ld	0x50c0, a
      0090E2 20 05            [ 2]  157 	jra	00104$
      0090E4                        158 00102$:
                                    159 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 161: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      0090E4 A4 FE            [ 1]  160 	and	a, #0xfe
      0090E6 C7 50 C0         [ 1]  161 	ld	0x50c0, a
      0090E9                        162 00104$:
                                    163 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 163: }
      0090E9 84               [ 1]  164 	pop	a
      0090EA 81               [ 4]  165 	ret
                                    166 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 173: void CLK_LSICmd(FunctionalState NewState)
                                    167 ;	-----------------------------------------
                                    168 ;	 function CLK_LSICmd
                                    169 ;	-----------------------------------------
      0090EB                        170 _CLK_LSICmd:
      0090EB 88               [ 1]  171 	push	a
                                    172 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 176: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0090EC 6B 01            [ 1]  173 	ld	(0x01, sp), a
      0090EE 27 10            [ 1]  174 	jreq	00107$
      0090F0 0D 01            [ 1]  175 	tnz	(0x01, sp)
      0090F2 26 0C            [ 1]  176 	jrne	00107$
      0090F4 4B B0            [ 1]  177 	push	#0xb0
      0090F6 5F               [ 1]  178 	clrw	x
      0090F7 89               [ 2]  179 	pushw	x
      0090F8 4B 00            [ 1]  180 	push	#0x00
      0090FA AE 81 AB         [ 2]  181 	ldw	x, #(___str_0+0)
      0090FD CD 82 6A         [ 4]  182 	call	_assert_failed
      009100                        183 00107$:
                                    184 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 181: CLK->ICKR |= CLK_ICKR_LSIEN;
      009100 C6 50 C0         [ 1]  185 	ld	a, 0x50c0
                                    186 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 178: if (NewState != DISABLE)
      009103 0D 01            [ 1]  187 	tnz	(0x01, sp)
      009105 27 07            [ 1]  188 	jreq	00102$
                                    189 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 181: CLK->ICKR |= CLK_ICKR_LSIEN;
      009107 AA 08            [ 1]  190 	or	a, #0x08
      009109 C7 50 C0         [ 1]  191 	ld	0x50c0, a
      00910C 20 05            [ 2]  192 	jra	00104$
      00910E                        193 00102$:
                                    194 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 186: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      00910E A4 F7            [ 1]  195 	and	a, #0xf7
      009110 C7 50 C0         [ 1]  196 	ld	0x50c0, a
      009113                        197 00104$:
                                    198 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 188: }
      009113 84               [ 1]  199 	pop	a
      009114 81               [ 4]  200 	ret
                                    201 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 224: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    202 ;	-----------------------------------------
                                    203 ;	 function CLK_ClockSwitchCmd
                                    204 ;	-----------------------------------------
      009115                        205 _CLK_ClockSwitchCmd:
      009115 88               [ 1]  206 	push	a
                                    207 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 227: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009116 6B 01            [ 1]  208 	ld	(0x01, sp), a
      009118 27 10            [ 1]  209 	jreq	00107$
      00911A 0D 01            [ 1]  210 	tnz	(0x01, sp)
      00911C 26 0C            [ 1]  211 	jrne	00107$
      00911E 4B E3            [ 1]  212 	push	#0xe3
      009120 5F               [ 1]  213 	clrw	x
      009121 89               [ 2]  214 	pushw	x
      009122 4B 00            [ 1]  215 	push	#0x00
      009124 AE 81 AB         [ 2]  216 	ldw	x, #(___str_0+0)
      009127 CD 82 6A         [ 4]  217 	call	_assert_failed
      00912A                        218 00107$:
                                    219 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 232: CLK->SWCR |= CLK_SWCR_SWEN;
      00912A C6 50 C5         [ 1]  220 	ld	a, 0x50c5
                                    221 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 229: if (NewState != DISABLE )
      00912D 0D 01            [ 1]  222 	tnz	(0x01, sp)
      00912F 27 07            [ 1]  223 	jreq	00102$
                                    224 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 232: CLK->SWCR |= CLK_SWCR_SWEN;
      009131 AA 02            [ 1]  225 	or	a, #0x02
      009133 C7 50 C5         [ 1]  226 	ld	0x50c5, a
      009136 20 05            [ 2]  227 	jra	00104$
      009138                        228 00102$:
                                    229 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 237: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      009138 A4 FD            [ 1]  230 	and	a, #0xfd
      00913A C7 50 C5         [ 1]  231 	ld	0x50c5, a
      00913D                        232 00104$:
                                    233 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 239: }
      00913D 84               [ 1]  234 	pop	a
      00913E 81               [ 4]  235 	ret
                                    236 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 278: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    237 ;	-----------------------------------------
                                    238 ;	 function CLK_PeripheralClockConfig
                                    239 ;	-----------------------------------------
      00913F                        240 _CLK_PeripheralClockConfig:
      00913F 52 03            [ 2]  241 	sub	sp, #3
      009141 6B 03            [ 1]  242 	ld	(0x03, sp), a
                                    243 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 281: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009143 0D 06            [ 1]  244 	tnz	(0x06, sp)
      009145 27 10            [ 1]  245 	jreq	00113$
      009147 0D 06            [ 1]  246 	tnz	(0x06, sp)
      009149 26 0C            [ 1]  247 	jrne	00113$
      00914B 4B 19            [ 1]  248 	push	#0x19
      00914D 4B 01            [ 1]  249 	push	#0x01
      00914F 5F               [ 1]  250 	clrw	x
      009150 89               [ 2]  251 	pushw	x
      009151 AE 81 AB         [ 2]  252 	ldw	x, #(___str_0+0)
      009154 CD 82 6A         [ 4]  253 	call	_assert_failed
      009157                        254 00113$:
                                    255 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 282: assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
      009157 0D 03            [ 1]  256 	tnz	(0x03, sp)
      009159 27 64            [ 1]  257 	jreq	00118$
      00915B 7B 03            [ 1]  258 	ld	a, (0x03, sp)
      00915D 4A               [ 1]  259 	dec	a
      00915E 27 5F            [ 1]  260 	jreq	00118$
      009160 7B 03            [ 1]  261 	ld	a, (0x03, sp)
      009162 A0 03            [ 1]  262 	sub	a, #0x03
      009164 26 02            [ 1]  263 	jrne	00298$
      009166 4C               [ 1]  264 	inc	a
      009167 21                     265 	.byte 0x21
      009168                        266 00298$:
      009168 4F               [ 1]  267 	clr	a
      009169                        268 00299$:
      009169 4D               [ 1]  269 	tnz	a
      00916A 26 53            [ 1]  270 	jrne	00118$
      00916C 4D               [ 1]  271 	tnz	a
      00916D 26 50            [ 1]  272 	jrne	00118$
      00916F 4D               [ 1]  273 	tnz	a
      009170 26 4D            [ 1]  274 	jrne	00118$
      009172 7B 03            [ 1]  275 	ld	a, (0x03, sp)
      009174 A0 04            [ 1]  276 	sub	a, #0x04
      009176 26 04            [ 1]  277 	jrne	00304$
      009178 4C               [ 1]  278 	inc	a
      009179 97               [ 1]  279 	ld	xl, a
      00917A 20 02            [ 2]  280 	jra	00305$
      00917C                        281 00304$:
      00917C 4F               [ 1]  282 	clr	a
      00917D 97               [ 1]  283 	ld	xl, a
      00917E                        284 00305$:
      00917E 9F               [ 1]  285 	ld	a, xl
      00917F 4D               [ 1]  286 	tnz	a
      009180 26 3D            [ 1]  287 	jrne	00118$
      009182 7B 03            [ 1]  288 	ld	a, (0x03, sp)
      009184 A0 05            [ 1]  289 	sub	a, #0x05
      009186 26 02            [ 1]  290 	jrne	00308$
      009188 4C               [ 1]  291 	inc	a
      009189 21                     292 	.byte 0x21
      00918A                        293 00308$:
      00918A 4F               [ 1]  294 	clr	a
      00918B                        295 00309$:
      00918B 4D               [ 1]  296 	tnz	a
      00918C 26 31            [ 1]  297 	jrne	00118$
      00918E 4D               [ 1]  298 	tnz	a
      00918F 26 2E            [ 1]  299 	jrne	00118$
      009191 9F               [ 1]  300 	ld	a, xl
      009192 4D               [ 1]  301 	tnz	a
      009193 26 2A            [ 1]  302 	jrne	00118$
      009195 7B 03            [ 1]  303 	ld	a, (0x03, sp)
      009197 A1 06            [ 1]  304 	cp	a, #0x06
      009199 27 24            [ 1]  305 	jreq	00118$
      00919B 7B 03            [ 1]  306 	ld	a, (0x03, sp)
      00919D A1 07            [ 1]  307 	cp	a, #0x07
      00919F 27 1E            [ 1]  308 	jreq	00118$
      0091A1 7B 03            [ 1]  309 	ld	a, (0x03, sp)
      0091A3 A1 17            [ 1]  310 	cp	a, #0x17
      0091A5 27 18            [ 1]  311 	jreq	00118$
      0091A7 7B 03            [ 1]  312 	ld	a, (0x03, sp)
      0091A9 A1 13            [ 1]  313 	cp	a, #0x13
      0091AB 27 12            [ 1]  314 	jreq	00118$
      0091AD 7B 03            [ 1]  315 	ld	a, (0x03, sp)
      0091AF A1 12            [ 1]  316 	cp	a, #0x12
      0091B1 27 0C            [ 1]  317 	jreq	00118$
      0091B3 4B 1A            [ 1]  318 	push	#0x1a
      0091B5 4B 01            [ 1]  319 	push	#0x01
      0091B7 5F               [ 1]  320 	clrw	x
      0091B8 89               [ 2]  321 	pushw	x
      0091B9 AE 81 AB         [ 2]  322 	ldw	x, #(___str_0+0)
      0091BC CD 82 6A         [ 4]  323 	call	_assert_failed
      0091BF                        324 00118$:
                                    325 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 289: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0091BF 7B 03            [ 1]  326 	ld	a, (0x03, sp)
      0091C1 A4 0F            [ 1]  327 	and	a, #0x0f
      0091C3 88               [ 1]  328 	push	a
      0091C4 A6 01            [ 1]  329 	ld	a, #0x01
      0091C6 6B 02            [ 1]  330 	ld	(0x02, sp), a
      0091C8 84               [ 1]  331 	pop	a
      0091C9 4D               [ 1]  332 	tnz	a
      0091CA 27 05            [ 1]  333 	jreq	00329$
      0091CC                        334 00328$:
      0091CC 08 01            [ 1]  335 	sll	(0x01, sp)
      0091CE 4A               [ 1]  336 	dec	a
      0091CF 26 FB            [ 1]  337 	jrne	00328$
      0091D1                        338 00329$:
                                    339 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 294: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0091D1 7B 01            [ 1]  340 	ld	a, (0x01, sp)
      0091D3 43               [ 1]  341 	cpl	a
      0091D4 6B 02            [ 1]  342 	ld	(0x02, sp), a
                                    343 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 284: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      0091D6 7B 03            [ 1]  344 	ld	a, (0x03, sp)
      0091D8 A5 10            [ 1]  345 	bcp	a, #0x10
      0091DA 26 15            [ 1]  346 	jrne	00108$
                                    347 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 289: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0091DC C6 50 C7         [ 1]  348 	ld	a, 0x50c7
                                    349 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 286: if (NewState != DISABLE)
      0091DF 0D 06            [ 1]  350 	tnz	(0x06, sp)
      0091E1 27 07            [ 1]  351 	jreq	00102$
                                    352 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 289: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0091E3 1A 01            [ 1]  353 	or	a, (0x01, sp)
      0091E5 C7 50 C7         [ 1]  354 	ld	0x50c7, a
      0091E8 20 1A            [ 2]  355 	jra	00110$
      0091EA                        356 00102$:
                                    357 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 294: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0091EA 14 02            [ 1]  358 	and	a, (0x02, sp)
      0091EC C7 50 C7         [ 1]  359 	ld	0x50c7, a
      0091EF 20 13            [ 2]  360 	jra	00110$
      0091F1                        361 00108$:
                                    362 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 302: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0091F1 C6 50 CA         [ 1]  363 	ld	a, 0x50ca
                                    364 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 299: if (NewState != DISABLE)
      0091F4 0D 06            [ 1]  365 	tnz	(0x06, sp)
      0091F6 27 07            [ 1]  366 	jreq	00105$
                                    367 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 302: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0091F8 1A 01            [ 1]  368 	or	a, (0x01, sp)
      0091FA C7 50 CA         [ 1]  369 	ld	0x50ca, a
      0091FD 20 05            [ 2]  370 	jra	00110$
      0091FF                        371 00105$:
                                    372 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 307: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0091FF 14 02            [ 1]  373 	and	a, (0x02, sp)
      009201 C7 50 CA         [ 1]  374 	ld	0x50ca, a
      009204                        375 00110$:
                                    376 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 310: }
      009204 5B 03            [ 2]  377 	addw	sp, #3
      009206 85               [ 2]  378 	popw	x
      009207 84               [ 1]  379 	pop	a
      009208 FC               [ 2]  380 	jp	(x)
                                    381 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 326: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    382 ;	-----------------------------------------
                                    383 ;	 function CLK_ClockSwitchConfig
                                    384 ;	-----------------------------------------
      009209                        385 _CLK_ClockSwitchConfig:
      009209 88               [ 1]  386 	push	a
      00920A 6B 01            [ 1]  387 	ld	(0x01, sp), a
                                    388 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 333: assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
      00920C 7B 04            [ 1]  389 	ld	a, (0x04, sp)
      00920E A1 E1            [ 1]  390 	cp	a, #0xe1
      009210 27 18            [ 1]  391 	jreq	00140$
      009212 7B 04            [ 1]  392 	ld	a, (0x04, sp)
      009214 A1 D2            [ 1]  393 	cp	a, #0xd2
      009216 27 12            [ 1]  394 	jreq	00140$
      009218 7B 04            [ 1]  395 	ld	a, (0x04, sp)
      00921A A1 B4            [ 1]  396 	cp	a, #0xb4
      00921C 27 0C            [ 1]  397 	jreq	00140$
      00921E 4B 4D            [ 1]  398 	push	#0x4d
      009220 4B 01            [ 1]  399 	push	#0x01
      009222 5F               [ 1]  400 	clrw	x
      009223 89               [ 2]  401 	pushw	x
      009224 AE 81 AB         [ 2]  402 	ldw	x, #(___str_0+0)
      009227 CD 82 6A         [ 4]  403 	call	_assert_failed
      00922A                        404 00140$:
                                    405 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 334: assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
      00922A 0D 01            [ 1]  406 	tnz	(0x01, sp)
      00922C 27 10            [ 1]  407 	jreq	00148$
      00922E 0D 01            [ 1]  408 	tnz	(0x01, sp)
      009230 26 0C            [ 1]  409 	jrne	00148$
      009232 4B 4E            [ 1]  410 	push	#0x4e
      009234 4B 01            [ 1]  411 	push	#0x01
      009236 5F               [ 1]  412 	clrw	x
      009237 89               [ 2]  413 	pushw	x
      009238 AE 81 AB         [ 2]  414 	ldw	x, #(___str_0+0)
      00923B CD 82 6A         [ 4]  415 	call	_assert_failed
      00923E                        416 00148$:
                                    417 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 335: assert_param(IS_FUNCTIONALSTATE_OK(ITState));
      00923E 0D 05            [ 1]  418 	tnz	(0x05, sp)
      009240 27 10            [ 1]  419 	jreq	00153$
      009242 0D 05            [ 1]  420 	tnz	(0x05, sp)
      009244 26 0C            [ 1]  421 	jrne	00153$
      009246 4B 4F            [ 1]  422 	push	#0x4f
      009248 4B 01            [ 1]  423 	push	#0x01
      00924A 5F               [ 1]  424 	clrw	x
      00924B 89               [ 2]  425 	pushw	x
      00924C AE 81 AB         [ 2]  426 	ldw	x, #(___str_0+0)
      00924F CD 82 6A         [ 4]  427 	call	_assert_failed
      009252                        428 00153$:
                                    429 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 336: assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
      009252 0D 06            [ 1]  430 	tnz	(0x06, sp)
      009254 27 10            [ 1]  431 	jreq	00158$
      009256 0D 06            [ 1]  432 	tnz	(0x06, sp)
      009258 26 0C            [ 1]  433 	jrne	00158$
      00925A 4B 50            [ 1]  434 	push	#0x50
      00925C 4B 01            [ 1]  435 	push	#0x01
      00925E 5F               [ 1]  436 	clrw	x
      00925F 89               [ 2]  437 	pushw	x
      009260 AE 81 AB         [ 2]  438 	ldw	x, #(___str_0+0)
      009263 CD 82 6A         [ 4]  439 	call	_assert_failed
      009266                        440 00158$:
                                    441 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 339: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      009266 C6 50 C3         [ 1]  442 	ld	a, 0x50c3
      009269 90 97            [ 1]  443 	ld	yl, a
                                    444 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 345: CLK->SWCR |= CLK_SWCR_SWEN;
      00926B C6 50 C5         [ 1]  445 	ld	a, 0x50c5
                                    446 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 342: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      00926E 0D 01            [ 1]  447 	tnz	(0x01, sp)
      009270 27 36            [ 1]  448 	jreq	00122$
                                    449 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 345: CLK->SWCR |= CLK_SWCR_SWEN;
      009272 AA 02            [ 1]  450 	or	a, #0x02
      009274 C7 50 C5         [ 1]  451 	ld	0x50c5, a
      009277 C6 50 C5         [ 1]  452 	ld	a, 0x50c5
                                    453 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 348: if (ITState != DISABLE)
      00927A 0D 05            [ 1]  454 	tnz	(0x05, sp)
      00927C 27 07            [ 1]  455 	jreq	00102$
                                    456 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 350: CLK->SWCR |= CLK_SWCR_SWIEN;
      00927E AA 04            [ 1]  457 	or	a, #0x04
      009280 C7 50 C5         [ 1]  458 	ld	0x50c5, a
      009283 20 05            [ 2]  459 	jra	00103$
      009285                        460 00102$:
                                    461 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 354: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      009285 A4 FB            [ 1]  462 	and	a, #0xfb
      009287 C7 50 C5         [ 1]  463 	ld	0x50c5, a
      00928A                        464 00103$:
                                    465 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 358: CLK->SWR = (uint8_t)CLK_NewClock;
      00928A AE 50 C4         [ 2]  466 	ldw	x, #0x50c4
      00928D 7B 04            [ 1]  467 	ld	a, (0x04, sp)
      00928F F7               [ 1]  468 	ld	(x), a
                                    469 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 361: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      009290 5F               [ 1]  470 	clrw	x
      009291 5A               [ 2]  471 	decw	x
      009292                        472 00105$:
      009292 72 01 50 C5 06   [ 2]  473 	btjf	0x50c5, #0, 00107$
      009297 5D               [ 2]  474 	tnzw	x
      009298 27 03            [ 1]  475 	jreq	00107$
                                    476 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 363: DownCounter--;
      00929A 5A               [ 2]  477 	decw	x
      00929B 20 F5            [ 2]  478 	jra	00105$
      00929D                        479 00107$:
                                    480 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 366: if(DownCounter != 0)
      00929D 5D               [ 2]  481 	tnzw	x
      00929E 27 05            [ 1]  482 	jreq	00109$
                                    483 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 368: Swif = SUCCESS;
      0092A0 A6 01            [ 1]  484 	ld	a, #0x01
      0092A2 97               [ 1]  485 	ld	xl, a
      0092A3 20 32            [ 2]  486 	jra	00123$
      0092A5                        487 00109$:
                                    488 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 372: Swif = ERROR;
      0092A5 5F               [ 1]  489 	clrw	x
      0092A6 20 2F            [ 2]  490 	jra	00123$
      0092A8                        491 00122$:
                                    492 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 378: if (ITState != DISABLE)
      0092A8 0D 05            [ 1]  493 	tnz	(0x05, sp)
      0092AA 27 07            [ 1]  494 	jreq	00112$
                                    495 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 380: CLK->SWCR |= CLK_SWCR_SWIEN;
      0092AC AA 04            [ 1]  496 	or	a, #0x04
      0092AE C7 50 C5         [ 1]  497 	ld	0x50c5, a
      0092B1 20 05            [ 2]  498 	jra	00113$
      0092B3                        499 00112$:
                                    500 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 384: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      0092B3 A4 FB            [ 1]  501 	and	a, #0xfb
      0092B5 C7 50 C5         [ 1]  502 	ld	0x50c5, a
      0092B8                        503 00113$:
                                    504 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 388: CLK->SWR = (uint8_t)CLK_NewClock;
      0092B8 AE 50 C4         [ 2]  505 	ldw	x, #0x50c4
      0092BB 7B 04            [ 1]  506 	ld	a, (0x04, sp)
      0092BD F7               [ 1]  507 	ld	(x), a
                                    508 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 391: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      0092BE 5F               [ 1]  509 	clrw	x
      0092BF 5A               [ 2]  510 	decw	x
      0092C0                        511 00115$:
      0092C0 72 07 50 C5 06   [ 2]  512 	btjf	0x50c5, #3, 00117$
      0092C5 5D               [ 2]  513 	tnzw	x
      0092C6 27 03            [ 1]  514 	jreq	00117$
                                    515 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 393: DownCounter--;
      0092C8 5A               [ 2]  516 	decw	x
      0092C9 20 F5            [ 2]  517 	jra	00115$
      0092CB                        518 00117$:
                                    519 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 396: if(DownCounter != 0)
      0092CB 5D               [ 2]  520 	tnzw	x
      0092CC 27 08            [ 1]  521 	jreq	00119$
                                    522 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 399: CLK->SWCR |= CLK_SWCR_SWEN;
      0092CE 72 12 50 C5      [ 1]  523 	bset	0x50c5, #1
                                    524 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 400: Swif = SUCCESS;
      0092D2 A6 01            [ 1]  525 	ld	a, #0x01
      0092D4 97               [ 1]  526 	ld	xl, a
                                    527 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 404: Swif = ERROR;
      0092D5 21                     528 	.byte 0x21
      0092D6                        529 00119$:
      0092D6 5F               [ 1]  530 	clrw	x
      0092D7                        531 00123$:
                                    532 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 407: if(Swif != ERROR)
      0092D7 9F               [ 1]  533 	ld	a, xl
      0092D8 4D               [ 1]  534 	tnz	a
      0092D9 27 2E            [ 1]  535 	jreq	00136$
                                    536 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 410: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      0092DB 0D 06            [ 1]  537 	tnz	(0x06, sp)
      0092DD 26 0C            [ 1]  538 	jrne	00132$
      0092DF 90 9F            [ 1]  539 	ld	a, yl
      0092E1 A1 E1            [ 1]  540 	cp	a, #0xe1
      0092E3 26 06            [ 1]  541 	jrne	00132$
                                    542 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 412: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      0092E5 72 11 50 C0      [ 1]  543 	bres	0x50c0, #0
      0092E9 20 1E            [ 2]  544 	jra	00136$
      0092EB                        545 00132$:
                                    546 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 414: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      0092EB 0D 06            [ 1]  547 	tnz	(0x06, sp)
      0092ED 26 0C            [ 1]  548 	jrne	00128$
      0092EF 90 9F            [ 1]  549 	ld	a, yl
      0092F1 A1 D2            [ 1]  550 	cp	a, #0xd2
      0092F3 26 06            [ 1]  551 	jrne	00128$
                                    552 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 416: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      0092F5 72 17 50 C0      [ 1]  553 	bres	0x50c0, #3
      0092F9 20 0E            [ 2]  554 	jra	00136$
      0092FB                        555 00128$:
                                    556 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 418: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      0092FB 0D 06            [ 1]  557 	tnz	(0x06, sp)
      0092FD 26 0A            [ 1]  558 	jrne	00136$
      0092FF 90 9F            [ 1]  559 	ld	a, yl
      009301 A1 B4            [ 1]  560 	cp	a, #0xb4
      009303 26 04            [ 1]  561 	jrne	00136$
                                    562 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 420: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      009305 72 11 50 C1      [ 1]  563 	bres	0x50c1, #0
      009309                        564 00136$:
                                    565 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 423: return(Swif);
      009309 9F               [ 1]  566 	ld	a, xl
                                    567 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 424: }
      00930A 1E 02            [ 2]  568 	ldw	x, (2, sp)
      00930C 5B 06            [ 2]  569 	addw	sp, #6
      00930E FC               [ 2]  570 	jp	(x)
                                    571 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 434: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    572 ;	-----------------------------------------
                                    573 ;	 function CLK_HSIPrescalerConfig
                                    574 ;	-----------------------------------------
      00930F                        575 _CLK_HSIPrescalerConfig:
      00930F 88               [ 1]  576 	push	a
                                    577 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 437: assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
      009310 6B 01            [ 1]  578 	ld	(0x01, sp), a
      009312 27 1E            [ 1]  579 	jreq	00104$
      009314 7B 01            [ 1]  580 	ld	a, (0x01, sp)
      009316 A1 08            [ 1]  581 	cp	a, #0x08
      009318 27 18            [ 1]  582 	jreq	00104$
      00931A 7B 01            [ 1]  583 	ld	a, (0x01, sp)
      00931C A1 10            [ 1]  584 	cp	a, #0x10
      00931E 27 12            [ 1]  585 	jreq	00104$
      009320 7B 01            [ 1]  586 	ld	a, (0x01, sp)
      009322 A1 18            [ 1]  587 	cp	a, #0x18
      009324 27 0C            [ 1]  588 	jreq	00104$
      009326 4B B5            [ 1]  589 	push	#0xb5
      009328 4B 01            [ 1]  590 	push	#0x01
      00932A 5F               [ 1]  591 	clrw	x
      00932B 89               [ 2]  592 	pushw	x
      00932C AE 81 AB         [ 2]  593 	ldw	x, #(___str_0+0)
      00932F CD 82 6A         [ 4]  594 	call	_assert_failed
      009332                        595 00104$:
                                    596 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 440: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      009332 C6 50 C6         [ 1]  597 	ld	a, 0x50c6
      009335 A4 E7            [ 1]  598 	and	a, #0xe7
      009337 C7 50 C6         [ 1]  599 	ld	0x50c6, a
                                    600 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 443: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      00933A C6 50 C6         [ 1]  601 	ld	a, 0x50c6
      00933D 1A 01            [ 1]  602 	or	a, (0x01, sp)
      00933F C7 50 C6         [ 1]  603 	ld	0x50c6, a
                                    604 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 444: }
      009342 84               [ 1]  605 	pop	a
      009343 81               [ 4]  606 	ret
                                    607 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 525: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    608 ;	-----------------------------------------
                                    609 ;	 function CLK_SYSCLKConfig
                                    610 ;	-----------------------------------------
      009344                        611 _CLK_SYSCLKConfig:
      009344 88               [ 1]  612 	push	a
                                    613 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 528: assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
      009345 95               [ 1]  614 	ld	xh, a
      009346 4D               [ 1]  615 	tnz	a
      009347 27 4B            [ 1]  616 	jreq	00107$
      009349 9E               [ 1]  617 	ld	a, xh
      00934A A1 08            [ 1]  618 	cp	a, #0x08
      00934C 27 46            [ 1]  619 	jreq	00107$
      00934E 9E               [ 1]  620 	ld	a, xh
      00934F A1 10            [ 1]  621 	cp	a, #0x10
      009351 27 41            [ 1]  622 	jreq	00107$
      009353 9E               [ 1]  623 	ld	a, xh
      009354 A1 18            [ 1]  624 	cp	a, #0x18
      009356 27 3C            [ 1]  625 	jreq	00107$
      009358 9E               [ 1]  626 	ld	a, xh
      009359 A1 80            [ 1]  627 	cp	a, #0x80
      00935B 27 37            [ 1]  628 	jreq	00107$
      00935D 9E               [ 1]  629 	ld	a, xh
      00935E A1 81            [ 1]  630 	cp	a, #0x81
      009360 27 32            [ 1]  631 	jreq	00107$
      009362 9E               [ 1]  632 	ld	a, xh
      009363 A1 82            [ 1]  633 	cp	a, #0x82
      009365 27 2D            [ 1]  634 	jreq	00107$
      009367 9E               [ 1]  635 	ld	a, xh
      009368 A1 83            [ 1]  636 	cp	a, #0x83
      00936A 27 28            [ 1]  637 	jreq	00107$
      00936C 9E               [ 1]  638 	ld	a, xh
      00936D A1 84            [ 1]  639 	cp	a, #0x84
      00936F 27 23            [ 1]  640 	jreq	00107$
      009371 9E               [ 1]  641 	ld	a, xh
      009372 A1 85            [ 1]  642 	cp	a, #0x85
      009374 27 1E            [ 1]  643 	jreq	00107$
      009376 9E               [ 1]  644 	ld	a, xh
      009377 A1 86            [ 1]  645 	cp	a, #0x86
      009379 27 19            [ 1]  646 	jreq	00107$
      00937B 9E               [ 1]  647 	ld	a, xh
      00937C A1 87            [ 1]  648 	cp	a, #0x87
      00937E 27 14            [ 1]  649 	jreq	00107$
      009380 89               [ 2]  650 	pushw	x
      009381 4B 10            [ 1]  651 	push	#0x10
      009383 4B 02            [ 1]  652 	push	#0x02
      009385 4B 00            [ 1]  653 	push	#0x00
      009387 4B 00            [ 1]  654 	push	#0x00
      009389 AE 81 AB         [ 2]  655 	ldw	x, #(___str_0+0)
      00938C CD 82 6A         [ 4]  656 	call	_assert_failed
      00938F 02               [ 1]  657 	rlwa	x
      009390 84               [ 1]  658 	pop	a
      009391 01               [ 1]  659 	rrwa	x
      009392 5B 01            [ 2]  660 	addw	sp, #1
      009394                        661 00107$:
                                    662 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 532: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      009394 C6 50 C6         [ 1]  663 	ld	a, 0x50c6
                                    664 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 530: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      009397 5D               [ 2]  665 	tnzw	x
      009398 2B 14            [ 1]  666 	jrmi	00102$
                                    667 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 532: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      00939A A4 E7            [ 1]  668 	and	a, #0xe7
      00939C C7 50 C6         [ 1]  669 	ld	0x50c6, a
                                    670 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 533: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      00939F C6 50 C6         [ 1]  671 	ld	a, 0x50c6
      0093A2 6B 01            [ 1]  672 	ld	(0x01, sp), a
      0093A4 9E               [ 1]  673 	ld	a, xh
      0093A5 A4 18            [ 1]  674 	and	a, #0x18
      0093A7 1A 01            [ 1]  675 	or	a, (0x01, sp)
      0093A9 C7 50 C6         [ 1]  676 	ld	0x50c6, a
      0093AC 20 12            [ 2]  677 	jra	00104$
      0093AE                        678 00102$:
                                    679 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 537: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      0093AE A4 F8            [ 1]  680 	and	a, #0xf8
      0093B0 C7 50 C6         [ 1]  681 	ld	0x50c6, a
                                    682 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 538: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      0093B3 C6 50 C6         [ 1]  683 	ld	a, 0x50c6
      0093B6 6B 01            [ 1]  684 	ld	(0x01, sp), a
      0093B8 9E               [ 1]  685 	ld	a, xh
      0093B9 A4 07            [ 1]  686 	and	a, #0x07
      0093BB 1A 01            [ 1]  687 	or	a, (0x01, sp)
      0093BD C7 50 C6         [ 1]  688 	ld	0x50c6, a
      0093C0                        689 00104$:
                                    690 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 540: }
      0093C0 84               [ 1]  691 	pop	a
      0093C1 81               [ 4]  692 	ret
                                    693 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 602: uint32_t CLK_GetClockFreq(void)
                                    694 ;	-----------------------------------------
                                    695 ;	 function CLK_GetClockFreq
                                    696 ;	-----------------------------------------
      0093C2                        697 _CLK_GetClockFreq:
      0093C2 52 04            [ 2]  698 	sub	sp, #4
                                    699 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 609: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      0093C4 C6 50 C3         [ 1]  700 	ld	a, 0x50c3
                                    701 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 611: if (clocksource == CLK_SOURCE_HSI)
      0093C7 6B 04            [ 1]  702 	ld	(0x04, sp), a
      0093C9 A1 E1            [ 1]  703 	cp	a, #0xe1
      0093CB 26 23            [ 1]  704 	jrne	00105$
                                    705 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 613: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      0093CD C6 50 C6         [ 1]  706 	ld	a, 0x50c6
      0093D0 A4 18            [ 1]  707 	and	a, #0x18
                                    708 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 614: tmp = (uint8_t)(tmp >> 3);
      0093D2 44               [ 1]  709 	srl	a
      0093D3 44               [ 1]  710 	srl	a
      0093D4 44               [ 1]  711 	srl	a
                                    712 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 615: presc = HSIDivFactor[tmp];
      0093D5 5F               [ 1]  713 	clrw	x
      0093D6 97               [ 1]  714 	ld	xl, a
      0093D7 D6 81 9F         [ 1]  715 	ld	a, (_HSIDivFactor+0, x)
                                    716 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 616: clockfrequency = HSI_VALUE / presc;
      0093DA 5F               [ 1]  717 	clrw	x
      0093DB 0F 01            [ 1]  718 	clr	(0x01, sp)
      0093DD 88               [ 1]  719 	push	a
      0093DE 89               [ 2]  720 	pushw	x
      0093DF 4F               [ 1]  721 	clr	a
      0093E0 88               [ 1]  722 	push	a
      0093E1 4B 00            [ 1]  723 	push	#0x00
      0093E3 4B 24            [ 1]  724 	push	#0x24
      0093E5 4B F4            [ 1]  725 	push	#0xf4
      0093E7 4B 00            [ 1]  726 	push	#0x00
      0093E9 CD 97 D4         [ 4]  727 	call	__divulong
      0093EC 5B 08            [ 2]  728 	addw	sp, #8
      0093EE 20 16            [ 2]  729 	jra	00106$
      0093F0                        730 00105$:
                                    731 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 618: else if ( clocksource == CLK_SOURCE_LSI)
      0093F0 7B 04            [ 1]  732 	ld	a, (0x04, sp)
      0093F2 A1 D2            [ 1]  733 	cp	a, #0xd2
      0093F4 26 09            [ 1]  734 	jrne	00102$
                                    735 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 620: clockfrequency = LSI_VALUE;
      0093F6 AE F4 00         [ 2]  736 	ldw	x, #0xf400
      0093F9 90 AE 00 01      [ 2]  737 	ldw	y, #0x0001
      0093FD 20 07            [ 2]  738 	jra	00106$
      0093FF                        739 00102$:
                                    740 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 624: clockfrequency = HSE_VALUE;
      0093FF AE 12 00         [ 2]  741 	ldw	x, #0x1200
      009402 90 AE 00 7A      [ 2]  742 	ldw	y, #0x007a
      009406                        743 00106$:
                                    744 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 627: return((uint32_t)clockfrequency);
                                    745 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 628: }
      009406 5B 04            [ 2]  746 	addw	sp, #4
      009408 81               [ 4]  747 	ret
                                    748 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 673: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                    749 ;	-----------------------------------------
                                    750 ;	 function CLK_GetFlagStatus
                                    751 ;	-----------------------------------------
      009409                        752 _CLK_GetFlagStatus:
      009409 52 03            [ 2]  753 	sub	sp, #3
                                    754 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 680: assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
      00940B 1F 02            [ 2]  755 	ldw	(0x02, sp), x
      00940D A3 01 10         [ 2]  756 	cpw	x, #0x0110
      009410 27 38            [ 1]  757 	jreq	00119$
      009412 A3 01 02         [ 2]  758 	cpw	x, #0x0102
      009415 27 33            [ 1]  759 	jreq	00119$
      009417 A3 02 02         [ 2]  760 	cpw	x, #0x0202
      00941A 27 2E            [ 1]  761 	jreq	00119$
      00941C A3 03 08         [ 2]  762 	cpw	x, #0x0308
      00941F 27 29            [ 1]  763 	jreq	00119$
      009421 A3 03 01         [ 2]  764 	cpw	x, #0x0301
      009424 27 24            [ 1]  765 	jreq	00119$
      009426 A3 04 08         [ 2]  766 	cpw	x, #0x0408
      009429 27 1F            [ 1]  767 	jreq	00119$
      00942B A3 04 02         [ 2]  768 	cpw	x, #0x0402
      00942E 27 1A            [ 1]  769 	jreq	00119$
      009430 A3 05 04         [ 2]  770 	cpw	x, #0x0504
      009433 27 15            [ 1]  771 	jreq	00119$
      009435 A3 05 02         [ 2]  772 	cpw	x, #0x0502
      009438 27 10            [ 1]  773 	jreq	00119$
      00943A 89               [ 2]  774 	pushw	x
      00943B 4B A8            [ 1]  775 	push	#0xa8
      00943D 4B 02            [ 1]  776 	push	#0x02
      00943F 4B 00            [ 1]  777 	push	#0x00
      009441 4B 00            [ 1]  778 	push	#0x00
      009443 AE 81 AB         [ 2]  779 	ldw	x, #(___str_0+0)
      009446 CD 82 6A         [ 4]  780 	call	_assert_failed
      009449 85               [ 2]  781 	popw	x
      00944A                        782 00119$:
                                    783 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 683: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      00944A 4F               [ 1]  784 	clr	a
                                    785 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 686: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      00944B 97               [ 1]  786 	ld	xl, a
      00944C A3 01 00         [ 2]  787 	cpw	x, #0x0100
      00944F 26 05            [ 1]  788 	jrne	00111$
                                    789 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 688: tmpreg = CLK->ICKR;
      009451 C6 50 C0         [ 1]  790 	ld	a, 0x50c0
      009454 20 21            [ 2]  791 	jra	00112$
      009456                        792 00111$:
                                    793 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 690: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      009456 A3 02 00         [ 2]  794 	cpw	x, #0x0200
      009459 26 05            [ 1]  795 	jrne	00108$
                                    796 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 692: tmpreg = CLK->ECKR;
      00945B C6 50 C1         [ 1]  797 	ld	a, 0x50c1
      00945E 20 17            [ 2]  798 	jra	00112$
      009460                        799 00108$:
                                    800 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 694: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      009460 A3 03 00         [ 2]  801 	cpw	x, #0x0300
      009463 26 05            [ 1]  802 	jrne	00105$
                                    803 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 696: tmpreg = CLK->SWCR;
      009465 C6 50 C5         [ 1]  804 	ld	a, 0x50c5
      009468 20 0D            [ 2]  805 	jra	00112$
      00946A                        806 00105$:
                                    807 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 698: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      00946A A3 04 00         [ 2]  808 	cpw	x, #0x0400
      00946D 26 05            [ 1]  809 	jrne	00102$
                                    810 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 700: tmpreg = CLK->CSSR;
      00946F C6 50 C8         [ 1]  811 	ld	a, 0x50c8
      009472 20 03            [ 2]  812 	jra	00112$
      009474                        813 00102$:
                                    814 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 704: tmpreg = CLK->CCOR;
      009474 C6 50 C9         [ 1]  815 	ld	a, 0x50c9
      009477                        816 00112$:
                                    817 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 707: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      009477 88               [ 1]  818 	push	a
      009478 7B 04            [ 1]  819 	ld	a, (0x04, sp)
      00947A 6B 02            [ 1]  820 	ld	(0x02, sp), a
      00947C 84               [ 1]  821 	pop	a
      00947D 14 01            [ 1]  822 	and	a, (0x01, sp)
      00947F 27 03            [ 1]  823 	jreq	00114$
                                    824 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 709: bitstatus = SET;
      009481 A6 01            [ 1]  825 	ld	a, #0x01
                                    826 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 713: bitstatus = RESET;
      009483 21                     827 	.byte 0x21
      009484                        828 00114$:
      009484 4F               [ 1]  829 	clr	a
      009485                        830 00115$:
                                    831 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 717: return((FlagStatus)bitstatus);
                                    832 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 718: }
      009485 5B 03            [ 2]  833 	addw	sp, #3
      009487 81               [ 4]  834 	ret
                                    835 	.area CODE
                                    836 	.area CONST
      00819F                        837 _HSIDivFactor:
      00819F 01                     838 	.db #0x01	; 1
      0081A0 02                     839 	.db #0x02	; 2
      0081A1 04                     840 	.db #0x04	; 4
      0081A2 08                     841 	.db #0x08	; 8
      0081A3                        842 _CLKPrescTable:
      0081A3 01                     843 	.db #0x01	; 1
      0081A4 02                     844 	.db #0x02	; 2
      0081A5 04                     845 	.db #0x04	; 4
      0081A6 08                     846 	.db #0x08	; 8
      0081A7 0A                     847 	.db #0x0a	; 10
      0081A8 10                     848 	.db #0x10	; 16
      0081A9 14                     849 	.db #0x14	; 20
      0081AA 28                     850 	.db #0x28	; 40
                                    851 	.area CONST
      0081AB                        852 ___str_0:
      0081AB 2F 77 6F 72 6B 73 70   853 	.ascii "/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Li"
             61 63 65 2F 53 6F 66
             74 77 61 72 65 2F 46
             69 72 6D 77 61 72 65
             2F 6E 65 77 5F 62 65
             67 69 6E 69 6E 67 2F
             53 54 4D 38 53 5F 53
             74 64 50 65 72 69 70
             68 5F 4C 69
      0081E7 62 2F 73 72 63 2F 73   854 	.ascii "b/src/stm8s_clk.c"
             74 6D 38 73 5F 63 6C
             6B 2E 63
      0081F8 00                     855 	.db 0x00
                                    856 	.area CODE
                                    857 	.area INITIALIZER
                                    858 	.area CABS (ABS)
