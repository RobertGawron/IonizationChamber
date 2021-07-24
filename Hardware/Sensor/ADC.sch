EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Analog_ADC:MCP3425A0T-ECH U?
U 1 1 6171620C
P 4550 4200
AR Path="/5CF2BB44/6171620C" Ref="U?"  Part="1" 
AR Path="/616FF04D/6171620C" Ref="U2"  Part="1" 
F 0 "U2" H 4200 4700 50  0000 C CNN
F 1 "MCP3425A0T-ECH" H 4200 4600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 4550 4200 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22072b.pdf" H 4550 4200 50  0001 C CNN
	1    4550 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61716212
P 4750 3550
AR Path="/5CF2BB44/61716212" Ref="C?"  Part="1" 
AR Path="/616FF04D/61716212" Ref="C2"  Part="1" 
F 0 "C2" V 4498 3550 50  0000 C CNN
F 1 "100n" V 4589 3550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4788 3400 50  0001 C CNN
F 3 "~" H 4750 3550 50  0001 C CNN
F 4 "C282732" V 4750 3550 50  0001 C CNN "LCSC"
	1    4750 3550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61716218
P 5000 3650
AR Path="/5CF2BB44/61716218" Ref="#PWR?"  Part="1" 
AR Path="/616FF04D/61716218" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 5000 3400 50  0001 C CNN
F 1 "GND" H 5005 3477 50  0000 C CNN
F 2 "" H 5000 3650 50  0001 C CNN
F 3 "" H 5000 3650 50  0001 C CNN
	1    5000 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6171621E
P 4550 3100
AR Path="/5CF2BB44/6171621E" Ref="#PWR?"  Part="1" 
AR Path="/616FF04D/6171621E" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 4550 2950 50  0001 C CNN
F 1 "+5V" H 4492 3137 50  0000 R CNN
F 2 "" H 4550 3100 50  0001 C CNN
F 3 "" H 4550 3100 50  0001 C CNN
	1    4550 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3800 4550 3550
Wire Wire Line
	4600 3550 4550 3550
Connection ~ 4550 3550
Wire Wire Line
	4900 3550 5000 3550
Wire Wire Line
	5000 3550 5000 3650
$Comp
L power:GND #PWR?
U 1 1 61716229
P 4550 4650
AR Path="/5CF2BB44/61716229" Ref="#PWR?"  Part="1" 
AR Path="/616FF04D/61716229" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 4550 4400 50  0001 C CNN
F 1 "GND" H 4555 4477 50  0000 C CNN
F 2 "" H 4550 4650 50  0001 C CNN
F 3 "" H 4550 4650 50  0001 C CNN
	1    4550 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4650 4550 4600
$Comp
L Device:CP C?
U 1 1 61716230
P 4750 3150
AR Path="/5CF2BB44/61716230" Ref="C?"  Part="1" 
AR Path="/616FF04D/61716230" Ref="C1"  Part="1" 
F 0 "C1" V 5005 3150 50  0000 C CNN
F 1 "10u" V 4914 3150 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B" H 4788 3000 50  0001 C CNN
F 3 "~" H 4750 3150 50  0001 C CNN
	1    4750 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 3100 4550 3150
Wire Wire Line
	4600 3150 4550 3150
Connection ~ 4550 3150
Wire Wire Line
	4550 3150 4550 3550
$Comp
L power:GND #PWR?
U 1 1 61716252
P 5000 3250
AR Path="/5CF2BB44/61716252" Ref="#PWR?"  Part="1" 
AR Path="/616FF04D/61716252" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 5000 3000 50  0001 C CNN
F 1 "GND" H 5005 3077 50  0000 C CNN
F 2 "" H 5000 3250 50  0001 C CNN
F 3 "" H 5000 3250 50  0001 C CNN
	1    5000 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3150 5000 3150
Wire Wire Line
	5000 3150 5000 3250
Wire Wire Line
	5050 4100 5200 4100
Wire Wire Line
	5050 4200 5200 4200
Text GLabel 5200 4100 2    50   Input ~ 0
SCL
Text GLabel 5200 4200 2    50   BiDi ~ 0
SDA
Wire Wire Line
	4000 4100 4050 4100
Wire Wire Line
	4000 4300 4050 4300
Wire Wire Line
	3700 4100 3800 4100
Wire Wire Line
	3800 4100 4000 4300
Wire Wire Line
	4000 4100 3800 4300
Wire Wire Line
	3700 4300 3800 4300
$Comp
L Device:R R?
U 1 1 61716236
P 3550 4100
AR Path="/5CF2BB44/61716236" Ref="R?"  Part="1" 
AR Path="/616FF04D/61716236" Ref="R2"  Part="1" 
F 0 "R2" V 3343 4100 50  0000 C CNN
F 1 "0R" V 3434 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3480 4100 50  0001 C CNN
F 3 "~" H 3550 4100 50  0001 C CNN
F 4 "C17477" V 3550 4100 50  0001 C CNN "LCSC"
	1    3550 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6171623C
P 3550 4300
AR Path="/5CF2BB44/6171623C" Ref="R?"  Part="1" 
AR Path="/616FF04D/6171623C" Ref="R3"  Part="1" 
F 0 "R3" V 3665 4300 50  0000 C CNN
F 1 "0R" V 3756 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3480 4300 50  0001 C CNN
F 3 "~" H 3550 4300 50  0001 C CNN
F 4 "C17477" V 3550 4300 50  0001 C CNN "LCSC"
	1    3550 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61716242
P 3100 4350
AR Path="/5CF2BB44/61716242" Ref="R?"  Part="1" 
AR Path="/616FF04D/61716242" Ref="R4"  Part="1" 
F 0 "R4" H 3030 4304 50  0000 R CNN
F 1 "27k" H 3030 4395 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3030 4350 50  0001 C CNN
F 3 "~" H 3100 4350 50  0001 C CNN
F 4 "C17593" H 3100 4350 50  0001 C CNN "LCSC"
	1    3100 4350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 61716248
P 3100 3850
AR Path="/5CF2BB44/61716248" Ref="R?"  Part="1" 
AR Path="/616FF04D/61716248" Ref="R1"  Part="1" 
F 0 "R1" H 3030 3804 50  0000 R CNN
F 1 "0R" H 3030 3895 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3030 3850 50  0001 C CNN
F 3 "~" H 3100 3850 50  0001 C CNN
F 4 "C17477" H 3100 3850 50  0001 C CNN "LCSC"
	1    3100 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 4300 3400 4550
Wire Wire Line
	3400 4550 3100 4550
Connection ~ 3100 4550
Wire Wire Line
	3100 4550 3100 4500
Wire Wire Line
	3100 4650 3100 4550
Wire Wire Line
	3400 4100 3100 4100
Connection ~ 3100 4100
Wire Wire Line
	3100 4100 3100 4200
Wire Wire Line
	3100 4100 3100 4000
$Comp
L power:GND #PWR?
U 1 1 61716263
P 3100 4650
AR Path="/5CF2BB44/61716263" Ref="#PWR?"  Part="1" 
AR Path="/616FF04D/61716263" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 3100 4400 50  0001 C CNN
F 1 "GND" H 3105 4477 50  0000 C CNN
F 2 "" H 3100 4650 50  0001 C CNN
F 3 "" H 3100 4650 50  0001 C CNN
	1    3100 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3700 3100 3650
Wire Wire Line
	3100 3650 2950 3650
Text GLabel 2950 3650 0    50   Input ~ 0
analog_output
$EndSCHEMATC
