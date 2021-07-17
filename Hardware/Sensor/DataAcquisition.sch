EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
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
$Comp
L Device:R R8
U 1 1 5D10FB73
P 5050 2550
F 0 "R8" H 4980 2504 50  0000 R CNN
F 1 "4k7" H 4980 2595 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4980 2550 50  0001 C CNN
F 3 "~" H 5050 2550 50  0001 C CNN
	1    5050 2550
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 5D11035B
P 5050 2350
F 0 "#PWR010" H 5050 2200 50  0001 C CNN
F 1 "+5V" H 5065 2523 50  0000 C CNN
F 2 "" H 5050 2350 50  0001 C CNN
F 3 "" H 5050 2350 50  0001 C CNN
	1    5050 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5D110867
P 4800 2350
F 0 "#PWR09" H 4800 2200 50  0001 C CNN
F 1 "+5V" H 4815 2523 50  0000 C CNN
F 2 "" H 4800 2350 50  0001 C CNN
F 3 "" H 4800 2350 50  0001 C CNN
	1    4800 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2400 4800 2350
Wire Wire Line
	5050 2400 5050 2350
$Comp
L Device:R R7
U 1 1 5D11026F
P 4800 2550
F 0 "R7" H 4869 2504 50  0000 L CNN
F 1 "4k7" H 4869 2595 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4730 2550 50  0001 C CNN
F 3 "~" H 4800 2550 50  0001 C CNN
	1    4800 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 2900 4800 2900
Wire Wire Line
	4600 2800 5050 2800
Wire Wire Line
	4800 2700 4800 2900
Wire Wire Line
	5050 2700 5050 2800
Connection ~ 5050 2800
$Comp
L Device:Thermistor TH1
U 1 1 60E68270
P 3000 7250
F 0 "TH1" H 3105 7296 50  0000 L CNN
F 1 "Thermistor" H 3105 7205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3000 7250 50  0001 C CNN
F 3 "~" H 3000 7250 50  0001 C CNN
	1    3000 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1300 9700 1300
Wire Wire Line
	9150 1400 9700 1400
Wire Wire Line
	9150 1500 9700 1500
Wire Wire Line
	9150 1600 9700 1600
Wire Wire Line
	9150 1700 9700 1700
Text GLabel 6950 4450 0    50   Output ~ 0
CHAMBER_VOLTAGE_MEASSURE_ENA
Text GLabel 5200 1050 0    50   Input ~ 0
CHAMBER_VOLTAGE_MEASSURE_VALUE
Text GLabel 6950 4350 0    50   Input ~ 0
BATTERY_MEASSURE_ENA
Text GLabel 5200 950  0    50   Input ~ 0
BATTERY_MEASSURE_VALUE
Wire Wire Line
	6350 1400 5800 1400
Wire Wire Line
	6350 1500 5800 1500
Wire Wire Line
	6350 1600 5800 1600
Wire Wire Line
	6350 1700 5800 1700
Wire Wire Line
	6350 1800 5800 1800
Wire Wire Line
	6350 2400 5800 2400
Wire Wire Line
	6350 2500 5800 2500
Wire Wire Line
	6350 2600 5800 2600
$Comp
L IonizationChamber:STM8S105K4B6 U5
U 1 1 60F33676
P 7700 1250
F 0 "U5" H 7750 1425 50  0000 C CNN
F 1 "STM8S105K4B6" H 7750 1334 50  0000 C CNN
F 2 "IonizationChamber:DIP-32_400_ELL" H 7700 1450 50  0001 C CNN
F 3 "https://www.farnell.com/datasheets/1973125.pdf" H 7700 1450 50  0001 C CNN
	1    7700 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 2700 9700 2700
Wire Wire Line
	9150 2600 9700 2600
Wire Wire Line
	9150 2500 9700 2500
Wire Wire Line
	9150 2400 9700 2400
Wire Wire Line
	9150 2300 9700 2300
Wire Wire Line
	9150 2200 9700 2200
Wire Wire Line
	9150 2100 9700 2100
Wire Wire Line
	9150 2000 9700 2000
Wire Wire Line
	9150 1900 9700 1900
Wire Wire Line
	9150 1800 9700 1800
Text Notes 3350 5150 0    71   ~ 14
ADD RC FOR ADC
Wire Wire Line
	10750 2250 10700 2250
Text Label 5900 1300 0    50   ~ 0
STM8_1_1
Text Label 5900 1400 0    50   ~ 0
STM8_1_2
Text Label 5900 1500 0    50   ~ 0
STM8_1_3
Text Label 5900 1600 0    50   ~ 0
STM8_1_4
Text Label 5900 1700 0    50   ~ 0
STM8_1_5
Text Label 5900 1800 0    50   ~ 0
STM8_1_6
Text Label 5900 1900 0    50   ~ 0
STM8_1_7
Text Label 5900 2000 0    50   ~ 0
STM8_1_8
Text Label 5900 2100 0    50   ~ 0
STM8_1_9
Wire Wire Line
	11000 2200 11000 3650
Text Label 5900 2200 0    50   ~ 0
STM8_1_10
Text Label 5900 2300 0    50   ~ 0
STM8_1_11
Text Label 5900 2400 0    50   ~ 0
STM8_1_12
Text Label 5900 2500 0    50   ~ 0
STM8_1_13
Text Label 5900 2600 0    50   ~ 0
STM8_1_14
Text Label 5900 2700 0    50   ~ 0
STM8_1_15
Text Label 5900 2800 0    50   ~ 0
STM8_1_16
Text Label 9250 2800 0    50   ~ 0
STM8_1_17
Text Label 9250 2700 0    50   ~ 0
STM8_1_18
Text Label 9250 2600 0    50   ~ 0
STM8_1_19
Text Label 9250 2500 0    50   ~ 0
STM8_1_20
Text Label 9250 2400 0    50   ~ 0
STM8_1_21
Text Label 9250 2300 0    50   ~ 0
STM8_1_22
Text Label 9250 2200 0    50   ~ 0
STM8_1_23
Text Label 9250 2100 0    50   ~ 0
STM8_1_24
Text Label 9250 2000 0    50   ~ 0
STM8_1_25
Text Label 9250 1900 0    50   ~ 0
STM8_1_26
Text Label 9250 1800 0    50   ~ 0
STM8_1_27
Text Label 9250 1700 0    50   ~ 0
STM8_1_28
Text Label 9250 1600 0    50   ~ 0
STM8_1_29
Text Label 9250 1500 0    50   ~ 0
STM8_1_30
Text Label 9250 1400 0    50   ~ 0
STM8_1_31
Text Label 9250 1300 0    50   ~ 0
STM8_1_32
Wire Wire Line
	9550 4900 9650 4900
Wire Wire Line
	9550 5000 9650 5000
Wire Wire Line
	9550 5100 9650 5100
Wire Wire Line
	9550 5200 9650 5200
Wire Wire Line
	9550 5300 9650 5300
Wire Wire Line
	9650 6400 9550 6400
$Comp
L Connector:Conn_01x16_Female J2
U 1 1 60FCC735
P 9850 5600
F 0 "J2" H 9878 5576 50  0000 L CNN
F 1 "Conn_01x16_Female" H 9878 5485 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 9850 5600 50  0001 C CNN
F 3 "~" H 9850 5600 50  0001 C CNN
	1    9850 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 6300 9650 6300
Wire Wire Line
	9550 6200 9650 6200
Wire Wire Line
	9550 6100 9650 6100
Wire Wire Line
	9550 6000 9650 6000
Wire Wire Line
	9550 5900 9650 5900
Wire Wire Line
	9550 5800 9650 5800
Wire Wire Line
	9550 5700 9650 5700
Wire Wire Line
	9550 5600 9650 5600
Wire Wire Line
	9550 5500 9650 5500
Wire Wire Line
	9550 5400 9650 5400
Text Label 9550 6400 2    50   ~ 0
STM8_1_17
Text Label 9550 6300 2    50   ~ 0
STM8_1_18
Text Label 9550 6200 2    50   ~ 0
STM8_1_19
Text Label 9550 6100 2    50   ~ 0
STM8_1_20
Text Label 9550 6000 2    50   ~ 0
STM8_1_21
Text Label 9550 5900 2    50   ~ 0
STM8_1_22
Text Label 9550 5800 2    50   ~ 0
STM8_1_23
Text Label 9550 5700 2    50   ~ 0
STM8_1_24
Text Label 9550 5600 2    50   ~ 0
STM8_1_25
Text Label 9550 5500 2    50   ~ 0
STM8_1_26
Text Label 9550 5400 2    50   ~ 0
STM8_1_27
Text Label 9550 5300 2    50   ~ 0
STM8_1_28
Text Label 9550 5200 2    50   ~ 0
STM8_1_29
Text Label 9550 5100 2    50   ~ 0
STM8_1_30
Text Label 9550 5000 2    50   ~ 0
STM8_1_31
Text Label 9550 4900 2    50   ~ 0
STM8_1_32
Wire Wire Line
	10300 4200 10300 4250
Wire Wire Line
	10150 3050 10150 4150
$Comp
L power:GND #PWR016
U 1 1 60FB2A20
P 10650 4250
F 0 "#PWR016" H 10650 4000 50  0001 C CNN
F 1 "GND" H 10655 4077 50  0000 C CNN
F 2 "" H 10650 4250 50  0001 C CNN
F 3 "" H 10650 4250 50  0001 C CNN
	1    10650 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 60FAFAE0
P 10300 4250
F 0 "#PWR015" H 10300 4000 50  0001 C CNN
F 1 "GND" H 10305 4077 50  0000 C CNN
F 2 "" H 10300 4250 50  0001 C CNN
F 3 "" H 10300 4250 50  0001 C CNN
	1    10300 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 60FACBA7
P 10150 4150
F 0 "#PWR013" H 10150 3900 50  0001 C CNN
F 1 "GND" H 10155 3977 50  0000 C CNN
F 2 "" H 10150 4150 50  0001 C CNN
F 3 "" H 10150 4150 50  0001 C CNN
	1    10150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 3900 10300 3150
$Comp
L Device:C C15
U 1 1 60F9AF3C
P 10300 4050
F 0 "C15" H 10415 4096 50  0000 L CNN
F 1 "470n" H 10415 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10338 3900 50  0001 C CNN
F 3 "~" H 10300 4050 50  0001 C CNN
	1    10300 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 3650 10650 4250
Wire Wire Line
	5800 2100 6350 2100
Wire Wire Line
	5800 2200 6350 2200
Wire Wire Line
	5800 2300 6350 2300
$Comp
L Connector:Conn_01x16_Female J1
U 1 1 61011172
P 7900 5600
F 0 "J1" H 7928 5576 50  0000 L CNN
F 1 "Conn_01x16_Female" H 7928 5485 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 7900 5600 50  0001 C CNN
F 3 "~" H 7900 5600 50  0001 C CNN
	1    7900 5600
	-1   0    0    -1  
$EndComp
Text Label 8350 5000 0    50   ~ 0
STM8_1_2
Text Label 8350 5100 0    50   ~ 0
STM8_1_3
Text Label 8350 5200 0    50   ~ 0
STM8_1_4
Text Label 8350 5300 0    50   ~ 0
STM8_1_5
Text Label 8350 5400 0    50   ~ 0
STM8_1_6
Text Label 8350 5500 0    50   ~ 0
STM8_1_7
Text Label 8350 5600 0    50   ~ 0
STM8_1_8
Text Label 8350 5700 0    50   ~ 0
STM8_1_9
Text Label 8350 5800 0    50   ~ 0
STM8_1_10
Text Label 8350 5900 0    50   ~ 0
STM8_1_11
Text Label 8350 6000 0    50   ~ 0
STM8_1_12
Text Label 8350 6100 0    50   ~ 0
STM8_1_13
Text Label 8350 6300 0    50   ~ 0
STM8_1_15
Text Label 8350 6400 0    50   ~ 0
STM8_1_16
Wire Wire Line
	8100 5700 8350 5700
Wire Wire Line
	8100 5800 8350 5800
Wire Wire Line
	8100 5900 8350 5900
Wire Wire Line
	8100 4900 8350 4900
Wire Wire Line
	8100 5000 8350 5000
Wire Wire Line
	8100 5100 8350 5100
Wire Wire Line
	8100 5200 8350 5200
Wire Wire Line
	8100 5300 8350 5300
Wire Wire Line
	8100 5400 8350 5400
Wire Wire Line
	8100 5500 8350 5500
Wire Wire Line
	8100 5600 8350 5600
Wire Wire Line
	8100 6000 8350 6000
Wire Wire Line
	8100 6100 8350 6100
Wire Wire Line
	8100 6200 8350 6200
Wire Wire Line
	8100 6400 8350 6400
Text Label 8350 4900 0    50   ~ 0
STM8_1_1
Text Label 8350 6200 0    50   ~ 0
STM8_1_14
Wire Wire Line
	5050 2800 6350 2800
Wire Wire Line
	4800 2900 9800 2900
Wire Wire Line
	9800 2900 9800 2800
Wire Wire Line
	9150 2800 9800 2800
Connection ~ 4800 2900
$Comp
L Device:Crystal Y1
U 1 1 610F50E3
P 4750 1750
F 0 "Y1" V 4704 1881 50  0000 L CNN
F 1 "Crystal" V 4795 1881 50  0000 L CNN
F 2 "Crystal:Crystal_HC18-U_Horizontal_1EP_style1" H 4750 1750 50  0001 C CNN
F 3 "~" H 4750 1750 50  0001 C CNN
	1    4750 1750
	0    1    1    0   
$EndComp
$Comp
L Device:C C16
U 1 1 610F5D58
P 4500 1500
F 0 "C16" V 4248 1500 50  0000 C CNN
F 1 "22p" V 4339 1500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4538 1350 50  0001 C CNN
F 3 "~" H 4500 1500 50  0001 C CNN
	1    4500 1500
	0    1    1    0   
$EndComp
$Comp
L Device:C C17
U 1 1 610FB1A7
P 4500 2000
F 0 "C17" V 4248 2000 50  0000 C CNN
F 1 "22p" V 4339 2000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4538 1850 50  0001 C CNN
F 3 "~" H 4500 2000 50  0001 C CNN
	1    4500 2000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR033
U 1 1 611119B7
P 4250 2050
F 0 "#PWR033" H 4250 1800 50  0001 C CNN
F 1 "GND" H 4255 1877 50  0000 C CNN
F 2 "" H 4250 2050 50  0001 C CNN
F 3 "" H 4250 2050 50  0001 C CNN
	1    4250 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 61115D60
P 4200 1550
F 0 "#PWR06" H 4200 1300 50  0001 C CNN
F 1 "GND" H 4205 1377 50  0000 C CNN
F 2 "" H 4200 1550 50  0001 C CNN
F 3 "" H 4200 1550 50  0001 C CNN
	1    4200 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1500 4200 1500
Wire Wire Line
	4200 1500 4200 1550
Wire Wire Line
	4350 2000 4250 2000
Wire Wire Line
	4250 2000 4250 2050
Wire Wire Line
	4650 1500 4750 1500
Wire Wire Line
	4750 1500 4750 1600
Wire Wire Line
	4650 2000 4750 2000
Wire Wire Line
	4750 2000 4750 1900
Wire Wire Line
	4750 1500 5250 1500
Wire Wire Line
	5250 1500 5250 1900
Wire Wire Line
	5250 1900 6350 1900
Connection ~ 4750 1500
Wire Wire Line
	4750 2000 6350 2000
Connection ~ 4750 2000
Wire Wire Line
	5350 1300 5350 1150
Wire Wire Line
	5350 950  5200 950 
Wire Wire Line
	5350 1300 6350 1300
Wire Wire Line
	5200 1050 5350 1050
Connection ~ 5350 1050
Wire Wire Line
	5350 1050 5350 950 
$Comp
L Device:R R19
U 1 1 611D6E9A
P 2600 6150
AR Path="/5CF2BB44/611D6E9A" Ref="R19"  Part="1" 
AR Path="/60EF78C6/611D6E9A" Ref="R?"  Part="1" 
F 0 "R19" H 2669 6104 50  0000 L CNN
F 1 "TBD" H 2669 6195 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2530 6150 50  0001 C CNN
F 3 "~" H 2600 6150 50  0001 C CNN
	1    2600 6150
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NMOS_GDS Q7
U 1 1 611D6EA0
P 2500 7100
AR Path="/5CF2BB44/611D6EA0" Ref="Q7"  Part="1" 
AR Path="/60EF78C6/611D6EA0" Ref="Q?"  Part="1" 
F 0 "Q7" H 2300 6900 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 2050 6800 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2700 7200 50  0001 C CNN
F 3 "~" H 2500 7100 50  0001 C CNN
	1    2500 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PMOS_GDS Q6
U 1 1 611D6EA6
P 2900 6350
AR Path="/5CF2BB44/611D6EA6" Ref="Q6"  Part="1" 
AR Path="/60EF78C6/611D6EA6" Ref="Q?"  Part="1" 
F 0 "Q6" H 3105 6396 50  0000 L CNN
F 1 "Q_PMOS_GDS" H 3105 6305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3100 6450 50  0001 C CNN
F 3 "~" H 2900 6350 50  0001 C CNN
	1    2900 6350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR035
U 1 1 611D6EAC
P 2600 7500
AR Path="/5CF2BB44/611D6EAC" Ref="#PWR035"  Part="1" 
AR Path="/60EF78C6/611D6EAC" Ref="#PWR?"  Part="1" 
F 0 "#PWR035" H 2600 7250 50  0001 C CNN
F 1 "GND" H 2605 7327 50  0000 C CNN
F 2 "" H 2600 7500 50  0001 C CNN
F 3 "" H 2600 7500 50  0001 C CNN
	1    2600 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 611D6EB2
P 3000 6750
AR Path="/5CF2BB44/611D6EB2" Ref="R20"  Part="1" 
AR Path="/60EF78C6/611D6EB2" Ref="R?"  Part="1" 
F 0 "R20" H 2930 6704 50  0000 R CNN
F 1 "TBD" H 2930 6795 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2930 6750 50  0001 C CNN
F 3 "~" H 3000 6750 50  0001 C CNN
	1    3000 6750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR036
U 1 1 611D6EB8
P 3000 7500
AR Path="/5CF2BB44/611D6EB8" Ref="#PWR036"  Part="1" 
AR Path="/60EF78C6/611D6EB8" Ref="#PWR?"  Part="1" 
F 0 "#PWR036" H 3000 7250 50  0001 C CNN
F 1 "GND" H 3005 7327 50  0000 C CNN
F 2 "" H 3000 7500 50  0001 C CNN
F 3 "" H 3000 7500 50  0001 C CNN
	1    3000 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6900 2600 6350
Wire Wire Line
	2700 6350 2600 6350
Connection ~ 2600 6350
Wire Wire Line
	2600 6350 2600 6300
Wire Wire Line
	2600 6000 2600 5950
Wire Wire Line
	2600 5950 3000 5950
Wire Wire Line
	3000 5950 3000 6150
Wire Wire Line
	3000 6550 3000 6600
Wire Wire Line
	3000 6900 3000 7000
Connection ~ 3000 7000
Wire Wire Line
	3000 7000 3000 7050
Wire Wire Line
	3000 7450 3000 7500
Wire Wire Line
	2600 7300 2600 7500
Wire Wire Line
	2300 7100 2200 7100
Wire Wire Line
	3000 5950 3000 5850
Connection ~ 3000 5950
Text Label 2100 7100 2    50   ~ 0
THERMISTOR_VOLTAGE_MEASSURE_ENA
Text Label 3500 7000 0    50   ~ 0
THERMISTOR_VOLTAGE_MEASSURE_VALUE
Text Label 6950 4300 2    50   ~ 0
THERMISTOR_VOLTAGE_MEASSURE_ENA
Text Label 5200 850  2    50   ~ 0
THERMISTOR_VOLTAGE_MEASSURE_VALUE
Wire Wire Line
	5350 950  5350 850 
Wire Wire Line
	5350 850  5200 850 
Connection ~ 5350 950 
Text GLabel 6900 4650 0    50   Output ~ 0
R_PHOTO_VOLTAGE_MEASSURE_ENA
Text GLabel 5250 1150 0    50   Input ~ 0
R_PHOTO_VOLTAGE_MEASSURE_VALUE
Wire Wire Line
	5250 1150 5350 1150
Connection ~ 5350 1150
Wire Wire Line
	5350 1150 5350 1050
$Comp
L power:+5V #PWR07
U 1 1 612CF68E
P 3000 5850
AR Path="/5CF2BB44/612CF68E" Ref="#PWR07"  Part="1" 
AR Path="/612742A4/612CF68E" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 3000 5700 50  0001 C CNN
F 1 "+5V" H 2942 5887 50  0000 R CNN
F 2 "" H 3000 5850 50  0001 C CNN
F 3 "" H 3000 5850 50  0001 C CNN
	1    3000 5850
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 612EDE45
P 5350 800
F 0 "TP1" H 5408 918 50  0000 L CNN
F 1 "TestPoint" H 5408 827 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 5550 800 50  0001 C CNN
F 3 "~" H 5550 800 50  0001 C CNN
	1    5350 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 800  5350 850 
$Comp
L Connector:TestPoint TP2
U 1 1 61307867
P 2200 7000
F 0 "TP2" H 2150 7300 50  0000 L CNN
F 1 "TestPoint" H 2050 7200 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 2400 7000 50  0001 C CNN
F 3 "~" H 2400 7000 50  0001 C CNN
	1    2200 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 7000 2200 7100
Connection ~ 2200 7100
Wire Wire Line
	2200 7100 2100 7100
Text GLabel 3300 2900 2    50   Input ~ 0
SCL
Text GLabel 3300 3000 2    50   Input ~ 0
SDA
Text GLabel 4600 2900 0    50   Input ~ 0
SCL
Text GLabel 4600 2800 0    50   Input ~ 0
SDA
Wire Wire Line
	8100 6300 8350 6300
Wire Wire Line
	5800 2700 6350 2700
Connection ~ 5350 850 
Wire Wire Line
	3000 7000 3500 7000
$Comp
L Connector_Generic:Conn_01x04 J7
U 1 1 6146757C
P 1400 5200
F 0 "J7" H 1480 5192 50  0000 L CNN
F 1 "UART" H 1480 5101 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Horizontal" H 1400 5200 50  0001 C CNN
F 3 "~" H 1400 5200 50  0001 C CNN
	1    1400 5200
	-1   0    0    1   
$EndComp
Text GLabel 6200 5150 0    50   Output ~ 0
BUZZER
Text GLabel 5900 5250 2    50   Input ~ 0
KEY_UP
Text GLabel 5900 5400 2    50   Input ~ 0
KEY_DOWN
Text GLabel 6000 5500 2    50   Input ~ 0
KEY_LEFT
Text GLabel 5950 5700 2    50   Input ~ 0
KEY_RIGHT
$Comp
L Connector:TestPoint TP4
U 1 1 614C7580
P 7350 4150
F 0 "TP4" H 7300 4450 50  0000 L CNN
F 1 "TestPoint" H 7200 4350 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 7550 4150 50  0001 C CNN
F 3 "~" H 7550 4150 50  0001 C CNN
	1    7350 4150
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP9
U 1 1 614D8DA2
P 7750 4150
F 0 "TP9" H 7700 4450 50  0000 L CNN
F 1 "TestPoint" H 7600 4350 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 7950 4150 50  0001 C CNN
F 3 "~" H 7950 4150 50  0001 C CNN
	1    7750 4150
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP11
U 1 1 614E33F7
P 8150 4150
F 0 "TP11" H 8100 4450 50  0000 L CNN
F 1 "TestPoint" H 8000 4350 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 8350 4150 50  0001 C CNN
F 3 "~" H 8350 4150 50  0001 C CNN
	1    8150 4150
	1    0    0    -1  
$EndComp
Text Notes 7350 3550 0    71   ~ 14
DUMMY
Wire Wire Line
	6950 4300 7350 4300
Wire Wire Line
	7350 4300 7350 4150
Wire Wire Line
	6950 4350 7750 4350
Wire Wire Line
	7750 4350 7750 4150
Wire Wire Line
	6900 4650 8150 4650
Wire Wire Line
	8150 4650 8150 4150
$Comp
L Connector:TestPoint TP3
U 1 1 61512C85
P 8500 3900
F 0 "TP3" H 8450 4200 50  0000 L CNN
F 1 "TestPoint" H 8350 4100 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 8700 3900 50  0001 C CNN
F 3 "~" H 8700 3900 50  0001 C CNN
	1    8500 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4450 8500 4450
Wire Wire Line
	8500 3900 8500 4450
$EndSCHEMATC
