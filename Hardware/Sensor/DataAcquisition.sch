EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L Analog_ADC:MCP3425A0T-ECH U2
U 1 1 5CE1FB53
P 2650 3000
F 0 "U2" H 2300 3500 50  0000 C CNN
F 1 "MCP3425A0T-ECH" H 2300 3400 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 2650 3000 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22072b.pdf" H 2650 3000 50  0001 C CNN
	1    2650 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5CE20396
P 2850 2350
F 0 "C2" V 2598 2350 50  0000 C CNN
F 1 "100n" V 2689 2350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2888 2200 50  0001 C CNN
F 3 "~" H 2850 2350 50  0001 C CNN
	1    2850 2350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5CE209CE
P 3100 2450
F 0 "#PWR03" H 3100 2200 50  0001 C CNN
F 1 "GND" H 3105 2277 50  0000 C CNN
F 2 "" H 3100 2450 50  0001 C CNN
F 3 "" H 3100 2450 50  0001 C CNN
	1    3100 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5CE20FA6
P 2650 1900
F 0 "#PWR01" H 2650 1750 50  0001 C CNN
F 1 "+5V" H 2592 1937 50  0000 R CNN
F 2 "" H 2650 1900 50  0001 C CNN
F 3 "" H 2650 1900 50  0001 C CNN
	1    2650 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2600 2650 2350
Wire Wire Line
	2700 2350 2650 2350
Connection ~ 2650 2350
Wire Wire Line
	3000 2350 3100 2350
Wire Wire Line
	3100 2350 3100 2450
$Comp
L power:GND #PWR05
U 1 1 5CE21853
P 2650 3450
F 0 "#PWR05" H 2650 3200 50  0001 C CNN
F 1 "GND" H 2655 3277 50  0000 C CNN
F 2 "" H 2650 3450 50  0001 C CNN
F 3 "" H 2650 3450 50  0001 C CNN
	1    2650 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3450 2650 3400
$Comp
L Device:CP C1
U 1 1 5CE1E85D
P 2850 1950
F 0 "C1" V 3105 1950 50  0000 C CNN
F 1 "10u" V 3014 1950 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B" H 2888 1800 50  0001 C CNN
F 3 "~" H 2850 1950 50  0001 C CNN
	1    2850 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5CE1FD3A
P 1850 2900
F 0 "R2" V 1643 2900 50  0000 C CNN
F 1 "0R" V 1734 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1780 2900 50  0001 C CNN
F 3 "~" H 1850 2900 50  0001 C CNN
	1    1850 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5CE20592
P 1850 3100
F 0 "R3" V 1965 3100 50  0000 C CNN
F 1 "0R" V 2056 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1780 3100 50  0001 C CNN
F 3 "~" H 1850 3100 50  0001 C CNN
	1    1850 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5CE272E1
P 1400 3150
F 0 "R4" H 1330 3104 50  0000 R CNN
F 1 "27k" H 1330 3195 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1330 3150 50  0001 C CNN
F 3 "~" H 1400 3150 50  0001 C CNN
	1    1400 3150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5CE276BE
P 1400 2650
F 0 "R1" H 1330 2604 50  0000 R CNN
F 1 "0R" H 1330 2695 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1330 2650 50  0001 C CNN
F 3 "~" H 1400 2650 50  0001 C CNN
	1    1400 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 1900 2650 1950
Wire Wire Line
	2700 1950 2650 1950
Connection ~ 2650 1950
Wire Wire Line
	2650 1950 2650 2350
$Comp
L power:GND #PWR02
U 1 1 5CEC4630
P 3100 2050
F 0 "#PWR02" H 3100 1800 50  0001 C CNN
F 1 "GND" H 3105 1877 50  0000 C CNN
F 2 "" H 3100 2050 50  0001 C CNN
F 3 "" H 3100 2050 50  0001 C CNN
	1    3100 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1950 3100 1950
Wire Wire Line
	3100 1950 3100 2050
Wire Wire Line
	2150 2900 2000 2900
Wire Wire Line
	2150 3100 2000 3100
Wire Wire Line
	1700 3100 1700 3350
Wire Wire Line
	1700 3350 1400 3350
Wire Wire Line
	1400 3350 1400 3300
Wire Wire Line
	1700 2900 1400 2900
Wire Wire Line
	1400 2900 1400 3000
Wire Wire Line
	1400 2900 1400 2800
Connection ~ 1400 2900
$Comp
L power:GND #PWR04
U 1 1 5D026161
P 1400 3450
F 0 "#PWR04" H 1400 3200 50  0001 C CNN
F 1 "GND" H 1405 3277 50  0000 C CNN
F 2 "" H 1400 3450 50  0001 C CNN
F 3 "" H 1400 3450 50  0001 C CNN
	1    1400 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3450 1400 3350
Connection ~ 1400 3350
Wire Wire Line
	1400 2500 1400 2450
Wire Wire Line
	1400 2450 1250 2450
Text GLabel 1250 2450 0    50   Input ~ 0
analog_output
Wire Wire Line
	3150 2900 3300 2900
Wire Wire Line
	3150 3000 3300 3000
Text Label 3300 2900 2    50   ~ 0
SCL
Text Label 3300 3000 2    50   ~ 0
SDA
Wire Wire Line
	5300 5750 5300 5650
$Comp
L power:+5V #PWR06
U 1 1 5CE0B768
P 5300 5050
F 0 "#PWR06" H 5300 4900 50  0001 C CNN
F 1 "+5V" H 5315 5223 50  0000 C CNN
F 2 "" H 5300 5050 50  0001 C CNN
F 3 "" H 5300 5050 50  0001 C CNN
	1    5300 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5650 5300 5500
Connection ~ 5300 5650
Wire Wire Line
	5300 5500 5600 5500
Wire Wire Line
	5600 5500 5600 5250
Connection ~ 5300 5500
Text Label 5600 5250 1    50   ~ 0
VCC_PROG
Wire Wire Line
	5300 5650 6000 5650
Wire Wire Line
	6000 5700 6000 5650
$Comp
L Device:R R8
U 1 1 5D10FB73
P 4150 5950
F 0 "R8" H 4080 5904 50  0000 R CNN
F 1 "2k2" H 4080 5995 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4080 5950 50  0001 C CNN
F 3 "~" H 4150 5950 50  0001 C CNN
	1    4150 5950
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 5D11035B
P 4150 5700
F 0 "#PWR010" H 4150 5550 50  0001 C CNN
F 1 "+5V" H 4165 5873 50  0000 C CNN
F 2 "" H 4150 5700 50  0001 C CNN
F 3 "" H 4150 5700 50  0001 C CNN
	1    4150 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5D110867
P 3950 5700
F 0 "#PWR09" H 3950 5550 50  0001 C CNN
F 1 "+5V" H 3965 5873 50  0000 C CNN
F 2 "" H 3950 5700 50  0001 C CNN
F 3 "" H 3950 5700 50  0001 C CNN
	1    3950 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5800 3950 5700
Wire Wire Line
	4150 5800 4150 5700
$Comp
L Device:R R7
U 1 1 5D11026F
P 3950 5950
F 0 "R7" H 4019 5904 50  0000 L CNN
F 1 "2k2" H 4019 5995 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3880 5950 50  0001 C CNN
F 3 "~" H 3950 5950 50  0001 C CNN
	1    3950 5950
	-1   0    0    1   
$EndComp
Text Label 3850 6450 2    50   ~ 0
SCL
Text Label 3850 6550 2    50   ~ 0
SDA
Wire Wire Line
	3750 6450 3950 6450
Wire Wire Line
	3750 6550 4150 6550
Wire Wire Line
	3950 6100 3950 6450
Connection ~ 3950 6450
Wire Wire Line
	3950 6450 4700 6450
Wire Wire Line
	4150 6100 4150 6550
Connection ~ 4150 6550
Wire Wire Line
	4150 6550 4700 6550
Wire Wire Line
	4700 6050 4550 6050
Wire Wire Line
	3800 6250 4700 6250
$Comp
L Device:LED D1
U 1 1 5D443DF6
P 4600 5200
F 0 "D1" V 4639 5082 50  0000 R CNN
F 1 "red" V 4548 5082 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 4600 5200 50  0001 C CNN
F 3 "~" H 4600 5200 50  0001 C CNN
	1    4600 5200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5D46689F
P 4600 5400
F 0 "#PWR07" H 4600 5150 50  0001 C CNN
F 1 "GND" V 4605 5272 50  0000 R CNN
F 2 "" H 4600 5400 50  0001 C CNN
F 3 "" H 4600 5400 50  0001 C CNN
	1    4600 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 6150 4400 6150
Wire Wire Line
	4400 4650 4600 4650
Wire Wire Line
	4600 5050 4600 5000
Wire Wire Line
	4600 5400 4600 5350
$Comp
L power:GND #PWR08
U 1 1 5D4A1A41
P 2600 5050
F 0 "#PWR08" H 2600 4800 50  0001 C CNN
F 1 "GND" V 2605 4922 50  0000 R CNN
F 2 "" H 2600 5050 50  0001 C CNN
F 3 "" H 2600 5050 50  0001 C CNN
	1    2600 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4700 2600 4650
Wire Wire Line
	2600 5050 2600 5000
$Comp
L Device:LED D2
U 1 1 5D4A0303
P 2600 4850
F 0 "D2" V 2639 4732 50  0000 R CNN
F 1 "red" V 2548 4732 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 2600 4850 50  0001 C CNN
F 3 "~" H 2600 4850 50  0001 C CNN
	1    2600 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:Thermistor TH1
U 1 1 60E68270
P 3150 6900
F 0 "TH1" H 3255 6946 50  0000 L CNN
F 1 "Thermistor" H 3255 6855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3150 6900 50  0001 C CNN
F 3 "~" H 3150 6900 50  0001 C CNN
	1    3150 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 60E69140
P 3150 7150
F 0 "#PWR014" H 3150 6900 50  0001 C CNN
F 1 "GND" V 3155 7022 50  0000 R CNN
F 2 "" H 3150 7150 50  0001 C CNN
F 3 "" H 3150 7150 50  0001 C CNN
	1    3150 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 7100 3150 7150
Wire Wire Line
	3150 6450 3150 6700
Wire Wire Line
	5300 5050 5300 5500
NoConn ~ 4550 6050
Text Notes 900  7550 0    98   ~ 20
Power supply=5V DC
$Comp
L IonizationChamber:Nucleo32 U1
U 1 1 60E465B5
P 6800 2100
F 0 "U1" H 6775 2275 50  0000 C CNN
F 1 "Nucleo32" H 6775 2184 50  0000 C CNN
F 2 "IonizationChamber:Nucleo32" H 6800 2250 50  0001 C CNN
F 3 "https://www.st.com/resource/en/user_manual/dm00231744-stm32-nucleo32-boards-mb1180-stmicroelectronics.pdf" H 6800 2250 50  0001 C CNN
	1    6800 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x15_Female J2
U 1 1 60E4F636
P 8050 2850
F 0 "J2" H 8078 2876 50  0000 L CNN
F 1 "Conn_01x15_Female" H 8078 2785 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x15_P2.54mm_Vertical" H 8050 2850 50  0001 C CNN
F 3 "~" H 8050 2850 50  0001 C CNN
	1    8050 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x15_Female J1
U 1 1 60E54FE8
P 5600 2850
F 0 "J1" H 5492 3735 50  0000 C CNN
F 1 "Conn_01x15_Female" H 5492 3644 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x15_P2.54mm_Vertical" H 5600 2850 50  0001 C CNN
F 3 "~" H 5600 2850 50  0001 C CNN
	1    5600 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5800 2150 6250 2150
Wire Wire Line
	5800 2250 6250 2250
Wire Wire Line
	5800 2350 6250 2350
Wire Wire Line
	5800 2450 6250 2450
Wire Wire Line
	5800 2550 6250 2550
Wire Wire Line
	5800 2650 6250 2650
Wire Wire Line
	5800 2750 6250 2750
Wire Wire Line
	5800 2850 6250 2850
Wire Wire Line
	5800 2950 6250 2950
Wire Wire Line
	5800 3050 6250 3050
Wire Wire Line
	5800 3150 6250 3150
Wire Wire Line
	5800 3250 6250 3250
Wire Wire Line
	5800 3350 6250 3350
Wire Wire Line
	5800 3450 6250 3450
Wire Wire Line
	5800 3550 6250 3550
Wire Wire Line
	7300 2150 7850 2150
Wire Wire Line
	7300 2250 7850 2250
Wire Wire Line
	7300 2350 7850 2350
Wire Wire Line
	7300 2450 7850 2450
Wire Wire Line
	7300 2550 7850 2550
Wire Wire Line
	7300 2650 7850 2650
Wire Wire Line
	7300 2750 7850 2750
Wire Wire Line
	7300 2850 7850 2850
Wire Wire Line
	7300 2950 7850 2950
Wire Wire Line
	7300 3050 7850 3050
Wire Wire Line
	7300 3150 7850 3150
Wire Wire Line
	7300 3250 7850 3250
Wire Wire Line
	7300 3350 7850 3350
Wire Wire Line
	7300 3450 7850 3450
Wire Wire Line
	7300 3550 7850 3550
$Comp
L power:GND #PWR017
U 1 1 60F70808
P 2900 5050
F 0 "#PWR017" H 2900 4800 50  0001 C CNN
F 1 "GND" V 2905 4922 50  0000 R CNN
F 2 "" H 2900 5050 50  0001 C CNN
F 3 "" H 2900 5050 50  0001 C CNN
	1    2900 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4700 2900 4650
Wire Wire Line
	2900 5050 2900 5000
$Comp
L Device:LED D3
U 1 1 60F70810
P 2900 4850
F 0 "D3" V 2939 4732 50  0000 R CNN
F 1 "red" V 2848 4732 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 2900 4850 50  0001 C CNN
F 3 "~" H 2900 4850 50  0001 C CNN
	1    2900 4850
	0    -1   -1   0   
$EndComp
Text Notes 4900 4250 0    157  ~ 31
add piezo
$EndSCHEMATC
