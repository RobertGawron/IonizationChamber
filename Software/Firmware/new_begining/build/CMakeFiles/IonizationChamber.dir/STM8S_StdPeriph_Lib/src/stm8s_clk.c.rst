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
      008CB9                         66 _CLK_DeInit:
                                     67 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      008CB9 35 01 50 C0      [ 1]   68 	mov	0x50c0+0, #0x01
                                     69 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      008CBD 35 00 50 C1      [ 1]   70 	mov	0x50c1+0, #0x00
                                     71 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      008CC1 35 E1 50 C4      [ 1]   72 	mov	0x50c4+0, #0xe1
                                     73 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      008CC5 35 00 50 C5      [ 1]   74 	mov	0x50c5+0, #0x00
                                     75 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      008CC9 35 18 50 C6      [ 1]   76 	mov	0x50c6+0, #0x18
                                     77 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      008CCD 35 FF 50 C7      [ 1]   78 	mov	0x50c7+0, #0xff
                                     79 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      008CD1 35 FF 50 CA      [ 1]   80 	mov	0x50ca+0, #0xff
                                     81 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      008CD5 35 00 50 C8      [ 1]   82 	mov	0x50c8+0, #0x00
                                     83 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      008CD9 35 00 50 C9      [ 1]   84 	mov	0x50c9+0, #0x00
                                     85 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      008CDD                         86 00101$:
      008CDD 72 00 50 C9 FB   [ 2]   87 	btjt	0x50c9, #0, 00101$
                                     88 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      008CE2 35 00 50 C9      [ 1]   89 	mov	0x50c9+0, #0x00
                                     90 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      008CE6 35 00 50 CC      [ 1]   91 	mov	0x50cc+0, #0x00
                                     92 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      008CEA 35 00 50 CD      [ 1]   93 	mov	0x50cd+0, #0x00
                                     94 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 88: }
      008CEE 81               [ 4]   95 	ret
                                     96 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 124: void CLK_HSECmd(FunctionalState NewState)
                                     97 ;	-----------------------------------------
                                     98 ;	 function CLK_HSECmd
                                     99 ;	-----------------------------------------
      008CEF                        100 _CLK_HSECmd:
      008CEF 88               [ 1]  101 	push	a
                                    102 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 127: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008CF0 6B 01            [ 1]  103 	ld	(0x01, sp), a
      008CF2 27 10            [ 1]  104 	jreq	00107$
      008CF4 0D 01            [ 1]  105 	tnz	(0x01, sp)
      008CF6 26 0C            [ 1]  106 	jrne	00107$
      008CF8 4B 7F            [ 1]  107 	push	#0x7f
      008CFA 5F               [ 1]  108 	clrw	x
      008CFB 89               [ 2]  109 	pushw	x
      008CFC 4B 00            [ 1]  110 	push	#0x00
      008CFE AE 81 25         [ 2]  111 	ldw	x, #(___str_0+0)
      008D01 CD 81 CD         [ 4]  112 	call	_assert_failed
      008D04                        113 00107$:
                                    114 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 132: CLK->ECKR |= CLK_ECKR_HSEEN;
      008D04 C6 50 C1         [ 1]  115 	ld	a, 0x50c1
                                    116 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 129: if (NewState != DISABLE)
      008D07 0D 01            [ 1]  117 	tnz	(0x01, sp)
      008D09 27 07            [ 1]  118 	jreq	00102$
                                    119 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 132: CLK->ECKR |= CLK_ECKR_HSEEN;
      008D0B AA 01            [ 1]  120 	or	a, #0x01
      008D0D C7 50 C1         [ 1]  121 	ld	0x50c1, a
      008D10 20 05            [ 2]  122 	jra	00104$
      008D12                        123 00102$:
                                    124 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 137: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      008D12 A4 FE            [ 1]  125 	and	a, #0xfe
      008D14 C7 50 C1         [ 1]  126 	ld	0x50c1, a
      008D17                        127 00104$:
                                    128 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 139: }
      008D17 84               [ 1]  129 	pop	a
      008D18 81               [ 4]  130 	ret
                                    131 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 148: void CLK_HSICmd(FunctionalState NewState)
                                    132 ;	-----------------------------------------
                                    133 ;	 function CLK_HSICmd
                                    134 ;	-----------------------------------------
      008D19                        135 _CLK_HSICmd:
      008D19 88               [ 1]  136 	push	a
                                    137 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 151: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008D1A 6B 01            [ 1]  138 	ld	(0x01, sp), a
      008D1C 27 10            [ 1]  139 	jreq	00107$
      008D1E 0D 01            [ 1]  140 	tnz	(0x01, sp)
      008D20 26 0C            [ 1]  141 	jrne	00107$
      008D22 4B 97            [ 1]  142 	push	#0x97
      008D24 5F               [ 1]  143 	clrw	x
      008D25 89               [ 2]  144 	pushw	x
      008D26 4B 00            [ 1]  145 	push	#0x00
      008D28 AE 81 25         [ 2]  146 	ldw	x, #(___str_0+0)
      008D2B CD 81 CD         [ 4]  147 	call	_assert_failed
      008D2E                        148 00107$:
                                    149 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 156: CLK->ICKR |= CLK_ICKR_HSIEN;
      008D2E C6 50 C0         [ 1]  150 	ld	a, 0x50c0
                                    151 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 153: if (NewState != DISABLE)
      008D31 0D 01            [ 1]  152 	tnz	(0x01, sp)
      008D33 27 07            [ 1]  153 	jreq	00102$
                                    154 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 156: CLK->ICKR |= CLK_ICKR_HSIEN;
      008D35 AA 01            [ 1]  155 	or	a, #0x01
      008D37 C7 50 C0         [ 1]  156 	ld	0x50c0, a
      008D3A 20 05            [ 2]  157 	jra	00104$
      008D3C                        158 00102$:
                                    159 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 161: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      008D3C A4 FE            [ 1]  160 	and	a, #0xfe
      008D3E C7 50 C0         [ 1]  161 	ld	0x50c0, a
      008D41                        162 00104$:
                                    163 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 163: }
      008D41 84               [ 1]  164 	pop	a
      008D42 81               [ 4]  165 	ret
                                    166 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 173: void CLK_LSICmd(FunctionalState NewState)
                                    167 ;	-----------------------------------------
                                    168 ;	 function CLK_LSICmd
                                    169 ;	-----------------------------------------
      008D43                        170 _CLK_LSICmd:
      008D43 88               [ 1]  171 	push	a
                                    172 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 176: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008D44 6B 01            [ 1]  173 	ld	(0x01, sp), a
      008D46 27 10            [ 1]  174 	jreq	00107$
      008D48 0D 01            [ 1]  175 	tnz	(0x01, sp)
      008D4A 26 0C            [ 1]  176 	jrne	00107$
      008D4C 4B B0            [ 1]  177 	push	#0xb0
      008D4E 5F               [ 1]  178 	clrw	x
      008D4F 89               [ 2]  179 	pushw	x
      008D50 4B 00            [ 1]  180 	push	#0x00
      008D52 AE 81 25         [ 2]  181 	ldw	x, #(___str_0+0)
      008D55 CD 81 CD         [ 4]  182 	call	_assert_failed
      008D58                        183 00107$:
                                    184 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 181: CLK->ICKR |= CLK_ICKR_LSIEN;
      008D58 C6 50 C0         [ 1]  185 	ld	a, 0x50c0
                                    186 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 178: if (NewState != DISABLE)
      008D5B 0D 01            [ 1]  187 	tnz	(0x01, sp)
      008D5D 27 07            [ 1]  188 	jreq	00102$
                                    189 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 181: CLK->ICKR |= CLK_ICKR_LSIEN;
      008D5F AA 08            [ 1]  190 	or	a, #0x08
      008D61 C7 50 C0         [ 1]  191 	ld	0x50c0, a
      008D64 20 05            [ 2]  192 	jra	00104$
      008D66                        193 00102$:
                                    194 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 186: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      008D66 A4 F7            [ 1]  195 	and	a, #0xf7
      008D68 C7 50 C0         [ 1]  196 	ld	0x50c0, a
      008D6B                        197 00104$:
                                    198 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 188: }
      008D6B 84               [ 1]  199 	pop	a
      008D6C 81               [ 4]  200 	ret
                                    201 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 224: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    202 ;	-----------------------------------------
                                    203 ;	 function CLK_ClockSwitchCmd
                                    204 ;	-----------------------------------------
      008D6D                        205 _CLK_ClockSwitchCmd:
      008D6D 88               [ 1]  206 	push	a
                                    207 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 227: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008D6E 6B 01            [ 1]  208 	ld	(0x01, sp), a
      008D70 27 10            [ 1]  209 	jreq	00107$
      008D72 0D 01            [ 1]  210 	tnz	(0x01, sp)
      008D74 26 0C            [ 1]  211 	jrne	00107$
      008D76 4B E3            [ 1]  212 	push	#0xe3
      008D78 5F               [ 1]  213 	clrw	x
      008D79 89               [ 2]  214 	pushw	x
      008D7A 4B 00            [ 1]  215 	push	#0x00
      008D7C AE 81 25         [ 2]  216 	ldw	x, #(___str_0+0)
      008D7F CD 81 CD         [ 4]  217 	call	_assert_failed
      008D82                        218 00107$:
                                    219 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 232: CLK->SWCR |= CLK_SWCR_SWEN;
      008D82 C6 50 C5         [ 1]  220 	ld	a, 0x50c5
                                    221 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 229: if (NewState != DISABLE )
      008D85 0D 01            [ 1]  222 	tnz	(0x01, sp)
      008D87 27 07            [ 1]  223 	jreq	00102$
                                    224 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 232: CLK->SWCR |= CLK_SWCR_SWEN;
      008D89 AA 02            [ 1]  225 	or	a, #0x02
      008D8B C7 50 C5         [ 1]  226 	ld	0x50c5, a
      008D8E 20 05            [ 2]  227 	jra	00104$
      008D90                        228 00102$:
                                    229 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 237: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      008D90 A4 FD            [ 1]  230 	and	a, #0xfd
      008D92 C7 50 C5         [ 1]  231 	ld	0x50c5, a
      008D95                        232 00104$:
                                    233 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 239: }
      008D95 84               [ 1]  234 	pop	a
      008D96 81               [ 4]  235 	ret
                                    236 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 278: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    237 ;	-----------------------------------------
                                    238 ;	 function CLK_PeripheralClockConfig
                                    239 ;	-----------------------------------------
      008D97                        240 _CLK_PeripheralClockConfig:
      008D97 52 03            [ 2]  241 	sub	sp, #3
      008D99 6B 03            [ 1]  242 	ld	(0x03, sp), a
                                    243 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 281: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008D9B 0D 06            [ 1]  244 	tnz	(0x06, sp)
      008D9D 27 10            [ 1]  245 	jreq	00113$
      008D9F 0D 06            [ 1]  246 	tnz	(0x06, sp)
      008DA1 26 0C            [ 1]  247 	jrne	00113$
      008DA3 4B 19            [ 1]  248 	push	#0x19
      008DA5 4B 01            [ 1]  249 	push	#0x01
      008DA7 5F               [ 1]  250 	clrw	x
      008DA8 89               [ 2]  251 	pushw	x
      008DA9 AE 81 25         [ 2]  252 	ldw	x, #(___str_0+0)
      008DAC CD 81 CD         [ 4]  253 	call	_assert_failed
      008DAF                        254 00113$:
                                    255 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 282: assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
      008DAF 0D 03            [ 1]  256 	tnz	(0x03, sp)
      008DB1 27 64            [ 1]  257 	jreq	00118$
      008DB3 7B 03            [ 1]  258 	ld	a, (0x03, sp)
      008DB5 4A               [ 1]  259 	dec	a
      008DB6 27 5F            [ 1]  260 	jreq	00118$
      008DB8 7B 03            [ 1]  261 	ld	a, (0x03, sp)
      008DBA A0 03            [ 1]  262 	sub	a, #0x03
      008DBC 26 02            [ 1]  263 	jrne	00298$
      008DBE 4C               [ 1]  264 	inc	a
      008DBF 21                     265 	.byte 0x21
      008DC0                        266 00298$:
      008DC0 4F               [ 1]  267 	clr	a
      008DC1                        268 00299$:
      008DC1 4D               [ 1]  269 	tnz	a
      008DC2 26 53            [ 1]  270 	jrne	00118$
      008DC4 4D               [ 1]  271 	tnz	a
      008DC5 26 50            [ 1]  272 	jrne	00118$
      008DC7 4D               [ 1]  273 	tnz	a
      008DC8 26 4D            [ 1]  274 	jrne	00118$
      008DCA 7B 03            [ 1]  275 	ld	a, (0x03, sp)
      008DCC A0 04            [ 1]  276 	sub	a, #0x04
      008DCE 26 04            [ 1]  277 	jrne	00304$
      008DD0 4C               [ 1]  278 	inc	a
      008DD1 97               [ 1]  279 	ld	xl, a
      008DD2 20 02            [ 2]  280 	jra	00305$
      008DD4                        281 00304$:
      008DD4 4F               [ 1]  282 	clr	a
      008DD5 97               [ 1]  283 	ld	xl, a
      008DD6                        284 00305$:
      008DD6 9F               [ 1]  285 	ld	a, xl
      008DD7 4D               [ 1]  286 	tnz	a
      008DD8 26 3D            [ 1]  287 	jrne	00118$
      008DDA 7B 03            [ 1]  288 	ld	a, (0x03, sp)
      008DDC A0 05            [ 1]  289 	sub	a, #0x05
      008DDE 26 02            [ 1]  290 	jrne	00308$
      008DE0 4C               [ 1]  291 	inc	a
      008DE1 21                     292 	.byte 0x21
      008DE2                        293 00308$:
      008DE2 4F               [ 1]  294 	clr	a
      008DE3                        295 00309$:
      008DE3 4D               [ 1]  296 	tnz	a
      008DE4 26 31            [ 1]  297 	jrne	00118$
      008DE6 4D               [ 1]  298 	tnz	a
      008DE7 26 2E            [ 1]  299 	jrne	00118$
      008DE9 9F               [ 1]  300 	ld	a, xl
      008DEA 4D               [ 1]  301 	tnz	a
      008DEB 26 2A            [ 1]  302 	jrne	00118$
      008DED 7B 03            [ 1]  303 	ld	a, (0x03, sp)
      008DEF A1 06            [ 1]  304 	cp	a, #0x06
      008DF1 27 24            [ 1]  305 	jreq	00118$
      008DF3 7B 03            [ 1]  306 	ld	a, (0x03, sp)
      008DF5 A1 07            [ 1]  307 	cp	a, #0x07
      008DF7 27 1E            [ 1]  308 	jreq	00118$
      008DF9 7B 03            [ 1]  309 	ld	a, (0x03, sp)
      008DFB A1 17            [ 1]  310 	cp	a, #0x17
      008DFD 27 18            [ 1]  311 	jreq	00118$
      008DFF 7B 03            [ 1]  312 	ld	a, (0x03, sp)
      008E01 A1 13            [ 1]  313 	cp	a, #0x13
      008E03 27 12            [ 1]  314 	jreq	00118$
      008E05 7B 03            [ 1]  315 	ld	a, (0x03, sp)
      008E07 A1 12            [ 1]  316 	cp	a, #0x12
      008E09 27 0C            [ 1]  317 	jreq	00118$
      008E0B 4B 1A            [ 1]  318 	push	#0x1a
      008E0D 4B 01            [ 1]  319 	push	#0x01
      008E0F 5F               [ 1]  320 	clrw	x
      008E10 89               [ 2]  321 	pushw	x
      008E11 AE 81 25         [ 2]  322 	ldw	x, #(___str_0+0)
      008E14 CD 81 CD         [ 4]  323 	call	_assert_failed
      008E17                        324 00118$:
                                    325 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 289: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008E17 7B 03            [ 1]  326 	ld	a, (0x03, sp)
      008E19 A4 0F            [ 1]  327 	and	a, #0x0f
      008E1B 88               [ 1]  328 	push	a
      008E1C A6 01            [ 1]  329 	ld	a, #0x01
      008E1E 6B 02            [ 1]  330 	ld	(0x02, sp), a
      008E20 84               [ 1]  331 	pop	a
      008E21 4D               [ 1]  332 	tnz	a
      008E22 27 05            [ 1]  333 	jreq	00329$
      008E24                        334 00328$:
      008E24 08 01            [ 1]  335 	sll	(0x01, sp)
      008E26 4A               [ 1]  336 	dec	a
      008E27 26 FB            [ 1]  337 	jrne	00328$
      008E29                        338 00329$:
                                    339 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 294: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008E29 7B 01            [ 1]  340 	ld	a, (0x01, sp)
      008E2B 43               [ 1]  341 	cpl	a
      008E2C 6B 02            [ 1]  342 	ld	(0x02, sp), a
                                    343 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 284: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      008E2E 7B 03            [ 1]  344 	ld	a, (0x03, sp)
      008E30 A5 10            [ 1]  345 	bcp	a, #0x10
      008E32 26 15            [ 1]  346 	jrne	00108$
                                    347 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 289: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008E34 C6 50 C7         [ 1]  348 	ld	a, 0x50c7
                                    349 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 286: if (NewState != DISABLE)
      008E37 0D 06            [ 1]  350 	tnz	(0x06, sp)
      008E39 27 07            [ 1]  351 	jreq	00102$
                                    352 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 289: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008E3B 1A 01            [ 1]  353 	or	a, (0x01, sp)
      008E3D C7 50 C7         [ 1]  354 	ld	0x50c7, a
      008E40 20 1A            [ 2]  355 	jra	00110$
      008E42                        356 00102$:
                                    357 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 294: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008E42 14 02            [ 1]  358 	and	a, (0x02, sp)
      008E44 C7 50 C7         [ 1]  359 	ld	0x50c7, a
      008E47 20 13            [ 2]  360 	jra	00110$
      008E49                        361 00108$:
                                    362 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 302: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008E49 C6 50 CA         [ 1]  363 	ld	a, 0x50ca
                                    364 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 299: if (NewState != DISABLE)
      008E4C 0D 06            [ 1]  365 	tnz	(0x06, sp)
      008E4E 27 07            [ 1]  366 	jreq	00105$
                                    367 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 302: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008E50 1A 01            [ 1]  368 	or	a, (0x01, sp)
      008E52 C7 50 CA         [ 1]  369 	ld	0x50ca, a
      008E55 20 05            [ 2]  370 	jra	00110$
      008E57                        371 00105$:
                                    372 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 307: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008E57 14 02            [ 1]  373 	and	a, (0x02, sp)
      008E59 C7 50 CA         [ 1]  374 	ld	0x50ca, a
      008E5C                        375 00110$:
                                    376 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 310: }
      008E5C 5B 03            [ 2]  377 	addw	sp, #3
      008E5E 85               [ 2]  378 	popw	x
      008E5F 84               [ 1]  379 	pop	a
      008E60 FC               [ 2]  380 	jp	(x)
                                    381 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 326: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    382 ;	-----------------------------------------
                                    383 ;	 function CLK_ClockSwitchConfig
                                    384 ;	-----------------------------------------
      008E61                        385 _CLK_ClockSwitchConfig:
      008E61 88               [ 1]  386 	push	a
      008E62 6B 01            [ 1]  387 	ld	(0x01, sp), a
                                    388 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 333: assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
      008E64 7B 04            [ 1]  389 	ld	a, (0x04, sp)
      008E66 A1 E1            [ 1]  390 	cp	a, #0xe1
      008E68 27 18            [ 1]  391 	jreq	00140$
      008E6A 7B 04            [ 1]  392 	ld	a, (0x04, sp)
      008E6C A1 D2            [ 1]  393 	cp	a, #0xd2
      008E6E 27 12            [ 1]  394 	jreq	00140$
      008E70 7B 04            [ 1]  395 	ld	a, (0x04, sp)
      008E72 A1 B4            [ 1]  396 	cp	a, #0xb4
      008E74 27 0C            [ 1]  397 	jreq	00140$
      008E76 4B 4D            [ 1]  398 	push	#0x4d
      008E78 4B 01            [ 1]  399 	push	#0x01
      008E7A 5F               [ 1]  400 	clrw	x
      008E7B 89               [ 2]  401 	pushw	x
      008E7C AE 81 25         [ 2]  402 	ldw	x, #(___str_0+0)
      008E7F CD 81 CD         [ 4]  403 	call	_assert_failed
      008E82                        404 00140$:
                                    405 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 334: assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
      008E82 0D 01            [ 1]  406 	tnz	(0x01, sp)
      008E84 27 10            [ 1]  407 	jreq	00148$
      008E86 0D 01            [ 1]  408 	tnz	(0x01, sp)
      008E88 26 0C            [ 1]  409 	jrne	00148$
      008E8A 4B 4E            [ 1]  410 	push	#0x4e
      008E8C 4B 01            [ 1]  411 	push	#0x01
      008E8E 5F               [ 1]  412 	clrw	x
      008E8F 89               [ 2]  413 	pushw	x
      008E90 AE 81 25         [ 2]  414 	ldw	x, #(___str_0+0)
      008E93 CD 81 CD         [ 4]  415 	call	_assert_failed
      008E96                        416 00148$:
                                    417 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 335: assert_param(IS_FUNCTIONALSTATE_OK(ITState));
      008E96 0D 05            [ 1]  418 	tnz	(0x05, sp)
      008E98 27 10            [ 1]  419 	jreq	00153$
      008E9A 0D 05            [ 1]  420 	tnz	(0x05, sp)
      008E9C 26 0C            [ 1]  421 	jrne	00153$
      008E9E 4B 4F            [ 1]  422 	push	#0x4f
      008EA0 4B 01            [ 1]  423 	push	#0x01
      008EA2 5F               [ 1]  424 	clrw	x
      008EA3 89               [ 2]  425 	pushw	x
      008EA4 AE 81 25         [ 2]  426 	ldw	x, #(___str_0+0)
      008EA7 CD 81 CD         [ 4]  427 	call	_assert_failed
      008EAA                        428 00153$:
                                    429 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 336: assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
      008EAA 0D 06            [ 1]  430 	tnz	(0x06, sp)
      008EAC 27 10            [ 1]  431 	jreq	00158$
      008EAE 0D 06            [ 1]  432 	tnz	(0x06, sp)
      008EB0 26 0C            [ 1]  433 	jrne	00158$
      008EB2 4B 50            [ 1]  434 	push	#0x50
      008EB4 4B 01            [ 1]  435 	push	#0x01
      008EB6 5F               [ 1]  436 	clrw	x
      008EB7 89               [ 2]  437 	pushw	x
      008EB8 AE 81 25         [ 2]  438 	ldw	x, #(___str_0+0)
      008EBB CD 81 CD         [ 4]  439 	call	_assert_failed
      008EBE                        440 00158$:
                                    441 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 339: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      008EBE C6 50 C3         [ 1]  442 	ld	a, 0x50c3
      008EC1 90 97            [ 1]  443 	ld	yl, a
                                    444 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 345: CLK->SWCR |= CLK_SWCR_SWEN;
      008EC3 C6 50 C5         [ 1]  445 	ld	a, 0x50c5
                                    446 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 342: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      008EC6 0D 01            [ 1]  447 	tnz	(0x01, sp)
      008EC8 27 36            [ 1]  448 	jreq	00122$
                                    449 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 345: CLK->SWCR |= CLK_SWCR_SWEN;
      008ECA AA 02            [ 1]  450 	or	a, #0x02
      008ECC C7 50 C5         [ 1]  451 	ld	0x50c5, a
      008ECF C6 50 C5         [ 1]  452 	ld	a, 0x50c5
                                    453 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 348: if (ITState != DISABLE)
      008ED2 0D 05            [ 1]  454 	tnz	(0x05, sp)
      008ED4 27 07            [ 1]  455 	jreq	00102$
                                    456 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 350: CLK->SWCR |= CLK_SWCR_SWIEN;
      008ED6 AA 04            [ 1]  457 	or	a, #0x04
      008ED8 C7 50 C5         [ 1]  458 	ld	0x50c5, a
      008EDB 20 05            [ 2]  459 	jra	00103$
      008EDD                        460 00102$:
                                    461 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 354: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      008EDD A4 FB            [ 1]  462 	and	a, #0xfb
      008EDF C7 50 C5         [ 1]  463 	ld	0x50c5, a
      008EE2                        464 00103$:
                                    465 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 358: CLK->SWR = (uint8_t)CLK_NewClock;
      008EE2 AE 50 C4         [ 2]  466 	ldw	x, #0x50c4
      008EE5 7B 04            [ 1]  467 	ld	a, (0x04, sp)
      008EE7 F7               [ 1]  468 	ld	(x), a
                                    469 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 361: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      008EE8 5F               [ 1]  470 	clrw	x
      008EE9 5A               [ 2]  471 	decw	x
      008EEA                        472 00105$:
      008EEA 72 01 50 C5 06   [ 2]  473 	btjf	0x50c5, #0, 00107$
      008EEF 5D               [ 2]  474 	tnzw	x
      008EF0 27 03            [ 1]  475 	jreq	00107$
                                    476 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 363: DownCounter--;
      008EF2 5A               [ 2]  477 	decw	x
      008EF3 20 F5            [ 2]  478 	jra	00105$
      008EF5                        479 00107$:
                                    480 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 366: if(DownCounter != 0)
      008EF5 5D               [ 2]  481 	tnzw	x
      008EF6 27 05            [ 1]  482 	jreq	00109$
                                    483 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 368: Swif = SUCCESS;
      008EF8 A6 01            [ 1]  484 	ld	a, #0x01
      008EFA 97               [ 1]  485 	ld	xl, a
      008EFB 20 32            [ 2]  486 	jra	00123$
      008EFD                        487 00109$:
                                    488 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 372: Swif = ERROR;
      008EFD 5F               [ 1]  489 	clrw	x
      008EFE 20 2F            [ 2]  490 	jra	00123$
      008F00                        491 00122$:
                                    492 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 378: if (ITState != DISABLE)
      008F00 0D 05            [ 1]  493 	tnz	(0x05, sp)
      008F02 27 07            [ 1]  494 	jreq	00112$
                                    495 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 380: CLK->SWCR |= CLK_SWCR_SWIEN;
      008F04 AA 04            [ 1]  496 	or	a, #0x04
      008F06 C7 50 C5         [ 1]  497 	ld	0x50c5, a
      008F09 20 05            [ 2]  498 	jra	00113$
      008F0B                        499 00112$:
                                    500 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 384: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      008F0B A4 FB            [ 1]  501 	and	a, #0xfb
      008F0D C7 50 C5         [ 1]  502 	ld	0x50c5, a
      008F10                        503 00113$:
                                    504 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 388: CLK->SWR = (uint8_t)CLK_NewClock;
      008F10 AE 50 C4         [ 2]  505 	ldw	x, #0x50c4
      008F13 7B 04            [ 1]  506 	ld	a, (0x04, sp)
      008F15 F7               [ 1]  507 	ld	(x), a
                                    508 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 391: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      008F16 5F               [ 1]  509 	clrw	x
      008F17 5A               [ 2]  510 	decw	x
      008F18                        511 00115$:
      008F18 72 07 50 C5 06   [ 2]  512 	btjf	0x50c5, #3, 00117$
      008F1D 5D               [ 2]  513 	tnzw	x
      008F1E 27 03            [ 1]  514 	jreq	00117$
                                    515 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 393: DownCounter--;
      008F20 5A               [ 2]  516 	decw	x
      008F21 20 F5            [ 2]  517 	jra	00115$
      008F23                        518 00117$:
                                    519 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 396: if(DownCounter != 0)
      008F23 5D               [ 2]  520 	tnzw	x
      008F24 27 08            [ 1]  521 	jreq	00119$
                                    522 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 399: CLK->SWCR |= CLK_SWCR_SWEN;
      008F26 72 12 50 C5      [ 1]  523 	bset	0x50c5, #1
                                    524 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 400: Swif = SUCCESS;
      008F2A A6 01            [ 1]  525 	ld	a, #0x01
      008F2C 97               [ 1]  526 	ld	xl, a
                                    527 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 404: Swif = ERROR;
      008F2D 21                     528 	.byte 0x21
      008F2E                        529 00119$:
      008F2E 5F               [ 1]  530 	clrw	x
      008F2F                        531 00123$:
                                    532 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 407: if(Swif != ERROR)
      008F2F 9F               [ 1]  533 	ld	a, xl
      008F30 4D               [ 1]  534 	tnz	a
      008F31 27 2E            [ 1]  535 	jreq	00136$
                                    536 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 410: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      008F33 0D 06            [ 1]  537 	tnz	(0x06, sp)
      008F35 26 0C            [ 1]  538 	jrne	00132$
      008F37 90 9F            [ 1]  539 	ld	a, yl
      008F39 A1 E1            [ 1]  540 	cp	a, #0xe1
      008F3B 26 06            [ 1]  541 	jrne	00132$
                                    542 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 412: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      008F3D 72 11 50 C0      [ 1]  543 	bres	0x50c0, #0
      008F41 20 1E            [ 2]  544 	jra	00136$
      008F43                        545 00132$:
                                    546 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 414: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      008F43 0D 06            [ 1]  547 	tnz	(0x06, sp)
      008F45 26 0C            [ 1]  548 	jrne	00128$
      008F47 90 9F            [ 1]  549 	ld	a, yl
      008F49 A1 D2            [ 1]  550 	cp	a, #0xd2
      008F4B 26 06            [ 1]  551 	jrne	00128$
                                    552 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 416: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      008F4D 72 17 50 C0      [ 1]  553 	bres	0x50c0, #3
      008F51 20 0E            [ 2]  554 	jra	00136$
      008F53                        555 00128$:
                                    556 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 418: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      008F53 0D 06            [ 1]  557 	tnz	(0x06, sp)
      008F55 26 0A            [ 1]  558 	jrne	00136$
      008F57 90 9F            [ 1]  559 	ld	a, yl
      008F59 A1 B4            [ 1]  560 	cp	a, #0xb4
      008F5B 26 04            [ 1]  561 	jrne	00136$
                                    562 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 420: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      008F5D 72 11 50 C1      [ 1]  563 	bres	0x50c1, #0
      008F61                        564 00136$:
                                    565 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 423: return(Swif);
      008F61 9F               [ 1]  566 	ld	a, xl
                                    567 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 424: }
      008F62 1E 02            [ 2]  568 	ldw	x, (2, sp)
      008F64 5B 06            [ 2]  569 	addw	sp, #6
      008F66 FC               [ 2]  570 	jp	(x)
                                    571 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 434: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    572 ;	-----------------------------------------
                                    573 ;	 function CLK_HSIPrescalerConfig
                                    574 ;	-----------------------------------------
      008F67                        575 _CLK_HSIPrescalerConfig:
      008F67 88               [ 1]  576 	push	a
                                    577 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 437: assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
      008F68 6B 01            [ 1]  578 	ld	(0x01, sp), a
      008F6A 27 1E            [ 1]  579 	jreq	00104$
      008F6C 7B 01            [ 1]  580 	ld	a, (0x01, sp)
      008F6E A1 08            [ 1]  581 	cp	a, #0x08
      008F70 27 18            [ 1]  582 	jreq	00104$
      008F72 7B 01            [ 1]  583 	ld	a, (0x01, sp)
      008F74 A1 10            [ 1]  584 	cp	a, #0x10
      008F76 27 12            [ 1]  585 	jreq	00104$
      008F78 7B 01            [ 1]  586 	ld	a, (0x01, sp)
      008F7A A1 18            [ 1]  587 	cp	a, #0x18
      008F7C 27 0C            [ 1]  588 	jreq	00104$
      008F7E 4B B5            [ 1]  589 	push	#0xb5
      008F80 4B 01            [ 1]  590 	push	#0x01
      008F82 5F               [ 1]  591 	clrw	x
      008F83 89               [ 2]  592 	pushw	x
      008F84 AE 81 25         [ 2]  593 	ldw	x, #(___str_0+0)
      008F87 CD 81 CD         [ 4]  594 	call	_assert_failed
      008F8A                        595 00104$:
                                    596 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 440: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      008F8A C6 50 C6         [ 1]  597 	ld	a, 0x50c6
      008F8D A4 E7            [ 1]  598 	and	a, #0xe7
      008F8F C7 50 C6         [ 1]  599 	ld	0x50c6, a
                                    600 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 443: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      008F92 C6 50 C6         [ 1]  601 	ld	a, 0x50c6
      008F95 1A 01            [ 1]  602 	or	a, (0x01, sp)
      008F97 C7 50 C6         [ 1]  603 	ld	0x50c6, a
                                    604 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 444: }
      008F9A 84               [ 1]  605 	pop	a
      008F9B 81               [ 4]  606 	ret
                                    607 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 525: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    608 ;	-----------------------------------------
                                    609 ;	 function CLK_SYSCLKConfig
                                    610 ;	-----------------------------------------
      008F9C                        611 _CLK_SYSCLKConfig:
      008F9C 88               [ 1]  612 	push	a
                                    613 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 528: assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
      008F9D 95               [ 1]  614 	ld	xh, a
      008F9E 4D               [ 1]  615 	tnz	a
      008F9F 27 4B            [ 1]  616 	jreq	00107$
      008FA1 9E               [ 1]  617 	ld	a, xh
      008FA2 A1 08            [ 1]  618 	cp	a, #0x08
      008FA4 27 46            [ 1]  619 	jreq	00107$
      008FA6 9E               [ 1]  620 	ld	a, xh
      008FA7 A1 10            [ 1]  621 	cp	a, #0x10
      008FA9 27 41            [ 1]  622 	jreq	00107$
      008FAB 9E               [ 1]  623 	ld	a, xh
      008FAC A1 18            [ 1]  624 	cp	a, #0x18
      008FAE 27 3C            [ 1]  625 	jreq	00107$
      008FB0 9E               [ 1]  626 	ld	a, xh
      008FB1 A1 80            [ 1]  627 	cp	a, #0x80
      008FB3 27 37            [ 1]  628 	jreq	00107$
      008FB5 9E               [ 1]  629 	ld	a, xh
      008FB6 A1 81            [ 1]  630 	cp	a, #0x81
      008FB8 27 32            [ 1]  631 	jreq	00107$
      008FBA 9E               [ 1]  632 	ld	a, xh
      008FBB A1 82            [ 1]  633 	cp	a, #0x82
      008FBD 27 2D            [ 1]  634 	jreq	00107$
      008FBF 9E               [ 1]  635 	ld	a, xh
      008FC0 A1 83            [ 1]  636 	cp	a, #0x83
      008FC2 27 28            [ 1]  637 	jreq	00107$
      008FC4 9E               [ 1]  638 	ld	a, xh
      008FC5 A1 84            [ 1]  639 	cp	a, #0x84
      008FC7 27 23            [ 1]  640 	jreq	00107$
      008FC9 9E               [ 1]  641 	ld	a, xh
      008FCA A1 85            [ 1]  642 	cp	a, #0x85
      008FCC 27 1E            [ 1]  643 	jreq	00107$
      008FCE 9E               [ 1]  644 	ld	a, xh
      008FCF A1 86            [ 1]  645 	cp	a, #0x86
      008FD1 27 19            [ 1]  646 	jreq	00107$
      008FD3 9E               [ 1]  647 	ld	a, xh
      008FD4 A1 87            [ 1]  648 	cp	a, #0x87
      008FD6 27 14            [ 1]  649 	jreq	00107$
      008FD8 89               [ 2]  650 	pushw	x
      008FD9 4B 10            [ 1]  651 	push	#0x10
      008FDB 4B 02            [ 1]  652 	push	#0x02
      008FDD 4B 00            [ 1]  653 	push	#0x00
      008FDF 4B 00            [ 1]  654 	push	#0x00
      008FE1 AE 81 25         [ 2]  655 	ldw	x, #(___str_0+0)
      008FE4 CD 81 CD         [ 4]  656 	call	_assert_failed
      008FE7 02               [ 1]  657 	rlwa	x
      008FE8 84               [ 1]  658 	pop	a
      008FE9 01               [ 1]  659 	rrwa	x
      008FEA 5B 01            [ 2]  660 	addw	sp, #1
      008FEC                        661 00107$:
                                    662 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 532: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      008FEC C6 50 C6         [ 1]  663 	ld	a, 0x50c6
                                    664 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 530: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      008FEF 5D               [ 2]  665 	tnzw	x
      008FF0 2B 14            [ 1]  666 	jrmi	00102$
                                    667 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 532: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      008FF2 A4 E7            [ 1]  668 	and	a, #0xe7
      008FF4 C7 50 C6         [ 1]  669 	ld	0x50c6, a
                                    670 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 533: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      008FF7 C6 50 C6         [ 1]  671 	ld	a, 0x50c6
      008FFA 6B 01            [ 1]  672 	ld	(0x01, sp), a
      008FFC 9E               [ 1]  673 	ld	a, xh
      008FFD A4 18            [ 1]  674 	and	a, #0x18
      008FFF 1A 01            [ 1]  675 	or	a, (0x01, sp)
      009001 C7 50 C6         [ 1]  676 	ld	0x50c6, a
      009004 20 12            [ 2]  677 	jra	00104$
      009006                        678 00102$:
                                    679 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 537: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      009006 A4 F8            [ 1]  680 	and	a, #0xf8
      009008 C7 50 C6         [ 1]  681 	ld	0x50c6, a
                                    682 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 538: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      00900B C6 50 C6         [ 1]  683 	ld	a, 0x50c6
      00900E 6B 01            [ 1]  684 	ld	(0x01, sp), a
      009010 9E               [ 1]  685 	ld	a, xh
      009011 A4 07            [ 1]  686 	and	a, #0x07
      009013 1A 01            [ 1]  687 	or	a, (0x01, sp)
      009015 C7 50 C6         [ 1]  688 	ld	0x50c6, a
      009018                        689 00104$:
                                    690 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 540: }
      009018 84               [ 1]  691 	pop	a
      009019 81               [ 4]  692 	ret
                                    693 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 602: uint32_t CLK_GetClockFreq(void)
                                    694 ;	-----------------------------------------
                                    695 ;	 function CLK_GetClockFreq
                                    696 ;	-----------------------------------------
      00901A                        697 _CLK_GetClockFreq:
      00901A 52 04            [ 2]  698 	sub	sp, #4
                                    699 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 609: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      00901C C6 50 C3         [ 1]  700 	ld	a, 0x50c3
                                    701 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 611: if (clocksource == CLK_SOURCE_HSI)
      00901F 6B 04            [ 1]  702 	ld	(0x04, sp), a
      009021 A1 E1            [ 1]  703 	cp	a, #0xe1
      009023 26 23            [ 1]  704 	jrne	00105$
                                    705 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 613: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      009025 C6 50 C6         [ 1]  706 	ld	a, 0x50c6
      009028 A4 18            [ 1]  707 	and	a, #0x18
                                    708 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 614: tmp = (uint8_t)(tmp >> 3);
      00902A 44               [ 1]  709 	srl	a
      00902B 44               [ 1]  710 	srl	a
      00902C 44               [ 1]  711 	srl	a
                                    712 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 615: presc = HSIDivFactor[tmp];
      00902D 5F               [ 1]  713 	clrw	x
      00902E 97               [ 1]  714 	ld	xl, a
      00902F D6 81 19         [ 1]  715 	ld	a, (_HSIDivFactor+0, x)
                                    716 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 616: clockfrequency = HSI_VALUE / presc;
      009032 5F               [ 1]  717 	clrw	x
      009033 0F 01            [ 1]  718 	clr	(0x01, sp)
      009035 88               [ 1]  719 	push	a
      009036 89               [ 2]  720 	pushw	x
      009037 4F               [ 1]  721 	clr	a
      009038 88               [ 1]  722 	push	a
      009039 4B 00            [ 1]  723 	push	#0x00
      00903B 4B 24            [ 1]  724 	push	#0x24
      00903D 4B F4            [ 1]  725 	push	#0xf4
      00903F 4B 00            [ 1]  726 	push	#0x00
      009041 CD 94 2C         [ 4]  727 	call	__divulong
      009044 5B 08            [ 2]  728 	addw	sp, #8
      009046 20 16            [ 2]  729 	jra	00106$
      009048                        730 00105$:
                                    731 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 618: else if ( clocksource == CLK_SOURCE_LSI)
      009048 7B 04            [ 1]  732 	ld	a, (0x04, sp)
      00904A A1 D2            [ 1]  733 	cp	a, #0xd2
      00904C 26 09            [ 1]  734 	jrne	00102$
                                    735 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 620: clockfrequency = LSI_VALUE;
      00904E AE F4 00         [ 2]  736 	ldw	x, #0xf400
      009051 90 AE 00 01      [ 2]  737 	ldw	y, #0x0001
      009055 20 07            [ 2]  738 	jra	00106$
      009057                        739 00102$:
                                    740 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 624: clockfrequency = HSE_VALUE;
      009057 AE 12 00         [ 2]  741 	ldw	x, #0x1200
      00905A 90 AE 00 7A      [ 2]  742 	ldw	y, #0x007a
      00905E                        743 00106$:
                                    744 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 627: return((uint32_t)clockfrequency);
                                    745 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 628: }
      00905E 5B 04            [ 2]  746 	addw	sp, #4
      009060 81               [ 4]  747 	ret
                                    748 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 673: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                    749 ;	-----------------------------------------
                                    750 ;	 function CLK_GetFlagStatus
                                    751 ;	-----------------------------------------
      009061                        752 _CLK_GetFlagStatus:
      009061 52 03            [ 2]  753 	sub	sp, #3
                                    754 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 680: assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
      009063 1F 02            [ 2]  755 	ldw	(0x02, sp), x
      009065 A3 01 10         [ 2]  756 	cpw	x, #0x0110
      009068 27 38            [ 1]  757 	jreq	00119$
      00906A A3 01 02         [ 2]  758 	cpw	x, #0x0102
      00906D 27 33            [ 1]  759 	jreq	00119$
      00906F A3 02 02         [ 2]  760 	cpw	x, #0x0202
      009072 27 2E            [ 1]  761 	jreq	00119$
      009074 A3 03 08         [ 2]  762 	cpw	x, #0x0308
      009077 27 29            [ 1]  763 	jreq	00119$
      009079 A3 03 01         [ 2]  764 	cpw	x, #0x0301
      00907C 27 24            [ 1]  765 	jreq	00119$
      00907E A3 04 08         [ 2]  766 	cpw	x, #0x0408
      009081 27 1F            [ 1]  767 	jreq	00119$
      009083 A3 04 02         [ 2]  768 	cpw	x, #0x0402
      009086 27 1A            [ 1]  769 	jreq	00119$
      009088 A3 05 04         [ 2]  770 	cpw	x, #0x0504
      00908B 27 15            [ 1]  771 	jreq	00119$
      00908D A3 05 02         [ 2]  772 	cpw	x, #0x0502
      009090 27 10            [ 1]  773 	jreq	00119$
      009092 89               [ 2]  774 	pushw	x
      009093 4B A8            [ 1]  775 	push	#0xa8
      009095 4B 02            [ 1]  776 	push	#0x02
      009097 4B 00            [ 1]  777 	push	#0x00
      009099 4B 00            [ 1]  778 	push	#0x00
      00909B AE 81 25         [ 2]  779 	ldw	x, #(___str_0+0)
      00909E CD 81 CD         [ 4]  780 	call	_assert_failed
      0090A1 85               [ 2]  781 	popw	x
      0090A2                        782 00119$:
                                    783 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 683: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      0090A2 4F               [ 1]  784 	clr	a
                                    785 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 686: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      0090A3 97               [ 1]  786 	ld	xl, a
      0090A4 A3 01 00         [ 2]  787 	cpw	x, #0x0100
      0090A7 26 05            [ 1]  788 	jrne	00111$
                                    789 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 688: tmpreg = CLK->ICKR;
      0090A9 C6 50 C0         [ 1]  790 	ld	a, 0x50c0
      0090AC 20 21            [ 2]  791 	jra	00112$
      0090AE                        792 00111$:
                                    793 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 690: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      0090AE A3 02 00         [ 2]  794 	cpw	x, #0x0200
      0090B1 26 05            [ 1]  795 	jrne	00108$
                                    796 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 692: tmpreg = CLK->ECKR;
      0090B3 C6 50 C1         [ 1]  797 	ld	a, 0x50c1
      0090B6 20 17            [ 2]  798 	jra	00112$
      0090B8                        799 00108$:
                                    800 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 694: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      0090B8 A3 03 00         [ 2]  801 	cpw	x, #0x0300
      0090BB 26 05            [ 1]  802 	jrne	00105$
                                    803 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 696: tmpreg = CLK->SWCR;
      0090BD C6 50 C5         [ 1]  804 	ld	a, 0x50c5
      0090C0 20 0D            [ 2]  805 	jra	00112$
      0090C2                        806 00105$:
                                    807 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 698: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      0090C2 A3 04 00         [ 2]  808 	cpw	x, #0x0400
      0090C5 26 05            [ 1]  809 	jrne	00102$
                                    810 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 700: tmpreg = CLK->CSSR;
      0090C7 C6 50 C8         [ 1]  811 	ld	a, 0x50c8
      0090CA 20 03            [ 2]  812 	jra	00112$
      0090CC                        813 00102$:
                                    814 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 704: tmpreg = CLK->CCOR;
      0090CC C6 50 C9         [ 1]  815 	ld	a, 0x50c9
      0090CF                        816 00112$:
                                    817 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 707: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      0090CF 88               [ 1]  818 	push	a
      0090D0 7B 04            [ 1]  819 	ld	a, (0x04, sp)
      0090D2 6B 02            [ 1]  820 	ld	(0x02, sp), a
      0090D4 84               [ 1]  821 	pop	a
      0090D5 14 01            [ 1]  822 	and	a, (0x01, sp)
      0090D7 27 03            [ 1]  823 	jreq	00114$
                                    824 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 709: bitstatus = SET;
      0090D9 A6 01            [ 1]  825 	ld	a, #0x01
                                    826 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 713: bitstatus = RESET;
      0090DB 21                     827 	.byte 0x21
      0090DC                        828 00114$:
      0090DC 4F               [ 1]  829 	clr	a
      0090DD                        830 00115$:
                                    831 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 717: return((FlagStatus)bitstatus);
                                    832 ;	/workspace/Software/Firmware/new_begining/STM8S_StdPeriph_Lib/src/stm8s_clk.c: 718: }
      0090DD 5B 03            [ 2]  833 	addw	sp, #3
      0090DF 81               [ 4]  834 	ret
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
