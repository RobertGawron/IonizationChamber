                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module CMakeCCompilerId
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main_PARM_2
                                     12 	.globl _info_version
                                     13 	.globl _main
                                     14 	.globl _info_language_extensions_default
                                     15 	.globl _info_language_standard_default
                                     16 	.globl _info_arch
                                     17 	.globl _info_platform
                                     18 	.globl _info_compiler
                                     19 ;--------------------------------------------------------
                                     20 ; special function registers
                                     21 ;--------------------------------------------------------
                                     22 	.area RSEG    (ABS,DATA)
      000000                         23 	.org 0x0000
                                     24 ;--------------------------------------------------------
                                     25 ; special function bits
                                     26 ;--------------------------------------------------------
                                     27 	.area RSEG    (ABS,DATA)
      000000                         28 	.org 0x0000
                                     29 ;--------------------------------------------------------
                                     30 ; overlayable register banks
                                     31 ;--------------------------------------------------------
                                     32 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         33 	.ds 8
                                     34 ;--------------------------------------------------------
                                     35 ; internal ram data
                                     36 ;--------------------------------------------------------
                                     37 	.area DSEG    (DATA)
      000008                         38 _info_compiler::
      000008                         39 	.ds 3
      00000B                         40 _info_platform::
      00000B                         41 	.ds 3
      00000E                         42 _info_arch::
      00000E                         43 	.ds 3
      000011                         44 _info_language_standard_default::
      000011                         45 	.ds 3
      000014                         46 _info_language_extensions_default::
      000014                         47 	.ds 3
                                     48 ;--------------------------------------------------------
                                     49 ; overlayable items in internal ram
                                     50 ;--------------------------------------------------------
                                     51 	.area	OSEG    (OVR,DATA)
      000017                         52 _main_PARM_2:
      000017                         53 	.ds 3
                                     54 ;--------------------------------------------------------
                                     55 ; Stack segment in internal ram
                                     56 ;--------------------------------------------------------
                                     57 	.area SSEG
      00001A                         58 __start__stack:
      00001A                         59 	.ds	1
                                     60 
                                     61 ;--------------------------------------------------------
                                     62 ; indirectly addressable internal ram data
                                     63 ;--------------------------------------------------------
                                     64 	.area ISEG    (DATA)
                                     65 ;--------------------------------------------------------
                                     66 ; absolute internal ram data
                                     67 ;--------------------------------------------------------
                                     68 	.area IABS    (ABS,DATA)
                                     69 	.area IABS    (ABS,DATA)
                                     70 ;--------------------------------------------------------
                                     71 ; bit data
                                     72 ;--------------------------------------------------------
                                     73 	.area BSEG    (BIT)
                                     74 ;--------------------------------------------------------
                                     75 ; paged external ram data
                                     76 ;--------------------------------------------------------
                                     77 	.area PSEG    (PAG,XDATA)
                                     78 ;--------------------------------------------------------
                                     79 ; uninitialized external ram data
                                     80 ;--------------------------------------------------------
                                     81 	.area XSEG    (XDATA)
                                     82 ;--------------------------------------------------------
                                     83 ; absolute external ram data
                                     84 ;--------------------------------------------------------
                                     85 	.area XABS    (ABS,XDATA)
                                     86 ;--------------------------------------------------------
                                     87 ; initialized external ram data
                                     88 ;--------------------------------------------------------
                                     89 	.area XISEG   (XDATA)
                                     90 	.area HOME    (CODE)
                                     91 	.area GSINIT0 (CODE)
                                     92 	.area GSINIT1 (CODE)
                                     93 	.area GSINIT2 (CODE)
                                     94 	.area GSINIT3 (CODE)
                                     95 	.area GSINIT4 (CODE)
                                     96 	.area GSINIT5 (CODE)
                                     97 	.area GSINIT  (CODE)
                                     98 	.area GSFINAL (CODE)
                                     99 	.area CSEG    (CODE)
                                    100 ;--------------------------------------------------------
                                    101 ; interrupt vector
                                    102 ;--------------------------------------------------------
                                    103 	.area HOME    (CODE)
      000000                        104 __interrupt_vect:
      000000 02 00 06         [24]  105 	ljmp	__sdcc_gsinit_startup
                                    106 ;--------------------------------------------------------
                                    107 ; global & static initialisations
                                    108 ;--------------------------------------------------------
                                    109 	.area HOME    (CODE)
                                    110 	.area GSINIT  (CODE)
                                    111 	.area GSFINAL (CODE)
                                    112 	.area GSINIT  (CODE)
                                    113 	.globl __sdcc_gsinit_startup
                                    114 	.globl __sdcc_program_startup
                                    115 	.globl __start__stack
                                    116 	.globl __mcs51_genXINIT
                                    117 	.globl __mcs51_genXRAMCLEAR
                                    118 	.globl __mcs51_genRAMCLEAR
                                    119 ;	CMakeCCompilerId.c:455: char const* info_compiler = "INFO" ":" "compiler[" COMPILER_ID "]";
      00005F 75 08 79         [24]  120 	mov	_info_compiler,#___str_0
      000062 75 09 01         [24]  121 	mov	(_info_compiler + 1),#(___str_0 >> 8)
      000065 75 0A 80         [24]  122 	mov	(_info_compiler + 2),#0x80
                                    123 ;	CMakeCCompilerId.c:825: char const* info_platform = "INFO" ":" "platform[" PLATFORM_ID "]";
      000068 75 0B 8D         [24]  124 	mov	_info_platform,#___str_1
      00006B 75 0C 01         [24]  125 	mov	(_info_platform + 1),#(___str_1 >> 8)
      00006E 75 0D 80         [24]  126 	mov	(_info_platform + 2),#0x80
                                    127 ;	CMakeCCompilerId.c:826: char const* info_arch = "INFO" ":" "arch[" ARCHITECTURE_ID "]";
      000071 75 0E 9D         [24]  128 	mov	_info_arch,#___str_2
      000074 75 0F 01         [24]  129 	mov	(_info_arch + 1),#(___str_2 >> 8)
      000077 75 10 80         [24]  130 	mov	(_info_arch + 2),#0x80
                                    131 ;	CMakeCCompilerId.c:856: const char* info_language_standard_default =
      00007A 75 11 A9         [24]  132 	mov	_info_language_standard_default,#___str_3
      00007D 75 12 01         [24]  133 	mov	(_info_language_standard_default + 1),#(___str_3 >> 8)
      000080 75 13 80         [24]  134 	mov	(_info_language_standard_default + 2),#0x80
                                    135 ;	CMakeCCompilerId.c:859: const char* info_language_extensions_default = "INFO" ":" "extensions_default["
      000083 75 14 C3         [24]  136 	mov	_info_language_extensions_default,#___str_4
      000086 75 15 01         [24]  137 	mov	(_info_language_extensions_default + 1),#(___str_4 >> 8)
      000089 75 16 80         [24]  138 	mov	(_info_language_extensions_default + 2),#0x80
                                    139 	.area GSFINAL (CODE)
      00008C 02 00 03         [24]  140 	ljmp	__sdcc_program_startup
                                    141 ;--------------------------------------------------------
                                    142 ; Home
                                    143 ;--------------------------------------------------------
                                    144 	.area HOME    (CODE)
                                    145 	.area HOME    (CODE)
      000003                        146 __sdcc_program_startup:
      000003 02 00 8F         [24]  147 	ljmp	_main
                                    148 ;	return from main will return to caller
                                    149 ;--------------------------------------------------------
                                    150 ; code
                                    151 ;--------------------------------------------------------
                                    152 	.area CSEG    (CODE)
                                    153 ;------------------------------------------------------------
                                    154 ;Allocation info for local variables in function 'main'
                                    155 ;------------------------------------------------------------
                                    156 ;argv                      Allocated with name '_main_PARM_2'
                                    157 ;argc                      Allocated to registers r6 r7 
                                    158 ;require                   Allocated to registers r4 r3 
                                    159 ;------------------------------------------------------------
                                    160 ;	CMakeCCompilerId.c:877: int main(int argc, char* argv[])
                                    161 ;	-----------------------------------------
                                    162 ;	 function main
                                    163 ;	-----------------------------------------
      00008F                        164 _main:
                           000007   165 	ar7 = 0x07
                           000006   166 	ar6 = 0x06
                           000005   167 	ar5 = 0x05
                           000004   168 	ar4 = 0x04
                           000003   169 	ar3 = 0x03
                           000002   170 	ar2 = 0x02
                           000001   171 	ar1 = 0x01
                           000000   172 	ar0 = 0x00
      00008F AE 82            [24]  173 	mov	r6, dpl
      000091 AF 83            [24]  174 	mov	r7, dph
                                    175 ;	CMakeCCompilerId.c:881: require += info_compiler[argc];
      000093 EE               [12]  176 	mov	a,r6
      000094 25 08            [12]  177 	add	a, _info_compiler
      000096 FB               [12]  178 	mov	r3,a
      000097 EF               [12]  179 	mov	a,r7
      000098 35 09            [12]  180 	addc	a, (_info_compiler + 1)
      00009A FC               [12]  181 	mov	r4,a
      00009B AD 0A            [24]  182 	mov	r5,(_info_compiler + 2)
      00009D 8B 82            [24]  183 	mov	dpl,r3
      00009F 8C 83            [24]  184 	mov	dph,r4
      0000A1 8D F0            [24]  185 	mov	b,r5
      0000A3 12 01 27         [24]  186 	lcall	__gptrget
      0000A6 FB               [12]  187 	mov	r3,a
      0000A7 7D 00            [12]  188 	mov	r5,#0x00
                                    189 ;	CMakeCCompilerId.c:882: require += info_platform[argc];
      0000A9 EE               [12]  190 	mov	a,r6
      0000AA 25 0B            [12]  191 	add	a, _info_platform
      0000AC F9               [12]  192 	mov	r1,a
      0000AD EF               [12]  193 	mov	a,r7
      0000AE 35 0C            [12]  194 	addc	a, (_info_platform + 1)
      0000B0 FA               [12]  195 	mov	r2,a
      0000B1 AC 0D            [24]  196 	mov	r4,(_info_platform + 2)
      0000B3 89 82            [24]  197 	mov	dpl,r1
      0000B5 8A 83            [24]  198 	mov	dph,r2
      0000B7 8C F0            [24]  199 	mov	b,r4
      0000B9 12 01 27         [24]  200 	lcall	__gptrget
      0000BC 7C 00            [12]  201 	mov	r4,#0x00
      0000BE 2B               [12]  202 	add	a, r3
      0000BF F9               [12]  203 	mov	r1,a
      0000C0 EC               [12]  204 	mov	a,r4
      0000C1 3D               [12]  205 	addc	a, r5
      0000C2 FC               [12]  206 	mov	r4,a
                                    207 ;	CMakeCCompilerId.c:883: require += info_arch[argc];
      0000C3 EE               [12]  208 	mov	a,r6
      0000C4 25 0E            [12]  209 	add	a, _info_arch
      0000C6 FA               [12]  210 	mov	r2,a
      0000C7 EF               [12]  211 	mov	a,r7
      0000C8 35 0F            [12]  212 	addc	a, (_info_arch + 1)
      0000CA FB               [12]  213 	mov	r3,a
      0000CB AD 10            [24]  214 	mov	r5,(_info_arch + 2)
      0000CD 8A 82            [24]  215 	mov	dpl,r2
      0000CF 8B 83            [24]  216 	mov	dph,r3
      0000D1 8D F0            [24]  217 	mov	b,r5
      0000D3 12 01 27         [24]  218 	lcall	__gptrget
      0000D6 7D 00            [12]  219 	mov	r5,#0x00
      0000D8 29               [12]  220 	add	a, r1
      0000D9 FA               [12]  221 	mov	r2,a
      0000DA ED               [12]  222 	mov	a,r5
      0000DB 3C               [12]  223 	addc	a, r4
      0000DC FD               [12]  224 	mov	r5,a
                                    225 ;	CMakeCCompilerId.c:885: require += info_version[argc];
      0000DD EE               [12]  226 	mov	a,r6
      0000DE 24 47            [12]  227 	add	a, #_info_version
      0000E0 F5 82            [12]  228 	mov	dpl,a
      0000E2 EF               [12]  229 	mov	a,r7
      0000E3 34 01            [12]  230 	addc	a, #(_info_version >> 8)
      0000E5 F5 83            [12]  231 	mov	dph,a
      0000E7 E4               [12]  232 	clr	a
      0000E8 93               [24]  233 	movc	a,@a+dptr
      0000E9 7B 00            [12]  234 	mov	r3,#0x00
      0000EB 2A               [12]  235 	add	a, r2
      0000EC FC               [12]  236 	mov	r4,a
      0000ED EB               [12]  237 	mov	a,r3
      0000EE 3D               [12]  238 	addc	a, r5
      0000EF FB               [12]  239 	mov	r3,a
                                    240 ;	CMakeCCompilerId.c:899: require += info_language_standard_default[argc];
      0000F0 EE               [12]  241 	mov	a,r6
      0000F1 25 11            [12]  242 	add	a, _info_language_standard_default
      0000F3 F9               [12]  243 	mov	r1,a
      0000F4 EF               [12]  244 	mov	a,r7
      0000F5 35 12            [12]  245 	addc	a, (_info_language_standard_default + 1)
      0000F7 FA               [12]  246 	mov	r2,a
      0000F8 AD 13            [24]  247 	mov	r5,(_info_language_standard_default + 2)
      0000FA 89 82            [24]  248 	mov	dpl,r1
      0000FC 8A 83            [24]  249 	mov	dph,r2
      0000FE 8D F0            [24]  250 	mov	b,r5
      000100 12 01 27         [24]  251 	lcall	__gptrget
      000103 7D 00            [12]  252 	mov	r5,#0x00
      000105 2C               [12]  253 	add	a, r4
      000106 FC               [12]  254 	mov	r4,a
      000107 ED               [12]  255 	mov	a,r5
      000108 3B               [12]  256 	addc	a, r3
      000109 FB               [12]  257 	mov	r3,a
                                    258 ;	CMakeCCompilerId.c:900: require += info_language_extensions_default[argc];
      00010A EE               [12]  259 	mov	a,r6
      00010B 25 14            [12]  260 	add	a, _info_language_extensions_default
      00010D FE               [12]  261 	mov	r6,a
      00010E EF               [12]  262 	mov	a,r7
      00010F 35 15            [12]  263 	addc	a, (_info_language_extensions_default + 1)
      000111 FF               [12]  264 	mov	r7,a
      000112 AD 16            [24]  265 	mov	r5,(_info_language_extensions_default + 2)
      000114 8E 82            [24]  266 	mov	dpl,r6
      000116 8F 83            [24]  267 	mov	dph,r7
      000118 8D F0            [24]  268 	mov	b,r5
      00011A 12 01 27         [24]  269 	lcall	__gptrget
      00011D 7F 00            [12]  270 	mov	r7,#0x00
      00011F 2C               [12]  271 	add	a, r4
      000120 F5 82            [12]  272 	mov	dpl,a
      000122 EF               [12]  273 	mov	a,r7
      000123 3B               [12]  274 	addc	a, r3
      000124 F5 83            [12]  275 	mov	dph,a
                                    276 ;	CMakeCCompilerId.c:902: return require;
                                    277 ;	CMakeCCompilerId.c:903: }
      000126 22               [24]  278 	ret
                                    279 	.area CSEG    (CODE)
                                    280 	.area CONST   (CODE)
      000147                        281 _info_version:
      000147 49                     282 	.db #0x49	; 73	'I'
      000148 4E                     283 	.db #0x4e	; 78	'N'
      000149 46                     284 	.db #0x46	; 70	'F'
      00014A 4F                     285 	.db #0x4f	; 79	'O'
      00014B 3A                     286 	.db #0x3a	; 58
      00014C 63                     287 	.db #0x63	; 99	'c'
      00014D 6F                     288 	.db #0x6f	; 111	'o'
      00014E 6D                     289 	.db #0x6d	; 109	'm'
      00014F 70                     290 	.db #0x70	; 112	'p'
      000150 69                     291 	.db #0x69	; 105	'i'
      000151 6C                     292 	.db #0x6c	; 108	'l'
      000152 65                     293 	.db #0x65	; 101	'e'
      000153 72                     294 	.db #0x72	; 114	'r'
      000154 5F                     295 	.db #0x5f	; 95
      000155 76                     296 	.db #0x76	; 118	'v'
      000156 65                     297 	.db #0x65	; 101	'e'
      000157 72                     298 	.db #0x72	; 114	'r'
      000158 73                     299 	.db #0x73	; 115	's'
      000159 69                     300 	.db #0x69	; 105	'i'
      00015A 6F                     301 	.db #0x6f	; 111	'o'
      00015B 6E                     302 	.db #0x6e	; 110	'n'
      00015C 5B                     303 	.db #0x5b	; 91
      00015D 30                     304 	.db #0x30	; 48	'0'
      00015E 30                     305 	.db #0x30	; 48	'0'
      00015F 30                     306 	.db #0x30	; 48	'0'
      000160 30                     307 	.db #0x30	; 48	'0'
      000161 30                     308 	.db #0x30	; 48	'0'
      000162 30                     309 	.db #0x30	; 48	'0'
      000163 30                     310 	.db #0x30	; 48	'0'
      000164 34                     311 	.db #0x34	; 52	'4'
      000165 2E                     312 	.db #0x2e	; 46
      000166 30                     313 	.db #0x30	; 48	'0'
      000167 30                     314 	.db #0x30	; 48	'0'
      000168 30                     315 	.db #0x30	; 48	'0'
      000169 30                     316 	.db #0x30	; 48	'0'
      00016A 30                     317 	.db #0x30	; 48	'0'
      00016B 30                     318 	.db #0x30	; 48	'0'
      00016C 30                     319 	.db #0x30	; 48	'0'
      00016D 34                     320 	.db #0x34	; 52	'4'
      00016E 2E                     321 	.db #0x2e	; 46
      00016F 30                     322 	.db #0x30	; 48	'0'
      000170 30                     323 	.db #0x30	; 48	'0'
      000171 30                     324 	.db #0x30	; 48	'0'
      000172 30                     325 	.db #0x30	; 48	'0'
      000173 30                     326 	.db #0x30	; 48	'0'
      000174 30                     327 	.db #0x30	; 48	'0'
      000175 30                     328 	.db #0x30	; 48	'0'
      000176 30                     329 	.db #0x30	; 48	'0'
      000177 5D                     330 	.db #0x5d	; 93
      000178 00                     331 	.db #0x00	; 0
                                    332 	.area CONST   (CODE)
      000179                        333 ___str_0:
      000179 49 4E 46 4F 3A 63 6F   334 	.ascii "INFO:compiler[SDCC]"
             6D 70 69 6C 65 72 5B
             53 44 43 43 5D
      00018C 00                     335 	.db 0x00
                                    336 	.area CSEG    (CODE)
                                    337 	.area CONST   (CODE)
      00018D                        338 ___str_1:
      00018D 49 4E 46 4F 3A 70 6C   339 	.ascii "INFO:platform[]"
             61 74 66 6F 72 6D 5B
             5D
      00019C 00                     340 	.db 0x00
                                    341 	.area CSEG    (CODE)
                                    342 	.area CONST   (CODE)
      00019D                        343 ___str_2:
      00019D 49 4E 46 4F 3A 61 72   344 	.ascii "INFO:arch[]"
             63 68 5B 5D
      0001A8 00                     345 	.db 0x00
                                    346 	.area CSEG    (CODE)
                                    347 	.area CONST   (CODE)
      0001A9                        348 ___str_3:
      0001A9 49 4E 46 4F 3A 73 74   349 	.ascii "INFO:standard_default[11]"
             61 6E 64 61 72 64 5F
             64 65 66 61 75 6C 74
             5B 31 31 5D
      0001C2 00                     350 	.db 0x00
                                    351 	.area CSEG    (CODE)
                                    352 	.area CONST   (CODE)
      0001C3                        353 ___str_4:
      0001C3 49 4E 46 4F 3A 65 78   354 	.ascii "INFO:extensions_default[OFF]"
             74 65 6E 73 69 6F 6E
             73 5F 64 65 66 61 75
             6C 74 5B 4F 46 46 5D
      0001DF 00                     355 	.db 0x00
                                    356 	.area CSEG    (CODE)
                                    357 	.area XINIT   (CODE)
                                    358 	.area CABS    (ABS,CODE)
