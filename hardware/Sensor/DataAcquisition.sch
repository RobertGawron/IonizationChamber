EESchema Schematic File Version 4
LIBS:chamber-cache
EELAYER 29 0
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
$Comp
L MCU_ST_STM32F0:STM32F070F6Px U36
U 1 1 5CE09077
P 8050 3400
F 0 "U36" H 8000 2511 50  0000 C CNN
F 1 "STM32F070F6Px" H 8000 2420 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 7450 2700 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00141386.pdf" H 8050 3400 50  0001 C CNN
	1    8050 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR073
U 1 1 5CE0AD0A
P 7850 4400
F 0 "#PWR073" H 7850 4150 50  0001 C CNN
F 1 "GND" H 7855 4227 50  0000 C CNN
F 2 "" H 7850 4400 50  0001 C CNN
F 3 "" H 7850 4400 50  0001 C CNN
	1    7850 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C52
U 1 1 5CE0B1F1
P 8150 2200
F 0 "C52" V 7898 2200 50  0000 C CNN
F 1 "100n" V 7989 2200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8188 2050 50  0001 C CNN
F 3 "~" H 8150 2200 50  0001 C CNN
	1    8150 2200
	0    1    1    0   
$EndComp
$Comp
L Device:C C53
U 1 1 5CE0B49B
P 8150 2600
F 0 "C53" V 7898 2600 50  0000 C CNN
F 1 "100n" V 7989 2600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8188 2450 50  0001 C CNN
F 3 "~" H 8150 2600 50  0001 C CNN
	1    8150 2600
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR072
U 1 1 5CE0B768
P 7850 2100
F 0 "#PWR072" H 7850 1950 50  0001 C CNN
F 1 "+5V" H 7792 2137 50  0000 R CNN
F 2 "" H 7850 2100 50  0001 C CNN
F 3 "" H 7850 2100 50  0001 C CNN
	1    7850 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR074
U 1 1 5CE0CF24
P 7950 2100
F 0 "#PWR074" H 7950 1950 50  0001 C CNN
F 1 "+5V" H 7965 2273 50  0000 C CNN
F 2 "" H 7950 2100 50  0001 C CNN
F 3 "" H 7950 2100 50  0001 C CNN
	1    7950 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2700 7850 2600
Wire Wire Line
	7950 2700 7950 2100
Wire Wire Line
	8000 2200 7850 2200
Connection ~ 7850 2200
Wire Wire Line
	7850 2200 7850 2100
Wire Wire Line
	8000 2600 7850 2600
Connection ~ 7850 2600
Wire Wire Line
	7850 2600 7850 2200
Wire Wire Line
	7850 4400 7850 4200
$Comp
L power:GND #PWR075
U 1 1 5CE0D681
P 8350 2200
F 0 "#PWR075" H 8350 1950 50  0001 C CNN
F 1 "GND" V 8355 2072 50  0000 R CNN
F 2 "" H 8350 2200 50  0001 C CNN
F 3 "" H 8350 2200 50  0001 C CNN
	1    8350 2200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR076
U 1 1 5CE0DCE2
P 8350 2600
F 0 "#PWR076" H 8350 2350 50  0001 C CNN
F 1 "GND" V 8355 2472 50  0000 R CNN
F 2 "" H 8350 2600 50  0001 C CNN
F 3 "" H 8350 2600 50  0001 C CNN
	1    8350 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8350 2600 8300 2600
Wire Wire Line
	8350 2200 8300 2200
$Comp
L Analog_ADC:MCP3425A0T-ECH U53
U 1 1 5CE1FB53
P 4100 2050
F 0 "U53" H 4100 2631 50  0000 C CNN
F 1 "MCP3425A0T-ECH" H 4100 2540 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 4100 2050 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22072b.pdf" H 4100 2050 50  0001 C CNN
	1    4100 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C50
U 1 1 5CE20396
P 4300 1400
F 0 "C50" V 4048 1400 50  0000 C CNN
F 1 "100n" V 4139 1400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4338 1250 50  0001 C CNN
F 3 "~" H 4300 1400 50  0001 C CNN
	1    4300 1400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR071
U 1 1 5CE209CE
P 4550 1500
F 0 "#PWR071" H 4550 1250 50  0001 C CNN
F 1 "GND" H 4555 1327 50  0000 C CNN
F 2 "" H 4550 1500 50  0001 C CNN
F 3 "" H 4550 1500 50  0001 C CNN
	1    4550 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR069
U 1 1 5CE20FA6
P 4100 950
F 0 "#PWR069" H 4100 800 50  0001 C CNN
F 1 "+5V" H 4042 987 50  0000 R CNN
F 2 "" H 4100 950 50  0001 C CNN
F 3 "" H 4100 950 50  0001 C CNN
	1    4100 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1650 4100 1400
Wire Wire Line
	4150 1400 4100 1400
Connection ~ 4100 1400
Wire Wire Line
	4450 1400 4550 1400
Wire Wire Line
	4550 1400 4550 1500
$Comp
L power:GND #PWR070
U 1 1 5CE21853
P 4100 2500
F 0 "#PWR070" H 4100 2250 50  0001 C CNN
F 1 "GND" H 4105 2327 50  0000 C CNN
F 2 "" H 4100 2500 50  0001 C CNN
F 3 "" H 4100 2500 50  0001 C CNN
	1    4100 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2500 4100 2450
$Comp
L Device:CP C51
U 1 1 5CE1E85D
P 4300 1000
F 0 "C51" V 4045 1000 50  0000 C CNN
F 1 "10n" V 4136 1000 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B" H 4338 850 50  0001 C CNN
F 3 "~" H 4300 1000 50  0001 C CNN
	1    4300 1000
	0    1    1    0   
$EndComp
$Comp
L Device:R R51
U 1 1 5CE1FD3A
P 3300 1950
F 0 "R51" V 3093 1950 50  0000 C CNN
F 1 "0R" V 3184 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3230 1950 50  0001 C CNN
F 3 "~" H 3300 1950 50  0001 C CNN
	1    3300 1950
	0    1    1    0   
$EndComp
$Comp
L Device:R R50
U 1 1 5CE20592
P 3300 2150
F 0 "R50" V 3415 2150 50  0000 C CNN
F 1 "0R" V 3506 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3230 2150 50  0001 C CNN
F 3 "~" H 3300 2150 50  0001 C CNN
	1    3300 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R R53
U 1 1 5CE272E1
P 2850 2200
F 0 "R53" H 2780 2154 50  0000 R CNN
F 1 "R" H 2780 2245 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2780 2200 50  0001 C CNN
F 3 "~" H 2850 2200 50  0001 C CNN
	1    2850 2200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R52
U 1 1 5CE276BE
P 2850 1700
F 0 "R52" H 2780 1654 50  0000 R CNN
F 1 "22k" H 2780 1745 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2780 1700 50  0001 C CNN
F 3 "~" H 2850 1700 50  0001 C CNN
	1    2850 1700
	-1   0    0    1   
$EndComp
$Comp
L Device:Opamp_Dual_Generic U51
U 1 1 5CE29303
P 3150 3750
F 0 "U51" H 3150 4117 50  0000 C CNN
F 1 "Opamp_Dual_Generic" H 3150 4026 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3150 3750 50  0001 C CNN
F 3 "~" H 3150 3750 50  0001 C CNN
	1    3150 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U51
U 2 1 5CE29A94
P 3950 6550
F 0 "U51" H 3950 6917 50  0000 C CNN
F 1 "Opamp_Dual_Generic" H 3950 6826 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3950 6550 50  0001 C CNN
F 3 "~" H 3950 6550 50  0001 C CNN
	2    3950 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U51
U 3 1 5CE2A0E4
P 8150 5950
F 0 "U51" H 8108 5996 50  0000 L CNN
F 1 "Opamp_Dual_Generic" H 8108 5905 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8150 5950 50  0001 C CNN
F 3 "~" H 8150 5950 50  0001 C CNN
	3    8150 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:D D50
U 1 1 5CE32761
P 3200 4150
F 0 "D50" H 3200 4366 50  0000 C CNN
F 1 "1n148" H 3200 4275 50  0000 C CNN
F 2 "Diode_SMD:D_MiniMELF" H 3200 4150 50  0001 C CNN
F 3 "~" H 3200 4150 50  0001 C CNN
	1    3200 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C54
U 1 1 5CE32C75
P 2400 4750
F 0 "C54" V 2148 4750 50  0000 C CNN
F 1 "100n" V 2239 4750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2438 4600 50  0001 C CNN
F 3 "~" H 2400 4750 50  0001 C CNN
	1    2400 4750
	-1   0    0    1   
$EndComp
$Comp
L Analog_ADC:MCP3425A0T-ECH U52
U 1 1 5CE375F5
P 4100 4750
F 0 "U52" H 4100 5331 50  0000 C CNN
F 1 "MCP3425A0T-ECH" H 4100 5240 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 4100 4750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22072b.pdf" H 4100 4750 50  0001 C CNN
	1    4100 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C55
U 1 1 5CE37B6C
P 4300 4000
F 0 "C55" V 4048 4000 50  0000 C CNN
F 1 "100n" V 4139 4000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4338 3850 50  0001 C CNN
F 3 "~" H 4300 4000 50  0001 C CNN
	1    4300 4000
	0    1    1    0   
$EndComp
$Comp
L Device:CP C56
U 1 1 5CE37F43
P 4300 3600
F 0 "C56" V 4045 3600 50  0000 C CNN
F 1 "10n" V 4136 3600 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B" H 4338 3450 50  0001 C CNN
F 3 "~" H 4300 3600 50  0001 C CNN
	1    4300 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R R55
U 1 1 5CE3AD8E
P 1350 4750
F 0 "R55" V 1557 4750 50  0000 C CNN
F 1 "1k" V 1466 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1280 4750 50  0001 C CNN
F 3 "~" H 1350 4750 50  0001 C CNN
	1    1350 4750
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C57
U 1 1 5CEB7E54
P 7850 6000
F 0 "C57" H 7965 5954 50  0000 L CNN
F 1 "100n" H 7965 6045 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7888 5850 50  0001 C CNN
F 3 "~" H 7850 6000 50  0001 C CNN
	1    7850 6000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR078
U 1 1 5CEB8C0F
P 8050 6400
F 0 "#PWR078" H 8050 6150 50  0001 C CNN
F 1 "GND" V 8055 6272 50  0000 R CNN
F 2 "" H 8050 6400 50  0001 C CNN
F 3 "" H 8050 6400 50  0001 C CNN
	1    8050 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR077
U 1 1 5CEB9386
P 8050 5550
F 0 "#PWR077" H 8050 5400 50  0001 C CNN
F 1 "+5V" H 7992 5587 50  0000 R CNN
F 2 "" H 8050 5550 50  0001 C CNN
F 3 "" H 8050 5550 50  0001 C CNN
	1    8050 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 6400 8050 6300
Wire Wire Line
	8050 6300 7850 6300
Wire Wire Line
	7850 6300 7850 6150
Connection ~ 8050 6300
Wire Wire Line
	8050 6300 8050 6250
Wire Wire Line
	8050 5650 8050 5600
Wire Wire Line
	8050 5600 7850 5600
Wire Wire Line
	7850 5600 7850 5850
Connection ~ 8050 5600
Wire Wire Line
	8050 5600 8050 5550
$Comp
L power:GND #PWR0101
U 1 1 5CEBC06D
P 2400 5150
F 0 "#PWR0101" H 2400 4900 50  0001 C CNN
F 1 "GND" V 2405 5022 50  0000 R CNN
F 2 "" H 2400 5150 50  0001 C CNN
F 3 "" H 2400 5150 50  0001 C CNN
	1    2400 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4750 1500 4750
Wire Wire Line
	1900 5050 1900 4950
Wire Wire Line
	3050 4150 2800 4150
Wire Wire Line
	3500 4150 3500 3750
Wire Wire Line
	3500 3750 3450 3750
Wire Wire Line
	2850 3850 2800 3850
Wire Wire Line
	2800 3850 2800 4150
Wire Wire Line
	4100 950  4100 1000
Wire Wire Line
	4150 1000 4100 1000
Connection ~ 4100 1000
Wire Wire Line
	4100 1000 4100 1400
$Comp
L power:GND #PWR0103
U 1 1 5CEC4630
P 4550 1100
F 0 "#PWR0103" H 4550 850 50  0001 C CNN
F 1 "GND" H 4555 927 50  0000 C CNN
F 2 "" H 4550 1100 50  0001 C CNN
F 3 "" H 4550 1100 50  0001 C CNN
	1    4550 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1000 4550 1000
Wire Wire Line
	4550 1000 4550 1100
$Comp
L power:+5V #PWR0104
U 1 1 5CEC5BB5
P 4100 3450
F 0 "#PWR0104" H 4100 3300 50  0001 C CNN
F 1 "+5V" H 4042 3487 50  0000 R CNN
F 2 "" H 4100 3450 50  0001 C CNN
F 3 "" H 4100 3450 50  0001 C CNN
	1    4100 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5CEC60FD
P 4600 3700
F 0 "#PWR0105" H 4600 3450 50  0001 C CNN
F 1 "GND" H 4605 3527 50  0000 C CNN
F 2 "" H 4600 3700 50  0001 C CNN
F 3 "" H 4600 3700 50  0001 C CNN
	1    4600 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5CEC6490
P 4600 4150
F 0 "#PWR0106" H 4600 3900 50  0001 C CNN
F 1 "GND" H 4605 3977 50  0000 C CNN
F 2 "" H 4600 4150 50  0001 C CNN
F 3 "" H 4600 4150 50  0001 C CNN
	1    4600 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4350 4100 4000
Wire Wire Line
	4100 3600 4150 3600
Wire Wire Line
	4150 4000 4100 4000
Connection ~ 4100 4000
Wire Wire Line
	4100 4000 4100 3600
Wire Wire Line
	4450 4000 4600 4000
Wire Wire Line
	4600 4000 4600 4150
Wire Wire Line
	4450 3600 4600 3600
Wire Wire Line
	4600 3600 4600 3700
Wire Wire Line
	4100 3600 4100 3450
Connection ~ 4100 3600
$Comp
L Connector:Conn_01x04_Female J51
U 1 1 5CF52C6E
P 9600 5700
F 0 "J51" H 9628 5676 50  0000 L CNN
F 1 "Conn_01x04_Female" H 9628 5585 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Horizontal" H 9600 5700 50  0001 C CNN
F 3 "~" H 9600 5700 50  0001 C CNN
	1    9600 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BEC Q52
U 1 1 5CF7E72E
P 2500 4150
F 0 "Q52" H 2691 4104 50  0000 L CNN
F 1 "Q_NPN_BEC" H 2691 4195 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70_Handsoldering" H 2700 4250 50  0001 C CNN
F 3 "~" H 2500 4150 50  0001 C CNN
	1    2500 4150
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:2N7002 Q51
U 1 1 5CF7F1B0
P 1800 4750
F 0 "Q51" H 2006 4796 50  0000 L CNN
F 1 "2N7002" H 2006 4705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2000 4675 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 1800 4750 50  0001 L CNN
	1    1800 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4150 3350 4150
Wire Wire Line
	2800 4150 2700 4150
Connection ~ 2800 4150
Wire Wire Line
	2400 4350 2400 4450
Wire Wire Line
	2400 4450 1900 4450
Wire Wire Line
	1900 4450 1900 4550
Connection ~ 2400 4450
Wire Wire Line
	2400 4450 2400 4600
Wire Wire Line
	3600 4650 2800 4650
Wire Wire Line
	2800 4650 2800 4450
Wire Wire Line
	2800 4450 2400 4450
Wire Wire Line
	3600 4850 2800 4850
Wire Wire Line
	2800 4850 2800 5050
Wire Wire Line
	2800 5050 2400 5050
Wire Wire Line
	2400 4900 2400 5050
Connection ~ 2400 5050
Wire Wire Line
	2400 5050 2400 5150
$Comp
L power:GND #PWR082
U 1 1 5CFAD0BC
P 4100 5200
F 0 "#PWR082" H 4100 4950 50  0001 C CNN
F 1 "GND" V 4105 5072 50  0000 R CNN
F 2 "" H 4100 5200 50  0001 C CNN
F 3 "" H 4100 5200 50  0001 C CNN
	1    4100 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 5200 4100 5150
Wire Wire Line
	2400 5050 1900 5050
Wire Wire Line
	3600 1950 3450 1950
Wire Wire Line
	3600 2150 3450 2150
Wire Wire Line
	3150 2150 3150 2400
Wire Wire Line
	3150 2400 2850 2400
Wire Wire Line
	2850 2400 2850 2350
Wire Wire Line
	3150 1950 2850 1950
Wire Wire Line
	2850 1950 2850 2050
Wire Wire Line
	2850 1950 2850 1850
Connection ~ 2850 1950
$Comp
L power:GND #PWR081
U 1 1 5D026161
P 2850 2500
F 0 "#PWR081" H 2850 2250 50  0001 C CNN
F 1 "GND" H 2855 2327 50  0000 C CNN
F 2 "" H 2850 2500 50  0001 C CNN
F 3 "" H 2850 2500 50  0001 C CNN
	1    2850 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2500 2850 2400
Connection ~ 2850 2400
$Comp
L Device:R_POT_TRIM RV51
U 1 1 5D05493F
P 2950 6650
F 0 "RV51" H 2880 6696 50  0000 R CNN
F 1 "R_POT_TRIM" H 2880 6605 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 2950 6650 50  0001 C CNN
F 3 "~" H 2950 6650 50  0001 C CNN
	1    2950 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R57
U 1 1 5D055262
P 3350 6650
F 0 "R57" V 3557 6650 50  0000 C CNN
F 1 "1k" V 3466 6650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3280 6650 50  0001 C CNN
F 3 "~" H 3350 6650 50  0001 C CNN
	1    3350 6650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R58
U 1 1 5D05586E
P 4000 7000
F 0 "R58" V 4207 7000 50  0000 C CNN
F 1 "1k" V 4116 7000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3930 7000 50  0001 C CNN
F 3 "~" H 4000 7000 50  0001 C CNN
	1    4000 7000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R54
U 1 1 5D055B9A
P 2950 6200
F 0 "R54" H 3020 6246 50  0000 L CNN
F 1 "1k" H 3020 6155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2880 6200 50  0001 C CNN
F 3 "~" H 2950 6200 50  0001 C CNN
	1    2950 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R56
U 1 1 5D05600E
P 2950 7050
F 0 "R56" H 3020 7096 50  0000 L CNN
F 1 "1k" H 3020 7005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2880 7050 50  0001 C CNN
F 3 "~" H 2950 7050 50  0001 C CNN
	1    2950 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR080
U 1 1 5D059D6D
P 2950 7250
F 0 "#PWR080" H 2950 7000 50  0001 C CNN
F 1 "GND" V 2955 7122 50  0000 R CNN
F 2 "" H 2950 7250 50  0001 C CNN
F 3 "" H 2950 7250 50  0001 C CNN
	1    2950 7250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR079
U 1 1 5D05A0F6
P 2950 6000
F 0 "#PWR079" H 2950 5850 50  0001 C CNN
F 1 "+5V" H 2892 6037 50  0000 R CNN
F 2 "" H 2950 6000 50  0001 C CNN
F 3 "" H 2950 6000 50  0001 C CNN
	1    2950 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 6050 2950 6000
Wire Wire Line
	2950 6500 2950 6350
Wire Wire Line
	2950 6900 2950 6800
Wire Wire Line
	2950 7250 2950 7200
Wire Wire Line
	3200 6650 3100 6650
Wire Wire Line
	3500 6650 3550 6650
Wire Wire Line
	3550 6650 3550 7000
Wire Wire Line
	3550 7000 3850 7000
Connection ~ 3550 6650
Wire Wire Line
	3550 6650 3650 6650
Wire Wire Line
	4150 7000 4300 7000
Wire Wire Line
	4300 7000 4300 6550
Wire Wire Line
	4300 6550 4250 6550
Wire Wire Line
	2850 3650 2350 3650
Text GLabel 2350 3650 1    50   Input ~ 0
analog_output
Wire Wire Line
	3650 6450 2500 6450
Text GLabel 2500 6450 1    50   Input ~ 0
analog_output
Wire Wire Line
	2850 1550 2850 1500
Wire Wire Line
	2850 1500 2700 1500
Text GLabel 2700 1500 1    50   Input ~ 0
analog_output
Wire Wire Line
	4600 1950 4750 1950
Wire Wire Line
	4600 2050 4750 2050
Wire Wire Line
	4600 4650 4750 4650
Wire Wire Line
	4600 4750 4750 4750
Text Label 4750 4650 2    50   ~ 0
SCL
Text Label 4750 4750 2    50   ~ 0
SDA
Text Label 4750 1950 2    50   ~ 0
SCL
Text Label 4750 2050 2    50   ~ 0
SDA
$EndSCHEMATC
