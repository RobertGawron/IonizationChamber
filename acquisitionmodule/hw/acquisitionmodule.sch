EESchema Schematic File Version 4
LIBS:acquisitionmodule-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Connector:Conn_Coaxial J1
U 1 1 5BA4C499
P 3900 5000
F 0 "J1" H 3830 5238 50  0000 C CNN
F 1 "Conn_Coaxial" H 3830 5147 50  0000 C CNN
F 2 "Connectors:bnc-ci" H 3900 5000 50  0001 C CNN
F 3 " ~" H 3900 5000 50  0001 C CNN
	1    3900 5000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5BA4C559
P 4500 5000
F 0 "R2" V 4293 5000 50  0000 C CNN
F 1 "R" V 4384 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4430 5000 50  0001 C CNN
F 3 "~" H 4500 5000 50  0001 C CNN
	1    4500 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5BA4C5A3
P 4250 5200
F 0 "R1" H 4320 5246 50  0000 L CNN
F 1 "R" H 4320 5155 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4180 5200 50  0001 C CNN
F 3 "~" H 4250 5200 50  0001 C CNN
	1    4250 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5BA4C63A
P 4750 5250
F 0 "C1" H 4865 5296 50  0000 L CNN
F 1 "C" H 4865 5205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4788 5100 50  0001 C CNN
F 3 "~" H 4750 5250 50  0001 C CNN
	1    4750 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5BA4C7A0
P 3900 5450
F 0 "#PWR01" H 3900 5200 50  0001 C CNN
F 1 "GND" H 3905 5277 50  0000 C CNN
F 2 "" H 3900 5450 50  0001 C CNN
F 3 "" H 3900 5450 50  0001 C CNN
	1    3900 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5BA4C7BC
P 4250 5450
F 0 "#PWR02" H 4250 5200 50  0001 C CNN
F 1 "GND" H 4255 5277 50  0000 C CNN
F 2 "" H 4250 5450 50  0001 C CNN
F 3 "" H 4250 5450 50  0001 C CNN
	1    4250 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5BA4C7D1
P 4750 5450
F 0 "#PWR03" H 4750 5200 50  0001 C CNN
F 1 "GND" H 4755 5277 50  0000 C CNN
F 2 "" H 4750 5450 50  0001 C CNN
F 3 "" H 4750 5450 50  0001 C CNN
	1    4750 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5450 3900 5200
Wire Wire Line
	4250 5450 4250 5350
Wire Wire Line
	4750 5450 4750 5400
Wire Wire Line
	4650 5000 4750 5000
Wire Wire Line
	4750 5000 4750 5100
Wire Wire Line
	4100 5000 4250 5000
Wire Wire Line
	4250 5050 4250 5000
Connection ~ 4250 5000
Wire Wire Line
	4250 5000 4350 5000
$Comp
L Connector:USB_B_Mini J3
U 1 1 5BA4C9B2
P 1350 2650
F 0 "J3" H 1405 3117 50  0000 C CNN
F 1 "USB_B_Mini" H 1405 3026 50  0000 C CNN
F 2 "Connectors:USB_Mini-B" H 1500 2600 50  0001 C CNN
F 3 "~" H 1500 2600 50  0001 C CNN
	1    1350 2650
	1    0    0    -1  
$EndComp
$Comp
L IonizationChamber:ADS1110 U1
U 1 1 5BA4DF34
P 5750 4950
F 0 "U1" H 5750 5125 50  0000 C CNN
F 1 "ADS1110" H 5750 5034 50  0000 C CNN
F 2 "IonizationChamber:ADS1110" H 5750 5000 50  0001 C CNN
F 3 "" H 5750 5000 50  0001 C CNN
	1    5750 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5BA4E565
P 6750 4700
F 0 "R3" H 6820 4746 50  0000 L CNN
F 1 "R" H 6820 4655 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6680 4700 50  0001 C CNN
F 3 "~" H 6750 4700 50  0001 C CNN
	1    6750 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5BA4E5AB
P 6750 5200
F 0 "R4" H 6820 5246 50  0000 L CNN
F 1 "R" H 6820 5155 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6680 5200 50  0001 C CNN
F 3 "~" H 6750 5200 50  0001 C CNN
	1    6750 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5000 5400 5000
Connection ~ 4750 5000
$Comp
L power:GND #PWR04
U 1 1 5BA4E68A
P 5050 5450
F 0 "#PWR04" H 5050 5200 50  0001 C CNN
F 1 "GND" H 5055 5277 50  0000 C CNN
F 2 "" H 5050 5450 50  0001 C CNN
F 3 "" H 5050 5450 50  0001 C CNN
	1    5050 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5150 5050 5150
Wire Wire Line
	5050 5150 5050 5450
Wire Wire Line
	6100 5150 6500 5150
Wire Wire Line
	6100 5000 6750 5000
Wire Wire Line
	6750 5000 6750 5050
Wire Wire Line
	6750 5000 6750 4850
Connection ~ 6750 5000
$Comp
L power:GND #PWR08
U 1 1 5BA4EA72
P 6750 5600
F 0 "#PWR08" H 6750 5350 50  0001 C CNN
F 1 "GND" H 6755 5427 50  0000 C CNN
F 2 "" H 6750 5600 50  0001 C CNN
F 3 "" H 6750 5600 50  0001 C CNN
	1    6750 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 5600 6750 5350
$Comp
L power:GND #PWR011
U 1 1 5BA4EF8D
P 1250 3400
F 0 "#PWR011" H 1250 3150 50  0001 C CNN
F 1 "GND" H 1255 3227 50  0000 C CNN
F 2 "" H 1250 3400 50  0001 C CNN
F 3 "" H 1250 3400 50  0001 C CNN
	1    1250 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5BA4F023
P 6500 5400
F 0 "C2" H 6615 5446 50  0000 L CNN
F 1 "C" H 6615 5355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6538 5250 50  0001 C CNN
F 3 "~" H 6500 5400 50  0001 C CNN
	1    6500 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5BA4F091
P 6500 5600
F 0 "#PWR06" H 6500 5350 50  0001 C CNN
F 1 "GND" H 6505 5427 50  0000 C CNN
F 2 "" H 6500 5600 50  0001 C CNN
F 3 "" H 6500 5600 50  0001 C CNN
	1    6500 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5600 6500 5550
Wire Wire Line
	6500 5250 6500 5150
Connection ~ 6500 5150
Wire Wire Line
	1250 3150 1250 3050
Wire Wire Line
	1650 2450 1750 2450
$Comp
L Connector:AVR-ISP-6 J2
U 1 1 5BA51B52
P 6550 3000
F 0 "J2" H 6270 3096 50  0000 R CNN
F 1 "AVR-ISP-6" H 6270 3005 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" V 6300 3050 50  0001 C CNN
F 3 " ~" H 5275 2450 50  0001 C CNN
	1    6550 3000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5BA54376
P 6650 3450
F 0 "#PWR010" H 6650 3200 50  0001 C CNN
F 1 "GND" H 6655 3277 50  0000 C CNN
F 2 "" H 6650 3450 50  0001 C CNN
F 3 "" H 6650 3450 50  0001 C CNN
	1    6650 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6650 2500 6650 2450
Wire Wire Line
	6650 3450 6650 3400
Wire Wire Line
	1650 2750 1850 2750
Connection ~ 2350 2450
$Comp
L Device:C C7
U 1 1 5BAA8A81
P 2350 2700
F 0 "C7" H 2465 2746 50  0000 L CNN
F 1 "100n" H 2465 2655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2388 2550 50  0001 C CNN
F 3 "~" H 2350 2700 50  0001 C CNN
	1    2350 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5BAA8A88
P 2350 2900
F 0 "#PWR012" H 2350 2650 50  0001 C CNN
F 1 "GND" H 2355 2727 50  0000 C CNN
F 2 "" H 2350 2900 50  0001 C CNN
F 3 "" H 2350 2900 50  0001 C CNN
	1    2350 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2850 2350 2900
Wire Wire Line
	2350 2450 2350 2550
Wire Wire Line
	1350 3050 1350 3150
Wire Wire Line
	1350 3150 1250 3150
Connection ~ 1250 3150
$Comp
L power:GND #PWR0106
U 1 1 5BAF5E04
P 10100 4550
F 0 "#PWR0106" H 10100 4300 50  0001 C CNN
F 1 "GND" H 10105 4377 50  0000 C CNN
F 2 "" H 10100 4550 50  0001 C CNN
F 3 "" H 10100 4550 50  0001 C CNN
	1    10100 4550
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5BAF5EFB
P 10100 4300
F 0 "SW1" V 10146 4252 50  0000 R CNN
F 1 "SW_Push" V 10055 4252 50  0000 R CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h4.3mm" H 10100 4500 50  0001 C CNN
F 3 "" H 10100 4500 50  0001 C CNN
	1    10100 4300
	0    1    -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5BAF5F8F
P 10100 3600
F 0 "R7" H 10170 3646 50  0000 L CNN
F 1 "1k" H 10170 3555 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10030 3600 50  0001 C CNN
F 3 "~" H 10100 3600 50  0001 C CNN
	1    10100 3600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5BAF60B3
P 9750 4050
F 0 "R8" V 9543 4050 50  0000 C CNN
F 1 "1k" V 9634 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9680 4050 50  0001 C CNN
F 3 "~" H 9750 4050 50  0001 C CNN
	1    9750 4050
	0    -1   1    0   
$EndComp
$Comp
L Device:C C8
U 1 1 5BAF61CC
P 9500 4300
F 0 "C8" H 9615 4346 50  0000 L CNN
F 1 "100n" H 9615 4255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9538 4150 50  0001 C CNN
F 3 "~" H 9500 4300 50  0001 C CNN
	1    9500 4300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5BB00184
P 9500 4550
F 0 "#PWR0108" H 9500 4300 50  0001 C CNN
F 1 "GND" H 9505 4377 50  0000 C CNN
F 2 "" H 9500 4550 50  0001 C CNN
F 3 "" H 9500 4550 50  0001 C CNN
	1    9500 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10100 3450 10100 3400
Wire Wire Line
	9900 4050 10100 4050
Wire Wire Line
	10100 4100 10100 4050
Connection ~ 10100 4050
Wire Wire Line
	10100 4550 10100 4500
Wire Wire Line
	9600 4050 9500 4050
Wire Wire Line
	9500 4050 9500 4150
$Comp
L power:GND #PWR0109
U 1 1 5BB12EDF
P 8850 4550
F 0 "#PWR0109" H 8850 4300 50  0001 C CNN
F 1 "GND" H 8855 4377 50  0000 C CNN
F 2 "" H 8850 4550 50  0001 C CNN
F 3 "" H 8850 4550 50  0001 C CNN
	1    8850 4550
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5BB12EE5
P 8850 4300
F 0 "SW2" V 8896 4252 50  0000 R CNN
F 1 "SW_Push" V 8805 4252 50  0000 R CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h4.3mm" H 8850 4500 50  0001 C CNN
F 3 "" H 8850 4500 50  0001 C CNN
	1    8850 4300
	0    1    -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 5BB12EEC
P 8850 3600
F 0 "R9" H 8920 3646 50  0000 L CNN
F 1 "1k" H 8920 3555 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8780 3600 50  0001 C CNN
F 3 "~" H 8850 3600 50  0001 C CNN
	1    8850 3600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5BB12EF9
P 8500 4050
F 0 "R10" V 8293 4050 50  0000 C CNN
F 1 "1k" V 8384 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8430 4050 50  0001 C CNN
F 3 "~" H 8500 4050 50  0001 C CNN
	1    8500 4050
	0    -1   1    0   
$EndComp
$Comp
L Device:C C9
U 1 1 5BB12F00
P 8250 4300
F 0 "C9" H 8365 4346 50  0000 L CNN
F 1 "100n" H 8365 4255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8288 4150 50  0001 C CNN
F 3 "~" H 8250 4300 50  0001 C CNN
	1    8250 4300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5BB12F07
P 8250 4550
F 0 "#PWR0111" H 8250 4300 50  0001 C CNN
F 1 "GND" H 8255 4377 50  0000 C CNN
F 2 "" H 8250 4550 50  0001 C CNN
F 3 "" H 8250 4550 50  0001 C CNN
	1    8250 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8850 3450 8850 3400
Wire Wire Line
	8650 4050 8850 4050
Wire Wire Line
	8850 4050 8850 3750
Wire Wire Line
	8850 4100 8850 4050
Connection ~ 8850 4050
Wire Wire Line
	8850 4550 8850 4500
Wire Wire Line
	8350 4050 8250 4050
Wire Wire Line
	8250 4050 8250 4150
Wire Wire Line
	8250 4050 8000 4050
Connection ~ 8250 4050
Wire Wire Line
	1650 2850 1700 2850
Wire Wire Line
	1700 2850 1700 3150
Wire Wire Line
	1700 3150 1350 3150
Connection ~ 1350 3150
$Comp
L Device:C C10
U 1 1 5BB618EA
P 4500 4500
F 0 "C10" H 4615 4546 50  0000 L CNN
F 1 "C" H 4615 4455 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4538 4350 50  0001 C CNN
F 3 "~" H 4500 4500 50  0001 C CNN
	1    4500 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 5000 4250 4500
Wire Wire Line
	4250 4500 4350 4500
Wire Wire Line
	4750 4500 4650 4500
$Comp
L IonizationChamber:TLV70033 U2
U 1 1 5BA62D4A
P 2650 4300
F 0 "U2" H 2675 4475 50  0000 C CNN
F 1 "TLV70033" H 2675 4384 50  0000 C CNN
F 2 "Housings_SOIC:SO-5_4.4x3.6mm_Pitch1.27mm" H 2550 4300 50  0001 C CNN
F 3 "" H 2550 4300 50  0001 C CNN
	1    2650 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4500 4750 5000
Wire Wire Line
	2400 4350 2300 4350
Connection ~ 2300 4350
$Comp
L Device:C C3
U 1 1 5BA74298
P 2300 5050
F 0 "C3" H 2415 5096 50  0000 L CNN
F 1 "C" H 2415 5005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2338 4900 50  0001 C CNN
F 3 "~" H 2300 5050 50  0001 C CNN
	1    2300 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5BA742F0
P 3250 5050
F 0 "C5" H 3365 5096 50  0000 L CNN
F 1 "C" H 3365 5005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3288 4900 50  0001 C CNN
F 3 "~" H 3250 5050 50  0001 C CNN
	1    3250 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5BA74354
P 2300 5450
F 0 "#PWR05" H 2300 5200 50  0001 C CNN
F 1 "GND" H 2305 5277 50  0000 C CNN
F 2 "" H 2300 5450 50  0001 C CNN
F 3 "" H 2300 5450 50  0001 C CNN
	1    2300 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5BA743A1
P 3250 5450
F 0 "#PWR015" H 3250 5200 50  0001 C CNN
F 1 "GND" H 3255 5277 50  0000 C CNN
F 2 "" H 3250 5450 50  0001 C CNN
F 3 "" H 3250 5450 50  0001 C CNN
	1    3250 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 5450 2300 5200
Wire Wire Line
	3250 5450 3250 5200
$Comp
L power:GND #PWR013
U 1 1 5BA8AF5D
P 3050 5450
F 0 "#PWR013" H 3050 5200 50  0001 C CNN
F 1 "GND" H 3055 5277 50  0000 C CNN
F 2 "" H 3050 5450 50  0001 C CNN
F 3 "" H 3050 5450 50  0001 C CNN
	1    3050 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 5450 3050 4450
Wire Wire Line
	3050 4450 2950 4450
Wire Wire Line
	2300 4350 2300 4450
Wire Wire Line
	2400 4450 2300 4450
Wire Wire Line
	6500 4350 6500 5150
Wire Wire Line
	3250 4350 6500 4350
Wire Wire Line
	6500 4350 6750 4350
Wire Wire Line
	6750 4350 6750 4550
Connection ~ 6500 4350
Wire Wire Line
	3250 4350 3250 4900
Wire Wire Line
	2950 4350 3250 4350
Connection ~ 3250 4350
Wire Wire Line
	10100 3750 10100 4050
$Comp
L MCU_Microchip_ATtiny:ATtiny84A-SSU U4
U 1 1 5BB12012
P 4550 2450
F 0 "U4" V 3883 2450 50  0000 C CNN
F 1 "ATtiny84A-SSU" V 3974 2450 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 4550 2450 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8183.pdf" H 4550 2450 50  0001 C CNN
	1    4550 2450
	0    -1   1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5BB35578
P 3400 2700
F 0 "C4" H 3515 2746 50  0000 L CNN
F 1 "100n" H 3515 2655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3438 2550 50  0001 C CNN
F 3 "~" H 3400 2700 50  0001 C CNN
	1    3400 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5BB3557F
P 3400 2900
F 0 "#PWR014" H 3400 2650 50  0001 C CNN
F 1 "GND" H 3405 2727 50  0000 C CNN
F 2 "" H 3400 2900 50  0001 C CNN
F 3 "" H 3400 2900 50  0001 C CNN
	1    3400 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2450 2500 2450
Wire Wire Line
	2500 2550 2500 2450
Connection ~ 2500 2450
Wire Wire Line
	2500 2450 2600 2450
Wire Wire Line
	3150 2450 3400 2450
Wire Wire Line
	3400 2450 3400 2550
Wire Wire Line
	3400 2900 3400 2850
$Comp
L power:GND #PWR07
U 1 1 5BB4748F
P 3200 2900
F 0 "#PWR07" H 3200 2650 50  0001 C CNN
F 1 "GND" H 3205 2727 50  0000 C CNN
F 2 "" H 3200 2900 50  0001 C CNN
F 3 "" H 3200 2900 50  0001 C CNN
	1    3200 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2550 3200 2550
Wire Wire Line
	3200 2550 3200 2900
Wire Wire Line
	3400 2450 3650 2450
Connection ~ 3400 2450
Connection ~ 2300 4450
Wire Wire Line
	2300 4450 2300 4900
Wire Wire Line
	1750 2450 1750 4350
Wire Wire Line
	1750 4350 2300 4350
Wire Wire Line
	1750 2450 2100 2450
$Comp
L IonizationChamber:TLV70033 U3
U 1 1 5BA62E02
P 2850 2400
F 0 "U3" H 2875 2575 50  0000 C CNN
F 1 "TLV70033" H 2875 2484 50  0000 C CNN
F 2 "Housings_SOIC:SO-5_4.4x3.6mm_Pitch1.27mm" H 2750 2400 50  0001 C CNN
F 3 "" H 2750 2400 50  0001 C CNN
	1    2850 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2550 2500 2550
Connection ~ 1750 2450
$Comp
L power:GND #PWR016
U 1 1 5BB6759F
P 5550 2550
F 0 "#PWR016" H 5550 2300 50  0001 C CNN
F 1 "GND" H 5555 2377 50  0000 C CNN
F 2 "" H 5550 2550 50  0001 C CNN
F 3 "" H 5550 2550 50  0001 C CNN
	1    5550 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2450 5550 2450
Wire Wire Line
	5550 2450 5550 2550
$Comp
L Device:Crystal Y1
U 1 1 5BB7CAB5
P 6450 1500
F 0 "Y1" H 6450 1768 50  0000 C CNN
F 1 "Crystal" H 6450 1677 50  0000 C CNN
F 2 "Crystals:Crystal_SMD_7050-2pin_7.0x5.0mm_HandSoldering" H 6450 1500 50  0001 C CNN
F 3 "~" H 6450 1500 50  0001 C CNN
	1    6450 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5BB7CB21
P 6250 1750
F 0 "C6" H 6365 1796 50  0000 L CNN
F 1 "100n" H 6365 1705 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6288 1600 50  0001 C CNN
F 3 "~" H 6250 1750 50  0001 C CNN
	1    6250 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5BB7CB7B
P 6750 1750
F 0 "C11" H 6865 1796 50  0000 L CNN
F 1 "100n" H 6865 1705 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6788 1600 50  0001 C CNN
F 3 "~" H 6750 1750 50  0001 C CNN
	1    6750 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5BB7CBCF
P 6250 1950
F 0 "#PWR017" H 6250 1700 50  0001 C CNN
F 1 "GND" H 6255 1777 50  0000 C CNN
F 2 "" H 6250 1950 50  0001 C CNN
F 3 "" H 6250 1950 50  0001 C CNN
	1    6250 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5BB7CC14
P 6750 1950
F 0 "#PWR018" H 6750 1700 50  0001 C CNN
F 1 "GND" H 6755 1777 50  0000 C CNN
F 2 "" H 6750 1950 50  0001 C CNN
F 3 "" H 6750 1950 50  0001 C CNN
	1    6750 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1500 6250 1500
Connection ~ 6250 1500
Wire Wire Line
	6250 1500 6250 1600
Wire Wire Line
	6600 1500 6750 1500
Wire Wire Line
	6750 1500 6750 1600
Wire Wire Line
	6750 1950 6750 1900
Wire Wire Line
	6250 1950 6250 1900
Wire Wire Line
	4850 3050 4850 3350
Wire Wire Line
	4950 3050 4950 3350
$Comp
L Device:R R5
U 1 1 5BBAAF23
P 2100 3200
F 0 "R5" H 2170 3246 50  0000 L CNN
F 1 "R" H 2170 3155 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2030 3200 50  0001 C CNN
F 3 "~" H 2100 3200 50  0001 C CNN
	1    2100 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5BBAB1A5
P 2550 3400
F 0 "R6" H 2620 3446 50  0000 L CNN
F 1 "R" H 2620 3355 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2480 3400 50  0001 C CNN
F 3 "~" H 2550 3400 50  0001 C CNN
	1    2550 3400
	0    1    -1   0   
$EndComp
$Comp
L Device:R R11
U 1 1 5BBAE4AA
P 2550 3550
F 0 "R11" H 2620 3596 50  0000 L CNN
F 1 "R" H 2620 3505 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2480 3550 50  0001 C CNN
F 3 "~" H 2550 3550 50  0001 C CNN
	1    2550 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 2750 1850 3550
Wire Wire Line
	1850 3550 2100 3550
Wire Wire Line
	2100 3350 2100 3550
Connection ~ 2100 3550
Wire Wire Line
	2100 3550 2400 3550
Wire Wire Line
	1950 2650 1950 3400
Wire Wire Line
	1950 3400 2400 3400
Wire Wire Line
	1650 2650 1950 2650
Wire Wire Line
	2100 3050 2100 2450
Connection ~ 2100 2450
Wire Wire Line
	2700 3400 3950 3400
Wire Wire Line
	3950 3400 3950 3050
Wire Wire Line
	2700 3550 4050 3550
Wire Wire Line
	4050 3550 4050 3050
Text Label 8000 4000 0    50   ~ 0
KEY_A
Text Label 9300 4000 0    50   ~ 0
KEY_B
Wire Wire Line
	8250 4550 8250 4450
Wire Wire Line
	9500 4550 9500 4450
Wire Wire Line
	2100 2450 2350 2450
Wire Wire Line
	5400 5300 5250 5300
Wire Wire Line
	6100 5300 6300 5300
Text Label 6100 5300 0    50   ~ 0
SDA
Text Label 5250 5300 0    50   ~ 0
SCL
Entry Wire Line
	6200 5400 6300 5300
Entry Wire Line
	5150 5400 5250 5300
Text Label 4350 3450 1    50   ~ 0
SCL
Wire Wire Line
	4550 3050 4550 3450
Text Label 4550 3450 1    50   ~ 0
SDA
Wire Bus Line
	5150 5400 6200 5400
Entry Wire Line
	4350 3450 4450 3550
Entry Wire Line
	4550 3450 4650 3550
Wire Bus Line
	5150 3550 5150 4200
Wire Wire Line
	6150 2800 5900 2800
Wire Wire Line
	6150 2900 5900 2900
Wire Wire Line
	6150 3000 5900 3000
Wire Wire Line
	6150 3100 5900 3100
Text Label 5950 2800 0    50   ~ 0
MISO
Text Label 5950 2900 0    50   ~ 0
MOSI
Text Label 5950 3000 0    50   ~ 0
SCK
Text Label 5950 3100 0    50   ~ 0
RST
Entry Wire Line
	5800 2900 5900 2800
Entry Wire Line
	5800 3000 5900 2900
Entry Wire Line
	5800 3100 5900 3000
Entry Wire Line
	5800 3200 5900 3100
Text Label 4450 3250 1    50   ~ 0
MISO
Text Label 4550 3250 1    50   ~ 0
MOSI
Text Label 5150 3400 1    50   ~ 0
RST
Text Label 4350 3250 1    50   ~ 0
SCK
Entry Wire Line
	4350 3400 4450 3500
Entry Wire Line
	4450 3400 4550 3500
Entry Wire Line
	5150 3400 5250 3500
Wire Wire Line
	4450 3050 4450 3400
$Comp
L IonizationChamber:128x32px_LCD_I2C U5
U 1 1 5BC9459E
P 8300 5150
F 0 "U5" H 8827 5001 50  0000 L CNN
F 1 "128x32px_LCD_I2C" H 8827 4910 50  0000 L CNN
F 2 "IonizationChamber:128x32px_LCD_I2C" H 8300 5250 50  0001 C CNN
F 3 "" H 8300 5250 50  0001 C CNN
	1    8300 5150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0101
U 1 1 5BC9471E
P 3400 2350
F 0 "#PWR0101" H 3400 2200 50  0001 C CNN
F 1 "+3V3" H 3415 2523 50  0000 C CNN
F 2 "" H 3400 2350 50  0001 C CNN
F 3 "" H 3400 2350 50  0001 C CNN
	1    3400 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2450 3400 2350
$Comp
L power:+3V3 #PWR0102
U 1 1 5BC98960
P 7650 5100
F 0 "#PWR0102" H 7650 4950 50  0001 C CNN
F 1 "+3V3" H 7665 5273 50  0000 C CNN
F 2 "" H 7650 5100 50  0001 C CNN
F 3 "" H 7650 5100 50  0001 C CNN
	1    7650 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5BC98AD6
P 7650 5600
F 0 "#PWR0103" H 7650 5350 50  0001 C CNN
F 1 "GND" H 7655 5427 50  0000 C CNN
F 2 "" H 7650 5600 50  0001 C CNN
F 3 "" H 7650 5600 50  0001 C CNN
	1    7650 5600
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0104
U 1 1 5BC98CD0
P 10100 3400
F 0 "#PWR0104" H 10100 3250 50  0001 C CNN
F 1 "+3V3" H 10115 3573 50  0000 C CNN
F 2 "" H 10100 3400 50  0001 C CNN
F 3 "" H 10100 3400 50  0001 C CNN
	1    10100 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0105
U 1 1 5BC98D1D
P 8850 3400
F 0 "#PWR0105" H 8850 3250 50  0001 C CNN
F 1 "+3V3" H 8865 3573 50  0000 C CNN
F 2 "" H 8850 3400 50  0001 C CNN
F 3 "" H 8850 3400 50  0001 C CNN
	1    8850 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 5200 7650 5200
Wire Wire Line
	7650 5200 7650 5100
Wire Wire Line
	7700 5300 7650 5300
Wire Wire Line
	7650 5300 7650 5600
Wire Wire Line
	7400 5400 7700 5400
Wire Wire Line
	7700 5500 7400 5500
Text Label 7400 5400 0    50   ~ 0
SDA
Text Label 7400 5500 0    50   ~ 0
SCL
Entry Wire Line
	7300 5300 7400 5400
Entry Wire Line
	7300 5400 7400 5500
Wire Bus Line
	7300 4200 5150 4200
Connection ~ 5150 4200
Wire Bus Line
	5150 4200 5150 5400
Wire Wire Line
	5150 3050 5150 3400
Text Label 4850 3300 1    50   ~ 0
XTAL1
Text Label 4950 3300 1    50   ~ 0
XTAL2
Entry Wire Line
	4850 3350 4950 3450
Entry Wire Line
	4950 3350 5050 3450
Wire Bus Line
	5700 3450 5700 1150
Wire Wire Line
	6250 1250 6250 1500
Text Label 6250 1450 1    50   ~ 0
XTAL1
Wire Wire Line
	6750 1500 6750 1250
Connection ~ 6750 1500
Text Label 6750 1450 1    50   ~ 0
XTAL2
Entry Wire Line
	6650 1150 6750 1250
Entry Wire Line
	6150 1150 6250 1250
Wire Wire Line
	9500 4050 9300 4050
Connection ~ 9500 4050
Entry Wire Line
	9200 3800 9300 3900
Entry Wire Line
	7900 3800 8000 3900
Wire Wire Line
	9300 4050 9300 3900
Wire Wire Line
	8000 4050 8000 3900
Text Label 4150 3450 1    50   ~ 0
KEY_A
Text Label 4250 3450 1    50   ~ 0
KEY_B
Entry Wire Line
	4250 3700 4350 3800
Entry Wire Line
	4150 3700 4250 3800
Wire Wire Line
	4150 3050 4150 3700
Wire Wire Line
	4250 3050 4250 3700
Wire Wire Line
	1250 3150 1250 3400
$Comp
L power:+3V3 #PWR0107
U 1 1 5BA66D32
P 6650 2450
F 0 "#PWR0107" H 6650 2300 50  0001 C CNN
F 1 "+3V3" H 6665 2623 50  0000 C CNN
F 2 "" H 6650 2450 50  0001 C CNN
F 3 "" H 6650 2450 50  0001 C CNN
	1    6650 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3050 4650 3250
Wire Wire Line
	4650 3250 4750 3250
Wire Wire Line
	4750 3250 4750 3600
Wire Wire Line
	5050 3050 5050 3250
Wire Wire Line
	5050 3250 5400 3250
Wire Wire Line
	5400 3250 5400 3600
Text Label 4650 3250 1    50   ~ 0
IO1
Text Label 5050 3250 1    50   ~ 0
IO2
Entry Wire Line
	4750 3600 4850 3700
Entry Wire Line
	5400 3600 5500 3700
Entry Wire Line
	7800 3100 7900 3000
Entry Wire Line
	7800 3200 7900 3100
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5BA946AD
P 8250 2900
F 0 "J4" H 8330 2892 50  0000 L CNN
F 1 "Conn_01x04" H 8330 2801 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 8250 2900 50  0001 C CNN
F 3 "~" H 8250 2900 50  0001 C CNN
	1    8250 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5BA948D9
P 7650 3000
F 0 "#PWR0110" H 7650 2750 50  0001 C CNN
F 1 "GND" H 7655 2827 50  0000 C CNN
F 2 "" H 7650 3000 50  0001 C CNN
F 3 "" H 7650 3000 50  0001 C CNN
	1    7650 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0112
U 1 1 5BA94928
P 7650 2700
F 0 "#PWR0112" H 7650 2550 50  0001 C CNN
F 1 "+3V3" H 7665 2873 50  0000 C CNN
F 2 "" H 7650 2700 50  0001 C CNN
F 3 "" H 7650 2700 50  0001 C CNN
	1    7650 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2800 7650 2800
Wire Wire Line
	7650 2800 7650 2700
Wire Wire Line
	8050 2900 7650 2900
Wire Wire Line
	7650 2900 7650 3000
Wire Wire Line
	8050 3000 7900 3000
Wire Wire Line
	8050 3100 7900 3100
Text Label 7900 3000 0    50   ~ 0
IO1
Text Label 7900 3100 0    50   ~ 0
IO2
$Comp
L Device:R R?
U 1 1 5BA6A3DC
P 4850 4050
F 0 "R?" V 4643 4050 50  0000 C CNN
F 1 "R" V 4734 4050 50  0000 C CNN
F 2 "" V 4780 4050 50  0001 C CNN
F 3 "~" H 4850 4050 50  0001 C CNN
	1    4850 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5BA6FAC1
P 4850 3950
F 0 "R?" V 4643 3950 50  0000 C CNN
F 1 "R" V 4734 3950 50  0000 C CNN
F 2 "" V 4780 3950 50  0001 C CNN
F 3 "~" H 4850 3950 50  0001 C CNN
	1    4850 3950
	0    1    1    0   
$EndComp
Wire Bus Line
	5700 1150 6650 1150
Wire Bus Line
	4950 3450 5700 3450
Wire Bus Line
	4450 3550 5150 3550
Wire Wire Line
	4350 3050 4350 3450
Wire Bus Line
	7300 4200 7300 5400
Wire Bus Line
	4850 3700 7800 3700
Wire Bus Line
	7800 3100 7800 3700
Wire Bus Line
	4450 3500 5800 3500
Wire Bus Line
	4250 3800 9200 3800
Wire Bus Line
	5800 2900 5800 3500
$EndSCHEMATC
