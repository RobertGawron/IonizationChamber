EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
L Device:CP C33
U 1 1 5BA235DF
P 3000 5400
F 0 "C33" H 2882 5446 50  0000 R CNN
F 1 "100u/16V" H 2882 5355 50  0000 R CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.4" H 3038 5250 50  0001 C CNN
F 3 "~" H 3000 5400 50  0001 C CNN
	1    3000 5400
	-1   0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U32
U 1 1 5CCF4B88
P 6900 3150
F 0 "U32" H 6900 3517 50  0000 C CNN
F 1 "LMC662" H 6900 3426 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6900 3150 50  0001 C CNN
F 3 "~" H 6900 3150 50  0001 C CNN
	1    6900 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U32
U 2 1 5CCF4BF9
P 8000 3150
F 0 "U32" H 8000 3517 50  0000 C CNN
F 1 "LMC662" H 8000 3426 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8000 3150 50  0001 C CNN
F 3 "~" H 8000 3150 50  0001 C CNN
	2    8000 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U32
U 3 1 5CCF4C66
P 4650 5600
F 0 "U32" H 4462 5646 50  0000 R CNN
F 1 "LMC662" H 4462 5555 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4650 5600 50  0001 C CNN
F 3 "~" H 4650 5600 50  0001 C CNN
	3    4650 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R38
U 1 1 5CCF4D7C
P 6900 3450
F 0 "R38" V 7015 3450 50  0000 C CNN
F 1 "4*100G" V 7106 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6830 3450 50  0001 C CNN
F 3 "~" H 6900 3450 50  0001 C CNN
	1    6900 3450
	0    1    1    0   
$EndComp
$Comp
L Device:C C46
U 1 1 5CCF4DE4
P 6900 3800
F 0 "C46" V 7060 3800 50  0000 C CNN
F 1 "2p2" V 7151 3800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6938 3650 50  0001 C CNN
F 3 "~" H 6900 3800 50  0001 C CNN
	1    6900 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 3250 6550 3250
Wire Wire Line
	7250 3150 7200 3150
$Comp
L Device:R R39
U 1 1 5CD05F00
P 7600 3650
F 0 "R39" H 7530 3696 50  0000 R CNN
F 1 "R" H 7530 3605 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7530 3650 50  0001 C CNN
F 3 "~" H 7600 3650 50  0001 C CNN
	1    7600 3650
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R40
U 1 1 5CD05F9A
P 8000 3450
F 0 "R40" V 7885 3450 50  0000 C CNN
F 1 "R" V 7794 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7930 3450 50  0001 C CNN
F 3 "~" H 8000 3450 50  0001 C CNN
	1    8000 3450
	0    1    -1   0   
$EndComp
$Comp
L Device:C C47
U 1 1 5CD06FD8
P 7600 4000
F 0 "C47" H 7485 4046 50  0000 R CNN
F 1 "C" H 7485 3955 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7638 3850 50  0001 C CNN
F 3 "~" H 7600 4000 50  0001 C CNN
	1    7600 4000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR065
U 1 1 5CD07028
P 7600 4200
F 0 "#PWR065" H 7600 3950 50  0001 C CNN
F 1 "GND" H 7605 4027 50  0000 C CNN
F 2 "" H 7600 4200 50  0001 C CNN
F 3 "" H 7600 4200 50  0001 C CNN
	1    7600 4200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7600 4200 7600 4150
Wire Wire Line
	7600 3850 7600 3800
Wire Wire Line
	7850 3450 7600 3450
Wire Wire Line
	7600 3450 7600 3500
Wire Wire Line
	7600 3450 7600 3250
Wire Wire Line
	7600 3250 7700 3250
Connection ~ 7600 3450
Wire Wire Line
	8300 3150 8350 3150
Wire Wire Line
	8350 3150 8350 3450
Wire Wire Line
	8350 3450 8150 3450
Wire Wire Line
	6600 3050 6350 3050
$Comp
L Device:Opamp_Dual_Generic U33
U 1 1 5CD2F7E9
P 9550 3150
F 0 "U33" H 9550 3517 50  0000 C CNN
F 1 "LM358" H 9550 3426 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9550 3150 50  0001 C CNN
F 3 "~" H 9550 3150 50  0001 C CNN
	1    9550 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U33
U 2 1 5CD2F854
P 10400 3150
F 0 "U33" H 10400 3517 50  0000 C CNN
F 1 "LM358" H 10400 3426 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 10400 3150 50  0001 C CNN
F 3 "~" H 10400 3150 50  0001 C CNN
	2    10400 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U33
U 3 1 5CD2F8CB
P 6050 5600
F 0 "U33" H 5862 5646 50  0000 R CNN
F 1 "LM358" H 5862 5555 50  0000 R CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6050 5600 50  0001 C CNN
F 3 "~" H 6050 5600 50  0001 C CNN
	3    6050 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C40
U 1 1 5CD36164
P 4800 5250
F 0 "C40" H 4685 5204 50  0000 R CNN
F 1 "100n" H 4685 5295 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4838 5100 50  0001 C CNN
F 3 "~" H 4800 5250 50  0001 C CNN
	1    4800 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C45
U 1 1 5CD3762B
P 6250 5250
F 0 "C45" H 6135 5204 50  0000 R CNN
F 1 "100n" H 6135 5295 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6288 5100 50  0001 C CNN
F 3 "~" H 6250 5250 50  0001 C CNN
	1    6250 5250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 5250 5950 5250
Wire Wire Line
	5950 5250 5950 5300
Wire Wire Line
	6100 5950 5950 5950
Wire Wire Line
	5950 5950 5950 5900
Wire Wire Line
	5950 5950 5950 6050
Connection ~ 5950 5950
Wire Wire Line
	5950 5250 5950 5150
Connection ~ 5950 5250
Wire Wire Line
	4550 5250 4550 5300
Wire Wire Line
	4550 5150 4550 5250
Connection ~ 4550 5250
Wire Wire Line
	4550 5950 4550 5900
Wire Wire Line
	4550 6050 4550 5950
Connection ~ 4550 5950
Wire Wire Line
	6550 3250 6550 3450
Wire Wire Line
	7250 3800 7050 3800
Wire Wire Line
	7250 3150 7250 3450
Wire Wire Line
	7050 3450 7250 3450
Connection ~ 7250 3450
Wire Wire Line
	7250 3450 7250 3800
Wire Wire Line
	6750 3450 6550 3450
Connection ~ 6550 3450
Wire Wire Line
	6750 3800 6550 3800
Wire Wire Line
	6550 3450 6550 3800
Wire Wire Line
	10100 3250 10050 3250
Wire Wire Line
	10050 3250 10050 3450
Wire Wire Line
	10050 3450 10750 3450
Wire Wire Line
	10750 3450 10750 3150
Wire Wire Line
	10750 3150 10700 3150
$Comp
L power:GND #PWR068
U 1 1 5CD6EF53
P 11000 3400
F 0 "#PWR068" H 11000 3150 50  0001 C CNN
F 1 "GND" H 11005 3227 50  0000 C CNN
F 2 "" H 11000 3400 50  0001 C CNN
F 3 "" H 11000 3400 50  0001 C CNN
	1    11000 3400
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J34
U 1 1 5CD78402
P 11000 3150
F 0 "J34" V 10900 3300 50  0000 L CNN
F 1 "Conn_Coaxial" V 11000 3300 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Molex_73251-2200_Horizontal" H 11000 3150 50  0001 C CNN
F 3 " ~" H 11000 3150 50  0001 C CNN
	1    11000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 3150 10750 3150
Connection ~ 10750 3150
Wire Wire Line
	11000 3400 11000 3350
$Comp
L Device:L_Core_Ferrite L32
U 1 1 5CD96E48
P 3300 5200
F 0 "L32" V 3525 5200 50  0000 C CNN
F 1 "u68" V 3434 5200 50  0000 C CNN
F 2 "Inductor_SMD:L_1812_4532Metric_Pad1.30x3.40mm_HandSolder" H 3300 5200 50  0001 C CNN
F 3 "~" H 3300 5200 50  0001 C CNN
	1    3300 5200
	0    1    -1   0   
$EndComp
$Comp
L Device:CP C34
U 1 1 5CD94E6D
P 3000 5850
F 0 "C34" H 3118 5804 50  0000 L CNN
F 1 "100u/16V" H 3118 5895 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.4" H 3038 5700 50  0001 C CNN
F 3 "~" H 3000 5850 50  0001 C CNN
	1    3000 5850
	1    0    0    1   
$EndComp
$Comp
L Device:L_Core_Ferrite L33
U 1 1 5CD9781A
P 3300 6050
F 0 "L33" V 3211 6050 50  0000 C CNN
F 1 "u68" V 3120 6050 50  0000 C CNN
F 2 "Inductor_SMD:L_1812_4532Metric_Pad1.30x3.40mm_HandSolder" H 3300 6050 50  0001 C CNN
F 3 "~" H 3300 6050 50  0001 C CNN
	1    3300 6050
	0    1    -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG032
U 1 1 5CD9E263
P 1800 5050
F 0 "#FLG032" H 1800 5125 50  0001 C CNN
F 1 "PWR_FLAG" H 1800 5224 50  0000 C CNN
F 2 "" H 1800 5050 50  0001 C CNN
F 3 "~" H 1800 5050 50  0001 C CNN
	1    1800 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1800 5100 1800 5050
Wire Wire Line
	3000 5700 3000 5600
Connection ~ 3000 5600
Wire Wire Line
	3000 5600 3000 5550
Wire Wire Line
	3150 6050 3000 6050
Wire Wire Line
	3000 6050 3000 6000
Wire Wire Line
	3150 5200 3000 5200
Wire Wire Line
	3000 5200 3000 5250
Wire Wire Line
	3450 5200 3650 5200
Connection ~ 3650 5200
$Comp
L power:GND #PWR042
U 1 1 5CDF8D9C
P 2800 5700
F 0 "#PWR042" H 2800 5450 50  0001 C CNN
F 1 "GND" H 2805 5527 50  0000 C CNN
F 2 "" H 2800 5700 50  0001 C CNN
F 3 "" H 2800 5700 50  0001 C CNN
	1    2800 5700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3000 5600 2800 5600
Wire Wire Line
	2800 5600 2800 5700
Connection ~ 3000 5200
Connection ~ 3000 6050
$Comp
L power:PWR_FLAG #FLG034
U 1 1 5CE2CCD8
P 3650 5100
F 0 "#FLG034" H 3650 5175 50  0001 C CNN
F 1 "PWR_FLAG" H 3650 5274 50  0000 C CNN
F 2 "" H 3650 5100 50  0001 C CNN
F 3 "~" H 3650 5100 50  0001 C CNN
	1    3650 5100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4000 5200 4000 5100
Wire Wire Line
	3650 5200 4000 5200
Wire Wire Line
	4000 6150 4000 6050
Wire Wire Line
	3650 5200 3650 5100
$Comp
L Device:R R41
U 1 1 5CEB9F44
P 8950 3250
F 0 "R41" H 8880 3296 50  0000 R CNN
F 1 "R" H 8880 3205 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8880 3250 50  0001 C CNN
F 3 "~" H 8950 3250 50  0001 C CNN
	1    8950 3250
	0    1    -1   0   
$EndComp
$Comp
L Device:R R42
U 1 1 5CEB9F4A
P 9550 3450
F 0 "R42" V 9435 3450 50  0000 C CNN
F 1 "R" V 9344 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9480 3450 50  0001 C CNN
F 3 "~" H 9550 3450 50  0001 C CNN
	1    9550 3450
	0    1    -1   0   
$EndComp
$Comp
L Device:C C48
U 1 1 5CEB9F50
P 8600 3250
F 0 "C48" H 8485 3296 50  0000 R CNN
F 1 "C" H 8485 3205 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8638 3100 50  0001 C CNN
F 3 "~" H 8600 3250 50  0001 C CNN
	1    8600 3250
	0    -1   1    0   
$EndComp
Wire Wire Line
	9100 3850 9100 3800
Wire Wire Line
	9400 3450 9150 3450
Wire Wire Line
	9950 3450 9700 3450
Wire Wire Line
	9250 3250 9150 3250
Wire Wire Line
	9150 3250 9150 3450
Wire Wire Line
	9950 3450 9950 3150
Wire Wire Line
	9950 3150 9850 3150
Wire Wire Line
	9950 3150 10050 3150
Wire Wire Line
	10050 3150 10050 3050
Wire Wire Line
	10050 3050 10100 3050
Connection ~ 9950 3150
Wire Wire Line
	7250 3150 7400 3150
Wire Wire Line
	7400 3150 7400 3050
Wire Wire Line
	7400 3050 7700 3050
Connection ~ 7250 3150
$Comp
L power:GND #PWR064
U 1 1 5CF0CA1C
P 6350 3350
F 0 "#PWR064" H 6350 3100 50  0001 C CNN
F 1 "GND" H 6355 3177 50  0000 C CNN
F 2 "" H 6350 3350 50  0001 C CNN
F 3 "" H 6350 3350 50  0001 C CNN
	1    6350 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6350 3350 6350 3050
$Comp
L Sensor:Nuclear-Radiation_Detector V31
U 1 1 5CF2E667
P 6200 2850
F 0 "V31" V 5850 2800 50  0000 R CNN
F 1 "Nuclear-Radiation_Detector" V 5962 2805 50  0000 R CNN
F 2 "IonizationChamber:IonizationChamberSensor" H 6400 2950 50  0001 C CNN
F 3 "~" H 6200 2850 50  0001 C CNN
	1    6200 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3250 6200 3250
Wire Wire Line
	6200 3250 6200 3050
Connection ~ 6550 3250
Connection ~ 1800 5100
$Comp
L power:+BATT #PWR049
U 1 1 5CFE9A02
P 4000 5100
F 0 "#PWR049" H 4000 4950 50  0001 C CNN
F 1 "+BATT" H 4015 5273 50  0000 C CNN
F 2 "" H 4000 5100 50  0001 C CNN
F 3 "" H 4000 5100 50  0001 C CNN
	1    4000 5100
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR050
U 1 1 5CFEAB3F
P 4000 6150
F 0 "#PWR050" H 4000 6000 50  0001 C CNN
F 1 "-BATT" H 4015 6323 50  0000 C CNN
F 2 "" H 4000 6150 50  0001 C CNN
F 3 "" H 4000 6150 50  0001 C CNN
	1    4000 6150
	-1   0    0    1   
$EndComp
$Comp
L power:+BATT #PWR053
U 1 1 5CFEB344
P 4550 5150
F 0 "#PWR053" H 4550 5000 50  0001 C CNN
F 1 "+BATT" H 4565 5323 50  0000 C CNN
F 2 "" H 4550 5150 50  0001 C CNN
F 3 "" H 4550 5150 50  0001 C CNN
	1    4550 5150
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR059
U 1 1 5CFEB749
P 5950 5150
F 0 "#PWR059" H 5950 5000 50  0001 C CNN
F 1 "+BATT" H 5965 5323 50  0000 C CNN
F 2 "" H 5950 5150 50  0001 C CNN
F 3 "" H 5950 5150 50  0001 C CNN
	1    5950 5150
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR054
U 1 1 5CFF6055
P 4550 6050
F 0 "#PWR054" H 4550 5900 50  0001 C CNN
F 1 "-BATT" H 4565 6223 50  0000 C CNN
F 2 "" H 4550 6050 50  0001 C CNN
F 3 "" H 4550 6050 50  0001 C CNN
	1    4550 6050
	-1   0    0    1   
$EndComp
$Comp
L power:-BATT #PWR060
U 1 1 5CFF639F
P 5950 6050
F 0 "#PWR060" H 5950 5900 50  0001 C CNN
F 1 "-BATT" H 5965 6223 50  0000 C CNN
F 2 "" H 5950 6050 50  0001 C CNN
F 3 "" H 5950 6050 50  0001 C CNN
	1    5950 6050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 2650 2650 2950
Connection ~ 2650 2650
Wire Wire Line
	2700 2650 2650 2650
Wire Wire Line
	2650 2950 2650 3050
Connection ~ 2650 2950
Wire Wire Line
	2800 2950 2650 2950
Wire Wire Line
	2650 2550 2650 2650
Connection ~ 3100 2650
Wire Wire Line
	3100 2650 3000 2650
Wire Wire Line
	2600 1550 2600 1400
Wire Wire Line
	1150 2150 1150 2350
Wire Wire Line
	1200 2150 1150 2150
Wire Wire Line
	1550 2150 1500 2150
Connection ~ 1550 2150
Wire Wire Line
	1650 2150 1550 2150
Wire Wire Line
	4400 3300 4400 3250
Wire Wire Line
	4050 3700 4050 3250
$Comp
L power:GND #PWR051
U 1 1 5CE75D4E
P 4400 3700
F 0 "#PWR051" H 4400 3450 50  0001 C CNN
F 1 "GND" H 4405 3527 50  0000 C CNN
F 2 "" H 4400 3700 50  0001 C CNN
F 3 "" H 4400 3700 50  0001 C CNN
	1    4400 3700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR048
U 1 1 5CE75736
P 4050 3700
F 0 "#PWR048" H 4050 3450 50  0001 C CNN
F 1 "GND" H 4055 3527 50  0000 C CNN
F 2 "" H 4050 3700 50  0001 C CNN
F 3 "" H 4050 3700 50  0001 C CNN
	1    4050 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3500 3450 3500 2850
Wire Wire Line
	3100 3150 3100 3450
Wire Wire Line
	3100 2650 3200 2650
Wire Wire Line
	3100 2750 3100 2650
Wire Wire Line
	2650 3450 2650 3350
Wire Wire Line
	2450 2550 2650 2550
Connection ~ 4050 2850
Wire Wire Line
	3750 2850 4050 2850
Wire Wire Line
	3750 3850 3750 2850
Wire Wire Line
	2550 3850 3750 3850
Wire Wire Line
	2550 2650 2550 3850
Wire Wire Line
	2450 2650 2550 2650
$Comp
L power:GND #PWR047
U 1 1 5CE4230A
P 3500 3450
F 0 "#PWR047" H 3500 3200 50  0001 C CNN
F 1 "GND" H 3505 3277 50  0000 C CNN
F 2 "" H 3500 3450 50  0001 C CNN
F 3 "" H 3500 3450 50  0001 C CNN
	1    3500 3450
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR044
U 1 1 5CE41F48
P 3100 3450
F 0 "#PWR044" H 3100 3200 50  0001 C CNN
F 1 "GND" H 3105 3277 50  0000 C CNN
F 2 "" H 3100 3450 50  0001 C CNN
F 3 "" H 3100 3450 50  0001 C CNN
	1    3100 3450
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 5CE41C50
P 2650 3450
F 0 "#PWR041" H 2650 3200 50  0001 C CNN
F 1 "GND" H 2655 3277 50  0000 C CNN
F 2 "" H 2650 3450 50  0001 C CNN
F 3 "" H 2650 3450 50  0001 C CNN
	1    2650 3450
	-1   0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D32
U 1 1 5CE169C8
P 2850 2650
F 0 "D32" H 2850 2434 50  0000 C CNN
F 1 "D_Schottky" H 2850 2525 50  0000 C CNN
F 2 "Diode_SMD:D_SOT-23_ANK" H 2850 2650 50  0001 C CNN
F 3 "~" H 2850 2650 50  0001 C CNN
	1    2850 2650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R32
U 1 1 5CE1613E
P 2650 3200
F 0 "R32" H 2580 3246 50  0000 R CNN
F 1 "10k" H 2580 3155 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2580 3200 50  0001 C CNN
F 3 "~" H 2650 3200 50  0001 C CNN
	1    2650 3200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4400 2850 4400 2750
Connection ~ 4400 2850
Wire Wire Line
	4050 2850 4050 2950
Wire Wire Line
	4400 2850 4050 2850
Wire Wire Line
	4400 2950 4400 2850
Wire Wire Line
	4400 2350 4400 2450
Wire Wire Line
	4100 2350 4400 2350
Wire Wire Line
	3500 2350 3800 2350
Connection ~ 3500 2350
Wire Wire Line
	3500 2450 3500 2350
Wire Wire Line
	3200 2350 3500 2350
Connection ~ 2600 2350
Wire Wire Line
	2600 2350 2900 2350
$Comp
L Transistor_BJT:BC859 Q31
U 1 1 5CDD4736
P 3000 2950
F 0 "Q31" H 3191 2904 50  0000 L CNN
F 1 "BC859" H 3191 2995 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3200 2875 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC857SERIES_BC858SERIES_BC859SERIES_BC860SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541da0e3a1661" H 3000 2950 50  0001 L CNN
	1    3000 2950
	1    0    0    1   
$EndComp
$Comp
L Device:C C39
U 1 1 5CDD4031
P 4050 3100
F 0 "C39" H 3935 3146 50  0000 R CNN
F 1 "10n" H 3935 3055 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4088 2950 50  0001 C CNN
F 3 "~" H 4050 3100 50  0001 C CNN
	1    4050 3100
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R34
U 1 1 5CDD3604
P 4400 3100
F 0 "R34" H 4330 3146 50  0000 R CNN
F 1 "1k" H 4330 3055 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4330 3100 50  0001 C CNN
F 3 "~" H 4400 3100 50  0001 C CNN
	1    4400 3100
	-1   0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D33
U 1 1 5CDC7CAD
P 3950 2350
F 0 "D33" H 3950 2134 50  0000 C CNN
F 1 "1N4007" H 3950 2225 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3950 2175 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 3950 2350 50  0001 C CNN
	1    3950 2350
	-1   0    0    1   
$EndComp
$Comp
L Device:L L31
U 1 1 5CDC7071
P 3050 2350
F 0 "L31" V 3240 2350 50  0000 C CNN
F 1 "680m" V 3149 2350 50  0000 C CNN
F 2 "Inductor_THT:L_Radial_L8.0mm_W8.0mm_P5.00mm_Neosid_NE-CPB-07E" H 3050 2350 50  0001 C CNN
F 3 "~" H 3050 2350 50  0001 C CNN
	1    3050 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:Q_NMOS_GDS Q32
U 1 1 5CDC4A25
P 3400 2650
F 0 "Q32" H 3606 2696 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 3606 2605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 3600 2750 50  0001 C CNN
F 3 "~" H 3400 2650 50  0001 C CNN
	1    3400 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2150 2600 2250
Connection ~ 2600 2150
Wire Wire Line
	2600 1850 2600 2150
Wire Wire Line
	2450 2150 2600 2150
Wire Wire Line
	2600 2250 2600 2350
Connection ~ 2600 2250
Wire Wire Line
	2450 2250 2600 2250
Wire Wire Line
	2450 2350 2600 2350
$Comp
L power:GND #PWR031
U 1 1 5CDA83C0
P 1150 2350
F 0 "#PWR031" H 1150 2100 50  0001 C CNN
F 1 "GND" H 1155 2177 50  0000 C CNN
F 2 "" H 1150 2350 50  0001 C CNN
F 3 "" H 1150 2350 50  0001 C CNN
	1    1150 2350
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C31
U 1 1 5CD9E57B
P 1350 2150
F 0 "C31" V 1510 2150 50  0000 C CNN
F 1 "100n" V 1601 2150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1388 2000 50  0001 C CNN
F 3 "~" H 1350 2150 50  0001 C CNN
	1    1350 2150
	0    -1   1    0   
$EndComp
Wire Wire Line
	2050 2950 2050 2850
$Comp
L power:GND #PWR036
U 1 1 5CD98062
P 2050 2950
F 0 "#PWR036" H 2050 2700 50  0001 C CNN
F 1 "GND" H 2055 2777 50  0000 C CNN
F 2 "" H 2050 2950 50  0001 C CNN
F 3 "" H 2050 2950 50  0001 C CNN
	1    2050 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1400 2550 1400 2600
Wire Wire Line
	1650 2550 1400 2550
Wire Wire Line
	1400 2950 1400 2900
$Comp
L power:GND #PWR032
U 1 1 5CD8E874
P 1400 2950
F 0 "#PWR032" H 1400 2700 50  0001 C CNN
F 1 "GND" H 1405 2777 50  0000 C CNN
F 2 "" H 1400 2950 50  0001 C CNN
F 3 "" H 1400 2950 50  0001 C CNN
	1    1400 2950
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R33
U 1 1 5CD8E1C0
P 4400 2600
F 0 "R33" H 4330 2646 50  0000 R CNN
F 1 "10M" H 4330 2555 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4330 2600 50  0001 C CNN
F 3 "~" H 4400 2600 50  0001 C CNN
	1    4400 2600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R31
U 1 1 5CD8D9B7
P 2600 1700
F 0 "R31" H 2530 1746 50  0000 R CNN
F 1 "R22/0.5W" H 2530 1655 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 2530 1700 50  0001 C CNN
F 3 "~" H 2600 1700 50  0001 C CNN
	1    2600 1700
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C32
U 1 1 5CD8CBD9
P 1400 2750
F 0 "C32" H 1285 2796 50  0000 R CNN
F 1 "3n3" H 1285 2705 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1438 2600 50  0001 C CNN
F 3 "~" H 1400 2750 50  0001 C CNN
	1    1400 2750
	-1   0    0    -1  
$EndComp
$Comp
L Regulator_Switching:MC34063AD U31
U 1 1 5CD8C19E
P 2050 2350
F 0 "U31" H 2050 2817 50  0000 C CNN
F 1 "MC34063AD" H 2050 2726 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2100 1900 50  0001 L CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MC34063A-D.PDF" H 2550 2250 50  0001 C CNN
	1    2050 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R35
U 1 1 5CF3DC76
P 4400 3450
F 0 "R35" H 4330 3496 50  0000 R CNN
F 1 "30k" H 4330 3405 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4330 3450 50  0001 C CNN
F 3 "~" H 4400 3450 50  0001 C CNN
	1    4400 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4400 3700 4400 3600
$Comp
L power:GND #PWR056
U 1 1 5CF71378
P 4800 3700
F 0 "#PWR056" H 4800 3450 50  0001 C CNN
F 1 "GND" H 4805 3527 50  0000 C CNN
F 2 "" H 4800 3700 50  0001 C CNN
F 3 "" H 4800 3700 50  0001 C CNN
	1    4800 3700
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C43
U 1 1 5CF71640
P 5150 2950
F 0 "C43" V 5100 2850 50  0000 R CNN
F 1 "10n/600V" V 5035 2905 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D8.0mm_W2.5mm_P5.00mm" H 5188 2800 50  0001 C CNN
F 3 "~" H 5150 2950 50  0001 C CNN
	1    5150 2950
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR058
U 1 1 5CF718E7
P 5150 3700
F 0 "#PWR058" H 5150 3450 50  0001 C CNN
F 1 "GND" H 5155 3527 50  0000 C CNN
F 2 "" H 5150 3700 50  0001 C CNN
F 3 "" H 5150 3700 50  0001 C CNN
	1    5150 3700
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R36
U 1 1 5CF71A9D
P 5400 2350
F 0 "R36" V 5607 2350 50  0000 C CNN
F 1 "10M" V 5516 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5330 2350 50  0001 C CNN
F 3 "~" H 5400 2350 50  0001 C CNN
	1    5400 2350
	0    1    -1   0   
$EndComp
Wire Wire Line
	4400 2350 4800 2350
Connection ~ 4400 2350
Wire Wire Line
	4800 2800 4800 2350
Connection ~ 4800 2350
Wire Wire Line
	4800 2350 5150 2350
Wire Wire Line
	5150 2800 5150 2350
Connection ~ 5150 2350
Wire Wire Line
	5150 2350 5250 2350
Wire Wire Line
	4800 3100 4800 3700
Wire Wire Line
	5150 3700 5150 3100
$Comp
L Diode:1N4007 D34
U 1 1 5D0E8F38
P 6200 2100
F 0 "D34" V 6246 2021 50  0000 R CNN
F 1 "1N4007" V 6155 2021 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P5.08mm_Vertical_AnodeUp" H 6200 1925 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6200 2100 50  0001 C CNN
	1    6200 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 1950 6200 1900
$Comp
L Device:CP C2
U 1 1 5CE413AF
P 3550 1650
F 0 "C2" H 3432 1696 50  0000 R CNN
F 1 "100u/6V3" H 3432 1605 50  0000 R CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B" H 3588 1500 50  0001 C CNN
F 3 "~" H 3550 1650 50  0001 C CNN
	1    3550 1650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR057
U 1 1 5CE418AC
P 8350 6000
F 0 "#PWR057" H 8350 5750 50  0001 C CNN
F 1 "GND" H 8355 5827 50  0000 C CNN
F 2 "" H 8350 6000 50  0001 C CNN
F 3 "" H 8350 6000 50  0001 C CNN
	1    8350 6000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR061
U 1 1 5CE5541F
P 3550 1850
F 0 "#PWR061" H 3550 1600 50  0001 C CNN
F 1 "GND" H 3555 1677 50  0000 C CNN
F 2 "" H 3550 1850 50  0001 C CNN
F 3 "" H 3550 1850 50  0001 C CNN
	1    3550 1850
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR062
U 1 1 5CE5629A
P 9350 5200
F 0 "#PWR062" H 9350 5050 50  0001 C CNN
F 1 "+5V" H 9365 5373 50  0000 C CNN
F 2 "" H 9350 5200 50  0001 C CNN
F 3 "" H 9350 5200 50  0001 C CNN
	1    9350 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 6000 8350 5800
Wire Wire Line
	8350 5500 8350 5250
Connection ~ 8350 5250
Wire Wire Line
	9350 5250 9350 5200
Wire Wire Line
	3550 1500 3550 1400
Wire Wire Line
	3550 1850 3550 1800
$Comp
L power:+BATT #PWR063
U 1 1 5D0E88D8
P 6200 1900
F 0 "#PWR063" H 6200 1750 50  0001 C CNN
F 1 "+BATT" H 6215 2073 50  0000 C CNN
F 2 "" H 6200 1900 50  0001 C CNN
F 3 "" H 6200 1900 50  0001 C CNN
	1    6200 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR035
U 1 1 5CEF9693
P 700 1000
F 0 "#PWR035" H 700 850 50  0001 C CNN
F 1 "+5V" H 715 1173 50  0000 C CNN
F 2 "" H 700 1000 50  0001 C CNN
F 3 "" H 700 1000 50  0001 C CNN
	1    700  1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R37
U 1 1 5CF04977
P 5750 2350
F 0 "R37" V 5957 2350 50  0000 C CNN
F 1 "10M" V 5866 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5680 2350 50  0001 C CNN
F 3 "~" H 5750 2350 50  0001 C CNN
	1    5750 2350
	0    1    -1   0   
$EndComp
Wire Wire Line
	5550 2350 5600 2350
Wire Wire Line
	5900 2350 6000 2350
$Sheet
S 9850 4800 500  150 
U 5CF2BB44
F0 "DataAcquisition" 50
F1 "DataAcquisition.sch" 50
$EndSheet
$Comp
L Device:RF_Shield_Two_Pieces J33
U 1 1 5CE2447D
P 8900 1350
F 0 "J33" H 9630 1414 50  0000 L CNN
F 1 "RF_Shield_Two_Pieces" H 9630 1323 50  0000 L CNN
F 2 "IonizationChamber:IonizationChamberShield" H 8900 1250 50  0001 C CNN
F 3 "~" H 8900 1250 50  0001 C CNN
	1    8900 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR066
U 1 1 5CE2764B
P 8900 1850
F 0 "#PWR066" H 8900 1600 50  0001 C CNN
F 1 "GND" H 8905 1677 50  0000 C CNN
F 2 "" H 8900 1850 50  0001 C CNN
F 3 "" H 8900 1850 50  0001 C CNN
	1    8900 1850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8900 1850 8900 1750
$Comp
L Device:RF_Shield_Two_Pieces J32
U 1 1 5CE5ED89
P 4800 1300
F 0 "J32" H 5530 1364 50  0000 L CNN
F 1 "RF_Shield_Two_Pieces" H 5530 1273 50  0000 L CNN
F 2 "IonizationChamber:IonizationChamberHVShield" H 4800 1200 50  0001 C CNN
F 3 "~" H 4800 1200 50  0001 C CNN
	1    4800 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR055
U 1 1 5CE5ED8F
P 4800 1800
F 0 "#PWR055" H 4800 1550 50  0001 C CNN
F 1 "GND" H 4805 1627 50  0000 C CNN
F 2 "" H 4800 1800 50  0001 C CNN
F 3 "" H 4800 1800 50  0001 C CNN
	1    4800 1800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4800 1800 4800 1700
$Comp
L Device:C C1
U 1 1 5CF17EEF
P 8350 5650
F 0 "C1" H 8235 5604 50  0000 R CNN
F 1 "100n" H 8235 5695 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8388 5500 50  0001 C CNN
F 3 "~" H 8350 5650 50  0001 C CNN
	1    8350 5650
	-1   0    0    1   
$EndComp
$Comp
L Device:C C41
U 1 1 5CF5796B
P 4800 2950
F 0 "C41" V 4750 2850 50  0000 R CNN
F 1 "10n/600V" V 4685 2905 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D8.0mm_W2.5mm_P5.00mm" H 4838 2800 50  0001 C CNN
F 3 "~" H 4800 2950 50  0001 C CNN
	1    4800 2950
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW31
U 1 1 5CF2C564
P 2350 5100
F 0 "SW31" H 2350 5385 50  0000 C CNN
F 1 "SW_DPDT_x2" H 2350 5294 50  0000 C CNN
F 2 "Button_Switch_THT:SW_E-Switch_EG1271_DPDT" H 2350 5100 50  0001 C CNN
F 3 "~" H 2350 5100 50  0001 C CNN
	1    2350 5100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW31
U 2 1 5CF2D41F
P 2350 5950
F 0 "SW31" H 2350 6235 50  0000 C CNN
F 1 "SW_DPDT_x2" H 2350 6144 50  0000 C CNN
F 2 "Button_Switch_THT:SW_E-Switch_EG1271_DPDT" H 2350 5950 50  0001 C CNN
F 3 "~" H 2350 5950 50  0001 C CNN
	2    2350 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 6050 3000 6050
Wire Wire Line
	2550 5200 3000 5200
Wire Wire Line
	1800 5100 2100 5100
Wire Wire Line
	1800 5100 1800 5150
Wire Wire Line
	1800 5850 1800 5950
$Comp
L Device:Battery_Cell BT32
U 1 1 5CD816BD
P 1800 5650
F 0 "BT32" H 1918 5654 50  0000 L CNN
F 1 "2 x 3V6" H 1918 5745 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_2466_1xAAA" V 1800 5710 50  0001 C CNN
F 3 "~" V 1800 5710 50  0001 C CNN
	1    1800 5650
	-1   0    0    1   
$EndComp
Connection ~ 1800 5950
Wire Wire Line
	1800 5500 1800 5550
Connection ~ 1800 5500
Wire Wire Line
	1300 5500 1300 5550
Wire Wire Line
	1800 5500 1300 5500
$Comp
L power:GND #PWR033
U 1 1 5CDF8594
P 1300 5550
F 0 "#PWR033" H 1300 5300 50  0001 C CNN
F 1 "GND" H 1305 5377 50  0000 C CNN
F 2 "" H 1300 5550 50  0001 C CNN
F 3 "" H 1300 5550 50  0001 C CNN
	1    1300 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1800 6000 1800 5950
Wire Wire Line
	1800 5450 1800 5500
$Comp
L power:PWR_FLAG #FLG033
U 1 1 5CD97E81
P 1800 6000
F 0 "#FLG033" H 1800 6075 50  0001 C CNN
F 1 "PWR_FLAG" H 1800 6174 50  0000 C CNN
F 2 "" H 1800 6000 50  0001 C CNN
F 3 "~" H 1800 6000 50  0001 C CNN
	1    1800 6000
	1    0    0    1   
$EndComp
$Comp
L Device:Battery_Cell BT31
U 1 1 5CD81622
P 1800 5350
F 0 "BT31" H 1682 5446 50  0000 R CNN
F 1 "2 x 3V6" H 1682 5355 50  0000 R CNN
F 2 "Battery:BatteryHolder_Keystone_2466_1xAAA" V 1800 5410 50  0001 C CNN
F 3 "~" V 1800 5410 50  0001 C CNN
	1    1800 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5950 2100 5950
$Comp
L Connector:USB_B_Micro J1
U 1 1 5CFACDC7
P 7600 5450
F 0 "J1" H 7657 5917 50  0000 C CNN
F 1 "USB_B_Micro" H 7657 5826 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex_47346-0001" H 7750 5400 50  0001 C CNN
F 3 "~" H 7750 5400 50  0001 C CNN
	1    7600 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR052
U 1 1 5CFC5785
P 7600 6000
F 0 "#PWR052" H 7600 5750 50  0001 C CNN
F 1 "GND" H 7605 5827 50  0000 C CNN
F 2 "" H 7600 6000 50  0001 C CNN
F 3 "" H 7600 6000 50  0001 C CNN
	1    7600 6000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7500 5850 7500 5900
Wire Wire Line
	7500 5900 7600 5900
Wire Wire Line
	7600 5900 7600 6000
Wire Wire Line
	7600 5850 7600 5900
Connection ~ 7600 5900
Wire Wire Line
	7900 5250 8350 5250
$Comp
L Device:C C35
U 1 1 5D027A04
P 3100 1600
F 0 "C35" H 2985 1646 50  0000 R CNN
F 1 "100n" H 2985 1555 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3138 1450 50  0001 C CNN
F 3 "~" H 3100 1600 50  0001 C CNN
	1    3100 1600
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 5D046B63
P 3100 1850
F 0 "#PWR043" H 3100 1600 50  0001 C CNN
F 1 "GND" H 3105 1677 50  0000 C CNN
F 2 "" H 3100 1850 50  0001 C CNN
F 3 "" H 3100 1850 50  0001 C CNN
	1    3100 1850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3100 1850 3100 1750
Wire Wire Line
	3100 1450 3100 1400
Wire Wire Line
	3100 1400 2600 1400
Connection ~ 2600 1400
$Comp
L power:GND #PWR067
U 1 1 5CE761F3
P 8950 2950
F 0 "#PWR067" H 8950 2700 50  0001 C CNN
F 1 "GND" H 8955 2777 50  0000 C CNN
F 2 "" H 8950 2950 50  0001 C CNN
F 3 "" H 8950 2950 50  0001 C CNN
	1    8950 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9250 3050 9150 3050
Wire Wire Line
	9150 3050 9150 2850
Wire Wire Line
	9150 2850 8950 2850
Wire Wire Line
	8950 2850 8950 2950
Wire Wire Line
	9150 3250 9100 3250
Connection ~ 9150 3250
Wire Wire Line
	8800 3250 8750 3250
Wire Wire Line
	8450 3250 8400 3250
Wire Wire Line
	8400 3250 8400 3150
Wire Wire Line
	8400 3150 8350 3150
Connection ~ 8350 3150
$Comp
L Connector:TestPoint TP30
U 1 1 5CEDD23D
P 6000 2150
F 0 "TP30" H 6000 2475 50  0000 C CNN
F 1 "TestPoint" H 6000 2384 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.60mm_Drill0.9mm_Beaded" H 6200 2150 50  0001 C CNN
F 3 "~" H 6200 2150 50  0001 C CNN
	1    6000 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2150 6000 2350
Wire Wire Line
	10750 3150 10750 2950
Text GLabel 10750 2950 1    50   Input ~ 0
analog_output
Wire Wire Line
	2600 1400 1550 1400
Wire Wire Line
	700  1500 700  1000
Wire Wire Line
	1550 1400 1550 1850
$Comp
L Device:LED D31
U 1 1 5D118A58
P 550 2300
F 0 "D31" V 589 2182 50  0000 R CNN
F 1 "red" V 498 2182 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 550 2300 50  0001 C CNN
F 3 "~" H 550 2300 50  0001 C CNN
	1    550  2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R43
U 1 1 5D119CFE
P 550 2700
F 0 "R43" H 480 2746 50  0000 R CNN
F 1 "520R" H 480 2655 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 480 2700 50  0001 C CNN
F 3 "~" H 550 2700 50  0001 C CNN
	1    550  2700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR034
U 1 1 5D11A118
P 550 2950
F 0 "#PWR034" H 550 2700 50  0001 C CNN
F 1 "GND" H 555 2777 50  0000 C CNN
F 2 "" H 550 2950 50  0001 C CNN
F 3 "" H 550 2950 50  0001 C CNN
	1    550  2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	550  2950 550  2850
Wire Wire Line
	550  2550 550  2450
$Comp
L Device:LED D1
U 1 1 5D17314D
P 8750 5450
F 0 "D1" V 8789 5332 50  0000 R CNN
F 1 "red" V 8698 5332 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 8750 5450 50  0001 C CNN
F 3 "~" H 8750 5450 50  0001 C CNN
	1    8750 5450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5D17362A
P 8750 5800
F 0 "R1" H 8680 5846 50  0000 R CNN
F 1 "520R" H 8680 5755 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8680 5800 50  0001 C CNN
F 3 "~" H 8750 5800 50  0001 C CNN
	1    8750 5800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5D173982
P 8750 6000
F 0 "#PWR01" H 8750 5750 50  0001 C CNN
F 1 "GND" H 8755 5827 50  0000 C CNN
F 2 "" H 8750 6000 50  0001 C CNN
F 3 "" H 8750 6000 50  0001 C CNN
	1    8750 6000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8750 5300 8750 5250
Connection ~ 8750 5250
Wire Wire Line
	8750 5650 8750 5600
Wire Wire Line
	8750 6000 8750 5950
$Comp
L Switch:SW_DPDT_x2 SW32
U 1 1 5D1FFE32
P 1200 1500
F 0 "SW32" H 1200 1785 50  0000 C CNN
F 1 "SW_DPDT_x2" H 1200 1694 50  0000 C CNN
F 2 "IonizationChamber:SwitchButtonGeneric" H 1200 1500 50  0001 C CNN
F 3 "~" H 1200 1500 50  0001 C CNN
	1    1200 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  1500 1000 1500
Wire Wire Line
	1400 1400 1550 1400
Connection ~ 1550 1400
Wire Wire Line
	550  1850 850  1850
Wire Wire Line
	550  1850 550  2150
Connection ~ 1550 1850
Wire Wire Line
	1550 1850 1550 2150
Wire Wire Line
	8350 5250 8750 5250
Wire Wire Line
	3100 1400 3550 1400
Connection ~ 3100 1400
Wire Wire Line
	2550 5000 2600 5000
Wire Wire Line
	2600 5000 2600 4950
Wire Wire Line
	2600 4950 2100 4950
Wire Wire Line
	2100 4950 2100 5100
Connection ~ 2100 5100
Wire Wire Line
	2100 5100 2150 5100
Wire Wire Line
	2550 5850 2600 5850
Wire Wire Line
	2600 5850 2600 5800
Wire Wire Line
	2600 5800 2100 5800
Wire Wire Line
	2100 5800 2100 5950
Connection ~ 2100 5950
Wire Wire Line
	2100 5950 2150 5950
$Comp
L Device:C C42
U 1 1 5CEF9E41
P 4800 5950
F 0 "C42" H 4685 5904 50  0000 R CNN
F 1 "100n" H 4685 5995 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4838 5800 50  0001 C CNN
F 3 "~" H 4800 5950 50  0001 C CNN
	1    4800 5950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR045
U 1 1 5CEFA2D5
P 5150 5650
F 0 "#PWR045" H 5150 5400 50  0001 C CNN
F 1 "GND" H 5155 5477 50  0000 C CNN
F 2 "" H 5150 5650 50  0001 C CNN
F 3 "" H 5150 5650 50  0001 C CNN
	1    5150 5650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4550 5250 4650 5250
Wire Wire Line
	4550 5950 4650 5950
Wire Wire Line
	4950 5950 5050 5950
Wire Wire Line
	5050 5950 5050 5600
Wire Wire Line
	5050 5250 4950 5250
Wire Wire Line
	5150 5650 5150 5600
Wire Wire Line
	5150 5600 5050 5600
Connection ~ 5050 5600
Wire Wire Line
	5050 5600 5050 5250
$Comp
L Device:C C44
U 1 1 5CF55DC2
P 6250 5950
F 0 "C44" H 6135 5904 50  0000 R CNN
F 1 "100n" H 6135 5995 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6288 5800 50  0001 C CNN
F 3 "~" H 6250 5950 50  0001 C CNN
	1    6250 5950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR046
U 1 1 5CF56173
P 6600 5600
F 0 "#PWR046" H 6600 5350 50  0001 C CNN
F 1 "GND" H 6605 5427 50  0000 C CNN
F 2 "" H 6600 5600 50  0001 C CNN
F 3 "" H 6600 5600 50  0001 C CNN
	1    6600 5600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6400 5950 6500 5950
Wire Wire Line
	6500 5950 6500 5550
Wire Wire Line
	6500 5250 6400 5250
Wire Wire Line
	6600 5600 6600 5550
Wire Wire Line
	6600 5550 6500 5550
Connection ~ 6500 5550
Wire Wire Line
	6500 5550 6500 5250
Wire Wire Line
	6200 2250 6200 2350
Wire Wire Line
	1400 1600 1450 1600
NoConn ~ 1450 1600
Wire Wire Line
	7900 5450 8050 5450
Wire Wire Line
	7900 5550 8050 5550
Wire Wire Line
	7900 5650 8050 5650
NoConn ~ 8050 5450
NoConn ~ 8050 5550
NoConn ~ 8050 5650
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5D25799A
P 1550 1300
F 0 "#FLG0102" H 1550 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 1550 1474 50  0000 C CNN
F 2 "" H 1550 1300 50  0001 C CNN
F 3 "~" H 1550 1300 50  0001 C CNN
	1    1550 1300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1550 1400 1550 1300
Text GLabel 9150 5100 1    50   Input ~ 0
VCC_5V
Wire Wire Line
	9350 5250 9150 5250
Wire Wire Line
	9150 5250 9150 5100
Connection ~ 9150 5250
Wire Wire Line
	8750 5250 9150 5250
Wire Wire Line
	3650 6050 4000 6050
Wire Wire Line
	3450 6050 3650 6050
Connection ~ 3650 6050
Wire Wire Line
	3650 6150 3650 6050
$Comp
L power:PWR_FLAG #FLG035
U 1 1 5CE2D1AE
P 3650 6150
F 0 "#FLG035" H 3650 6225 50  0001 C CNN
F 1 "PWR_FLAG" H 3650 6324 50  0000 C CNN
F 2 "" H 3650 6150 50  0001 C CNN
F 3 "~" H 3650 6150 50  0001 C CNN
	1    3650 6150
	1    0    0    1   
$EndComp
$Comp
L Device:LED D35
U 1 1 5D72D253
P 850 2350
F 0 "D35" V 889 2232 50  0000 R CNN
F 1 "red" V 798 2232 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 850 2350 50  0001 C CNN
F 3 "~" H 850 2350 50  0001 C CNN
	1    850  2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R44
U 1 1 5D72D576
P 850 2700
F 0 "R44" H 780 2746 50  0000 R CNN
F 1 "520R" H 780 2655 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 780 2700 50  0001 C CNN
F 3 "~" H 850 2700 50  0001 C CNN
	1    850  2700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR037
U 1 1 5D72D7E8
P 850 2950
F 0 "#PWR037" H 850 2700 50  0001 C CNN
F 1 "GND" H 855 2777 50  0000 C CNN
F 2 "" H 850 2950 50  0001 C CNN
F 3 "" H 850 2950 50  0001 C CNN
	1    850  2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	850  2950 850  2850
Wire Wire Line
	850  2550 850  2500
Wire Wire Line
	850  2200 850  1850
Connection ~ 850  1850
Wire Wire Line
	850  1850 1550 1850
$Comp
L Connector:TestPoint TP31
U 1 1 5D77DF7D
P 6750 2150
F 0 "TP31" H 6750 2475 50  0000 C CNN
F 1 "TestPoint" H 6750 2384 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.60mm_Drill0.9mm_Beaded" H 6950 2150 50  0001 C CNN
F 3 "~" H 6950 2150 50  0001 C CNN
	1    6750 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2150 6750 2350
Wire Wire Line
	6750 2350 6200 2350
Connection ~ 6200 2350
Wire Wire Line
	6200 2350 6200 2650
$EndSCHEMATC
