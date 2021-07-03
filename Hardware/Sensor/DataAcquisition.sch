EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6350 4000 6350 3900
$Comp
L Analog_ADC:MCP3425A0T-ECH U53
U 1 1 5CE1FB53
P 2650 3000
F 0 "U53" H 2300 3500 50  0000 C CNN
F 1 "MCP3425A0T-ECH" H 2300 3400 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 2650 3000 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22072b.pdf" H 2650 3000 50  0001 C CNN
	1    2650 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C50
U 1 1 5CE20396
P 2850 2350
F 0 "C50" V 2598 2350 50  0000 C CNN
F 1 "100n" V 2689 2350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2888 2200 50  0001 C CNN
F 3 "~" H 2850 2350 50  0001 C CNN
	1    2850 2350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR071
U 1 1 5CE209CE
P 3100 2450
F 0 "#PWR071" H 3100 2200 50  0001 C CNN
F 1 "GND" H 3105 2277 50  0000 C CNN
F 2 "" H 3100 2450 50  0001 C CNN
F 3 "" H 3100 2450 50  0001 C CNN
	1    3100 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR069
U 1 1 5CE20FA6
P 2650 1900
F 0 "#PWR069" H 2650 1750 50  0001 C CNN
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
L power:GND #PWR070
U 1 1 5CE21853
P 2650 3450
F 0 "#PWR070" H 2650 3200 50  0001 C CNN
F 1 "GND" H 2655 3277 50  0000 C CNN
F 2 "" H 2650 3450 50  0001 C CNN
F 3 "" H 2650 3450 50  0001 C CNN
	1    2650 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3450 2650 3400
$Comp
L Device:CP C51
U 1 1 5CE1E85D
P 2850 1950
F 0 "C51" V 3105 1950 50  0000 C CNN
F 1 "10u" V 3014 1950 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B" H 2888 1800 50  0001 C CNN
F 3 "~" H 2850 1950 50  0001 C CNN
	1    2850 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R51
U 1 1 5CE1FD3A
P 1850 2900
F 0 "R51" V 1643 2900 50  0000 C CNN
F 1 "0R" V 1734 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1780 2900 50  0001 C CNN
F 3 "~" H 1850 2900 50  0001 C CNN
	1    1850 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R R50
U 1 1 5CE20592
P 1850 3100
F 0 "R50" V 1965 3100 50  0000 C CNN
F 1 "0R" V 2056 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1780 3100 50  0001 C CNN
F 3 "~" H 1850 3100 50  0001 C CNN
	1    1850 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R R53
U 1 1 5CE272E1
P 1400 3150
F 0 "R53" H 1330 3104 50  0000 R CNN
F 1 "27k" H 1330 3195 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1330 3150 50  0001 C CNN
F 3 "~" H 1400 3150 50  0001 C CNN
	1    1400 3150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R52
U 1 1 5CE276BE
P 1400 2650
F 0 "R52" H 1330 2604 50  0000 R CNN
F 1 "0R" H 1330 2695 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1330 2650 50  0001 C CNN
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
L power:GND #PWR0103
U 1 1 5CEC4630
P 3100 2050
F 0 "#PWR0103" H 3100 1800 50  0001 C CNN
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
L power:GND #PWR081
U 1 1 5D026161
P 1400 3450
F 0 "#PWR081" H 1400 3200 50  0001 C CNN
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
	6350 1900 6350 1800
$Comp
L power:+5V #PWR072
U 1 1 5CE0B768
P 6350 1200
F 0 "#PWR072" H 6350 1050 50  0001 C CNN
F 1 "+5V" H 6365 1373 50  0000 C CNN
F 2 "" H 6350 1200 50  0001 C CNN
F 3 "" H 6350 1200 50  0001 C CNN
	1    6350 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 5600 1350 5600
Wire Wire Line
	1550 5700 1350 5700
Text Label 7000 2600 0    50   ~ 0
SWIM
Text Label 1350 5700 0    50   ~ 0
SWIM
Text Label 1350 5600 0    50   ~ 0
RST
Wire Wire Line
	5750 3500 5100 3500
Text Label 4750 3500 0    50   ~ 0
RST
$Comp
L power:GND #PWR074
U 1 1 5D0926F0
P 1050 5800
F 0 "#PWR074" H 1050 5550 50  0001 C CNN
F 1 "GND" H 1055 5627 50  0000 C CNN
F 2 "" H 1050 5800 50  0001 C CNN
F 3 "" H 1050 5800 50  0001 C CNN
	1    1050 5800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Counter_Clockwise J51
U 1 1 5D097999
P 1750 5800
F 0 "J51" H 1800 6217 50  0000 C CNN
F 1 "Conn_02x05_Counter_Clockwise" H 1800 6126 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x05_P2.54mm_Horizontal" H 1750 5800 50  0001 C CNN
F 3 "~" H 1750 5800 50  0001 C CNN
	1    1750 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2600 7150 2600
Wire Wire Line
	6350 1800 6350 1650
Connection ~ 6350 1800
Wire Wire Line
	6350 1650 6650 1650
Wire Wire Line
	6650 1650 6650 1400
Connection ~ 6350 1650
Text Label 6650 1400 1    50   ~ 0
VCC_PROG
Wire Wire Line
	1050 5800 1550 5800
$Comp
L Connector_Generic:Conn_01x04 J52
U 1 1 5D0C9069
P 4000 5600
F 0 "J52" H 4080 5592 50  0000 L CNN
F 1 "Conn_01x04" H 4080 5501 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Horizontal" H 4000 5600 50  0001 C CNN
F 3 "~" H 4000 5600 50  0001 C CNN
	1    4000 5600
	1    0    0    -1  
$EndComp
Text Label 3750 5700 2    50   ~ 0
TX
Wire Wire Line
	6950 3000 7100 3000
Text Label 7100 3000 2    50   ~ 0
TX
Wire Wire Line
	6950 3100 7100 3100
Text Label 7100 3100 2    50   ~ 0
RX
Wire Wire Line
	6350 1800 7050 1800
Wire Wire Line
	7050 1850 7050 1800
Wire Wire Line
	7050 2200 7050 2150
$Comp
L power:GND #PWR076
U 1 1 5CE0DCE2
P 7050 2200
F 0 "#PWR076" H 7050 1950 50  0001 C CNN
F 1 "GND" V 7055 2072 50  0000 R CNN
F 2 "" H 7050 2200 50  0001 C CNN
F 3 "" H 7050 2200 50  0001 C CNN
	1    7050 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C53
U 1 1 5CE0B49B
P 7050 2000
F 0 "C53" V 6798 2000 50  0000 C CNN
F 1 "100n" V 6889 2000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7088 1850 50  0001 C CNN
F 3 "~" H 7050 2000 50  0001 C CNN
	1    7050 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 5900 3600 5800
Text Label 3750 5600 2    50   ~ 0
RX
Wire Wire Line
	3800 5800 3600 5800
Wire Wire Line
	3800 5600 3600 5600
Wire Wire Line
	3800 5700 3600 5700
Wire Wire Line
	3800 5500 3600 5500
$Comp
L power:GND #PWR073
U 1 1 5CE0AD0A
P 3600 5900
F 0 "#PWR073" H 3600 5650 50  0001 C CNN
F 1 "GND" H 3605 5727 50  0000 C CNN
F 2 "" H 3600 5900 50  0001 C CNN
F 3 "" H 3600 5900 50  0001 C CNN
	1    3600 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR085
U 1 1 5D108346
P 6350 4000
F 0 "#PWR085" H 6350 3750 50  0001 C CNN
F 1 "GND" H 6355 3827 50  0000 C CNN
F 2 "" H 6350 4000 50  0001 C CNN
F 3 "" H 6350 4000 50  0001 C CNN
	1    6350 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C52
U 1 1 5D108E10
P 5600 3800
F 0 "C52" V 5348 3800 50  0000 C CNN
F 1 "680n" V 5439 3800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5638 3650 50  0001 C CNN
F 3 "~" H 5600 3800 50  0001 C CNN
	1    5600 3800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR084
U 1 1 5D1095A5
P 5600 4000
F 0 "#PWR084" H 5600 3750 50  0001 C CNN
F 1 "GND" V 5605 3872 50  0000 R CNN
F 2 "" H 5600 4000 50  0001 C CNN
F 3 "" H 5600 4000 50  0001 C CNN
	1    5600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4000 5600 3950
Wire Wire Line
	5750 3600 5600 3600
Wire Wire Line
	5600 3600 5600 3650
$Comp
L Device:R R60
U 1 1 5D10FB73
P 5200 2100
F 0 "R60" H 5130 2054 50  0000 R CNN
F 1 "2k2" H 5130 2145 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5130 2100 50  0001 C CNN
F 3 "~" H 5200 2100 50  0001 C CNN
	1    5200 2100
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR083
U 1 1 5D11035B
P 5200 1850
F 0 "#PWR083" H 5200 1700 50  0001 C CNN
F 1 "+5V" H 5215 2023 50  0000 C CNN
F 2 "" H 5200 1850 50  0001 C CNN
F 3 "" H 5200 1850 50  0001 C CNN
	1    5200 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR075
U 1 1 5D110867
P 5000 1850
F 0 "#PWR075" H 5000 1700 50  0001 C CNN
F 1 "+5V" H 5015 2023 50  0000 C CNN
F 2 "" H 5000 1850 50  0001 C CNN
F 3 "" H 5000 1850 50  0001 C CNN
	1    5000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1950 5000 1850
Wire Wire Line
	5200 1950 5200 1850
$Comp
L Device:R R59
U 1 1 5D11026F
P 5000 2100
F 0 "R59" H 5069 2054 50  0000 L CNN
F 1 "2k2" H 5069 2145 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4930 2100 50  0001 C CNN
F 3 "~" H 5000 2100 50  0001 C CNN
	1    5000 2100
	-1   0    0    1   
$EndComp
Text Label 4900 2600 2    50   ~ 0
SCL
Text Label 4900 2700 2    50   ~ 0
SDA
Wire Wire Line
	4800 2600 5000 2600
Wire Wire Line
	4800 2700 5200 2700
Wire Wire Line
	5000 2250 5000 2600
Connection ~ 5000 2600
Wire Wire Line
	5000 2600 5750 2600
Wire Wire Line
	5200 2250 5200 2700
Connection ~ 5200 2700
Wire Wire Line
	5200 2700 5750 2700
Wire Wire Line
	5750 2200 5600 2200
$Comp
L Connector:TestPoint TP52
U 1 1 5D2DC76E
P 4850 2400
F 0 "TP52" V 4850 2700 50  0000 C CNN
F 1 "TestPoint" V 4850 3000 50  0000 C CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 5050 2400 50  0001 C CNN
F 3 "~" H 5050 2400 50  0001 C CNN
	1    4850 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 2400 5750 2400
Wire Wire Line
	2050 5600 2200 5600
Wire Wire Line
	2050 5700 2200 5700
Wire Wire Line
	2050 5800 2200 5800
Wire Wire Line
	2050 5900 2200 5900
Wire Wire Line
	2050 6000 2200 6000
NoConn ~ 2200 5600
NoConn ~ 2200 5700
NoConn ~ 2200 5800
NoConn ~ 2200 5900
NoConn ~ 2200 6000
Wire Wire Line
	1550 5900 1350 5900
NoConn ~ 1350 5900
Wire Wire Line
	1550 6000 1200 6000
Wire Wire Line
	1200 6000 1200 5450
Text Label 1200 5300 1    50   ~ 0
VCC_PROG
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5D37855B
P 900 5250
F 0 "#FLG0103" H 900 5325 50  0001 C CNN
F 1 "PWR_FLAG" H 900 5423 50  0000 C CNN
F 2 "" H 900 5250 50  0001 C CNN
F 3 "~" H 900 5250 50  0001 C CNN
	1    900  5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 5450 900  5450
Wire Wire Line
	900  5450 900  5250
Connection ~ 1200 5450
Wire Wire Line
	1200 5450 1200 5300
$Comp
L Device:LED D2
U 1 1 5D443DF6
P 5650 1350
F 0 "D2" V 5689 1232 50  0000 R CNN
F 1 "yellow" V 5598 1232 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 5650 1350 50  0001 C CNN
F 3 "~" H 5650 1350 50  0001 C CNN
	1    5650 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 2900 7100 2900
$Comp
L Device:R R2
U 1 1 5D465E39
P 5650 1000
F 0 "R2" V 5765 1000 50  0000 C CNN
F 1 "510R" V 5856 1000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5580 1000 50  0001 C CNN
F 3 "~" H 5650 1000 50  0001 C CNN
	1    5650 1000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D46689F
P 5650 1550
F 0 "#PWR02" H 5650 1300 50  0001 C CNN
F 1 "GND" V 5655 1422 50  0000 R CNN
F 2 "" H 5650 1550 50  0001 C CNN
F 3 "" H 5650 1550 50  0001 C CNN
	1    5650 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2300 5450 2300
Wire Wire Line
	5450 2300 5450 800 
Wire Wire Line
	5450 800  5650 800 
Wire Wire Line
	5650 800  5650 850 
Wire Wire Line
	5650 1200 5650 1150
Wire Wire Line
	5650 1550 5650 1500
$Comp
L Device:R R3
U 1 1 5D4A05A5
P 7600 3050
F 0 "R3" V 7715 3050 50  0000 C CNN
F 1 "510R" V 7806 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7530 3050 50  0001 C CNN
F 3 "~" H 7600 3050 50  0001 C CNN
	1    7600 3050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5D4A0B18
P 7950 3050
F 0 "R4" V 8065 3050 50  0000 C CNN
F 1 "510R" V 8156 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7880 3050 50  0001 C CNN
F 3 "~" H 7950 3050 50  0001 C CNN
	1    7950 3050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5D4A1770
P 7600 3600
F 0 "#PWR03" H 7600 3350 50  0001 C CNN
F 1 "GND" V 7605 3472 50  0000 R CNN
F 2 "" H 7600 3600 50  0001 C CNN
F 3 "" H 7600 3600 50  0001 C CNN
	1    7600 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5D4A1A41
P 7950 3600
F 0 "#PWR04" H 7950 3350 50  0001 C CNN
F 1 "GND" V 7955 3472 50  0000 R CNN
F 2 "" H 7950 3600 50  0001 C CNN
F 3 "" H 7950 3600 50  0001 C CNN
	1    7950 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2800 7600 2900
Wire Wire Line
	6950 2800 7600 2800
Wire Wire Line
	7950 2700 7950 2900
Wire Wire Line
	6950 2700 7950 2700
Wire Wire Line
	7600 3250 7600 3200
Wire Wire Line
	7950 3250 7950 3200
Wire Wire Line
	7600 3600 7600 3550
Wire Wire Line
	7950 3600 7950 3550
$Comp
L Device:C C3
U 1 1 5D2F6D24
P 5100 3800
F 0 "C3" V 4848 3800 50  0000 C CNN
F 1 "10n" V 4939 3800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5138 3650 50  0001 C CNN
F 3 "~" H 5100 3800 50  0001 C CNN
	1    5100 3800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5D2F704C
P 5100 4000
F 0 "#PWR05" H 5100 3750 50  0001 C CNN
F 1 "GND" V 5105 3872 50  0000 R CNN
F 2 "" H 5100 4000 50  0001 C CNN
F 3 "" H 5100 4000 50  0001 C CNN
	1    5100 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3650 5100 3500
Connection ~ 5100 3500
Wire Wire Line
	5100 3500 4750 3500
Wire Wire Line
	5100 4000 5100 3950
$Comp
L Device:LED D4
U 1 1 5D4A0303
P 7950 3400
F 0 "D4" V 7989 3282 50  0000 R CNN
F 1 "red" V 7898 3282 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 7950 3400 50  0001 C CNN
F 3 "~" H 7950 3400 50  0001 C CNN
	1    7950 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5D48D2D6
P 7600 3400
F 0 "D3" V 7639 3479 50  0000 L CNN
F 1 "green" V 7548 3479 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 7600 3400 50  0001 C CNN
F 3 "~" H 7600 3400 50  0001 C CNN
	1    7600 3400
	0    -1   -1   0   
$EndComp
$Comp
L MCU_ST_STM8:STM8S003F3P U54
U 1 1 5D06A76B
P 6350 2900
F 0 "U54" H 6050 4100 50  0000 C CNN
F 1 "STM8S003F3P" H 6000 4000 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 6400 4000 50  0001 L CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00024550.pdf" H 6300 2500 50  0001 C CNN
	1    6350 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP53
U 1 1 5D2DC88A
P 5600 2900
F 0 "TP53" V 5600 3200 50  0000 C CNN
F 1 "TestPoint" V 5600 3500 50  0000 C CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 5800 2900 50  0001 C CNN
F 3 "~" H 5800 2900 50  0001 C CNN
	1    5600 2900
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP54
U 1 1 5D2DCB61
P 5600 3000
F 0 "TP54" V 5600 3300 50  0000 C CNN
F 1 "TestPoint" V 5600 3600 50  0000 C CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 5800 3000 50  0001 C CNN
F 3 "~" H 5800 3000 50  0001 C CNN
	1    5600 3000
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP55
U 1 1 5D2DCCEB
P 5600 3100
F 0 "TP55" V 5600 3400 50  0000 C CNN
F 1 "TestPoint" V 5600 3700 50  0000 C CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 5800 3100 50  0001 C CNN
F 3 "~" H 5800 3100 50  0001 C CNN
	1    5600 3100
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP56
U 1 1 5D2DCE02
P 5600 3200
F 0 "TP56" V 5600 3500 50  0000 C CNN
F 1 "TestPoint" V 5600 3800 50  0000 C CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 5800 3200 50  0001 C CNN
F 3 "~" H 5800 3200 50  0001 C CNN
	1    5600 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 2900 5750 2900
Wire Wire Line
	5750 3000 5600 3000
Wire Wire Line
	5750 3100 5600 3100
Wire Wire Line
	5750 3200 5600 3200
$Comp
L Device:Thermistor TH1
U 1 1 60E68270
P 4350 3750
F 0 "TH1" H 4455 3796 50  0000 L CNN
F 1 "Thermistor" H 4455 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4350 3750 50  0001 C CNN
F 3 "~" H 4350 3750 50  0001 C CNN
	1    4350 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 60E69140
P 4350 4000
F 0 "#PWR0101" H 4350 3750 50  0001 C CNN
F 1 "GND" V 4355 3872 50  0000 R CNN
F 2 "" H 4350 4000 50  0001 C CNN
F 3 "" H 4350 4000 50  0001 C CNN
	1    4350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3950 4350 4000
Wire Wire Line
	4350 3300 4350 3550
Wire Wire Line
	4350 3300 5750 3300
Wire Wire Line
	6350 1200 6350 1650
NoConn ~ 5600 2200
NoConn ~ 3600 5500
NoConn ~ 7100 2900
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 60EB0887
P 6250 5700
F 0 "J1" H 6330 5692 50  0000 L CNN
F 1 "Conn_01x02" H 6330 5601 50  0000 L CNN
F 2 "" H 6250 5700 50  0001 C CNN
F 3 "~" H 6250 5700 50  0001 C CNN
	1    6250 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 60ED51ED
P 5950 5600
F 0 "#PWR0102" H 5950 5450 50  0001 C CNN
F 1 "+5V" H 5965 5773 50  0000 C CNN
F 2 "" H 5950 5600 50  0001 C CNN
F 3 "" H 5950 5600 50  0001 C CNN
	1    5950 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 60ED94A3
P 5950 5900
F 0 "#PWR0104" H 5950 5650 50  0001 C CNN
F 1 "GND" V 5955 5772 50  0000 R CNN
F 2 "" H 5950 5900 50  0001 C CNN
F 3 "" H 5950 5900 50  0001 C CNN
	1    5950 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5700 5950 5700
Wire Wire Line
	5950 5700 5950 5600
Wire Wire Line
	6050 5800 5950 5800
Wire Wire Line
	5950 5800 5950 5900
Text Notes 900  7550 0    98   ~ 20
Power supply=5V DC
Text Notes 1400 6350 0    50   ~ 0
programming socket
Text Notes 3550 6350 0    50   ~ 0
UART socket
Text Notes 5850 6350 0    50   ~ 0
ower supply socket
$EndSCHEMATC
