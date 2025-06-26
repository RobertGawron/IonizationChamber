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
                                     12 	.globl _app_builder_run
                                     13 	.globl _app_builder_init
                                     14 ;--------------------------------------------------------
                                     15 ; ram data
                                     16 ;--------------------------------------------------------
                                     17 	.area DATA
                                     18 ;--------------------------------------------------------
                                     19 ; ram data
                                     20 ;--------------------------------------------------------
                                     21 	.area INITIALIZED
                                     22 ;--------------------------------------------------------
                                     23 ; Stack segment in internal ram
                                     24 ;--------------------------------------------------------
                                     25 	.area SSEG
      000002                         26 __start__stack:
      000002                         27 	.ds	1
                                     28 
                                     29 ;--------------------------------------------------------
                                     30 ; absolute external ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DABS (ABS)
                                     33 
                                     34 ; default segment ordering for linker
                                     35 	.area HOME
                                     36 	.area GSINIT
                                     37 	.area GSFINAL
                                     38 	.area CONST
                                     39 	.area INITIALIZER
                                     40 	.area CODE
                                     41 
                                     42 ;--------------------------------------------------------
                                     43 ; interrupt vector
                                     44 ;--------------------------------------------------------
                                     45 	.area HOME
      008000                         46 __interrupt_vect:
      008000 82 00 80 07             47 	int s_GSINIT ; reset
                                     48 ;--------------------------------------------------------
                                     49 ; global & static initialisations
                                     50 ;--------------------------------------------------------
                                     51 	.area HOME
                                     52 	.area GSINIT
                                     53 	.area GSFINAL
                                     54 	.area GSINIT
      008007 CD 94 A9         [ 4]   55 	call	___sdcc_external_startup
      00800A 4D               [ 1]   56 	tnz	a
      00800B 27 03            [ 1]   57 	jreq	__sdcc_init_data
      00800D CC 80 04         [ 2]   58 	jp	__sdcc_program_startup
      008010                         59 __sdcc_init_data:
                                     60 ; stm8_genXINIT() start
      008010 AE 00 00         [ 2]   61 	ldw x, #l_DATA
      008013 27 07            [ 1]   62 	jreq	00002$
      008015                         63 00001$:
      008015 72 4F 00 00      [ 1]   64 	clr (s_DATA - 1, x)
      008019 5A               [ 2]   65 	decw x
      00801A 26 F9            [ 1]   66 	jrne	00001$
      00801C                         67 00002$:
      00801C AE 00 01         [ 2]   68 	ldw	x, #l_INITIALIZER
      00801F 27 09            [ 1]   69 	jreq	00004$
      008021                         70 00003$:
      008021 D6 81 C2         [ 1]   71 	ld	a, (s_INITIALIZER - 1, x)
      008024 D7 00 00         [ 1]   72 	ld	(s_INITIALIZED - 1, x), a
      008027 5A               [ 2]   73 	decw	x
      008028 26 F7            [ 1]   74 	jrne	00003$
      00802A                         75 00004$:
                                     76 ; stm8_genXINIT() end
                                     77 	.area GSFINAL
      00802A CC 80 04         [ 2]   78 	jp	__sdcc_program_startup
                                     79 ;--------------------------------------------------------
                                     80 ; Home
                                     81 ;--------------------------------------------------------
                                     82 	.area HOME
                                     83 	.area HOME
      008004                         84 __sdcc_program_startup:
      008004 CC 81 C4         [ 2]   85 	jp	_main
                                     86 ;	return from main will return to caller
                                     87 ;--------------------------------------------------------
                                     88 ; code
                                     89 ;--------------------------------------------------------
                                     90 	.area CODE
                                     91 ;	/workspace/Software/Firmware/new_begining/main.c: 5: int main()
                                     92 ;	-----------------------------------------
                                     93 ;	 function main
                                     94 ;	-----------------------------------------
      0081C4                         95 _main:
                                     96 ;	/workspace/Software/Firmware/new_begining/main.c: 7: app_builder_init();
      0081C4 CD 81 F6         [ 4]   97 	call	_app_builder_init
      0081C7                         98 00102$:
                                     99 ;	/workspace/Software/Firmware/new_begining/main.c: 11: app_builder_run();
      0081C7 CD 81 FF         [ 4]  100 	call	_app_builder_run
      0081CA 20 FB            [ 2]  101 	jra	00102$
                                    102 ;	/workspace/Software/Firmware/new_begining/main.c: 14: return 0;
                                    103 ;	/workspace/Software/Firmware/new_begining/main.c: 15: }
      0081CC 81               [ 4]  104 	ret
                                    105 	.area CODE
                                    106 	.area CONST
                                    107 	.area INITIALIZER
                                    108 	.area CABS (ABS)
