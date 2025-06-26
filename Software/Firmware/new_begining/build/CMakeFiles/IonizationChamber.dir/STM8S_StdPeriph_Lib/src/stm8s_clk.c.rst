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
      0090AA                         66 _CLK_DeInit:
                                     67 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      0090AA 35 01 50 C0      [ 1]   68 	mov	0x50c0+0, #0x01
                                     69 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      0090AE 35 00 50 C1      [ 1]   70 	mov	0x50c1+0, #0x00
                                     71 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      0090B2 35 E1 50 C4      [ 1]   72 	mov	0x50c4+0, #0xe1
                                     73 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      0090B6 35 00 50 C5      [ 1]   74 	mov	0x50c5+0, #0x00
                                     75 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      0090BA 35 18 50 C6      [ 1]   76 	mov	0x50c6+0, #0x18
                                     77 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      0090BE 35 FF 50 C7      [ 1]   78 	mov	0x50c7+0, #0xff
                                     79 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      0090C2 35 FF 50 CA      [ 1]   80 	mov	0x50ca+0, #0xff
                                     81 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      0090C6 35 00 50 C8      [ 1]   82 	mov	0x50c8+0, #0x00
                                     83 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      0090CA 35 00 50 C9      [ 1]   84 	mov	0x50c9+0, #0x00
                                     85 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      0090CE                         86 00101$:
      0090CE 72 00 50 C9 FB   [ 2]   87 	btjt	0x50c9, #0, 00101$
                                     88 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      0090D3 35 00 50 C9      [ 1]   89 	mov	0x50c9+0, #0x00
                                     90 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      0090D7 35 00 50 CC      [ 1]   91 	mov	0x50cc+0, #0x00
                                     92 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      0090DB 35 00 50 CD      [ 1]   93 	mov	0x50cd+0, #0x00
                                     94 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 88: }
      0090DF 81               [ 4]   95 	ret
                                     96 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 124: void CLK_HSECmd(FunctionalState NewState)
                                     97 ;	-----------------------------------------
                                     98 ;	 function CLK_HSECmd
                                     99 ;	-----------------------------------------
      0090E0                        100 _CLK_HSECmd:
      0090E0 88               [ 1]  101 	push	a
                                    102 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 127: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0090E1 6B 01            [ 1]  103 	ld	(0x01, sp), a
      0090E3 27 10            [ 1]  104 	jreq	00107$
      0090E5 0D 01            [ 1]  105 	tnz	(0x01, sp)
      0090E7 26 0C            [ 1]  106 	jrne	00107$
      0090E9 4B 7F            [ 1]  107 	push	#0x7f
      0090EB 5F               [ 1]  108 	clrw	x
      0090EC 89               [ 2]  109 	pushw	x
      0090ED 4B 00            [ 1]  110 	push	#0x00
      0090EF AE 81 A7         [ 2]  111 	ldw	x, #(___str_0+0)
      0090F2 CD 82 B0         [ 4]  112 	call	_assert_failed
      0090F5                        113 00107$:
                                    114 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 132: CLK->ECKR |= CLK_ECKR_HSEEN;
      0090F5 C6 50 C1         [ 1]  115 	ld	a, 0x50c1
                                    116 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 129: if (NewState != DISABLE)
      0090F8 0D 01            [ 1]  117 	tnz	(0x01, sp)
      0090FA 27 07            [ 1]  118 	jreq	00102$
                                    119 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 132: CLK->ECKR |= CLK_ECKR_HSEEN;
      0090FC AA 01            [ 1]  120 	or	a, #0x01
      0090FE C7 50 C1         [ 1]  121 	ld	0x50c1, a
      009101 20 05            [ 2]  122 	jra	00104$
      009103                        123 00102$:
                                    124 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 137: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      009103 A4 FE            [ 1]  125 	and	a, #0xfe
      009105 C7 50 C1         [ 1]  126 	ld	0x50c1, a
      009108                        127 00104$:
                                    128 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 139: }
      009108 84               [ 1]  129 	pop	a
      009109 81               [ 4]  130 	ret
                                    131 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 148: void CLK_HSICmd(FunctionalState NewState)
                                    132 ;	-----------------------------------------
                                    133 ;	 function CLK_HSICmd
                                    134 ;	-----------------------------------------
      00910A                        135 _CLK_HSICmd:
      00910A 88               [ 1]  136 	push	a
                                    137 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 151: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00910B 6B 01            [ 1]  138 	ld	(0x01, sp), a
      00910D 27 10            [ 1]  139 	jreq	00107$
      00910F 0D 01            [ 1]  140 	tnz	(0x01, sp)
      009111 26 0C            [ 1]  141 	jrne	00107$
      009113 4B 97            [ 1]  142 	push	#0x97
      009115 5F               [ 1]  143 	clrw	x
      009116 89               [ 2]  144 	pushw	x
      009117 4B 00            [ 1]  145 	push	#0x00
      009119 AE 81 A7         [ 2]  146 	ldw	x, #(___str_0+0)
      00911C CD 82 B0         [ 4]  147 	call	_assert_failed
      00911F                        148 00107$:
                                    149 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 156: CLK->ICKR |= CLK_ICKR_HSIEN;
      00911F C6 50 C0         [ 1]  150 	ld	a, 0x50c0
                                    151 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 153: if (NewState != DISABLE)
      009122 0D 01            [ 1]  152 	tnz	(0x01, sp)
      009124 27 07            [ 1]  153 	jreq	00102$
                                    154 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 156: CLK->ICKR |= CLK_ICKR_HSIEN;
      009126 AA 01            [ 1]  155 	or	a, #0x01
      009128 C7 50 C0         [ 1]  156 	ld	0x50c0, a
      00912B 20 05            [ 2]  157 	jra	00104$
      00912D                        158 00102$:
                                    159 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 161: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      00912D A4 FE            [ 1]  160 	and	a, #0xfe
      00912F C7 50 C0         [ 1]  161 	ld	0x50c0, a
      009132                        162 00104$:
                                    163 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 163: }
      009132 84               [ 1]  164 	pop	a
      009133 81               [ 4]  165 	ret
                                    166 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 173: void CLK_LSICmd(FunctionalState NewState)
                                    167 ;	-----------------------------------------
                                    168 ;	 function CLK_LSICmd
                                    169 ;	-----------------------------------------
      009134                        170 _CLK_LSICmd:
      009134 88               [ 1]  171 	push	a
                                    172 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 176: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009135 6B 01            [ 1]  173 	ld	(0x01, sp), a
      009137 27 10            [ 1]  174 	jreq	00107$
      009139 0D 01            [ 1]  175 	tnz	(0x01, sp)
      00913B 26 0C            [ 1]  176 	jrne	00107$
      00913D 4B B0            [ 1]  177 	push	#0xb0
      00913F 5F               [ 1]  178 	clrw	x
      009140 89               [ 2]  179 	pushw	x
      009141 4B 00            [ 1]  180 	push	#0x00
      009143 AE 81 A7         [ 2]  181 	ldw	x, #(___str_0+0)
      009146 CD 82 B0         [ 4]  182 	call	_assert_failed
      009149                        183 00107$:
                                    184 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 181: CLK->ICKR |= CLK_ICKR_LSIEN;
      009149 C6 50 C0         [ 1]  185 	ld	a, 0x50c0
                                    186 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 178: if (NewState != DISABLE)
      00914C 0D 01            [ 1]  187 	tnz	(0x01, sp)
      00914E 27 07            [ 1]  188 	jreq	00102$
                                    189 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 181: CLK->ICKR |= CLK_ICKR_LSIEN;
      009150 AA 08            [ 1]  190 	or	a, #0x08
      009152 C7 50 C0         [ 1]  191 	ld	0x50c0, a
      009155 20 05            [ 2]  192 	jra	00104$
      009157                        193 00102$:
                                    194 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 186: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      009157 A4 F7            [ 1]  195 	and	a, #0xf7
      009159 C7 50 C0         [ 1]  196 	ld	0x50c0, a
      00915C                        197 00104$:
                                    198 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 188: }
      00915C 84               [ 1]  199 	pop	a
      00915D 81               [ 4]  200 	ret
                                    201 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 224: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    202 ;	-----------------------------------------
                                    203 ;	 function CLK_ClockSwitchCmd
                                    204 ;	-----------------------------------------
      00915E                        205 _CLK_ClockSwitchCmd:
      00915E 88               [ 1]  206 	push	a
                                    207 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 227: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00915F 6B 01            [ 1]  208 	ld	(0x01, sp), a
      009161 27 10            [ 1]  209 	jreq	00107$
      009163 0D 01            [ 1]  210 	tnz	(0x01, sp)
      009165 26 0C            [ 1]  211 	jrne	00107$
      009167 4B E3            [ 1]  212 	push	#0xe3
      009169 5F               [ 1]  213 	clrw	x
      00916A 89               [ 2]  214 	pushw	x
      00916B 4B 00            [ 1]  215 	push	#0x00
      00916D AE 81 A7         [ 2]  216 	ldw	x, #(___str_0+0)
      009170 CD 82 B0         [ 4]  217 	call	_assert_failed
      009173                        218 00107$:
                                    219 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 232: CLK->SWCR |= CLK_SWCR_SWEN;
      009173 C6 50 C5         [ 1]  220 	ld	a, 0x50c5
                                    221 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 229: if (NewState != DISABLE )
      009176 0D 01            [ 1]  222 	tnz	(0x01, sp)
      009178 27 07            [ 1]  223 	jreq	00102$
                                    224 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 232: CLK->SWCR |= CLK_SWCR_SWEN;
      00917A AA 02            [ 1]  225 	or	a, #0x02
      00917C C7 50 C5         [ 1]  226 	ld	0x50c5, a
      00917F 20 05            [ 2]  227 	jra	00104$
      009181                        228 00102$:
                                    229 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 237: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      009181 A4 FD            [ 1]  230 	and	a, #0xfd
      009183 C7 50 C5         [ 1]  231 	ld	0x50c5, a
      009186                        232 00104$:
                                    233 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 239: }
      009186 84               [ 1]  234 	pop	a
      009187 81               [ 4]  235 	ret
                                    236 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 278: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    237 ;	-----------------------------------------
                                    238 ;	 function CLK_PeripheralClockConfig
                                    239 ;	-----------------------------------------
      009188                        240 _CLK_PeripheralClockConfig:
      009188 52 03            [ 2]  241 	sub	sp, #3
      00918A 6B 03            [ 1]  242 	ld	(0x03, sp), a
                                    243 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 281: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00918C 0D 06            [ 1]  244 	tnz	(0x06, sp)
      00918E 27 10            [ 1]  245 	jreq	00113$
      009190 0D 06            [ 1]  246 	tnz	(0x06, sp)
      009192 26 0C            [ 1]  247 	jrne	00113$
      009194 4B 19            [ 1]  248 	push	#0x19
      009196 4B 01            [ 1]  249 	push	#0x01
      009198 5F               [ 1]  250 	clrw	x
      009199 89               [ 2]  251 	pushw	x
      00919A AE 81 A7         [ 2]  252 	ldw	x, #(___str_0+0)
      00919D CD 82 B0         [ 4]  253 	call	_assert_failed
      0091A0                        254 00113$:
                                    255 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 282: assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
      0091A0 0D 03            [ 1]  256 	tnz	(0x03, sp)
      0091A2 27 64            [ 1]  257 	jreq	00118$
      0091A4 7B 03            [ 1]  258 	ld	a, (0x03, sp)
      0091A6 4A               [ 1]  259 	dec	a
      0091A7 27 5F            [ 1]  260 	jreq	00118$
      0091A9 7B 03            [ 1]  261 	ld	a, (0x03, sp)
      0091AB A0 03            [ 1]  262 	sub	a, #0x03
      0091AD 26 02            [ 1]  263 	jrne	00298$
      0091AF 4C               [ 1]  264 	inc	a
      0091B0 21                     265 	.byte 0x21
      0091B1                        266 00298$:
      0091B1 4F               [ 1]  267 	clr	a
      0091B2                        268 00299$:
      0091B2 4D               [ 1]  269 	tnz	a
      0091B3 26 53            [ 1]  270 	jrne	00118$
      0091B5 4D               [ 1]  271 	tnz	a
      0091B6 26 50            [ 1]  272 	jrne	00118$
      0091B8 4D               [ 1]  273 	tnz	a
      0091B9 26 4D            [ 1]  274 	jrne	00118$
      0091BB 7B 03            [ 1]  275 	ld	a, (0x03, sp)
      0091BD A0 04            [ 1]  276 	sub	a, #0x04
      0091BF 26 04            [ 1]  277 	jrne	00304$
      0091C1 4C               [ 1]  278 	inc	a
      0091C2 97               [ 1]  279 	ld	xl, a
      0091C3 20 02            [ 2]  280 	jra	00305$
      0091C5                        281 00304$:
      0091C5 4F               [ 1]  282 	clr	a
      0091C6 97               [ 1]  283 	ld	xl, a
      0091C7                        284 00305$:
      0091C7 9F               [ 1]  285 	ld	a, xl
      0091C8 4D               [ 1]  286 	tnz	a
      0091C9 26 3D            [ 1]  287 	jrne	00118$
      0091CB 7B 03            [ 1]  288 	ld	a, (0x03, sp)
      0091CD A0 05            [ 1]  289 	sub	a, #0x05
      0091CF 26 02            [ 1]  290 	jrne	00308$
      0091D1 4C               [ 1]  291 	inc	a
      0091D2 21                     292 	.byte 0x21
      0091D3                        293 00308$:
      0091D3 4F               [ 1]  294 	clr	a
      0091D4                        295 00309$:
      0091D4 4D               [ 1]  296 	tnz	a
      0091D5 26 31            [ 1]  297 	jrne	00118$
      0091D7 4D               [ 1]  298 	tnz	a
      0091D8 26 2E            [ 1]  299 	jrne	00118$
      0091DA 9F               [ 1]  300 	ld	a, xl
      0091DB 4D               [ 1]  301 	tnz	a
      0091DC 26 2A            [ 1]  302 	jrne	00118$
      0091DE 7B 03            [ 1]  303 	ld	a, (0x03, sp)
      0091E0 A1 06            [ 1]  304 	cp	a, #0x06
      0091E2 27 24            [ 1]  305 	jreq	00118$
      0091E4 7B 03            [ 1]  306 	ld	a, (0x03, sp)
      0091E6 A1 07            [ 1]  307 	cp	a, #0x07
      0091E8 27 1E            [ 1]  308 	jreq	00118$
      0091EA 7B 03            [ 1]  309 	ld	a, (0x03, sp)
      0091EC A1 17            [ 1]  310 	cp	a, #0x17
      0091EE 27 18            [ 1]  311 	jreq	00118$
      0091F0 7B 03            [ 1]  312 	ld	a, (0x03, sp)
      0091F2 A1 13            [ 1]  313 	cp	a, #0x13
      0091F4 27 12            [ 1]  314 	jreq	00118$
      0091F6 7B 03            [ 1]  315 	ld	a, (0x03, sp)
      0091F8 A1 12            [ 1]  316 	cp	a, #0x12
      0091FA 27 0C            [ 1]  317 	jreq	00118$
      0091FC 4B 1A            [ 1]  318 	push	#0x1a
      0091FE 4B 01            [ 1]  319 	push	#0x01
      009200 5F               [ 1]  320 	clrw	x
      009201 89               [ 2]  321 	pushw	x
      009202 AE 81 A7         [ 2]  322 	ldw	x, #(___str_0+0)
      009205 CD 82 B0         [ 4]  323 	call	_assert_failed
      009208                        324 00118$:
                                    325 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 289: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      009208 7B 03            [ 1]  326 	ld	a, (0x03, sp)
      00920A A4 0F            [ 1]  327 	and	a, #0x0f
      00920C 88               [ 1]  328 	push	a
      00920D A6 01            [ 1]  329 	ld	a, #0x01
      00920F 6B 02            [ 1]  330 	ld	(0x02, sp), a
      009211 84               [ 1]  331 	pop	a
      009212 4D               [ 1]  332 	tnz	a
      009213 27 05            [ 1]  333 	jreq	00329$
      009215                        334 00328$:
      009215 08 01            [ 1]  335 	sll	(0x01, sp)
      009217 4A               [ 1]  336 	dec	a
      009218 26 FB            [ 1]  337 	jrne	00328$
      00921A                        338 00329$:
                                    339 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 294: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      00921A 7B 01            [ 1]  340 	ld	a, (0x01, sp)
      00921C 43               [ 1]  341 	cpl	a
      00921D 6B 02            [ 1]  342 	ld	(0x02, sp), a
                                    343 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 284: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      00921F 7B 03            [ 1]  344 	ld	a, (0x03, sp)
      009221 A5 10            [ 1]  345 	bcp	a, #0x10
      009223 26 15            [ 1]  346 	jrne	00108$
                                    347 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 289: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      009225 C6 50 C7         [ 1]  348 	ld	a, 0x50c7
                                    349 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 286: if (NewState != DISABLE)
      009228 0D 06            [ 1]  350 	tnz	(0x06, sp)
      00922A 27 07            [ 1]  351 	jreq	00102$
                                    352 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 289: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00922C 1A 01            [ 1]  353 	or	a, (0x01, sp)
      00922E C7 50 C7         [ 1]  354 	ld	0x50c7, a
      009231 20 1A            [ 2]  355 	jra	00110$
      009233                        356 00102$:
                                    357 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 294: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      009233 14 02            [ 1]  358 	and	a, (0x02, sp)
      009235 C7 50 C7         [ 1]  359 	ld	0x50c7, a
      009238 20 13            [ 2]  360 	jra	00110$
      00923A                        361 00108$:
                                    362 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 302: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00923A C6 50 CA         [ 1]  363 	ld	a, 0x50ca
                                    364 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 299: if (NewState != DISABLE)
      00923D 0D 06            [ 1]  365 	tnz	(0x06, sp)
      00923F 27 07            [ 1]  366 	jreq	00105$
                                    367 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 302: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      009241 1A 01            [ 1]  368 	or	a, (0x01, sp)
      009243 C7 50 CA         [ 1]  369 	ld	0x50ca, a
      009246 20 05            [ 2]  370 	jra	00110$
      009248                        371 00105$:
                                    372 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 307: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      009248 14 02            [ 1]  373 	and	a, (0x02, sp)
      00924A C7 50 CA         [ 1]  374 	ld	0x50ca, a
      00924D                        375 00110$:
                                    376 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 310: }
      00924D 5B 03            [ 2]  377 	addw	sp, #3
      00924F 85               [ 2]  378 	popw	x
      009250 84               [ 1]  379 	pop	a
      009251 FC               [ 2]  380 	jp	(x)
                                    381 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 326: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    382 ;	-----------------------------------------
                                    383 ;	 function CLK_ClockSwitchConfig
                                    384 ;	-----------------------------------------
      009252                        385 _CLK_ClockSwitchConfig:
      009252 88               [ 1]  386 	push	a
      009253 6B 01            [ 1]  387 	ld	(0x01, sp), a
                                    388 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 333: assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
      009255 7B 04            [ 1]  389 	ld	a, (0x04, sp)
      009257 A1 E1            [ 1]  390 	cp	a, #0xe1
      009259 27 18            [ 1]  391 	jreq	00140$
      00925B 7B 04            [ 1]  392 	ld	a, (0x04, sp)
      00925D A1 D2            [ 1]  393 	cp	a, #0xd2
      00925F 27 12            [ 1]  394 	jreq	00140$
      009261 7B 04            [ 1]  395 	ld	a, (0x04, sp)
      009263 A1 B4            [ 1]  396 	cp	a, #0xb4
      009265 27 0C            [ 1]  397 	jreq	00140$
      009267 4B 4D            [ 1]  398 	push	#0x4d
      009269 4B 01            [ 1]  399 	push	#0x01
      00926B 5F               [ 1]  400 	clrw	x
      00926C 89               [ 2]  401 	pushw	x
      00926D AE 81 A7         [ 2]  402 	ldw	x, #(___str_0+0)
      009270 CD 82 B0         [ 4]  403 	call	_assert_failed
      009273                        404 00140$:
                                    405 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 334: assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
      009273 0D 01            [ 1]  406 	tnz	(0x01, sp)
      009275 27 10            [ 1]  407 	jreq	00148$
      009277 0D 01            [ 1]  408 	tnz	(0x01, sp)
      009279 26 0C            [ 1]  409 	jrne	00148$
      00927B 4B 4E            [ 1]  410 	push	#0x4e
      00927D 4B 01            [ 1]  411 	push	#0x01
      00927F 5F               [ 1]  412 	clrw	x
      009280 89               [ 2]  413 	pushw	x
      009281 AE 81 A7         [ 2]  414 	ldw	x, #(___str_0+0)
      009284 CD 82 B0         [ 4]  415 	call	_assert_failed
      009287                        416 00148$:
                                    417 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 335: assert_param(IS_FUNCTIONALSTATE_OK(ITState));
      009287 0D 05            [ 1]  418 	tnz	(0x05, sp)
      009289 27 10            [ 1]  419 	jreq	00153$
      00928B 0D 05            [ 1]  420 	tnz	(0x05, sp)
      00928D 26 0C            [ 1]  421 	jrne	00153$
      00928F 4B 4F            [ 1]  422 	push	#0x4f
      009291 4B 01            [ 1]  423 	push	#0x01
      009293 5F               [ 1]  424 	clrw	x
      009294 89               [ 2]  425 	pushw	x
      009295 AE 81 A7         [ 2]  426 	ldw	x, #(___str_0+0)
      009298 CD 82 B0         [ 4]  427 	call	_assert_failed
      00929B                        428 00153$:
                                    429 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 336: assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
      00929B 0D 06            [ 1]  430 	tnz	(0x06, sp)
      00929D 27 10            [ 1]  431 	jreq	00158$
      00929F 0D 06            [ 1]  432 	tnz	(0x06, sp)
      0092A1 26 0C            [ 1]  433 	jrne	00158$
      0092A3 4B 50            [ 1]  434 	push	#0x50
      0092A5 4B 01            [ 1]  435 	push	#0x01
      0092A7 5F               [ 1]  436 	clrw	x
      0092A8 89               [ 2]  437 	pushw	x
      0092A9 AE 81 A7         [ 2]  438 	ldw	x, #(___str_0+0)
      0092AC CD 82 B0         [ 4]  439 	call	_assert_failed
      0092AF                        440 00158$:
                                    441 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 339: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      0092AF C6 50 C3         [ 1]  442 	ld	a, 0x50c3
      0092B2 90 97            [ 1]  443 	ld	yl, a
                                    444 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 345: CLK->SWCR |= CLK_SWCR_SWEN;
      0092B4 C6 50 C5         [ 1]  445 	ld	a, 0x50c5
                                    446 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 342: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      0092B7 0D 01            [ 1]  447 	tnz	(0x01, sp)
      0092B9 27 36            [ 1]  448 	jreq	00122$
                                    449 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 345: CLK->SWCR |= CLK_SWCR_SWEN;
      0092BB AA 02            [ 1]  450 	or	a, #0x02
      0092BD C7 50 C5         [ 1]  451 	ld	0x50c5, a
      0092C0 C6 50 C5         [ 1]  452 	ld	a, 0x50c5
                                    453 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 348: if (ITState != DISABLE)
      0092C3 0D 05            [ 1]  454 	tnz	(0x05, sp)
      0092C5 27 07            [ 1]  455 	jreq	00102$
                                    456 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 350: CLK->SWCR |= CLK_SWCR_SWIEN;
      0092C7 AA 04            [ 1]  457 	or	a, #0x04
      0092C9 C7 50 C5         [ 1]  458 	ld	0x50c5, a
      0092CC 20 05            [ 2]  459 	jra	00103$
      0092CE                        460 00102$:
                                    461 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 354: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      0092CE A4 FB            [ 1]  462 	and	a, #0xfb
      0092D0 C7 50 C5         [ 1]  463 	ld	0x50c5, a
      0092D3                        464 00103$:
                                    465 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 358: CLK->SWR = (uint8_t)CLK_NewClock;
      0092D3 AE 50 C4         [ 2]  466 	ldw	x, #0x50c4
      0092D6 7B 04            [ 1]  467 	ld	a, (0x04, sp)
      0092D8 F7               [ 1]  468 	ld	(x), a
                                    469 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 361: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      0092D9 5F               [ 1]  470 	clrw	x
      0092DA 5A               [ 2]  471 	decw	x
      0092DB                        472 00105$:
      0092DB 72 01 50 C5 06   [ 2]  473 	btjf	0x50c5, #0, 00107$
      0092E0 5D               [ 2]  474 	tnzw	x
      0092E1 27 03            [ 1]  475 	jreq	00107$
                                    476 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 363: DownCounter--;
      0092E3 5A               [ 2]  477 	decw	x
      0092E4 20 F5            [ 2]  478 	jra	00105$
      0092E6                        479 00107$:
                                    480 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 366: if(DownCounter != 0)
      0092E6 5D               [ 2]  481 	tnzw	x
      0092E7 27 05            [ 1]  482 	jreq	00109$
                                    483 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 368: Swif = SUCCESS;
      0092E9 A6 01            [ 1]  484 	ld	a, #0x01
      0092EB 97               [ 1]  485 	ld	xl, a
      0092EC 20 32            [ 2]  486 	jra	00123$
      0092EE                        487 00109$:
                                    488 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 372: Swif = ERROR;
      0092EE 5F               [ 1]  489 	clrw	x
      0092EF 20 2F            [ 2]  490 	jra	00123$
      0092F1                        491 00122$:
                                    492 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 378: if (ITState != DISABLE)
      0092F1 0D 05            [ 1]  493 	tnz	(0x05, sp)
      0092F3 27 07            [ 1]  494 	jreq	00112$
                                    495 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 380: CLK->SWCR |= CLK_SWCR_SWIEN;
      0092F5 AA 04            [ 1]  496 	or	a, #0x04
      0092F7 C7 50 C5         [ 1]  497 	ld	0x50c5, a
      0092FA 20 05            [ 2]  498 	jra	00113$
      0092FC                        499 00112$:
                                    500 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 384: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      0092FC A4 FB            [ 1]  501 	and	a, #0xfb
      0092FE C7 50 C5         [ 1]  502 	ld	0x50c5, a
      009301                        503 00113$:
                                    504 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 388: CLK->SWR = (uint8_t)CLK_NewClock;
      009301 AE 50 C4         [ 2]  505 	ldw	x, #0x50c4
      009304 7B 04            [ 1]  506 	ld	a, (0x04, sp)
      009306 F7               [ 1]  507 	ld	(x), a
                                    508 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 391: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      009307 5F               [ 1]  509 	clrw	x
      009308 5A               [ 2]  510 	decw	x
      009309                        511 00115$:
      009309 72 07 50 C5 06   [ 2]  512 	btjf	0x50c5, #3, 00117$
      00930E 5D               [ 2]  513 	tnzw	x
      00930F 27 03            [ 1]  514 	jreq	00117$
                                    515 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 393: DownCounter--;
      009311 5A               [ 2]  516 	decw	x
      009312 20 F5            [ 2]  517 	jra	00115$
      009314                        518 00117$:
                                    519 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 396: if(DownCounter != 0)
      009314 5D               [ 2]  520 	tnzw	x
      009315 27 08            [ 1]  521 	jreq	00119$
                                    522 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 399: CLK->SWCR |= CLK_SWCR_SWEN;
      009317 72 12 50 C5      [ 1]  523 	bset	0x50c5, #1
                                    524 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 400: Swif = SUCCESS;
      00931B A6 01            [ 1]  525 	ld	a, #0x01
      00931D 97               [ 1]  526 	ld	xl, a
                                    527 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 404: Swif = ERROR;
      00931E 21                     528 	.byte 0x21
      00931F                        529 00119$:
      00931F 5F               [ 1]  530 	clrw	x
      009320                        531 00123$:
                                    532 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 407: if(Swif != ERROR)
      009320 9F               [ 1]  533 	ld	a, xl
      009321 4D               [ 1]  534 	tnz	a
      009322 27 2E            [ 1]  535 	jreq	00136$
                                    536 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 410: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      009324 0D 06            [ 1]  537 	tnz	(0x06, sp)
      009326 26 0C            [ 1]  538 	jrne	00132$
      009328 90 9F            [ 1]  539 	ld	a, yl
      00932A A1 E1            [ 1]  540 	cp	a, #0xe1
      00932C 26 06            [ 1]  541 	jrne	00132$
                                    542 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 412: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      00932E 72 11 50 C0      [ 1]  543 	bres	0x50c0, #0
      009332 20 1E            [ 2]  544 	jra	00136$
      009334                        545 00132$:
                                    546 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 414: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      009334 0D 06            [ 1]  547 	tnz	(0x06, sp)
      009336 26 0C            [ 1]  548 	jrne	00128$
      009338 90 9F            [ 1]  549 	ld	a, yl
      00933A A1 D2            [ 1]  550 	cp	a, #0xd2
      00933C 26 06            [ 1]  551 	jrne	00128$
                                    552 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 416: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      00933E 72 17 50 C0      [ 1]  553 	bres	0x50c0, #3
      009342 20 0E            [ 2]  554 	jra	00136$
      009344                        555 00128$:
                                    556 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 418: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      009344 0D 06            [ 1]  557 	tnz	(0x06, sp)
      009346 26 0A            [ 1]  558 	jrne	00136$
      009348 90 9F            [ 1]  559 	ld	a, yl
      00934A A1 B4            [ 1]  560 	cp	a, #0xb4
      00934C 26 04            [ 1]  561 	jrne	00136$
                                    562 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 420: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      00934E 72 11 50 C1      [ 1]  563 	bres	0x50c1, #0
      009352                        564 00136$:
                                    565 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 423: return(Swif);
      009352 9F               [ 1]  566 	ld	a, xl
                                    567 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 424: }
      009353 1E 02            [ 2]  568 	ldw	x, (2, sp)
      009355 5B 06            [ 2]  569 	addw	sp, #6
      009357 FC               [ 2]  570 	jp	(x)
                                    571 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 434: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    572 ;	-----------------------------------------
                                    573 ;	 function CLK_HSIPrescalerConfig
                                    574 ;	-----------------------------------------
      009358                        575 _CLK_HSIPrescalerConfig:
      009358 88               [ 1]  576 	push	a
                                    577 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 437: assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
      009359 6B 01            [ 1]  578 	ld	(0x01, sp), a
      00935B 27 1E            [ 1]  579 	jreq	00104$
      00935D 7B 01            [ 1]  580 	ld	a, (0x01, sp)
      00935F A1 08            [ 1]  581 	cp	a, #0x08
      009361 27 18            [ 1]  582 	jreq	00104$
      009363 7B 01            [ 1]  583 	ld	a, (0x01, sp)
      009365 A1 10            [ 1]  584 	cp	a, #0x10
      009367 27 12            [ 1]  585 	jreq	00104$
      009369 7B 01            [ 1]  586 	ld	a, (0x01, sp)
      00936B A1 18            [ 1]  587 	cp	a, #0x18
      00936D 27 0C            [ 1]  588 	jreq	00104$
      00936F 4B B5            [ 1]  589 	push	#0xb5
      009371 4B 01            [ 1]  590 	push	#0x01
      009373 5F               [ 1]  591 	clrw	x
      009374 89               [ 2]  592 	pushw	x
      009375 AE 81 A7         [ 2]  593 	ldw	x, #(___str_0+0)
      009378 CD 82 B0         [ 4]  594 	call	_assert_failed
      00937B                        595 00104$:
                                    596 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 440: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      00937B C6 50 C6         [ 1]  597 	ld	a, 0x50c6
      00937E A4 E7            [ 1]  598 	and	a, #0xe7
      009380 C7 50 C6         [ 1]  599 	ld	0x50c6, a
                                    600 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 443: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      009383 C6 50 C6         [ 1]  601 	ld	a, 0x50c6
      009386 1A 01            [ 1]  602 	or	a, (0x01, sp)
      009388 C7 50 C6         [ 1]  603 	ld	0x50c6, a
                                    604 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 444: }
      00938B 84               [ 1]  605 	pop	a
      00938C 81               [ 4]  606 	ret
                                    607 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 525: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    608 ;	-----------------------------------------
                                    609 ;	 function CLK_SYSCLKConfig
                                    610 ;	-----------------------------------------
      00938D                        611 _CLK_SYSCLKConfig:
      00938D 88               [ 1]  612 	push	a
                                    613 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 528: assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
      00938E 95               [ 1]  614 	ld	xh, a
      00938F 4D               [ 1]  615 	tnz	a
      009390 27 4B            [ 1]  616 	jreq	00107$
      009392 9E               [ 1]  617 	ld	a, xh
      009393 A1 08            [ 1]  618 	cp	a, #0x08
      009395 27 46            [ 1]  619 	jreq	00107$
      009397 9E               [ 1]  620 	ld	a, xh
      009398 A1 10            [ 1]  621 	cp	a, #0x10
      00939A 27 41            [ 1]  622 	jreq	00107$
      00939C 9E               [ 1]  623 	ld	a, xh
      00939D A1 18            [ 1]  624 	cp	a, #0x18
      00939F 27 3C            [ 1]  625 	jreq	00107$
      0093A1 9E               [ 1]  626 	ld	a, xh
      0093A2 A1 80            [ 1]  627 	cp	a, #0x80
      0093A4 27 37            [ 1]  628 	jreq	00107$
      0093A6 9E               [ 1]  629 	ld	a, xh
      0093A7 A1 81            [ 1]  630 	cp	a, #0x81
      0093A9 27 32            [ 1]  631 	jreq	00107$
      0093AB 9E               [ 1]  632 	ld	a, xh
      0093AC A1 82            [ 1]  633 	cp	a, #0x82
      0093AE 27 2D            [ 1]  634 	jreq	00107$
      0093B0 9E               [ 1]  635 	ld	a, xh
      0093B1 A1 83            [ 1]  636 	cp	a, #0x83
      0093B3 27 28            [ 1]  637 	jreq	00107$
      0093B5 9E               [ 1]  638 	ld	a, xh
      0093B6 A1 84            [ 1]  639 	cp	a, #0x84
      0093B8 27 23            [ 1]  640 	jreq	00107$
      0093BA 9E               [ 1]  641 	ld	a, xh
      0093BB A1 85            [ 1]  642 	cp	a, #0x85
      0093BD 27 1E            [ 1]  643 	jreq	00107$
      0093BF 9E               [ 1]  644 	ld	a, xh
      0093C0 A1 86            [ 1]  645 	cp	a, #0x86
      0093C2 27 19            [ 1]  646 	jreq	00107$
      0093C4 9E               [ 1]  647 	ld	a, xh
      0093C5 A1 87            [ 1]  648 	cp	a, #0x87
      0093C7 27 14            [ 1]  649 	jreq	00107$
      0093C9 89               [ 2]  650 	pushw	x
      0093CA 4B 10            [ 1]  651 	push	#0x10
      0093CC 4B 02            [ 1]  652 	push	#0x02
      0093CE 4B 00            [ 1]  653 	push	#0x00
      0093D0 4B 00            [ 1]  654 	push	#0x00
      0093D2 AE 81 A7         [ 2]  655 	ldw	x, #(___str_0+0)
      0093D5 CD 82 B0         [ 4]  656 	call	_assert_failed
      0093D8 02               [ 1]  657 	rlwa	x
      0093D9 84               [ 1]  658 	pop	a
      0093DA 01               [ 1]  659 	rrwa	x
      0093DB 5B 01            [ 2]  660 	addw	sp, #1
      0093DD                        661 00107$:
                                    662 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 532: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      0093DD C6 50 C6         [ 1]  663 	ld	a, 0x50c6
                                    664 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 530: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      0093E0 5D               [ 2]  665 	tnzw	x
      0093E1 2B 14            [ 1]  666 	jrmi	00102$
                                    667 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 532: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      0093E3 A4 E7            [ 1]  668 	and	a, #0xe7
      0093E5 C7 50 C6         [ 1]  669 	ld	0x50c6, a
                                    670 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 533: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      0093E8 C6 50 C6         [ 1]  671 	ld	a, 0x50c6
      0093EB 6B 01            [ 1]  672 	ld	(0x01, sp), a
      0093ED 9E               [ 1]  673 	ld	a, xh
      0093EE A4 18            [ 1]  674 	and	a, #0x18
      0093F0 1A 01            [ 1]  675 	or	a, (0x01, sp)
      0093F2 C7 50 C6         [ 1]  676 	ld	0x50c6, a
      0093F5 20 12            [ 2]  677 	jra	00104$
      0093F7                        678 00102$:
                                    679 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 537: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      0093F7 A4 F8            [ 1]  680 	and	a, #0xf8
      0093F9 C7 50 C6         [ 1]  681 	ld	0x50c6, a
                                    682 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 538: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      0093FC C6 50 C6         [ 1]  683 	ld	a, 0x50c6
      0093FF 6B 01            [ 1]  684 	ld	(0x01, sp), a
      009401 9E               [ 1]  685 	ld	a, xh
      009402 A4 07            [ 1]  686 	and	a, #0x07
      009404 1A 01            [ 1]  687 	or	a, (0x01, sp)
      009406 C7 50 C6         [ 1]  688 	ld	0x50c6, a
      009409                        689 00104$:
                                    690 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 540: }
      009409 84               [ 1]  691 	pop	a
      00940A 81               [ 4]  692 	ret
                                    693 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 602: uint32_t CLK_GetClockFreq(void)
                                    694 ;	-----------------------------------------
                                    695 ;	 function CLK_GetClockFreq
                                    696 ;	-----------------------------------------
      00940B                        697 _CLK_GetClockFreq:
      00940B 52 04            [ 2]  698 	sub	sp, #4
                                    699 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 609: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      00940D C6 50 C3         [ 1]  700 	ld	a, 0x50c3
                                    701 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 611: if (clocksource == CLK_SOURCE_HSI)
      009410 6B 04            [ 1]  702 	ld	(0x04, sp), a
      009412 A1 E1            [ 1]  703 	cp	a, #0xe1
      009414 26 23            [ 1]  704 	jrne	00105$
                                    705 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 613: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      009416 C6 50 C6         [ 1]  706 	ld	a, 0x50c6
      009419 A4 18            [ 1]  707 	and	a, #0x18
                                    708 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 614: tmp = (uint8_t)(tmp >> 3);
      00941B 44               [ 1]  709 	srl	a
      00941C 44               [ 1]  710 	srl	a
      00941D 44               [ 1]  711 	srl	a
                                    712 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 615: presc = HSIDivFactor[tmp];
      00941E 5F               [ 1]  713 	clrw	x
      00941F 97               [ 1]  714 	ld	xl, a
      009420 D6 81 9B         [ 1]  715 	ld	a, (_HSIDivFactor+0, x)
                                    716 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 616: clockfrequency = HSI_VALUE / presc;
      009423 5F               [ 1]  717 	clrw	x
      009424 0F 01            [ 1]  718 	clr	(0x01, sp)
      009426 88               [ 1]  719 	push	a
      009427 89               [ 2]  720 	pushw	x
      009428 4F               [ 1]  721 	clr	a
      009429 88               [ 1]  722 	push	a
      00942A 4B 00            [ 1]  723 	push	#0x00
      00942C 4B 24            [ 1]  724 	push	#0x24
      00942E 4B F4            [ 1]  725 	push	#0xf4
      009430 4B 00            [ 1]  726 	push	#0x00
      009432 CD 98 1D         [ 4]  727 	call	__divulong
      009435 5B 08            [ 2]  728 	addw	sp, #8
      009437 20 16            [ 2]  729 	jra	00106$
      009439                        730 00105$:
                                    731 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 618: else if ( clocksource == CLK_SOURCE_LSI)
      009439 7B 04            [ 1]  732 	ld	a, (0x04, sp)
      00943B A1 D2            [ 1]  733 	cp	a, #0xd2
      00943D 26 09            [ 1]  734 	jrne	00102$
                                    735 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 620: clockfrequency = LSI_VALUE;
      00943F AE F4 00         [ 2]  736 	ldw	x, #0xf400
      009442 90 AE 00 01      [ 2]  737 	ldw	y, #0x0001
      009446 20 07            [ 2]  738 	jra	00106$
      009448                        739 00102$:
                                    740 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 624: clockfrequency = HSE_VALUE;
      009448 AE 12 00         [ 2]  741 	ldw	x, #0x1200
      00944B 90 AE 00 7A      [ 2]  742 	ldw	y, #0x007a
      00944F                        743 00106$:
                                    744 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 627: return((uint32_t)clockfrequency);
                                    745 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 628: }
      00944F 5B 04            [ 2]  746 	addw	sp, #4
      009451 81               [ 4]  747 	ret
                                    748 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 673: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                    749 ;	-----------------------------------------
                                    750 ;	 function CLK_GetFlagStatus
                                    751 ;	-----------------------------------------
      009452                        752 _CLK_GetFlagStatus:
      009452 52 03            [ 2]  753 	sub	sp, #3
                                    754 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 680: assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
      009454 1F 02            [ 2]  755 	ldw	(0x02, sp), x
      009456 A3 01 10         [ 2]  756 	cpw	x, #0x0110
      009459 27 38            [ 1]  757 	jreq	00119$
      00945B A3 01 02         [ 2]  758 	cpw	x, #0x0102
      00945E 27 33            [ 1]  759 	jreq	00119$
      009460 A3 02 02         [ 2]  760 	cpw	x, #0x0202
      009463 27 2E            [ 1]  761 	jreq	00119$
      009465 A3 03 08         [ 2]  762 	cpw	x, #0x0308
      009468 27 29            [ 1]  763 	jreq	00119$
      00946A A3 03 01         [ 2]  764 	cpw	x, #0x0301
      00946D 27 24            [ 1]  765 	jreq	00119$
      00946F A3 04 08         [ 2]  766 	cpw	x, #0x0408
      009472 27 1F            [ 1]  767 	jreq	00119$
      009474 A3 04 02         [ 2]  768 	cpw	x, #0x0402
      009477 27 1A            [ 1]  769 	jreq	00119$
      009479 A3 05 04         [ 2]  770 	cpw	x, #0x0504
      00947C 27 15            [ 1]  771 	jreq	00119$
      00947E A3 05 02         [ 2]  772 	cpw	x, #0x0502
      009481 27 10            [ 1]  773 	jreq	00119$
      009483 89               [ 2]  774 	pushw	x
      009484 4B A8            [ 1]  775 	push	#0xa8
      009486 4B 02            [ 1]  776 	push	#0x02
      009488 4B 00            [ 1]  777 	push	#0x00
      00948A 4B 00            [ 1]  778 	push	#0x00
      00948C AE 81 A7         [ 2]  779 	ldw	x, #(___str_0+0)
      00948F CD 82 B0         [ 4]  780 	call	_assert_failed
      009492 85               [ 2]  781 	popw	x
      009493                        782 00119$:
                                    783 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 683: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      009493 4F               [ 1]  784 	clr	a
                                    785 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 686: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      009494 97               [ 1]  786 	ld	xl, a
      009495 A3 01 00         [ 2]  787 	cpw	x, #0x0100
      009498 26 05            [ 1]  788 	jrne	00111$
                                    789 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 688: tmpreg = CLK->ICKR;
      00949A C6 50 C0         [ 1]  790 	ld	a, 0x50c0
      00949D 20 21            [ 2]  791 	jra	00112$
      00949F                        792 00111$:
                                    793 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 690: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      00949F A3 02 00         [ 2]  794 	cpw	x, #0x0200
      0094A2 26 05            [ 1]  795 	jrne	00108$
                                    796 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 692: tmpreg = CLK->ECKR;
      0094A4 C6 50 C1         [ 1]  797 	ld	a, 0x50c1
      0094A7 20 17            [ 2]  798 	jra	00112$
      0094A9                        799 00108$:
                                    800 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 694: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      0094A9 A3 03 00         [ 2]  801 	cpw	x, #0x0300
      0094AC 26 05            [ 1]  802 	jrne	00105$
                                    803 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 696: tmpreg = CLK->SWCR;
      0094AE C6 50 C5         [ 1]  804 	ld	a, 0x50c5
      0094B1 20 0D            [ 2]  805 	jra	00112$
      0094B3                        806 00105$:
                                    807 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 698: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      0094B3 A3 04 00         [ 2]  808 	cpw	x, #0x0400
      0094B6 26 05            [ 1]  809 	jrne	00102$
                                    810 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 700: tmpreg = CLK->CSSR;
      0094B8 C6 50 C8         [ 1]  811 	ld	a, 0x50c8
      0094BB 20 03            [ 2]  812 	jra	00112$
      0094BD                        813 00102$:
                                    814 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 704: tmpreg = CLK->CCOR;
      0094BD C6 50 C9         [ 1]  815 	ld	a, 0x50c9
      0094C0                        816 00112$:
                                    817 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 707: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      0094C0 88               [ 1]  818 	push	a
      0094C1 7B 04            [ 1]  819 	ld	a, (0x04, sp)
      0094C3 6B 02            [ 1]  820 	ld	(0x02, sp), a
      0094C5 84               [ 1]  821 	pop	a
      0094C6 14 01            [ 1]  822 	and	a, (0x01, sp)
      0094C8 27 03            [ 1]  823 	jreq	00114$
                                    824 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 709: bitstatus = SET;
      0094CA A6 01            [ 1]  825 	ld	a, #0x01
                                    826 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 713: bitstatus = RESET;
      0094CC 21                     827 	.byte 0x21
      0094CD                        828 00114$:
      0094CD 4F               [ 1]  829 	clr	a
      0094CE                        830 00115$:
                                    831 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 717: return((FlagStatus)bitstatus);
                                    832 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 718: }
      0094CE 5B 03            [ 2]  833 	addw	sp, #3
      0094D0 81               [ 4]  834 	ret
                                    835 	.area CODE
                                    836 	.area CONST
      00819B                        837 _HSIDivFactor:
      00819B 01                     838 	.db #0x01	; 1
      00819C 02                     839 	.db #0x02	; 2
      00819D 04                     840 	.db #0x04	; 4
      00819E 08                     841 	.db #0x08	; 8
      00819F                        842 _CLKPrescTable:
      00819F 01                     843 	.db #0x01	; 1
      0081A0 02                     844 	.db #0x02	; 2
      0081A1 04                     845 	.db #0x04	; 4
      0081A2 08                     846 	.db #0x08	; 8
      0081A3 0A                     847 	.db #0x0a	; 10
      0081A4 10                     848 	.db #0x10	; 16
      0081A5 14                     849 	.db #0x14	; 20
      0081A6 28                     850 	.db #0x28	; 40
                                    851 	.area CONST
      0081A7                        852 ___str_0:
      0081A7 2F 77 6F 72 6B 73 70   853 	.ascii "/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Li"
             61 63 65 2F 53 6F 66
             74 77 61 72 65 2F 46
             69 72 6D 77 61 72 65
             2F 6E 65 77 5F 62 65
             67 69 6E 69 6E 67 2F
             53 54 4D 38 53 5F 53
             74 64 50 65 72 69 70
             68 5F 4C 69
      0081E3 62 2F 73 72 63 2F 73   854 	.ascii "b/src/stm8s_clk.c"
             74 6D 38 73 5F 63 6C
             6B 2E 63
      0081F4 00                     855 	.db 0x00
                                    856 	.area CODE
                                    857 	.area INITIALIZER
                                    858 	.area CABS (ABS)
