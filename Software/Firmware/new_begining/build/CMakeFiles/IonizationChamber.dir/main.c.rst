                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _delay_ms
                                     13 ;--------------------------------------------------------
                                     14 ; ram data
                                     15 ;--------------------------------------------------------
                                     16 	.area DATA
                                     17 ;--------------------------------------------------------
                                     18 ; ram data
                                     19 ;--------------------------------------------------------
                                     20 	.area INITIALIZED
                                     21 ;--------------------------------------------------------
                                     22 ; Stack segment in internal ram
                                     23 ;--------------------------------------------------------
                                     24 	.area SSEG
      000001                         25 __start__stack:
      000001                         26 	.ds	1
                                     27 
                                     28 ;--------------------------------------------------------
                                     29 ; absolute external ram data
                                     30 ;--------------------------------------------------------
                                     31 	.area DABS (ABS)
                                     32 
                                     33 ; default segment ordering for linker
                                     34 	.area HOME
                                     35 	.area GSINIT
                                     36 	.area GSFINAL
                                     37 	.area CONST
                                     38 	.area INITIALIZER
                                     39 	.area CODE
                                     40 
                                     41 ;--------------------------------------------------------
                                     42 ; interrupt vector
                                     43 ;--------------------------------------------------------
                                     44 	.area HOME
      008000                         45 __interrupt_vect:
      008000 82 00 80 07             46 	int s_GSINIT ; reset
                                     47 ;--------------------------------------------------------
                                     48 ; global & static initialisations
                                     49 ;--------------------------------------------------------
                                     50 	.area HOME
                                     51 	.area GSINIT
                                     52 	.area GSFINAL
                                     53 	.area GSINIT
      008007 CD 93 DC         [ 4]   54 	call	___sdcc_external_startup
      00800A 4D               [ 1]   55 	tnz	a
      00800B 27 03            [ 1]   56 	jreq	__sdcc_init_data
      00800D CC 80 04         [ 2]   57 	jp	__sdcc_program_startup
      008010                         58 __sdcc_init_data:
                                     59 ; stm8_genXINIT() start
      008010 AE 00 00         [ 2]   60 	ldw x, #l_DATA
      008013 27 07            [ 1]   61 	jreq	00002$
      008015                         62 00001$:
      008015 72 4F 00 00      [ 1]   63 	clr (s_DATA - 1, x)
      008019 5A               [ 2]   64 	decw x
      00801A 26 F9            [ 1]   65 	jrne	00001$
      00801C                         66 00002$:
      00801C AE 00 00         [ 2]   67 	ldw	x, #l_INITIALIZER
      00801F 27 09            [ 1]   68 	jreq	00004$
      008021                         69 00003$:
      008021 D6 81 C2         [ 1]   70 	ld	a, (s_INITIALIZER - 1, x)
      008024 D7 00 00         [ 1]   71 	ld	(s_INITIALIZED - 1, x), a
      008027 5A               [ 2]   72 	decw	x
      008028 26 F7            [ 1]   73 	jrne	00003$
      00802A                         74 00004$:
                                     75 ; stm8_genXINIT() end
                                     76 	.area GSFINAL
      00802A CC 80 04         [ 2]   77 	jp	__sdcc_program_startup
                                     78 ;--------------------------------------------------------
                                     79 ; Home
                                     80 ;--------------------------------------------------------
                                     81 	.area HOME
                                     82 	.area HOME
      008004                         83 __sdcc_program_startup:
      008004 CC 81 E7         [ 2]   84 	jp	_main
                                     85 ;	return from main will return to caller
                                     86 ;--------------------------------------------------------
                                     87 ; code
                                     88 ;--------------------------------------------------------
                                     89 	.area CODE
                                     90 ;	/workspace/Software/Firmware/new_begining/main.c: 16: void delay_ms(uint16_t ms)
                                     91 ;	-----------------------------------------
                                     92 ;	 function delay_ms
                                     93 ;	-----------------------------------------
      0081C3                         94 _delay_ms:
      0081C3 52 04            [ 2]   95 	sub	sp, #4
      0081C5 1F 01            [ 2]   96 	ldw	(0x01, sp), x
                                     97 ;	/workspace/Software/Firmware/new_begining/main.c: 19: for (uint16_t i = 0; i < ms; i++)
      0081C7 5F               [ 1]   98 	clrw	x
      0081C8 1F 03            [ 2]   99 	ldw	(0x03, sp), x
      0081CA                        100 00107$:
      0081CA 1E 03            [ 2]  101 	ldw	x, (0x03, sp)
      0081CC 13 01            [ 2]  102 	cpw	x, (0x01, sp)
      0081CE 24 14            [ 1]  103 	jrnc	00109$
                                    104 ;	/workspace/Software/Firmware/new_begining/main.c: 21: for (uint16_t j = 0; j < 1600; j++)
      0081D0 5F               [ 1]  105 	clrw	x
      0081D1                        106 00104$:
      0081D1 90 93            [ 1]  107 	ldw	y, x
      0081D3 90 A3 06 40      [ 2]  108 	cpw	y, #0x0640
      0081D7 24 04            [ 1]  109 	jrnc	00108$
                                    110 ;	/workspace/Software/Firmware/new_begining/main.c: 23: __asm__("nop");
      0081D9 9D               [ 1]  111 	nop
                                    112 ;	/workspace/Software/Firmware/new_begining/main.c: 21: for (uint16_t j = 0; j < 1600; j++)
      0081DA 5C               [ 1]  113 	incw	x
      0081DB 20 F4            [ 2]  114 	jra	00104$
      0081DD                        115 00108$:
                                    116 ;	/workspace/Software/Firmware/new_begining/main.c: 19: for (uint16_t i = 0; i < ms; i++)
      0081DD 1E 03            [ 2]  117 	ldw	x, (0x03, sp)
      0081DF 5C               [ 1]  118 	incw	x
      0081E0 1F 03            [ 2]  119 	ldw	(0x03, sp), x
      0081E2 20 E6            [ 2]  120 	jra	00107$
      0081E4                        121 00109$:
                                    122 ;	/workspace/Software/Firmware/new_begining/main.c: 26: }
      0081E4 5B 04            [ 2]  123 	addw	sp, #4
      0081E6 81               [ 4]  124 	ret
                                    125 ;	/workspace/Software/Firmware/new_begining/main.c: 28: void main()
                                    126 ;	-----------------------------------------
                                    127 ;	 function main
                                    128 ;	-----------------------------------------
      0081E7                        129 _main:
                                    130 ;	/workspace/Software/Firmware/new_begining/main.c: 31: CLK_PCKENR1 |= (1 << 3); // Enable GPIOD clock (bit 3)
      0081E7 72 16 50 C7      [ 1]  131 	bset	0x50c7, #3
                                    132 ;	/workspace/Software/Firmware/new_begining/main.c: 34: GPIOD_DDR |= (1 << PIN_GREEN) | (1 << PIN_RED);
      0081EB C6 50 11         [ 1]  133 	ld	a, 0x5011
      0081EE AA 0C            [ 1]  134 	or	a, #0x0c
      0081F0 C7 50 11         [ 1]  135 	ld	0x5011, a
                                    136 ;	/workspace/Software/Firmware/new_begining/main.c: 37: GPIOD_CR1 |= (1 << PIN_GREEN) | (1 << PIN_RED);
      0081F3 C6 50 12         [ 1]  137 	ld	a, 0x5012
      0081F6 AA 0C            [ 1]  138 	or	a, #0x0c
      0081F8 C7 50 12         [ 1]  139 	ld	0x5012, a
                                    140 ;	/workspace/Software/Firmware/new_begining/main.c: 41: GPIOD_ODR &= ~((1 << PIN_GREEN) | (1 << PIN_RED));
      0081FB C6 50 0F         [ 1]  141 	ld	a, 0x500f
      0081FE A4 F3            [ 1]  142 	and	a, #0xf3
      008200 C7 50 0F         [ 1]  143 	ld	0x500f, a
                                    144 ;	/workspace/Software/Firmware/new_begining/main.c: 46: while (1)
      008203                        145 00102$:
                                    146 ;	/workspace/Software/Firmware/new_begining/main.c: 49: GPIOD_ODR ^= (1 << PIN_GREEN) | (1 << PIN_RED);
      008203 C6 50 0F         [ 1]  147 	ld	a, 0x500f
      008206 A8 0C            [ 1]  148 	xor	a, #0x0c
      008208 C7 50 0F         [ 1]  149 	ld	0x500f, a
                                    150 ;	/workspace/Software/Firmware/new_begining/main.c: 52: delay_ms(1000); // 1 second delay
      00820B AE 03 E8         [ 2]  151 	ldw	x, #0x03e8
      00820E CD 81 C3         [ 4]  152 	call	_delay_ms
      008211 20 F0            [ 2]  153 	jra	00102$
                                    154 ;	/workspace/Software/Firmware/new_begining/main.c: 57: }
      008213 81               [ 4]  155 	ret
                                    156 	.area CODE
                                    157 	.area CONST
                                    158 	.area INITIALIZER
                                    159 	.area CABS (ABS)
