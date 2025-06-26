;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module CMakeCCompilerId
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main_PARM_2
	.globl _info_version
	.globl _main
	.globl _info_language_extensions_default
	.globl _info_language_standard_default
	.globl _info_arch
	.globl _info_platform
	.globl _info_compiler
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_info_compiler::
	.ds 3
_info_platform::
	.ds 3
_info_arch::
	.ds 3
_info_language_standard_default::
	.ds 3
_info_language_extensions_default::
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_main_PARM_2:
	.ds 3
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	CMakeCCompilerId.c:455: char const* info_compiler = "INFO" ":" "compiler[" COMPILER_ID "]";
	mov	_info_compiler,#___str_0
	mov	(_info_compiler + 1),#(___str_0 >> 8)
	mov	(_info_compiler + 2),#0x80
;	CMakeCCompilerId.c:825: char const* info_platform = "INFO" ":" "platform[" PLATFORM_ID "]";
	mov	_info_platform,#___str_1
	mov	(_info_platform + 1),#(___str_1 >> 8)
	mov	(_info_platform + 2),#0x80
;	CMakeCCompilerId.c:826: char const* info_arch = "INFO" ":" "arch[" ARCHITECTURE_ID "]";
	mov	_info_arch,#___str_2
	mov	(_info_arch + 1),#(___str_2 >> 8)
	mov	(_info_arch + 2),#0x80
;	CMakeCCompilerId.c:856: const char* info_language_standard_default =
	mov	_info_language_standard_default,#___str_3
	mov	(_info_language_standard_default + 1),#(___str_3 >> 8)
	mov	(_info_language_standard_default + 2),#0x80
;	CMakeCCompilerId.c:859: const char* info_language_extensions_default = "INFO" ":" "extensions_default["
	mov	_info_language_extensions_default,#___str_4
	mov	(_info_language_extensions_default + 1),#(___str_4 >> 8)
	mov	(_info_language_extensions_default + 2),#0x80
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;argv                      Allocated with name '_main_PARM_2'
;argc                      Allocated to registers r6 r7 
;require                   Allocated to registers r4 r3 
;------------------------------------------------------------
;	CMakeCCompilerId.c:877: int main(int argc, char* argv[])
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6, dpl
	mov	r7, dph
;	CMakeCCompilerId.c:881: require += info_compiler[argc];
	mov	a,r6
	add	a, _info_compiler
	mov	r3,a
	mov	a,r7
	addc	a, (_info_compiler + 1)
	mov	r4,a
	mov	r5,(_info_compiler + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	r5,#0x00
;	CMakeCCompilerId.c:882: require += info_platform[argc];
	mov	a,r6
	add	a, _info_platform
	mov	r1,a
	mov	a,r7
	addc	a, (_info_platform + 1)
	mov	r2,a
	mov	r4,(_info_platform + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r4
	lcall	__gptrget
	mov	r4,#0x00
	add	a, r3
	mov	r1,a
	mov	a,r4
	addc	a, r5
	mov	r4,a
;	CMakeCCompilerId.c:883: require += info_arch[argc];
	mov	a,r6
	add	a, _info_arch
	mov	r2,a
	mov	a,r7
	addc	a, (_info_arch + 1)
	mov	r3,a
	mov	r5,(_info_arch + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r5,#0x00
	add	a, r1
	mov	r2,a
	mov	a,r5
	addc	a, r4
	mov	r5,a
;	CMakeCCompilerId.c:885: require += info_version[argc];
	mov	a,r6
	add	a, #_info_version
	mov	dpl,a
	mov	a,r7
	addc	a, #(_info_version >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,#0x00
	add	a, r2
	mov	r4,a
	mov	a,r3
	addc	a, r5
	mov	r3,a
;	CMakeCCompilerId.c:899: require += info_language_standard_default[argc];
	mov	a,r6
	add	a, _info_language_standard_default
	mov	r1,a
	mov	a,r7
	addc	a, (_info_language_standard_default + 1)
	mov	r2,a
	mov	r5,(_info_language_standard_default + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r5
	lcall	__gptrget
	mov	r5,#0x00
	add	a, r4
	mov	r4,a
	mov	a,r5
	addc	a, r3
	mov	r3,a
;	CMakeCCompilerId.c:900: require += info_language_extensions_default[argc];
	mov	a,r6
	add	a, _info_language_extensions_default
	mov	r6,a
	mov	a,r7
	addc	a, (_info_language_extensions_default + 1)
	mov	r7,a
	mov	r5,(_info_language_extensions_default + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
	mov	r7,#0x00
	add	a, r4
	mov	dpl,a
	mov	a,r7
	addc	a, r3
	mov	dph,a
;	CMakeCCompilerId.c:902: return require;
;	CMakeCCompilerId.c:903: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_info_version:
	.db #0x49	; 73	'I'
	.db #0x4e	; 78	'N'
	.db #0x46	; 70	'F'
	.db #0x4f	; 79	'O'
	.db #0x3a	; 58
	.db #0x63	; 99	'c'
	.db #0x6f	; 111	'o'
	.db #0x6d	; 109	'm'
	.db #0x70	; 112	'p'
	.db #0x69	; 105	'i'
	.db #0x6c	; 108	'l'
	.db #0x65	; 101	'e'
	.db #0x72	; 114	'r'
	.db #0x5f	; 95
	.db #0x76	; 118	'v'
	.db #0x65	; 101	'e'
	.db #0x72	; 114	'r'
	.db #0x73	; 115	's'
	.db #0x69	; 105	'i'
	.db #0x6f	; 111	'o'
	.db #0x6e	; 110	'n'
	.db #0x5b	; 91
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x34	; 52	'4'
	.db #0x2e	; 46
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x34	; 52	'4'
	.db #0x2e	; 46
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x5d	; 93
	.db #0x00	; 0
	.area CONST   (CODE)
___str_0:
	.ascii "INFO:compiler[SDCC]"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "INFO:platform[]"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "INFO:arch[]"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "INFO:standard_default[11]"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "INFO:extensions_default[OFF]"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
