EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
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
L Device:R R8
U 1 1 5D10FB73
P 9200 3900
F 0 "R8" H 9130 3854 50  0000 R CNN
F 1 "4k7" H 9130 3945 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9130 3900 50  0001 C CNN
F 3 "~" H 9200 3900 50  0001 C CNN
F 4 "C25900" H 9200 3900 50  0001 C CNN "LCSC"
	1    9200 3900
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 5D11035B
P 9200 3700
F 0 "#PWR010" H 9200 3550 50  0001 C CNN
F 1 "+5V" H 9100 3800 50  0000 C CNN
F 2 "" H 9200 3700 50  0001 C CNN
F 3 "" H 9200 3700 50  0001 C CNN
	1    9200 3700
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5D110867
P 9450 3700
F 0 "#PWR09" H 9450 3550 50  0001 C CNN
F 1 "+5V" H 9350 3800 50  0000 C CNN
F 2 "" H 9450 3700 50  0001 C CNN
F 3 "" H 9450 3700 50  0001 C CNN
	1    9450 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9450 3750 9450 3700
Wire Wire Line
	9200 3750 9200 3700
$Comp
L Device:R R7
U 1 1 5D11026F
P 9450 3900
F 0 "R7" H 9519 3854 50  0000 L CNN
F 1 "4k7" H 9519 3945 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9380 3900 50  0001 C CNN
F 3 "~" H 9450 3900 50  0001 C CNN
F 4 "C25900" H 9450 3900 50  0001 C CNN "LCSC"
	1    9450 3900
	1    0    0    1   
$EndComp
Wire Wire Line
	9650 4300 9450 4300
Wire Wire Line
	9650 4100 9200 4100
Wire Wire Line
	9450 4050 9450 4300
Wire Wire Line
	9200 4050 9200 4100
Connection ~ 9200 4100
$Comp
L Device:Thermistor TH1
U 1 1 60E68270
P 2050 6800
F 0 "TH1" H 2155 6846 50  0000 L CNN
F 1 "Thermistor" H 2155 6755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2050 6800 50  0001 C CNN
F 3 "~" H 2050 6800 50  0001 C CNN
	1    2050 6800
	1    0    0    -1  
$EndComp
Text GLabel 8400 2550 2    50   Output ~ 0
CHAMBER_VOLTAGE_MEASSURE_ENA
Text GLabel 2000 1750 0    50   Input ~ 0
CHAMBER_VOLTAGE_MEASSURE_VALUE
Text GLabel 8400 2450 2    50   Output ~ 0
BATTERY_MEASSURE_ENA
Text GLabel 2000 1650 0    50   Input ~ 0
BATTERY_MEASSURE_VALUE
Wire Wire Line
	4050 2700 3500 2700
Wire Wire Line
	4050 3000 3500 3000
Wire Wire Line
	4050 3800 3500 3800
$Comp
L IonizationChamber:STM8S105K4B6 U5
U 1 1 60F33676
P 5400 2550
F 0 "U5" H 5450 2725 50  0000 C CNN
F 1 "STM8S105K4B6" H 5450 2634 50  0000 C CNN
F 2 "IonizationChamber:DIP-32_400_ELL" H 5400 2750 50  0001 C CNN
F 3 "https://www.farnell.com/datasheets/1973125.pdf" H 5400 2750 50  0001 C CNN
	1    5400 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3700 7400 3700
Wire Wire Line
	6850 3600 7400 3600
Wire Wire Line
	6850 3500 7400 3500
Text Label 3600 2600 0    50   ~ 0
STM8_1_1
Text Label 3600 2700 0    50   ~ 0
STM8_1_2
Text Label 3600 2800 0    50   ~ 0
STM8_1_3
Text Label 3600 2900 0    50   ~ 0
STM8_1_4
Text Label 3600 3100 0    50   ~ 0
STM8_1_6
Text Label 3600 3200 0    50   ~ 0
STM8_1_7
Text Label 3600 3300 0    50   ~ 0
STM8_1_8
Text Label 3600 3400 0    50   ~ 0
STM8_1_9
Text Label 3600 3500 0    50   ~ 0
STM8_1_10
Text Label 3600 3600 0    50   ~ 0
STM8_1_11
Text Label 3600 3700 0    50   ~ 0
STM8_1_12
Text Label 3600 3800 0    50   ~ 0
STM8_1_13
Text Label 3600 3900 0    50   ~ 0
STM8_1_14
Text Label 3600 4000 0    50   ~ 0
STM8_1_15
Text Label 3600 4100 0    50   ~ 0
STM8_1_16
Text Label 6950 4100 0    50   ~ 0
STM8_1_17
Text Label 6950 4000 0    50   ~ 0
STM8_1_18
Text Label 6950 3900 0    50   ~ 0
STM8_1_19
Text Label 6950 3800 0    50   ~ 0
STM8_1_20
Text Label 6950 3700 0    50   ~ 0
STM8_1_21
Text Label 6950 3600 0    50   ~ 0
STM8_1_22
Text Label 6950 3500 0    50   ~ 0
STM8_1_23
Text Label 6950 3400 0    50   ~ 0
STM8_1_24
Text Label 6950 3300 0    50   ~ 0
STM8_1_25
Text Label 6950 3200 0    50   ~ 0
STM8_1_26
Text Label 6950 3100 0    50   ~ 0
STM8_1_27
Text Label 6950 3000 0    50   ~ 0
STM8_1_28
Text Label 6950 2900 0    50   ~ 0
STM8_1_29
Text Label 6950 2800 0    50   ~ 0
STM8_1_30
Text Label 6950 2700 0    50   ~ 0
STM8_1_31
Text Label 6950 2600 0    50   ~ 0
STM8_1_32
Wire Wire Line
	5800 5550 5900 5550
Wire Wire Line
	5800 5650 5900 5650
Wire Wire Line
	5800 5750 5900 5750
Wire Wire Line
	5800 5850 5900 5850
Wire Wire Line
	5800 5950 5900 5950
Wire Wire Line
	5900 7050 5800 7050
$Comp
L Connector:Conn_01x16_Female J2
U 1 1 60FCC735
P 6100 6250
F 0 "J2" H 5700 7200 50  0000 L CNN
F 1 "Conn_01x16_Female" H 5400 7100 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 6100 6250 50  0001 C CNN
F 3 "~" H 6100 6250 50  0001 C CNN
	1    6100 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 6950 5900 6950
Wire Wire Line
	5800 6850 5900 6850
Wire Wire Line
	5800 6750 5900 6750
Wire Wire Line
	5800 6650 5900 6650
Wire Wire Line
	5800 6550 5900 6550
Wire Wire Line
	5800 6450 5900 6450
Wire Wire Line
	5800 6350 5900 6350
Wire Wire Line
	5800 6250 5900 6250
Wire Wire Line
	5800 6150 5900 6150
Wire Wire Line
	5800 6050 5900 6050
Text Label 5800 7050 2    50   ~ 0
STM8_1_17
Text Label 5800 6950 2    50   ~ 0
STM8_1_18
Text Label 5800 6850 2    50   ~ 0
STM8_1_19
Text Label 5800 6750 2    50   ~ 0
STM8_1_20
Text Label 5800 6650 2    50   ~ 0
STM8_1_21
Text Label 5800 6550 2    50   ~ 0
STM8_1_22
Text Label 5800 6450 2    50   ~ 0
STM8_1_23
Text Label 5800 6350 2    50   ~ 0
STM8_1_24
Text Label 5800 6250 2    50   ~ 0
STM8_1_25
Text Label 5800 6150 2    50   ~ 0
STM8_1_26
Text Label 5800 6050 2    50   ~ 0
STM8_1_27
Text Label 5800 5950 2    50   ~ 0
STM8_1_28
Text Label 5800 5850 2    50   ~ 0
STM8_1_29
Text Label 5800 5750 2    50   ~ 0
STM8_1_30
Text Label 5800 5650 2    50   ~ 0
STM8_1_31
Text Label 5800 5550 2    50   ~ 0
STM8_1_32
$Comp
L Connector:Conn_01x16_Female J1
U 1 1 61011172
P 4150 6250
F 0 "J1" H 3750 7200 50  0000 L CNN
F 1 "Conn_01x16_Female" H 3400 7100 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 4150 6250 50  0001 C CNN
F 3 "~" H 4150 6250 50  0001 C CNN
	1    4150 6250
	-1   0    0    -1  
$EndComp
Text Label 4600 5650 0    50   ~ 0
STM8_1_2
Text Label 4600 5750 0    50   ~ 0
STM8_1_3
Text Label 4600 5850 0    50   ~ 0
STM8_1_4
Text Label 4600 6350 0    50   ~ 0
STM8_1_9
Text Label 4600 6450 0    50   ~ 0
STM8_1_10
Text Label 4600 6550 0    50   ~ 0
STM8_1_11
Text Label 4600 6650 0    50   ~ 0
STM8_1_12
Text Label 4600 6750 0    50   ~ 0
STM8_1_13
Text Label 4600 6950 0    50   ~ 0
STM8_1_15
Text Label 4600 7050 0    50   ~ 0
STM8_1_16
Wire Wire Line
	4350 6350 4600 6350
Wire Wire Line
	4350 6450 4600 6450
Wire Wire Line
	4350 6550 4600 6550
Wire Wire Line
	4350 5550 4600 5550
Wire Wire Line
	4350 5650 4600 5650
Wire Wire Line
	4350 5750 4600 5750
Wire Wire Line
	4350 5850 4600 5850
Wire Wire Line
	4350 5950 4600 5950
Wire Wire Line
	4350 6050 4600 6050
Wire Wire Line
	4350 6150 4600 6150
Wire Wire Line
	4350 6250 4600 6250
Wire Wire Line
	4350 6650 4600 6650
Wire Wire Line
	4350 6750 4600 6750
Wire Wire Line
	4350 6850 4600 6850
Wire Wire Line
	4350 7050 4600 7050
Text Label 4600 5550 0    50   ~ 0
STM8_1_1
Text Label 4600 6850 0    50   ~ 0
STM8_1_14
Wire Wire Line
	9200 4100 8950 4100
$Comp
L Device:Crystal Y1
U 1 1 610F50E3
P 2450 3050
F 0 "Y1" V 2404 3181 50  0000 L CNN
F 1 "Crystal" V 2495 3181 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_5032-2Pin_5.0x3.2mm_HandSoldering" H 2450 3050 50  0001 C CNN
F 3 "~" H 2450 3050 50  0001 C CNN
	1    2450 3050
	0    1    1    0   
$EndComp
$Comp
L Device:C C16
U 1 1 610F5D58
P 2200 2800
F 0 "C16" V 1948 2800 50  0000 C CNN
F 1 "22p" V 2039 2800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2238 2650 50  0001 C CNN
F 3 "~" H 2200 2800 50  0001 C CNN
	1    2200 2800
	0    1    1    0   
$EndComp
$Comp
L Device:C C17
U 1 1 610FB1A7
P 2200 3300
F 0 "C17" V 1948 3300 50  0000 C CNN
F 1 "22p" V 2039 3300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2238 3150 50  0001 C CNN
F 3 "~" H 2200 3300 50  0001 C CNN
	1    2200 3300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR033
U 1 1 611119B7
P 1950 3350
F 0 "#PWR033" H 1950 3100 50  0001 C CNN
F 1 "GND" H 1850 3350 50  0000 C CNN
F 2 "" H 1950 3350 50  0001 C CNN
F 3 "" H 1950 3350 50  0001 C CNN
	1    1950 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 61115D60
P 1900 2850
F 0 "#PWR06" H 1900 2600 50  0001 C CNN
F 1 "GND" H 1905 2677 50  0000 C CNN
F 2 "" H 1900 2850 50  0001 C CNN
F 3 "" H 1900 2850 50  0001 C CNN
	1    1900 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2800 1900 2800
Wire Wire Line
	1900 2800 1900 2850
Wire Wire Line
	2050 3300 1950 3300
Wire Wire Line
	1950 3300 1950 3350
Wire Wire Line
	2350 2800 2450 2800
Wire Wire Line
	2450 2800 2450 2900
Wire Wire Line
	2350 3300 2450 3300
Wire Wire Line
	2450 3300 2450 3200
Wire Wire Line
	2450 2800 2950 2800
Wire Wire Line
	2950 2800 2950 3200
Wire Wire Line
	2950 3200 4050 3200
Connection ~ 2450 2800
Wire Wire Line
	2450 3300 4050 3300
Connection ~ 2450 3300
Wire Wire Line
	2150 1650 2000 1650
Wire Wire Line
	2000 1750 2150 1750
Connection ~ 2150 1750
Wire Wire Line
	2150 1750 2150 1650
$Comp
L Device:R R19
U 1 1 611D6E9A
P 1650 5700
AR Path="/5CF2BB44/611D6E9A" Ref="R19"  Part="1" 
AR Path="/60EF78C6/611D6E9A" Ref="R?"  Part="1" 
F 0 "R19" H 1719 5654 50  0000 L CNN
F 1 "TBD" H 1719 5745 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1580 5700 50  0001 C CNN
F 3 "~" H 1650 5700 50  0001 C CNN
	1    1650 5700
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NMOS_GDS Q7
U 1 1 611D6EA0
P 1550 6650
AR Path="/5CF2BB44/611D6EA0" Ref="Q7"  Part="1" 
AR Path="/60EF78C6/611D6EA0" Ref="Q?"  Part="1" 
F 0 "Q7" H 1350 6450 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 1100 6350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1750 6750 50  0001 C CNN
F 3 "~" H 1550 6650 50  0001 C CNN
	1    1550 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PMOS_GDS Q6
U 1 1 611D6EA6
P 1950 5900
AR Path="/5CF2BB44/611D6EA6" Ref="Q6"  Part="1" 
AR Path="/60EF78C6/611D6EA6" Ref="Q?"  Part="1" 
F 0 "Q6" H 2155 5946 50  0000 L CNN
F 1 "Q_PMOS_GDS" H 2155 5855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2150 6000 50  0001 C CNN
F 3 "~" H 1950 5900 50  0001 C CNN
	1    1950 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR035
U 1 1 611D6EAC
P 1650 7050
AR Path="/5CF2BB44/611D6EAC" Ref="#PWR035"  Part="1" 
AR Path="/60EF78C6/611D6EAC" Ref="#PWR?"  Part="1" 
F 0 "#PWR035" H 1650 6800 50  0001 C CNN
F 1 "GND" H 1655 6877 50  0000 C CNN
F 2 "" H 1650 7050 50  0001 C CNN
F 3 "" H 1650 7050 50  0001 C CNN
	1    1650 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 611D6EB2
P 2050 6300
AR Path="/5CF2BB44/611D6EB2" Ref="R20"  Part="1" 
AR Path="/60EF78C6/611D6EB2" Ref="R?"  Part="1" 
F 0 "R20" H 1980 6254 50  0000 R CNN
F 1 "TBD" H 1980 6345 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1980 6300 50  0001 C CNN
F 3 "~" H 2050 6300 50  0001 C CNN
	1    2050 6300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR036
U 1 1 611D6EB8
P 2050 7050
AR Path="/5CF2BB44/611D6EB8" Ref="#PWR036"  Part="1" 
AR Path="/60EF78C6/611D6EB8" Ref="#PWR?"  Part="1" 
F 0 "#PWR036" H 2050 6800 50  0001 C CNN
F 1 "GND" H 2055 6877 50  0000 C CNN
F 2 "" H 2050 7050 50  0001 C CNN
F 3 "" H 2050 7050 50  0001 C CNN
	1    2050 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 6450 1650 5900
Wire Wire Line
	1750 5900 1650 5900
Connection ~ 1650 5900
Wire Wire Line
	1650 5900 1650 5850
Wire Wire Line
	1650 5550 1650 5500
Wire Wire Line
	1650 5500 2050 5500
Wire Wire Line
	2050 5500 2050 5700
Wire Wire Line
	2050 6100 2050 6150
Wire Wire Line
	2050 6450 2050 6550
Connection ~ 2050 6550
Wire Wire Line
	2050 6550 2050 6600
Wire Wire Line
	2050 7000 2050 7050
Wire Wire Line
	1650 6850 1650 7050
Wire Wire Line
	1350 6650 1250 6650
Wire Wire Line
	2050 5500 2050 5400
Connection ~ 2050 5500
Text Label 900  6650 1    50   ~ 0
THERMISTOR_VOLTAGE_MEASSURE_ENA
Text Label 2800 6550 1    50   ~ 0
THERMISTOR_VOLTAGE_MEASSURE_VALUE
Text Label 8700 2150 0    50   ~ 0
THERMISTOR_VOLTAGE_MEASSURE_ENA
Text Label 2000 1550 2    50   ~ 0
THERMISTOR_VOLTAGE_MEASSURE_VALUE
Wire Wire Line
	2150 1650 2150 1550
Wire Wire Line
	2150 1550 2000 1550
Connection ~ 2150 1650
Text GLabel 8400 2650 2    50   Output ~ 0
R_PHOTO_VOLTAGE_MEASSURE_ENA
Text GLabel 2050 1850 0    50   Input ~ 0
R_PHOTO_VOLTAGE_MEASSURE_VALUE
Wire Wire Line
	2050 1850 2150 1850
Connection ~ 2150 1850
Wire Wire Line
	2150 1850 2150 1750
$Comp
L power:+5V #PWR07
U 1 1 612CF68E
P 2050 5400
AR Path="/5CF2BB44/612CF68E" Ref="#PWR07"  Part="1" 
AR Path="/612742A4/612CF68E" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 2050 5250 50  0001 C CNN
F 1 "+5V" H 1992 5437 50  0000 R CNN
F 2 "" H 2050 5400 50  0001 C CNN
F 3 "" H 2050 5400 50  0001 C CNN
	1    2050 5400
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 612EDE45
P 2800 1900
F 0 "TP1" H 2858 2018 50  0000 L CNN
F 1 "TestPoint" H 2858 1927 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 3000 1900 50  0001 C CNN
F 3 "~" H 3000 1900 50  0001 C CNN
	1    2800 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 61307867
P 1250 6550
F 0 "TP2" H 1200 6850 50  0000 L CNN
F 1 "TestPoint" H 1100 6750 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 1450 6550 50  0001 C CNN
F 3 "~" H 1450 6550 50  0001 C CNN
	1    1250 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 6550 1250 6650
Connection ~ 1250 6650
Wire Wire Line
	1250 6650 900  6650
Text GLabel 9650 4100 2    50   Output ~ 0
SCL
Text GLabel 9650 4300 2    50   BiDi ~ 0
SDA
Wire Wire Line
	4350 6950 4600 6950
Wire Wire Line
	2050 6550 2800 6550
$Comp
L Connector_Generic:Conn_01x04 J7
U 1 1 6146757C
P 800 2450
F 0 "J7" H 880 2442 50  0000 L CNN
F 1 "UART" H 880 2351 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Horizontal" H 800 2450 50  0001 C CNN
F 3 "~" H 800 2450 50  0001 C CNN
	1    800  2450
	-1   0    0    1   
$EndComp
Text GLabel 8450 2950 2    50   Output ~ 0
BUZZER
Text GLabel 8700 2250 2    50   Input ~ 0
KEY_LEFT
Text GLabel 8700 2350 2    50   Input ~ 0
KEY_RIGHT
$Comp
L Device:R R29
U 1 1 60F5CAFF
P 8800 4100
F 0 "R29" V 8593 4100 50  0000 C CNN
F 1 "100R" V 8684 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8730 4100 50  0001 C CNN
F 3 "~" H 8800 4100 50  0001 C CNN
F 4 "C17408" V 8800 4100 50  0001 C CNN "LCSC"
	1    8800 4100
	0    -1   1    0   
$EndComp
$Comp
L Device:R R30
U 1 1 60F647EF
P 8800 4300
F 0 "R30" V 8915 4300 50  0000 C CNN
F 1 "100R" V 9006 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8730 4300 50  0001 C CNN
F 3 "~" H 8800 4300 50  0001 C CNN
F 4 "C17408" V 8800 4300 50  0001 C CNN "LCSC"
	1    8800 4300
	0    -1   1    0   
$EndComp
Wire Wire Line
	9450 4300 8950 4300
Connection ~ 9450 4300
$Comp
L Device:C C22
U 1 1 60F834CE
P 2600 4450
F 0 "C22" H 2485 4496 50  0000 R CNN
F 1 "470n" H 2485 4405 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2638 4300 50  0001 C CNN
F 3 "~" H 2600 4450 50  0001 C CNN
	1    2600 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR047
U 1 1 60F8E3BF
P 2600 4650
F 0 "#PWR047" H 2600 4400 50  0001 C CNN
F 1 "GND" H 2605 4477 50  0000 C CNN
F 2 "" H 2600 4650 50  0001 C CNN
F 3 "" H 2600 4650 50  0001 C CNN
	1    2600 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C23
U 1 1 60F9758D
P 2900 4450
F 0 "C23" H 2900 4650 50  0000 L CNN
F 1 "470n" H 2900 4550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2938 4300 50  0001 C CNN
F 3 "~" H 2900 4450 50  0001 C CNN
	1    2900 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR048
U 1 1 60F97593
P 2900 4650
F 0 "#PWR048" H 2900 4400 50  0001 C CNN
F 1 "GND" H 2905 4477 50  0000 C CNN
F 2 "" H 2900 4650 50  0001 C CNN
F 3 "" H 2900 4650 50  0001 C CNN
	1    2900 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4600 2900 4650
Wire Wire Line
	2600 4600 2600 4650
Wire Wire Line
	2900 3500 2900 4200
Wire Wire Line
	2900 3500 4050 3500
Wire Wire Line
	2600 4300 2600 4200
Wire Wire Line
	2600 4200 2900 4200
Connection ~ 2900 4200
Wire Wire Line
	2900 4200 2900 4300
$Comp
L Device:C C24
U 1 1 60FFD6F5
P 3200 4450
F 0 "C24" H 3200 4650 50  0000 L CNN
F 1 "100n" H 3200 4550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3238 4300 50  0001 C CNN
F 3 "~" H 3200 4450 50  0001 C CNN
F 4 "C282732" H 3200 4450 50  0001 C CNN "LCSC"
	1    3200 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR049
U 1 1 60FFD6FB
P 3200 4650
F 0 "#PWR049" H 3200 4400 50  0001 C CNN
F 1 "GND" H 3205 4477 50  0000 C CNN
F 2 "" H 3200 4650 50  0001 C CNN
F 3 "" H 3200 4650 50  0001 C CNN
	1    3200 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4600 3200 4650
Wire Wire Line
	3200 3100 3200 4300
Wire Wire Line
	3200 3100 4050 3100
Text Notes 600  7650 0    71   ~ 14
Temperature meassurement is optional.\nWill be used to determinate corelation between \nsensor output and temperature.
Text Notes 3550 7550 0    71   ~ 14
It is possible to unplug STM8 and connect custom made\nPCB using this socket, so its possible to change/upgrade\nmicrocontroller without need to redesign whole PCB. 
Text Notes 6400 1100 0    71   ~ 14
1.  Vcapp = 470n ... 3300n\n2. Only one signal will be selected for meassurement by STM8s ADC at a time.\nThis will be done in software.
$Comp
L Device:R R28
U 1 1 6112499D
P 2450 1950
F 0 "R28" V 2243 1950 50  0000 C CNN
F 1 "TBD" V 2334 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2380 1950 50  0001 C CNN
F 3 "~" H 2450 1950 50  0001 C CNN
	1    2450 1950
	0    1    1    0   
$EndComp
$Comp
L Device:C C21
U 1 1 6112C8F0
P 2700 2150
F 0 "C21" H 2815 2196 50  0000 L CNN
F 1 "TBD" H 2815 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2738 2000 50  0001 C CNN
F 3 "~" H 2700 2150 50  0001 C CNN
	1    2700 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR045
U 1 1 611487C6
P 2700 2350
F 0 "#PWR045" H 2700 2100 50  0001 C CNN
F 1 "GND" H 2705 2177 50  0000 C CNN
F 2 "" H 2700 2350 50  0001 C CNN
F 3 "" H 2700 2350 50  0001 C CNN
	1    2700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2600 3400 1950
Wire Wire Line
	3400 1950 2800 1950
Wire Wire Line
	3400 2600 4050 2600
Wire Wire Line
	2700 2000 2700 1950
Connection ~ 2700 1950
Wire Wire Line
	2700 1950 2600 1950
Wire Wire Line
	2700 2350 2700 2300
Wire Wire Line
	2800 1900 2800 1950
Wire Wire Line
	2300 1950 2150 1950
Wire Wire Line
	2150 1850 2150 1950
Connection ~ 2800 1950
Wire Wire Line
	2800 1950 2700 1950
$Comp
L Jumper:Jumper_2_Open JP3
U 1 1 611BEDCA
P 1300 2250
F 0 "JP3" H 1300 2485 50  0000 C CNN
F 1 "Jumper_2_Open" H 1300 2394 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 1300 2250 50  0001 C CNN
F 3 "~" H 1300 2250 50  0001 C CNN
	1    1300 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2800 3100 2600
Wire Wire Line
	3100 2600 2550 2600
Wire Wire Line
	2550 2600 2550 2350
Wire Wire Line
	3100 2800 4050 2800
Wire Wire Line
	3000 2900 3000 2700
Wire Wire Line
	3000 2700 2400 2700
Wire Wire Line
	2400 2700 2400 2450
Wire Wire Line
	3000 2900 4050 2900
$Comp
L Connector:TestPoint TP12
U 1 1 611D45BC
P 1850 2300
F 0 "TP12" H 1800 2600 50  0000 L CNN
F 1 "TestPoint" H 1700 2500 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 2050 2300 50  0001 C CNN
F 3 "~" H 2050 2300 50  0001 C CNN
	1    1850 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP13
U 1 1 611DCA72
P 2200 2300
F 0 "TP13" H 2150 2600 50  0000 L CNN
F 1 "TestPoint" H 2050 2500 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 2400 2300 50  0001 C CNN
F 3 "~" H 2400 2300 50  0001 C CNN
	1    2200 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR044
U 1 1 6120D95E
P 1650 2150
F 0 "#PWR044" H 1650 2000 50  0001 C CNN
F 1 "+5V" H 1700 2300 50  0000 R CNN
F 2 "" H 1650 2150 50  0001 C CNN
F 3 "" H 1650 2150 50  0001 C CNN
	1    1650 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2450 2200 2450
Wire Wire Line
	1000 2350 1850 2350
Wire Wire Line
	1000 2250 1100 2250
Wire Wire Line
	1500 2250 1650 2250
Wire Wire Line
	1650 2250 1650 2150
Wire Wire Line
	1850 2300 1850 2350
Connection ~ 1850 2350
Wire Wire Line
	1850 2350 2550 2350
Wire Wire Line
	2200 2300 2200 2450
Connection ~ 2200 2450
Wire Wire Line
	2200 2450 2400 2450
$Comp
L power:GND #PWR046
U 1 1 6126D1CE
P 1100 2600
F 0 "#PWR046" H 1100 2350 50  0001 C CNN
F 1 "GND" H 1105 2427 50  0000 C CNN
F 2 "" H 1100 2600 50  0001 C CNN
F 3 "" H 1100 2600 50  0001 C CNN
	1    1100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2550 1100 2550
Wire Wire Line
	1100 2550 1100 2600
$Comp
L power:GND #PWR050
U 1 1 612B8F9D
P 3400 4650
F 0 "#PWR050" H 3400 4400 50  0001 C CNN
F 1 "GND" H 3405 4477 50  0000 C CNN
F 2 "" H 3400 4650 50  0001 C CNN
F 3 "" H 3400 4650 50  0001 C CNN
	1    3400 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3400 4050 3400
Wire Wire Line
	3400 4000 4050 4000
Wire Wire Line
	3400 3400 3400 4000
Connection ~ 3400 4000
Wire Wire Line
	3400 4000 3400 4650
Wire Wire Line
	3250 3900 4050 3900
Wire Wire Line
	3350 3600 4050 3600
Wire Wire Line
	3300 3700 4050 3700
$Comp
L Device:C C20
U 1 1 61347533
P 2900 1050
F 0 "C20" H 3015 1096 50  0000 L CNN
F 1 "100n" H 3015 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2938 900 50  0001 C CNN
F 3 "~" H 2900 1050 50  0001 C CNN
F 4 "C282732" H 2900 1050 50  0001 C CNN "LCSC"
	1    2900 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 61347539
P 2900 1250
F 0 "#PWR043" H 2900 1000 50  0001 C CNN
F 1 "GND" H 2905 1077 50  0000 C CNN
F 2 "" H 2900 1250 50  0001 C CNN
F 3 "" H 2900 1250 50  0001 C CNN
	1    2900 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1200 2900 1250
$Comp
L Device:C C19
U 1 1 61396B97
P 2450 1050
F 0 "C19" H 2565 1096 50  0000 L CNN
F 1 "100n" H 2565 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2488 900 50  0001 C CNN
F 3 "~" H 2450 1050 50  0001 C CNN
F 4 "C282732" H 2450 1050 50  0001 C CNN "LCSC"
	1    2450 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 61396B9D
P 2450 1250
F 0 "#PWR042" H 2450 1000 50  0001 C CNN
F 1 "GND" H 2455 1077 50  0000 C CNN
F 2 "" H 2450 1250 50  0001 C CNN
F 3 "" H 2450 1250 50  0001 C CNN
	1    2450 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1200 2450 1250
$Comp
L Device:C C15
U 1 1 613A05A0
P 2000 1050
F 0 "C15" H 2115 1096 50  0000 L CNN
F 1 "100n" H 2115 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2038 900 50  0001 C CNN
F 3 "~" H 2000 1050 50  0001 C CNN
F 4 "C282732" H 2000 1050 50  0001 C CNN "LCSC"
	1    2000 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 613A05A6
P 2000 1250
F 0 "#PWR041" H 2000 1000 50  0001 C CNN
F 1 "GND" H 2005 1077 50  0000 C CNN
F 2 "" H 2000 1250 50  0001 C CNN
F 3 "" H 2000 1250 50  0001 C CNN
	1    2000 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1200 2000 1250
Wire Wire Line
	2900 900  2900 850 
Wire Wire Line
	3250 850  3250 3900
Wire Wire Line
	3300 800  3300 3700
Wire Wire Line
	3350 750  3350 3600
Wire Wire Line
	3250 850  2900 850 
Wire Wire Line
	3300 800  2450 800 
Wire Wire Line
	2450 800  2450 900 
Wire Wire Line
	3350 750  2000 750 
Wire Wire Line
	2000 750  2000 900 
Connection ~ 2000 750 
Connection ~ 2450 800 
Connection ~ 2900 850 
$Comp
L power:+5V #PWR013
U 1 1 6147BE48
P 2000 700
F 0 "#PWR013" H 2000 550 50  0001 C CNN
F 1 "+5V" H 1942 737 50  0000 R CNN
F 2 "" H 2000 700 50  0001 C CNN
F 3 "" H 2000 700 50  0001 C CNN
	1    2000 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 700  2000 750 
$Comp
L power:+5V #PWR015
U 1 1 61487A8B
P 2450 700
F 0 "#PWR015" H 2450 550 50  0001 C CNN
F 1 "+5V" H 2392 737 50  0000 R CNN
F 2 "" H 2450 700 50  0001 C CNN
F 3 "" H 2450 700 50  0001 C CNN
	1    2450 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 700  2450 800 
$Comp
L power:+5V #PWR016
U 1 1 614937CD
P 2900 700
F 0 "#PWR016" H 2900 550 50  0001 C CNN
F 1 "+5V" H 2842 737 50  0000 R CNN
F 2 "" H 2900 700 50  0001 C CNN
F 3 "" H 2900 700 50  0001 C CNN
	1    2900 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 700  2900 850 
Wire Wire Line
	4050 4100 3600 4100
Wire Wire Line
	3600 4100 3600 4300
Wire Wire Line
	3600 4300 8650 4300
Wire Wire Line
	6850 4100 8650 4100
$Comp
L Connector:USB_B_Micro J8
U 1 1 6159169A
P 7250 5400
F 0 "J8" H 7307 5867 50  0000 C CNN
F 1 "USB_B_Micro" H 7307 5776 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" H 7400 5350 50  0001 C CNN
F 3 "~" H 7400 5350 50  0001 C CNN
	1    7250 5400
	1    0    0    -1  
$EndComp
Text Notes 6700 6400 0    71   ~ 14
USB is used only as power supply.\nCollected data can be obtained via UART.
$Comp
L Device:C C26
U 1 1 615D1AFD
P 8400 5500
F 0 "C26" H 8515 5546 50  0000 L CNN
F 1 "100n" H 8515 5455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8438 5350 50  0001 C CNN
F 3 "~" H 8400 5500 50  0001 C CNN
F 4 "C282732" H 8400 5500 50  0001 C CNN "LCSC"
	1    8400 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR053
U 1 1 615D1B03
P 8400 5700
F 0 "#PWR053" H 8400 5450 50  0001 C CNN
F 1 "GND" H 8405 5527 50  0000 C CNN
F 2 "" H 8400 5700 50  0001 C CNN
F 3 "" H 8400 5700 50  0001 C CNN
	1    8400 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 5650 8400 5700
$Comp
L power:GND #PWR055
U 1 1 615DE7EF
P 7150 5900
F 0 "#PWR055" H 7150 5650 50  0001 C CNN
F 1 "GND" H 7155 5727 50  0000 C CNN
F 2 "" H 7150 5900 50  0001 C CNN
F 3 "" H 7150 5900 50  0001 C CNN
	1    7150 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5800 7150 5850
Wire Wire Line
	7150 5850 7250 5850
Wire Wire Line
	7250 5850 7250 5800
Connection ~ 7150 5850
Wire Wire Line
	7150 5850 7150 5900
Wire Wire Line
	7550 5600 7650 5600
Wire Wire Line
	7550 5500 7650 5500
Wire Wire Line
	7550 5400 7650 5400
$Comp
L Device:CP C25
U 1 1 616362AE
P 7950 5500
F 0 "C25" H 8068 5546 50  0000 L CNN
F 1 "4u7" H 8068 5455 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B" H 7988 5350 50  0001 C CNN
F 3 "~" H 7950 5500 50  0001 C CNN
	1    7950 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR052
U 1 1 616448C3
P 7950 5700
F 0 "#PWR052" H 7950 5450 50  0001 C CNN
F 1 "GND" H 7955 5527 50  0000 C CNN
F 2 "" H 7950 5700 50  0001 C CNN
F 3 "" H 7950 5700 50  0001 C CNN
	1    7950 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 5650 7950 5700
Wire Wire Line
	7550 5200 7950 5200
Wire Wire Line
	8400 5200 8400 5350
Wire Wire Line
	7950 5350 7950 5200
Connection ~ 7950 5200
Wire Wire Line
	7950 5200 8400 5200
Wire Wire Line
	8400 5200 8500 5200
Connection ~ 8400 5200
$Comp
L power:+5V #PWR051
U 1 1 6168668D
P 8500 5050
F 0 "#PWR051" H 8500 4900 50  0001 C CNN
F 1 "+5V" H 8400 5150 50  0000 C CNN
F 2 "" H 8500 5050 50  0001 C CNN
F 3 "" H 8500 5050 50  0001 C CNN
	1    8500 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8500 5050 8500 5200
$Comp
L power:GNDPWR #PWR054
U 1 1 616A1650
P 6900 5900
F 0 "#PWR054" H 6900 5700 50  0001 C CNN
F 1 "GNDPWR" H 6904 5746 50  0000 C CNN
F 2 "" H 6900 5850 50  0001 C CNN
F 3 "" H 6900 5850 50  0001 C CNN
	1    6900 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5850 6900 5850
Wire Wire Line
	6900 5850 6900 5900
NoConn ~ 7650 5400
NoConn ~ 7650 5500
NoConn ~ 7650 5600
Wire Wire Line
	7450 2600 7450 2150
Wire Wire Line
	7450 2150 8700 2150
Wire Wire Line
	6850 2600 7450 2600
Wire Wire Line
	7600 2700 7600 2250
Wire Wire Line
	7600 2250 8700 2250
Wire Wire Line
	6850 2700 7600 2700
Wire Wire Line
	7700 2800 7700 2350
Wire Wire Line
	7700 2350 8700 2350
Wire Wire Line
	6850 2800 7700 2800
Wire Wire Line
	6850 2900 7400 2900
Wire Wire Line
	6850 3000 7400 3000
Wire Wire Line
	7800 3100 7800 2450
Wire Wire Line
	7800 2450 8400 2450
Wire Wire Line
	6850 3100 7800 3100
Wire Wire Line
	7900 3200 7900 2550
Wire Wire Line
	7900 2550 8400 2550
Wire Wire Line
	6850 3200 7900 3200
Wire Wire Line
	8050 3300 8050 2650
Wire Wire Line
	8050 2650 8400 2650
Wire Wire Line
	6850 3300 8050 3300
Wire Wire Line
	6850 3400 7400 3400
Text Notes 9400 6400 0    71   ~ 14
SWIM connector for \ndebug and programming.
Text Label 9650 5650 2    50   ~ 0
STM8_1_6
Text Label 9650 5750 2    50   ~ 0
STM8_1_31
$Comp
L power:GND #PWR057
U 1 1 61872295
P 9650 5900
F 0 "#PWR057" H 9650 5650 50  0001 C CNN
F 1 "GND" H 9655 5727 50  0000 C CNN
F 2 "" H 9650 5900 50  0001 C CNN
F 3 "" H 9650 5900 50  0001 C CNN
	1    9650 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR056
U 1 1 6187D5FD
P 9650 5300
F 0 "#PWR056" H 9650 5150 50  0001 C CNN
F 1 "+5V" H 9665 5473 50  0000 C CNN
F 2 "" H 9650 5300 50  0001 C CNN
F 3 "" H 9650 5300 50  0001 C CNN
	1    9650 5300
	-1   0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP4
U 1 1 6188A9B6
P 9950 5550
F 0 "JP4" H 9950 5785 50  0000 C CNN
F 1 "Jumper_2_Open" H 9950 5694 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 9950 5550 50  0001 C CNN
F 3 "~" H 9950 5550 50  0001 C CNN
	1    9950 5550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J9
U 1 1 618953D2
P 10450 5650
F 0 "J9" H 10530 5642 50  0000 L CNN
F 1 "Conn_01x04" H 10530 5551 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 10450 5650 50  0001 C CNN
F 3 "~" H 10450 5650 50  0001 C CNN
	1    10450 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 5850 9650 5850
Wire Wire Line
	9650 5850 9650 5900
Wire Wire Line
	10250 5750 9650 5750
Wire Wire Line
	10250 5650 9650 5650
Wire Wire Line
	10250 5550 10150 5550
Wire Wire Line
	9750 5550 9650 5550
Wire Wire Line
	9650 5550 9650 5300
Text GLabel 8400 2850 2    50   Input ~ 0
KEY_UP
Text GLabel 8400 2750 2    50   Input ~ 0
KEY_DOWN
Wire Wire Line
	8400 2850 8300 2850
Wire Wire Line
	8300 2850 8300 3900
Wire Wire Line
	6850 3900 8300 3900
Wire Wire Line
	8400 2750 8200 2750
Wire Wire Line
	8200 2750 8200 3800
Wire Wire Line
	6850 3800 8200 3800
Wire Wire Line
	8400 4000 8400 2950
Wire Wire Line
	8400 2950 8450 2950
Wire Wire Line
	6850 4000 8400 4000
NoConn ~ 4600 5950
NoConn ~ 4600 6050
NoConn ~ 4600 6150
NoConn ~ 4600 6250
NoConn ~ 3500 3000
$EndSCHEMATC
