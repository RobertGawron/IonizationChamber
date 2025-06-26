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
      008D44                         66 _CLK_DeInit:
                                     67 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      008D44 35 01 50 C0      [ 1]   68 	mov	0x50c0+0, #0x01
                                     69 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      008D48 35 00 50 C1      [ 1]   70 	mov	0x50c1+0, #0x00
                                     71 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      008D4C 35 E1 50 C4      [ 1]   72 	mov	0x50c4+0, #0xe1
                                     73 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      008D50 35 00 50 C5      [ 1]   74 	mov	0x50c5+0, #0x00
                                     75 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      008D54 35 18 50 C6      [ 1]   76 	mov	0x50c6+0, #0x18
                                     77 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      008D58 35 FF 50 C7      [ 1]   78 	mov	0x50c7+0, #0xff
                                     79 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      008D5C 35 FF 50 CA      [ 1]   80 	mov	0x50ca+0, #0xff
                                     81 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      008D60 35 00 50 C8      [ 1]   82 	mov	0x50c8+0, #0x00
                                     83 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      008D64 35 00 50 C9      [ 1]   84 	mov	0x50c9+0, #0x00
                                     85 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      008D68                         86 00101$:
      008D68 72 00 50 C9 FB   [ 2]   87 	btjt	0x50c9, #0, 00101$
                                     88 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      008D6D 35 00 50 C9      [ 1]   89 	mov	0x50c9+0, #0x00
                                     90 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      008D71 35 00 50 CC      [ 1]   91 	mov	0x50cc+0, #0x00
                                     92 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      008D75 35 00 50 CD      [ 1]   93 	mov	0x50cd+0, #0x00
                                     94 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 88: }
      008D79 81               [ 4]   95 	ret
                                     96 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 124: void CLK_HSECmd(FunctionalState NewState)
                                     97 ;	-----------------------------------------
                                     98 ;	 function CLK_HSECmd
                                     99 ;	-----------------------------------------
      008D7A                        100 _CLK_HSECmd:
      008D7A 88               [ 1]  101 	push	a
                                    102 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 127: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008D7B 6B 01            [ 1]  103 	ld	(0x01, sp), a
      008D7D 27 10            [ 1]  104 	jreq	00107$
      008D7F 0D 01            [ 1]  105 	tnz	(0x01, sp)
      008D81 26 0C            [ 1]  106 	jrne	00107$
      008D83 4B 7F            [ 1]  107 	push	#0x7f
      008D85 5F               [ 1]  108 	clrw	x
      008D86 89               [ 2]  109 	pushw	x
      008D87 4B 00            [ 1]  110 	push	#0x00
      008D89 AE 81 5D         [ 2]  111 	ldw	x, #(___str_0+0)
      008D8C CD 82 1C         [ 4]  112 	call	_assert_failed
      008D8F                        113 00107$:
                                    114 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 132: CLK->ECKR |= CLK_ECKR_HSEEN;
      008D8F C6 50 C1         [ 1]  115 	ld	a, 0x50c1
                                    116 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 129: if (NewState != DISABLE)
      008D92 0D 01            [ 1]  117 	tnz	(0x01, sp)
      008D94 27 07            [ 1]  118 	jreq	00102$
                                    119 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 132: CLK->ECKR |= CLK_ECKR_HSEEN;
      008D96 AA 01            [ 1]  120 	or	a, #0x01
      008D98 C7 50 C1         [ 1]  121 	ld	0x50c1, a
      008D9B 20 05            [ 2]  122 	jra	00104$
      008D9D                        123 00102$:
                                    124 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 137: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      008D9D A4 FE            [ 1]  125 	and	a, #0xfe
      008D9F C7 50 C1         [ 1]  126 	ld	0x50c1, a
      008DA2                        127 00104$:
                                    128 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 139: }
      008DA2 84               [ 1]  129 	pop	a
      008DA3 81               [ 4]  130 	ret
                                    131 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 148: void CLK_HSICmd(FunctionalState NewState)
                                    132 ;	-----------------------------------------
                                    133 ;	 function CLK_HSICmd
                                    134 ;	-----------------------------------------
      008DA4                        135 _CLK_HSICmd:
      008DA4 88               [ 1]  136 	push	a
                                    137 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 151: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008DA5 6B 01            [ 1]  138 	ld	(0x01, sp), a
      008DA7 27 10            [ 1]  139 	jreq	00107$
      008DA9 0D 01            [ 1]  140 	tnz	(0x01, sp)
      008DAB 26 0C            [ 1]  141 	jrne	00107$
      008DAD 4B 97            [ 1]  142 	push	#0x97
      008DAF 5F               [ 1]  143 	clrw	x
      008DB0 89               [ 2]  144 	pushw	x
      008DB1 4B 00            [ 1]  145 	push	#0x00
      008DB3 AE 81 5D         [ 2]  146 	ldw	x, #(___str_0+0)
      008DB6 CD 82 1C         [ 4]  147 	call	_assert_failed
      008DB9                        148 00107$:
                                    149 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 156: CLK->ICKR |= CLK_ICKR_HSIEN;
      008DB9 C6 50 C0         [ 1]  150 	ld	a, 0x50c0
                                    151 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 153: if (NewState != DISABLE)
      008DBC 0D 01            [ 1]  152 	tnz	(0x01, sp)
      008DBE 27 07            [ 1]  153 	jreq	00102$
                                    154 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 156: CLK->ICKR |= CLK_ICKR_HSIEN;
      008DC0 AA 01            [ 1]  155 	or	a, #0x01
      008DC2 C7 50 C0         [ 1]  156 	ld	0x50c0, a
      008DC5 20 05            [ 2]  157 	jra	00104$
      008DC7                        158 00102$:
                                    159 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 161: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      008DC7 A4 FE            [ 1]  160 	and	a, #0xfe
      008DC9 C7 50 C0         [ 1]  161 	ld	0x50c0, a
      008DCC                        162 00104$:
                                    163 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 163: }
      008DCC 84               [ 1]  164 	pop	a
      008DCD 81               [ 4]  165 	ret
                                    166 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 173: void CLK_LSICmd(FunctionalState NewState)
                                    167 ;	-----------------------------------------
                                    168 ;	 function CLK_LSICmd
                                    169 ;	-----------------------------------------
      008DCE                        170 _CLK_LSICmd:
      008DCE 88               [ 1]  171 	push	a
                                    172 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 176: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008DCF 6B 01            [ 1]  173 	ld	(0x01, sp), a
      008DD1 27 10            [ 1]  174 	jreq	00107$
      008DD3 0D 01            [ 1]  175 	tnz	(0x01, sp)
      008DD5 26 0C            [ 1]  176 	jrne	00107$
      008DD7 4B B0            [ 1]  177 	push	#0xb0
      008DD9 5F               [ 1]  178 	clrw	x
      008DDA 89               [ 2]  179 	pushw	x
      008DDB 4B 00            [ 1]  180 	push	#0x00
      008DDD AE 81 5D         [ 2]  181 	ldw	x, #(___str_0+0)
      008DE0 CD 82 1C         [ 4]  182 	call	_assert_failed
      008DE3                        183 00107$:
                                    184 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 181: CLK->ICKR |= CLK_ICKR_LSIEN;
      008DE3 C6 50 C0         [ 1]  185 	ld	a, 0x50c0
                                    186 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 178: if (NewState != DISABLE)
      008DE6 0D 01            [ 1]  187 	tnz	(0x01, sp)
      008DE8 27 07            [ 1]  188 	jreq	00102$
                                    189 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 181: CLK->ICKR |= CLK_ICKR_LSIEN;
      008DEA AA 08            [ 1]  190 	or	a, #0x08
      008DEC C7 50 C0         [ 1]  191 	ld	0x50c0, a
      008DEF 20 05            [ 2]  192 	jra	00104$
      008DF1                        193 00102$:
                                    194 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 186: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      008DF1 A4 F7            [ 1]  195 	and	a, #0xf7
      008DF3 C7 50 C0         [ 1]  196 	ld	0x50c0, a
      008DF6                        197 00104$:
                                    198 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 188: }
      008DF6 84               [ 1]  199 	pop	a
      008DF7 81               [ 4]  200 	ret
                                    201 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 224: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    202 ;	-----------------------------------------
                                    203 ;	 function CLK_ClockSwitchCmd
                                    204 ;	-----------------------------------------
      008DF8                        205 _CLK_ClockSwitchCmd:
      008DF8 88               [ 1]  206 	push	a
                                    207 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 227: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008DF9 6B 01            [ 1]  208 	ld	(0x01, sp), a
      008DFB 27 10            [ 1]  209 	jreq	00107$
      008DFD 0D 01            [ 1]  210 	tnz	(0x01, sp)
      008DFF 26 0C            [ 1]  211 	jrne	00107$
      008E01 4B E3            [ 1]  212 	push	#0xe3
      008E03 5F               [ 1]  213 	clrw	x
      008E04 89               [ 2]  214 	pushw	x
      008E05 4B 00            [ 1]  215 	push	#0x00
      008E07 AE 81 5D         [ 2]  216 	ldw	x, #(___str_0+0)
      008E0A CD 82 1C         [ 4]  217 	call	_assert_failed
      008E0D                        218 00107$:
                                    219 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 232: CLK->SWCR |= CLK_SWCR_SWEN;
      008E0D C6 50 C5         [ 1]  220 	ld	a, 0x50c5
                                    221 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 229: if (NewState != DISABLE )
      008E10 0D 01            [ 1]  222 	tnz	(0x01, sp)
      008E12 27 07            [ 1]  223 	jreq	00102$
                                    224 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 232: CLK->SWCR |= CLK_SWCR_SWEN;
      008E14 AA 02            [ 1]  225 	or	a, #0x02
      008E16 C7 50 C5         [ 1]  226 	ld	0x50c5, a
      008E19 20 05            [ 2]  227 	jra	00104$
      008E1B                        228 00102$:
                                    229 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 237: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      008E1B A4 FD            [ 1]  230 	and	a, #0xfd
      008E1D C7 50 C5         [ 1]  231 	ld	0x50c5, a
      008E20                        232 00104$:
                                    233 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 239: }
      008E20 84               [ 1]  234 	pop	a
      008E21 81               [ 4]  235 	ret
                                    236 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 278: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    237 ;	-----------------------------------------
                                    238 ;	 function CLK_PeripheralClockConfig
                                    239 ;	-----------------------------------------
      008E22                        240 _CLK_PeripheralClockConfig:
      008E22 52 03            [ 2]  241 	sub	sp, #3
      008E24 6B 03            [ 1]  242 	ld	(0x03, sp), a
                                    243 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 281: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008E26 0D 06            [ 1]  244 	tnz	(0x06, sp)
      008E28 27 10            [ 1]  245 	jreq	00113$
      008E2A 0D 06            [ 1]  246 	tnz	(0x06, sp)
      008E2C 26 0C            [ 1]  247 	jrne	00113$
      008E2E 4B 19            [ 1]  248 	push	#0x19
      008E30 4B 01            [ 1]  249 	push	#0x01
      008E32 5F               [ 1]  250 	clrw	x
      008E33 89               [ 2]  251 	pushw	x
      008E34 AE 81 5D         [ 2]  252 	ldw	x, #(___str_0+0)
      008E37 CD 82 1C         [ 4]  253 	call	_assert_failed
      008E3A                        254 00113$:
                                    255 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 282: assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
      008E3A 0D 03            [ 1]  256 	tnz	(0x03, sp)
      008E3C 27 64            [ 1]  257 	jreq	00118$
      008E3E 7B 03            [ 1]  258 	ld	a, (0x03, sp)
      008E40 4A               [ 1]  259 	dec	a
      008E41 27 5F            [ 1]  260 	jreq	00118$
      008E43 7B 03            [ 1]  261 	ld	a, (0x03, sp)
      008E45 A0 03            [ 1]  262 	sub	a, #0x03
      008E47 26 02            [ 1]  263 	jrne	00298$
      008E49 4C               [ 1]  264 	inc	a
      008E4A 21                     265 	.byte 0x21
      008E4B                        266 00298$:
      008E4B 4F               [ 1]  267 	clr	a
      008E4C                        268 00299$:
      008E4C 4D               [ 1]  269 	tnz	a
      008E4D 26 53            [ 1]  270 	jrne	00118$
      008E4F 4D               [ 1]  271 	tnz	a
      008E50 26 50            [ 1]  272 	jrne	00118$
      008E52 4D               [ 1]  273 	tnz	a
      008E53 26 4D            [ 1]  274 	jrne	00118$
      008E55 7B 03            [ 1]  275 	ld	a, (0x03, sp)
      008E57 A0 04            [ 1]  276 	sub	a, #0x04
      008E59 26 04            [ 1]  277 	jrne	00304$
      008E5B 4C               [ 1]  278 	inc	a
      008E5C 97               [ 1]  279 	ld	xl, a
      008E5D 20 02            [ 2]  280 	jra	00305$
      008E5F                        281 00304$:
      008E5F 4F               [ 1]  282 	clr	a
      008E60 97               [ 1]  283 	ld	xl, a
      008E61                        284 00305$:
      008E61 9F               [ 1]  285 	ld	a, xl
      008E62 4D               [ 1]  286 	tnz	a
      008E63 26 3D            [ 1]  287 	jrne	00118$
      008E65 7B 03            [ 1]  288 	ld	a, (0x03, sp)
      008E67 A0 05            [ 1]  289 	sub	a, #0x05
      008E69 26 02            [ 1]  290 	jrne	00308$
      008E6B 4C               [ 1]  291 	inc	a
      008E6C 21                     292 	.byte 0x21
      008E6D                        293 00308$:
      008E6D 4F               [ 1]  294 	clr	a
      008E6E                        295 00309$:
      008E6E 4D               [ 1]  296 	tnz	a
      008E6F 26 31            [ 1]  297 	jrne	00118$
      008E71 4D               [ 1]  298 	tnz	a
      008E72 26 2E            [ 1]  299 	jrne	00118$
      008E74 9F               [ 1]  300 	ld	a, xl
      008E75 4D               [ 1]  301 	tnz	a
      008E76 26 2A            [ 1]  302 	jrne	00118$
      008E78 7B 03            [ 1]  303 	ld	a, (0x03, sp)
      008E7A A1 06            [ 1]  304 	cp	a, #0x06
      008E7C 27 24            [ 1]  305 	jreq	00118$
      008E7E 7B 03            [ 1]  306 	ld	a, (0x03, sp)
      008E80 A1 07            [ 1]  307 	cp	a, #0x07
      008E82 27 1E            [ 1]  308 	jreq	00118$
      008E84 7B 03            [ 1]  309 	ld	a, (0x03, sp)
      008E86 A1 17            [ 1]  310 	cp	a, #0x17
      008E88 27 18            [ 1]  311 	jreq	00118$
      008E8A 7B 03            [ 1]  312 	ld	a, (0x03, sp)
      008E8C A1 13            [ 1]  313 	cp	a, #0x13
      008E8E 27 12            [ 1]  314 	jreq	00118$
      008E90 7B 03            [ 1]  315 	ld	a, (0x03, sp)
      008E92 A1 12            [ 1]  316 	cp	a, #0x12
      008E94 27 0C            [ 1]  317 	jreq	00118$
      008E96 4B 1A            [ 1]  318 	push	#0x1a
      008E98 4B 01            [ 1]  319 	push	#0x01
      008E9A 5F               [ 1]  320 	clrw	x
      008E9B 89               [ 2]  321 	pushw	x
      008E9C AE 81 5D         [ 2]  322 	ldw	x, #(___str_0+0)
      008E9F CD 82 1C         [ 4]  323 	call	_assert_failed
      008EA2                        324 00118$:
                                    325 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 289: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008EA2 7B 03            [ 1]  326 	ld	a, (0x03, sp)
      008EA4 A4 0F            [ 1]  327 	and	a, #0x0f
      008EA6 88               [ 1]  328 	push	a
      008EA7 A6 01            [ 1]  329 	ld	a, #0x01
      008EA9 6B 02            [ 1]  330 	ld	(0x02, sp), a
      008EAB 84               [ 1]  331 	pop	a
      008EAC 4D               [ 1]  332 	tnz	a
      008EAD 27 05            [ 1]  333 	jreq	00329$
      008EAF                        334 00328$:
      008EAF 08 01            [ 1]  335 	sll	(0x01, sp)
      008EB1 4A               [ 1]  336 	dec	a
      008EB2 26 FB            [ 1]  337 	jrne	00328$
      008EB4                        338 00329$:
                                    339 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 294: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008EB4 7B 01            [ 1]  340 	ld	a, (0x01, sp)
      008EB6 43               [ 1]  341 	cpl	a
      008EB7 6B 02            [ 1]  342 	ld	(0x02, sp), a
                                    343 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 284: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      008EB9 7B 03            [ 1]  344 	ld	a, (0x03, sp)
      008EBB A5 10            [ 1]  345 	bcp	a, #0x10
      008EBD 26 15            [ 1]  346 	jrne	00108$
                                    347 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 289: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008EBF C6 50 C7         [ 1]  348 	ld	a, 0x50c7
                                    349 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 286: if (NewState != DISABLE)
      008EC2 0D 06            [ 1]  350 	tnz	(0x06, sp)
      008EC4 27 07            [ 1]  351 	jreq	00102$
                                    352 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 289: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008EC6 1A 01            [ 1]  353 	or	a, (0x01, sp)
      008EC8 C7 50 C7         [ 1]  354 	ld	0x50c7, a
      008ECB 20 1A            [ 2]  355 	jra	00110$
      008ECD                        356 00102$:
                                    357 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 294: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008ECD 14 02            [ 1]  358 	and	a, (0x02, sp)
      008ECF C7 50 C7         [ 1]  359 	ld	0x50c7, a
      008ED2 20 13            [ 2]  360 	jra	00110$
      008ED4                        361 00108$:
                                    362 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 302: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008ED4 C6 50 CA         [ 1]  363 	ld	a, 0x50ca
                                    364 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 299: if (NewState != DISABLE)
      008ED7 0D 06            [ 1]  365 	tnz	(0x06, sp)
      008ED9 27 07            [ 1]  366 	jreq	00105$
                                    367 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 302: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008EDB 1A 01            [ 1]  368 	or	a, (0x01, sp)
      008EDD C7 50 CA         [ 1]  369 	ld	0x50ca, a
      008EE0 20 05            [ 2]  370 	jra	00110$
      008EE2                        371 00105$:
                                    372 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 307: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008EE2 14 02            [ 1]  373 	and	a, (0x02, sp)
      008EE4 C7 50 CA         [ 1]  374 	ld	0x50ca, a
      008EE7                        375 00110$:
                                    376 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 310: }
      008EE7 5B 03            [ 2]  377 	addw	sp, #3
      008EE9 85               [ 2]  378 	popw	x
      008EEA 84               [ 1]  379 	pop	a
      008EEB FC               [ 2]  380 	jp	(x)
                                    381 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 326: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    382 ;	-----------------------------------------
                                    383 ;	 function CLK_ClockSwitchConfig
                                    384 ;	-----------------------------------------
      008EEC                        385 _CLK_ClockSwitchConfig:
      008EEC 88               [ 1]  386 	push	a
      008EED 6B 01            [ 1]  387 	ld	(0x01, sp), a
                                    388 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 333: assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
      008EEF 7B 04            [ 1]  389 	ld	a, (0x04, sp)
      008EF1 A1 E1            [ 1]  390 	cp	a, #0xe1
      008EF3 27 18            [ 1]  391 	jreq	00140$
      008EF5 7B 04            [ 1]  392 	ld	a, (0x04, sp)
      008EF7 A1 D2            [ 1]  393 	cp	a, #0xd2
      008EF9 27 12            [ 1]  394 	jreq	00140$
      008EFB 7B 04            [ 1]  395 	ld	a, (0x04, sp)
      008EFD A1 B4            [ 1]  396 	cp	a, #0xb4
      008EFF 27 0C            [ 1]  397 	jreq	00140$
      008F01 4B 4D            [ 1]  398 	push	#0x4d
      008F03 4B 01            [ 1]  399 	push	#0x01
      008F05 5F               [ 1]  400 	clrw	x
      008F06 89               [ 2]  401 	pushw	x
      008F07 AE 81 5D         [ 2]  402 	ldw	x, #(___str_0+0)
      008F0A CD 82 1C         [ 4]  403 	call	_assert_failed
      008F0D                        404 00140$:
                                    405 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 334: assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
      008F0D 0D 01            [ 1]  406 	tnz	(0x01, sp)
      008F0F 27 10            [ 1]  407 	jreq	00148$
      008F11 0D 01            [ 1]  408 	tnz	(0x01, sp)
      008F13 26 0C            [ 1]  409 	jrne	00148$
      008F15 4B 4E            [ 1]  410 	push	#0x4e
      008F17 4B 01            [ 1]  411 	push	#0x01
      008F19 5F               [ 1]  412 	clrw	x
      008F1A 89               [ 2]  413 	pushw	x
      008F1B AE 81 5D         [ 2]  414 	ldw	x, #(___str_0+0)
      008F1E CD 82 1C         [ 4]  415 	call	_assert_failed
      008F21                        416 00148$:
                                    417 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 335: assert_param(IS_FUNCTIONALSTATE_OK(ITState));
      008F21 0D 05            [ 1]  418 	tnz	(0x05, sp)
      008F23 27 10            [ 1]  419 	jreq	00153$
      008F25 0D 05            [ 1]  420 	tnz	(0x05, sp)
      008F27 26 0C            [ 1]  421 	jrne	00153$
      008F29 4B 4F            [ 1]  422 	push	#0x4f
      008F2B 4B 01            [ 1]  423 	push	#0x01
      008F2D 5F               [ 1]  424 	clrw	x
      008F2E 89               [ 2]  425 	pushw	x
      008F2F AE 81 5D         [ 2]  426 	ldw	x, #(___str_0+0)
      008F32 CD 82 1C         [ 4]  427 	call	_assert_failed
      008F35                        428 00153$:
                                    429 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 336: assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
      008F35 0D 06            [ 1]  430 	tnz	(0x06, sp)
      008F37 27 10            [ 1]  431 	jreq	00158$
      008F39 0D 06            [ 1]  432 	tnz	(0x06, sp)
      008F3B 26 0C            [ 1]  433 	jrne	00158$
      008F3D 4B 50            [ 1]  434 	push	#0x50
      008F3F 4B 01            [ 1]  435 	push	#0x01
      008F41 5F               [ 1]  436 	clrw	x
      008F42 89               [ 2]  437 	pushw	x
      008F43 AE 81 5D         [ 2]  438 	ldw	x, #(___str_0+0)
      008F46 CD 82 1C         [ 4]  439 	call	_assert_failed
      008F49                        440 00158$:
                                    441 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 339: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      008F49 C6 50 C3         [ 1]  442 	ld	a, 0x50c3
      008F4C 90 97            [ 1]  443 	ld	yl, a
                                    444 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 345: CLK->SWCR |= CLK_SWCR_SWEN;
      008F4E C6 50 C5         [ 1]  445 	ld	a, 0x50c5
                                    446 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 342: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      008F51 0D 01            [ 1]  447 	tnz	(0x01, sp)
      008F53 27 36            [ 1]  448 	jreq	00122$
                                    449 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 345: CLK->SWCR |= CLK_SWCR_SWEN;
      008F55 AA 02            [ 1]  450 	or	a, #0x02
      008F57 C7 50 C5         [ 1]  451 	ld	0x50c5, a
      008F5A C6 50 C5         [ 1]  452 	ld	a, 0x50c5
                                    453 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 348: if (ITState != DISABLE)
      008F5D 0D 05            [ 1]  454 	tnz	(0x05, sp)
      008F5F 27 07            [ 1]  455 	jreq	00102$
                                    456 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 350: CLK->SWCR |= CLK_SWCR_SWIEN;
      008F61 AA 04            [ 1]  457 	or	a, #0x04
      008F63 C7 50 C5         [ 1]  458 	ld	0x50c5, a
      008F66 20 05            [ 2]  459 	jra	00103$
      008F68                        460 00102$:
                                    461 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 354: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      008F68 A4 FB            [ 1]  462 	and	a, #0xfb
      008F6A C7 50 C5         [ 1]  463 	ld	0x50c5, a
      008F6D                        464 00103$:
                                    465 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 358: CLK->SWR = (uint8_t)CLK_NewClock;
      008F6D AE 50 C4         [ 2]  466 	ldw	x, #0x50c4
      008F70 7B 04            [ 1]  467 	ld	a, (0x04, sp)
      008F72 F7               [ 1]  468 	ld	(x), a
                                    469 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 361: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      008F73 5F               [ 1]  470 	clrw	x
      008F74 5A               [ 2]  471 	decw	x
      008F75                        472 00105$:
      008F75 72 01 50 C5 06   [ 2]  473 	btjf	0x50c5, #0, 00107$
      008F7A 5D               [ 2]  474 	tnzw	x
      008F7B 27 03            [ 1]  475 	jreq	00107$
                                    476 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 363: DownCounter--;
      008F7D 5A               [ 2]  477 	decw	x
      008F7E 20 F5            [ 2]  478 	jra	00105$
      008F80                        479 00107$:
                                    480 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 366: if(DownCounter != 0)
      008F80 5D               [ 2]  481 	tnzw	x
      008F81 27 05            [ 1]  482 	jreq	00109$
                                    483 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 368: Swif = SUCCESS;
      008F83 A6 01            [ 1]  484 	ld	a, #0x01
      008F85 97               [ 1]  485 	ld	xl, a
      008F86 20 32            [ 2]  486 	jra	00123$
      008F88                        487 00109$:
                                    488 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 372: Swif = ERROR;
      008F88 5F               [ 1]  489 	clrw	x
      008F89 20 2F            [ 2]  490 	jra	00123$
      008F8B                        491 00122$:
                                    492 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 378: if (ITState != DISABLE)
      008F8B 0D 05            [ 1]  493 	tnz	(0x05, sp)
      008F8D 27 07            [ 1]  494 	jreq	00112$
                                    495 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 380: CLK->SWCR |= CLK_SWCR_SWIEN;
      008F8F AA 04            [ 1]  496 	or	a, #0x04
      008F91 C7 50 C5         [ 1]  497 	ld	0x50c5, a
      008F94 20 05            [ 2]  498 	jra	00113$
      008F96                        499 00112$:
                                    500 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 384: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      008F96 A4 FB            [ 1]  501 	and	a, #0xfb
      008F98 C7 50 C5         [ 1]  502 	ld	0x50c5, a
      008F9B                        503 00113$:
                                    504 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 388: CLK->SWR = (uint8_t)CLK_NewClock;
      008F9B AE 50 C4         [ 2]  505 	ldw	x, #0x50c4
      008F9E 7B 04            [ 1]  506 	ld	a, (0x04, sp)
      008FA0 F7               [ 1]  507 	ld	(x), a
                                    508 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 391: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      008FA1 5F               [ 1]  509 	clrw	x
      008FA2 5A               [ 2]  510 	decw	x
      008FA3                        511 00115$:
      008FA3 72 07 50 C5 06   [ 2]  512 	btjf	0x50c5, #3, 00117$
      008FA8 5D               [ 2]  513 	tnzw	x
      008FA9 27 03            [ 1]  514 	jreq	00117$
                                    515 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 393: DownCounter--;
      008FAB 5A               [ 2]  516 	decw	x
      008FAC 20 F5            [ 2]  517 	jra	00115$
      008FAE                        518 00117$:
                                    519 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 396: if(DownCounter != 0)
      008FAE 5D               [ 2]  520 	tnzw	x
      008FAF 27 08            [ 1]  521 	jreq	00119$
                                    522 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 399: CLK->SWCR |= CLK_SWCR_SWEN;
      008FB1 72 12 50 C5      [ 1]  523 	bset	0x50c5, #1
                                    524 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 400: Swif = SUCCESS;
      008FB5 A6 01            [ 1]  525 	ld	a, #0x01
      008FB7 97               [ 1]  526 	ld	xl, a
                                    527 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 404: Swif = ERROR;
      008FB8 21                     528 	.byte 0x21
      008FB9                        529 00119$:
      008FB9 5F               [ 1]  530 	clrw	x
      008FBA                        531 00123$:
                                    532 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 407: if(Swif != ERROR)
      008FBA 9F               [ 1]  533 	ld	a, xl
      008FBB 4D               [ 1]  534 	tnz	a
      008FBC 27 2E            [ 1]  535 	jreq	00136$
                                    536 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 410: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      008FBE 0D 06            [ 1]  537 	tnz	(0x06, sp)
      008FC0 26 0C            [ 1]  538 	jrne	00132$
      008FC2 90 9F            [ 1]  539 	ld	a, yl
      008FC4 A1 E1            [ 1]  540 	cp	a, #0xe1
      008FC6 26 06            [ 1]  541 	jrne	00132$
                                    542 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 412: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      008FC8 72 11 50 C0      [ 1]  543 	bres	0x50c0, #0
      008FCC 20 1E            [ 2]  544 	jra	00136$
      008FCE                        545 00132$:
                                    546 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 414: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      008FCE 0D 06            [ 1]  547 	tnz	(0x06, sp)
      008FD0 26 0C            [ 1]  548 	jrne	00128$
      008FD2 90 9F            [ 1]  549 	ld	a, yl
      008FD4 A1 D2            [ 1]  550 	cp	a, #0xd2
      008FD6 26 06            [ 1]  551 	jrne	00128$
                                    552 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 416: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      008FD8 72 17 50 C0      [ 1]  553 	bres	0x50c0, #3
      008FDC 20 0E            [ 2]  554 	jra	00136$
      008FDE                        555 00128$:
                                    556 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 418: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      008FDE 0D 06            [ 1]  557 	tnz	(0x06, sp)
      008FE0 26 0A            [ 1]  558 	jrne	00136$
      008FE2 90 9F            [ 1]  559 	ld	a, yl
      008FE4 A1 B4            [ 1]  560 	cp	a, #0xb4
      008FE6 26 04            [ 1]  561 	jrne	00136$
                                    562 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 420: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      008FE8 72 11 50 C1      [ 1]  563 	bres	0x50c1, #0
      008FEC                        564 00136$:
                                    565 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 423: return(Swif);
      008FEC 9F               [ 1]  566 	ld	a, xl
                                    567 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 424: }
      008FED 1E 02            [ 2]  568 	ldw	x, (2, sp)
      008FEF 5B 06            [ 2]  569 	addw	sp, #6
      008FF1 FC               [ 2]  570 	jp	(x)
                                    571 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 434: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    572 ;	-----------------------------------------
                                    573 ;	 function CLK_HSIPrescalerConfig
                                    574 ;	-----------------------------------------
      008FF2                        575 _CLK_HSIPrescalerConfig:
      008FF2 88               [ 1]  576 	push	a
                                    577 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 437: assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
      008FF3 6B 01            [ 1]  578 	ld	(0x01, sp), a
      008FF5 27 1E            [ 1]  579 	jreq	00104$
      008FF7 7B 01            [ 1]  580 	ld	a, (0x01, sp)
      008FF9 A1 08            [ 1]  581 	cp	a, #0x08
      008FFB 27 18            [ 1]  582 	jreq	00104$
      008FFD 7B 01            [ 1]  583 	ld	a, (0x01, sp)
      008FFF A1 10            [ 1]  584 	cp	a, #0x10
      009001 27 12            [ 1]  585 	jreq	00104$
      009003 7B 01            [ 1]  586 	ld	a, (0x01, sp)
      009005 A1 18            [ 1]  587 	cp	a, #0x18
      009007 27 0C            [ 1]  588 	jreq	00104$
      009009 4B B5            [ 1]  589 	push	#0xb5
      00900B 4B 01            [ 1]  590 	push	#0x01
      00900D 5F               [ 1]  591 	clrw	x
      00900E 89               [ 2]  592 	pushw	x
      00900F AE 81 5D         [ 2]  593 	ldw	x, #(___str_0+0)
      009012 CD 82 1C         [ 4]  594 	call	_assert_failed
      009015                        595 00104$:
                                    596 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 440: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      009015 C6 50 C6         [ 1]  597 	ld	a, 0x50c6
      009018 A4 E7            [ 1]  598 	and	a, #0xe7
      00901A C7 50 C6         [ 1]  599 	ld	0x50c6, a
                                    600 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 443: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      00901D C6 50 C6         [ 1]  601 	ld	a, 0x50c6
      009020 1A 01            [ 1]  602 	or	a, (0x01, sp)
      009022 C7 50 C6         [ 1]  603 	ld	0x50c6, a
                                    604 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 444: }
      009025 84               [ 1]  605 	pop	a
      009026 81               [ 4]  606 	ret
                                    607 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 525: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    608 ;	-----------------------------------------
                                    609 ;	 function CLK_SYSCLKConfig
                                    610 ;	-----------------------------------------
      009027                        611 _CLK_SYSCLKConfig:
      009027 88               [ 1]  612 	push	a
                                    613 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 528: assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
      009028 95               [ 1]  614 	ld	xh, a
      009029 4D               [ 1]  615 	tnz	a
      00902A 27 4B            [ 1]  616 	jreq	00107$
      00902C 9E               [ 1]  617 	ld	a, xh
      00902D A1 08            [ 1]  618 	cp	a, #0x08
      00902F 27 46            [ 1]  619 	jreq	00107$
      009031 9E               [ 1]  620 	ld	a, xh
      009032 A1 10            [ 1]  621 	cp	a, #0x10
      009034 27 41            [ 1]  622 	jreq	00107$
      009036 9E               [ 1]  623 	ld	a, xh
      009037 A1 18            [ 1]  624 	cp	a, #0x18
      009039 27 3C            [ 1]  625 	jreq	00107$
      00903B 9E               [ 1]  626 	ld	a, xh
      00903C A1 80            [ 1]  627 	cp	a, #0x80
      00903E 27 37            [ 1]  628 	jreq	00107$
      009040 9E               [ 1]  629 	ld	a, xh
      009041 A1 81            [ 1]  630 	cp	a, #0x81
      009043 27 32            [ 1]  631 	jreq	00107$
      009045 9E               [ 1]  632 	ld	a, xh
      009046 A1 82            [ 1]  633 	cp	a, #0x82
      009048 27 2D            [ 1]  634 	jreq	00107$
      00904A 9E               [ 1]  635 	ld	a, xh
      00904B A1 83            [ 1]  636 	cp	a, #0x83
      00904D 27 28            [ 1]  637 	jreq	00107$
      00904F 9E               [ 1]  638 	ld	a, xh
      009050 A1 84            [ 1]  639 	cp	a, #0x84
      009052 27 23            [ 1]  640 	jreq	00107$
      009054 9E               [ 1]  641 	ld	a, xh
      009055 A1 85            [ 1]  642 	cp	a, #0x85
      009057 27 1E            [ 1]  643 	jreq	00107$
      009059 9E               [ 1]  644 	ld	a, xh
      00905A A1 86            [ 1]  645 	cp	a, #0x86
      00905C 27 19            [ 1]  646 	jreq	00107$
      00905E 9E               [ 1]  647 	ld	a, xh
      00905F A1 87            [ 1]  648 	cp	a, #0x87
      009061 27 14            [ 1]  649 	jreq	00107$
      009063 89               [ 2]  650 	pushw	x
      009064 4B 10            [ 1]  651 	push	#0x10
      009066 4B 02            [ 1]  652 	push	#0x02
      009068 4B 00            [ 1]  653 	push	#0x00
      00906A 4B 00            [ 1]  654 	push	#0x00
      00906C AE 81 5D         [ 2]  655 	ldw	x, #(___str_0+0)
      00906F CD 82 1C         [ 4]  656 	call	_assert_failed
      009072 02               [ 1]  657 	rlwa	x
      009073 84               [ 1]  658 	pop	a
      009074 01               [ 1]  659 	rrwa	x
      009075 5B 01            [ 2]  660 	addw	sp, #1
      009077                        661 00107$:
                                    662 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 532: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      009077 C6 50 C6         [ 1]  663 	ld	a, 0x50c6
                                    664 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 530: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      00907A 5D               [ 2]  665 	tnzw	x
      00907B 2B 14            [ 1]  666 	jrmi	00102$
                                    667 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 532: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      00907D A4 E7            [ 1]  668 	and	a, #0xe7
      00907F C7 50 C6         [ 1]  669 	ld	0x50c6, a
                                    670 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 533: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      009082 C6 50 C6         [ 1]  671 	ld	a, 0x50c6
      009085 6B 01            [ 1]  672 	ld	(0x01, sp), a
      009087 9E               [ 1]  673 	ld	a, xh
      009088 A4 18            [ 1]  674 	and	a, #0x18
      00908A 1A 01            [ 1]  675 	or	a, (0x01, sp)
      00908C C7 50 C6         [ 1]  676 	ld	0x50c6, a
      00908F 20 12            [ 2]  677 	jra	00104$
      009091                        678 00102$:
                                    679 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 537: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      009091 A4 F8            [ 1]  680 	and	a, #0xf8
      009093 C7 50 C6         [ 1]  681 	ld	0x50c6, a
                                    682 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 538: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      009096 C6 50 C6         [ 1]  683 	ld	a, 0x50c6
      009099 6B 01            [ 1]  684 	ld	(0x01, sp), a
      00909B 9E               [ 1]  685 	ld	a, xh
      00909C A4 07            [ 1]  686 	and	a, #0x07
      00909E 1A 01            [ 1]  687 	or	a, (0x01, sp)
      0090A0 C7 50 C6         [ 1]  688 	ld	0x50c6, a
      0090A3                        689 00104$:
                                    690 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 540: }
      0090A3 84               [ 1]  691 	pop	a
      0090A4 81               [ 4]  692 	ret
                                    693 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 602: uint32_t CLK_GetClockFreq(void)
                                    694 ;	-----------------------------------------
                                    695 ;	 function CLK_GetClockFreq
                                    696 ;	-----------------------------------------
      0090A5                        697 _CLK_GetClockFreq:
      0090A5 52 04            [ 2]  698 	sub	sp, #4
                                    699 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 609: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      0090A7 C6 50 C3         [ 1]  700 	ld	a, 0x50c3
                                    701 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 611: if (clocksource == CLK_SOURCE_HSI)
      0090AA 6B 04            [ 1]  702 	ld	(0x04, sp), a
      0090AC A1 E1            [ 1]  703 	cp	a, #0xe1
      0090AE 26 23            [ 1]  704 	jrne	00105$
                                    705 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 613: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      0090B0 C6 50 C6         [ 1]  706 	ld	a, 0x50c6
      0090B3 A4 18            [ 1]  707 	and	a, #0x18
                                    708 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 614: tmp = (uint8_t)(tmp >> 3);
      0090B5 44               [ 1]  709 	srl	a
      0090B6 44               [ 1]  710 	srl	a
      0090B7 44               [ 1]  711 	srl	a
                                    712 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 615: presc = HSIDivFactor[tmp];
      0090B8 5F               [ 1]  713 	clrw	x
      0090B9 97               [ 1]  714 	ld	xl, a
      0090BA D6 81 51         [ 1]  715 	ld	a, (_HSIDivFactor+0, x)
                                    716 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 616: clockfrequency = HSI_VALUE / presc;
      0090BD 5F               [ 1]  717 	clrw	x
      0090BE 0F 01            [ 1]  718 	clr	(0x01, sp)
      0090C0 88               [ 1]  719 	push	a
      0090C1 89               [ 2]  720 	pushw	x
      0090C2 4F               [ 1]  721 	clr	a
      0090C3 88               [ 1]  722 	push	a
      0090C4 4B 00            [ 1]  723 	push	#0x00
      0090C6 4B 24            [ 1]  724 	push	#0x24
      0090C8 4B F4            [ 1]  725 	push	#0xf4
      0090CA 4B 00            [ 1]  726 	push	#0x00
      0090CC CD 94 B7         [ 4]  727 	call	__divulong
      0090CF 5B 08            [ 2]  728 	addw	sp, #8
      0090D1 20 16            [ 2]  729 	jra	00106$
      0090D3                        730 00105$:
                                    731 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 618: else if ( clocksource == CLK_SOURCE_LSI)
      0090D3 7B 04            [ 1]  732 	ld	a, (0x04, sp)
      0090D5 A1 D2            [ 1]  733 	cp	a, #0xd2
      0090D7 26 09            [ 1]  734 	jrne	00102$
                                    735 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 620: clockfrequency = LSI_VALUE;
      0090D9 AE F4 00         [ 2]  736 	ldw	x, #0xf400
      0090DC 90 AE 00 01      [ 2]  737 	ldw	y, #0x0001
      0090E0 20 07            [ 2]  738 	jra	00106$
      0090E2                        739 00102$:
                                    740 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 624: clockfrequency = HSE_VALUE;
      0090E2 AE 12 00         [ 2]  741 	ldw	x, #0x1200
      0090E5 90 AE 00 7A      [ 2]  742 	ldw	y, #0x007a
      0090E9                        743 00106$:
                                    744 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 627: return((uint32_t)clockfrequency);
                                    745 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 628: }
      0090E9 5B 04            [ 2]  746 	addw	sp, #4
      0090EB 81               [ 4]  747 	ret
                                    748 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 673: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                    749 ;	-----------------------------------------
                                    750 ;	 function CLK_GetFlagStatus
                                    751 ;	-----------------------------------------
      0090EC                        752 _CLK_GetFlagStatus:
      0090EC 52 03            [ 2]  753 	sub	sp, #3
                                    754 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 680: assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
      0090EE 1F 02            [ 2]  755 	ldw	(0x02, sp), x
      0090F0 A3 01 10         [ 2]  756 	cpw	x, #0x0110
      0090F3 27 38            [ 1]  757 	jreq	00119$
      0090F5 A3 01 02         [ 2]  758 	cpw	x, #0x0102
      0090F8 27 33            [ 1]  759 	jreq	00119$
      0090FA A3 02 02         [ 2]  760 	cpw	x, #0x0202
      0090FD 27 2E            [ 1]  761 	jreq	00119$
      0090FF A3 03 08         [ 2]  762 	cpw	x, #0x0308
      009102 27 29            [ 1]  763 	jreq	00119$
      009104 A3 03 01         [ 2]  764 	cpw	x, #0x0301
      009107 27 24            [ 1]  765 	jreq	00119$
      009109 A3 04 08         [ 2]  766 	cpw	x, #0x0408
      00910C 27 1F            [ 1]  767 	jreq	00119$
      00910E A3 04 02         [ 2]  768 	cpw	x, #0x0402
      009111 27 1A            [ 1]  769 	jreq	00119$
      009113 A3 05 04         [ 2]  770 	cpw	x, #0x0504
      009116 27 15            [ 1]  771 	jreq	00119$
      009118 A3 05 02         [ 2]  772 	cpw	x, #0x0502
      00911B 27 10            [ 1]  773 	jreq	00119$
      00911D 89               [ 2]  774 	pushw	x
      00911E 4B A8            [ 1]  775 	push	#0xa8
      009120 4B 02            [ 1]  776 	push	#0x02
      009122 4B 00            [ 1]  777 	push	#0x00
      009124 4B 00            [ 1]  778 	push	#0x00
      009126 AE 81 5D         [ 2]  779 	ldw	x, #(___str_0+0)
      009129 CD 82 1C         [ 4]  780 	call	_assert_failed
      00912C 85               [ 2]  781 	popw	x
      00912D                        782 00119$:
                                    783 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 683: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      00912D 4F               [ 1]  784 	clr	a
                                    785 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 686: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      00912E 97               [ 1]  786 	ld	xl, a
      00912F A3 01 00         [ 2]  787 	cpw	x, #0x0100
      009132 26 05            [ 1]  788 	jrne	00111$
                                    789 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 688: tmpreg = CLK->ICKR;
      009134 C6 50 C0         [ 1]  790 	ld	a, 0x50c0
      009137 20 21            [ 2]  791 	jra	00112$
      009139                        792 00111$:
                                    793 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 690: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      009139 A3 02 00         [ 2]  794 	cpw	x, #0x0200
      00913C 26 05            [ 1]  795 	jrne	00108$
                                    796 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 692: tmpreg = CLK->ECKR;
      00913E C6 50 C1         [ 1]  797 	ld	a, 0x50c1
      009141 20 17            [ 2]  798 	jra	00112$
      009143                        799 00108$:
                                    800 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 694: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      009143 A3 03 00         [ 2]  801 	cpw	x, #0x0300
      009146 26 05            [ 1]  802 	jrne	00105$
                                    803 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 696: tmpreg = CLK->SWCR;
      009148 C6 50 C5         [ 1]  804 	ld	a, 0x50c5
      00914B 20 0D            [ 2]  805 	jra	00112$
      00914D                        806 00105$:
                                    807 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 698: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      00914D A3 04 00         [ 2]  808 	cpw	x, #0x0400
      009150 26 05            [ 1]  809 	jrne	00102$
                                    810 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 700: tmpreg = CLK->CSSR;
      009152 C6 50 C8         [ 1]  811 	ld	a, 0x50c8
      009155 20 03            [ 2]  812 	jra	00112$
      009157                        813 00102$:
                                    814 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 704: tmpreg = CLK->CCOR;
      009157 C6 50 C9         [ 1]  815 	ld	a, 0x50c9
      00915A                        816 00112$:
                                    817 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 707: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      00915A 88               [ 1]  818 	push	a
      00915B 7B 04            [ 1]  819 	ld	a, (0x04, sp)
      00915D 6B 02            [ 1]  820 	ld	(0x02, sp), a
      00915F 84               [ 1]  821 	pop	a
      009160 14 01            [ 1]  822 	and	a, (0x01, sp)
      009162 27 03            [ 1]  823 	jreq	00114$
                                    824 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 709: bitstatus = SET;
      009164 A6 01            [ 1]  825 	ld	a, #0x01
                                    826 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 713: bitstatus = RESET;
      009166 21                     827 	.byte 0x21
      009167                        828 00114$:
      009167 4F               [ 1]  829 	clr	a
      009168                        830 00115$:
                                    831 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 717: return((FlagStatus)bitstatus);
                                    832 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 718: }
      009168 5B 03            [ 2]  833 	addw	sp, #3
      00916A 81               [ 4]  834 	ret
                                    835 	.area CODE
                                    836 	.area CONST
      008151                        837 _HSIDivFactor:
      008151 01                     838 	.db #0x01	; 1
      008152 02                     839 	.db #0x02	; 2
      008153 04                     840 	.db #0x04	; 4
      008154 08                     841 	.db #0x08	; 8
      008155                        842 _CLKPrescTable:
      008155 01                     843 	.db #0x01	; 1
      008156 02                     844 	.db #0x02	; 2
      008157 04                     845 	.db #0x04	; 4
      008158 08                     846 	.db #0x08	; 8
      008159 0A                     847 	.db #0x0a	; 10
      00815A 10                     848 	.db #0x10	; 16
      00815B 14                     849 	.db #0x14	; 20
      00815C 28                     850 	.db #0x28	; 40
                                    851 	.area CONST
      00815D                        852 ___str_0:
      00815D 2F 77 6F 72 6B 73 70   853 	.ascii "/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Li"
             61 63 65 2F 53 6F 66
             74 77 61 72 65 2F 46
             69 72 6D 77 61 72 65
             2F 6E 65 77 5F 62 65
             67 69 6E 69 6E 67 2F
             53 54 4D 38 53 5F 53
             74 64 50 65 72 69 70
             68 5F 4C 69
      008199 62 2F 73 72 63 2F 73   854 	.ascii "b/src/stm8s_clk.c"
             74 6D 38 73 5F 63 6C
             6B 2E 63
      0081AA 00                     855 	.db 0x00
                                    856 	.area CODE
                                    857 	.area INITIALIZER
                                    858 	.area CABS (ABS)
