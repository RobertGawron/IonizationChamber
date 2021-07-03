EESchema Schematic File Version 4
EELAYER 30 0
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
P 8950 1100
F 0 "C33" H 8832 1146 50  0000 R CNN
F 1 "100u/16V" H 8832 1055 50  0000 R CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.4" H 8988 950 50  0001 C CNN
F 3 "~" H 8950 1100 50  0001 C CNN
	1    8950 1100
	-1   0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U32
U 1 1 5CCF4B88
P 2050 2850
F 0 "U32" H 2050 3217 50  0000 C CNN
F 1 "LMC662" H 2050 3126 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2050 2850 50  0001 C CNN
F 3 "~" H 2050 2850 50  0001 C CNN
	1    2050 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U32
U 2 1 5CCF4BF9
P 3150 2850
F 0 "U32" H 3150 3217 50  0000 C CNN
F 1 "LMC662" H 3150 3126 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3150 2850 50  0001 C CNN
F 3 "~" H 3150 2850 50  0001 C CNN
	2    3150 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U32
U 3 1 5CCF4C66
P 7850 3350
F 0 "U32" H 7662 3396 50  0000 R CNN
F 1 "LMC662" H 7662 3305 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 7850 3350 50  0001 C CNN
F 3 "~" H 7850 3350 50  0001 C CNN
	3    7850 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R38
U 1 1 5CCF4D7C
P 2050 3150
F 0 "R38" V 2165 3150 50  0000 C CNN
F 1 "2*50G" V 2256 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1980 3150 50  0001 C CNN
F 3 "~" H 2050 3150 50  0001 C CNN
	1    2050 3150
	0    1    1    0   
$EndComp
$Comp
L Device:C C46
U 1 1 5CCF4DE4
P 2050 3500
F 0 "C46" V 2210 3500 50  0000 C CNN
F 1 "not mounted" V 2301 3500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2088 3350 50  0001 C CNN
F 3 "~" H 2050 3500 50  0001 C CNN
	1    2050 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 2950 1700 2950
Wire Wire Line
	2400 2850 2350 2850
$Comp
L Device:R R39
U 1 1 5CD05F00
P 2750 3700
F 0 "R39" H 2819 3746 50  0000 L CNN
F 1 "10k" H 2819 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2680 3700 50  0001 C CNN
F 3 "~" H 2750 3700 50  0001 C CNN
	1    2750 3700
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R40
U 1 1 5CD05F9A
P 3150 3250
F 0 "R40" V 3357 3250 50  0000 C CNN
F 1 "120k" V 3266 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3080 3250 50  0001 C CNN
F 3 "~" H 3150 3250 50  0001 C CNN
	1    3150 3250
	0    1    -1   0   
$EndComp
$Comp
L Device:C C47
U 1 1 5CD06FD8
P 2750 4050
F 0 "C47" H 2635 4096 50  0000 R CNN
F 1 "0R resistor" H 2635 4005 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2788 3900 50  0001 C CNN
F 3 "~" H 2750 4050 50  0001 C CNN
	1    2750 4050
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR065
U 1 1 5CD07028
P 2750 4250
F 0 "#PWR065" H 2750 4000 50  0001 C CNN
F 1 "GND" H 2755 4077 50  0000 C CNN
F 2 "" H 2750 4250 50  0001 C CNN
F 3 "" H 2750 4250 50  0001 C CNN
	1    2750 4250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2750 4250 2750 4200
Wire Wire Line
	2750 3900 2750 3850
Wire Wire Line
	3000 3250 2750 3250
Wire Wire Line
	2750 3250 2750 3450
Wire Wire Line
	2750 3250 2750 2950
Wire Wire Line
	2750 2950 2850 2950
Connection ~ 2750 3250
Wire Wire Line
	3450 2850 3500 2850
Wire Wire Line
	3500 2850 3500 3250
Wire Wire Line
	3500 3250 3300 3250
Wire Wire Line
	1750 2750 1500 2750
$Comp
L Device:Opamp_Dual_Generic U33
U 1 1 5CD2F7E9
P 4700 2850
F 0 "U33" H 4700 3217 50  0000 C CNN
F 1 "LM358" H 4700 3126 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4700 2850 50  0001 C CNN
F 3 "~" H 4700 2850 50  0001 C CNN
	1    4700 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U33
U 2 1 5CD2F854
P 5550 2850
F 0 "U33" H 5550 3217 50  0000 C CNN
F 1 "LM358" H 5550 3126 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5550 2850 50  0001 C CNN
F 3 "~" H 5550 2850 50  0001 C CNN
	2    5550 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U33
U 3 1 5CD2F8CB
P 9250 3350
F 0 "U33" H 9062 3396 50  0000 R CNN
F 1 "LM358" H 9062 3305 50  0000 R CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9250 3350 50  0001 C CNN
F 3 "~" H 9250 3350 50  0001 C CNN
	3    9250 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C40
U 1 1 5CD36164
P 8000 3000
F 0 "C40" H 7885 2954 50  0000 R CNN
F 1 "100n" H 7885 3045 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8038 2850 50  0001 C CNN
F 3 "~" H 8000 3000 50  0001 C CNN
	1    8000 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C45
U 1 1 5CD3762B
P 9450 3000
F 0 "C45" H 9335 2954 50  0000 R CNN
F 1 "100n" H 9335 3045 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9488 2850 50  0001 C CNN
F 3 "~" H 9450 3000 50  0001 C CNN
	1    9450 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9300 3000 9150 3000
Wire Wire Line
	9150 3000 9150 3050
Wire Wire Line
	9300 3700 9150 3700
Wire Wire Line
	9150 3700 9150 3650
Wire Wire Line
	9150 3700 9150 3800
Connection ~ 9150 3700
Wire Wire Line
	9150 3000 9150 2900
Connection ~ 9150 3000
Wire Wire Line
	7750 3000 7750 3050
Wire Wire Line
	7750 2900 7750 3000
Connection ~ 7750 3000
Wire Wire Line
	7750 3700 7750 3650
Wire Wire Line
	7750 3800 7750 3700
Connection ~ 7750 3700
Wire Wire Line
	1700 2950 1700 3150
Wire Wire Line
	2400 3500 2200 3500
Wire Wire Line
	2400 2850 2400 3150
Wire Wire Line
	2200 3150 2400 3150
Connection ~ 2400 3150
Wire Wire Line
	2400 3150 2400 3500
Wire Wire Line
	1900 3150 1700 3150
Connection ~ 1700 3150
Wire Wire Line
	1900 3500 1700 3500
Wire Wire Line
	1700 3150 1700 3500
Wire Wire Line
	5250 2950 5200 2950
Wire Wire Line
	5200 2950 5200 3150
Wire Wire Line
	5200 3150 5900 3150
Wire Wire Line
	5900 3150 5900 2850
Wire Wire Line
	5900 2850 5850 2850
$Comp
L power:GND #PWR068
U 1 1 5CD6EF53
P 6150 3100
F 0 "#PWR068" H 6150 2850 50  0001 C CNN
F 1 "GND" H 6155 2927 50  0000 C CNN
F 2 "" H 6150 3100 50  0001 C CNN
F 3 "" H 6150 3100 50  0001 C CNN
	1    6150 3100
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J34
U 1 1 5CD78402
P 6150 2850
F 0 "J34" V 6050 3000 50  0000 L CNN
F 1 "Conn_Coaxial" V 6150 3000 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Molex_73251-2200_Horizontal" H 6150 2850 50  0001 C CNN
F 3 " ~" H 6150 2850 50  0001 C CNN
	1    6150 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2850 5900 2850
Connection ~ 5900 2850
Wire Wire Line
	6150 3100 6150 3050
$Comp
L Device:L_Core_Ferrite L32
U 1 1 5CD96E48
P 9250 750
F 0 "L32" V 9475 750 50  0000 C CNN
F 1 "u68" V 9384 750 50  0000 C CNN
F 2 "Inductor_SMD:L_1812_4532Metric_Pad1.30x3.40mm_HandSolder" H 9250 750 50  0001 C CNN
F 3 "~" H 9250 750 50  0001 C CNN
	1    9250 750 
	0    1    -1   0   
$EndComp
$Comp
L Device:CP C34
U 1 1 5CD94E6D
P 8950 1900
F 0 "C34" H 8832 1946 50  0000 R CNN
F 1 "100u/16V" H 8832 1855 50  0000 R CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.4" H 8988 1750 50  0001 C CNN
F 3 "~" H 8950 1900 50  0001 C CNN
	1    8950 1900
	-1   0    0    -1  
$EndComp
$Comp
L Device:L_Core_Ferrite L33
U 1 1 5CD9781A
P 9250 2300
F 0 "L33" V 9161 2300 50  0000 C CNN
F 1 "u68" V 9070 2300 50  0000 C CNN
F 2 "Inductor_SMD:L_1812_4532Metric_Pad1.30x3.40mm_HandSolder" H 9250 2300 50  0001 C CNN
F 3 "~" H 9250 2300 50  0001 C CNN
	1    9250 2300
	0    1    -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG032
U 1 1 5CD9E263
P 7750 600
F 0 "#FLG032" H 7750 675 50  0001 C CNN
F 1 "PWR_FLAG" H 7750 774 50  0000 C CNN
F 2 "" H 7750 600 50  0001 C CNN
F 3 "~" H 7750 600 50  0001 C CNN
	1    7750 600 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7750 650  7750 600 
Wire Wire Line
	8950 1750 8950 1400
Wire Wire Line
	9100 2300 8950 2300
Wire Wire Line
	8950 2300 8950 2050
Wire Wire Line
	9100 750  8950 750 
Wire Wire Line
	8950 750  8950 950 
Wire Wire Line
	9400 750  9600 750 
Connection ~ 9600 750 
$Comp
L power:GND #PWR042
U 1 1 5CDF8D9C
P 8600 1550
F 0 "#PWR042" H 8600 1300 50  0001 C CNN
F 1 "GND" H 8605 1377 50  0000 C CNN
F 2 "" H 8600 1550 50  0001 C CNN
F 3 "" H 8600 1550 50  0001 C CNN
	1    8600 1550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8950 1400 8600 1400
Wire Wire Line
	8600 1400 8600 1550
Connection ~ 8950 750 
Connection ~ 8950 2300
$Comp
L power:PWR_FLAG #FLG034
U 1 1 5CE2CCD8
P 9600 650
F 0 "#FLG034" H 9600 725 50  0001 C CNN
F 1 "PWR_FLAG" H 9600 824 50  0000 C CNN
F 2 "" H 9600 650 50  0001 C CNN
F 3 "~" H 9600 650 50  0001 C CNN
	1    9600 650 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9950 750  9950 650 
Wire Wire Line
	9600 750  9950 750 
Wire Wire Line
	9950 2400 9950 2300
Wire Wire Line
	9600 750  9600 650 
$Comp
L Device:R R41
U 1 1 5CEB9F44
P 4100 2950
F 0 "R41" V 3985 2950 50  0000 C CNN
F 1 "10k" V 3894 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4030 2950 50  0001 C CNN
F 3 "~" H 4100 2950 50  0001 C CNN
	1    4100 2950
	0    1    -1   0   
$EndComp
$Comp
L Device:R R42
U 1 1 5CEB9F4A
P 4700 3150
F 0 "R42" V 4585 3150 50  0000 C CNN
F 1 "120k" V 4494 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4630 3150 50  0001 C CNN
F 3 "~" H 4700 3150 50  0001 C CNN
	1    4700 3150
	0    1    -1   0   
$EndComp
$Comp
L Device:C C48
U 1 1 5CEB9F50
P 3750 2950
F 0 "C48" H 3635 2996 50  0000 R CNN
F 1 "0R resistor" H 3635 2905 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3788 2800 50  0001 C CNN
F 3 "~" H 3750 2950 50  0001 C CNN
	1    3750 2950
	0    -1   1    0   
$EndComp
Wire Wire Line
	4550 3150 4300 3150
Wire Wire Line
	5100 3150 4850 3150
Wire Wire Line
	4400 2950 4300 2950
Wire Wire Line
	4300 2950 4300 3150
Wire Wire Line
	5100 3150 5100 2850
Wire Wire Line
	5100 2850 5000 2850
Wire Wire Line
	5100 2850 5200 2850
Wire Wire Line
	5200 2850 5200 2750
Wire Wire Line
	5200 2750 5250 2750
Connection ~ 5100 2850
Wire Wire Line
	2400 2850 2550 2850
Wire Wire Line
	2550 2850 2550 2750
Wire Wire Line
	2550 2750 2850 2750
Connection ~ 2400 2850
$Comp
L power:GND #PWR064
U 1 1 5CF0CA1C
P 1500 3050
F 0 "#PWR064" H 1500 2800 50  0001 C CNN
F 1 "GND" H 1505 2877 50  0000 C CNN
F 2 "" H 1500 3050 50  0001 C CNN
F 3 "" H 1500 3050 50  0001 C CNN
	1    1500 3050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1500 3050 1500 2750
$Comp
L Sensor:Nuclear-Radiation_Detector V31
U 1 1 5CF2E667
P 1350 2550
F 0 "V31" V 1000 2500 50  0000 R CNN
F 1 "Nuclear-Radiation_Detector" V 1112 2505 50  0000 R CNN
F 2 "IonizationChamber:IonizationChamberSensor" H 1550 2650 50  0001 C CNN
F 3 "~" H 1350 2550 50  0001 C CNN
	1    1350 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2950 1350 2950
Wire Wire Line
	1350 2950 1350 2750
Connection ~ 1700 2950
Connection ~ 7750 650 
$Comp
L power:+BATT #PWR049
U 1 1 5CFE9A02
P 9950 650
F 0 "#PWR049" H 9950 500 50  0001 C CNN
F 1 "+BATT" H 9965 823 50  0000 C CNN
F 2 "" H 9950 650 50  0001 C CNN
F 3 "" H 9950 650 50  0001 C CNN
	1    9950 650 
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR050
U 1 1 5CFEAB3F
P 9950 2400
F 0 "#PWR050" H 9950 2250 50  0001 C CNN
F 1 "-BATT" H 9965 2573 50  0000 C CNN
F 2 "" H 9950 2400 50  0001 C CNN
F 3 "" H 9950 2400 50  0001 C CNN
	1    9950 2400
	-1   0    0    1   
$EndComp
$Comp
L power:+BATT #PWR053
U 1 1 5CFEB344
P 7750 2900
F 0 "#PWR053" H 7750 2750 50  0001 C CNN
F 1 "+BATT" H 7765 3073 50  0000 C CNN
F 2 "" H 7750 2900 50  0001 C CNN
F 3 "" H 7750 2900 50  0001 C CNN
	1    7750 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR059
U 1 1 5CFEB749
P 9150 2900
F 0 "#PWR059" H 9150 2750 50  0001 C CNN
F 1 "+BATT" H 9165 3073 50  0000 C CNN
F 2 "" H 9150 2900 50  0001 C CNN
F 3 "" H 9150 2900 50  0001 C CNN
	1    9150 2900
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR054
U 1 1 5CFF6055
P 7750 3800
F 0 "#PWR054" H 7750 3650 50  0001 C CNN
F 1 "-BATT" H 7765 3973 50  0000 C CNN
F 2 "" H 7750 3800 50  0001 C CNN
F 3 "" H 7750 3800 50  0001 C CNN
	1    7750 3800
	-1   0    0    1   
$EndComp
$Comp
L power:-BATT #PWR060
U 1 1 5CFF639F
P 9150 3800
F 0 "#PWR060" H 9150 3650 50  0001 C CNN
F 1 "-BATT" H 9165 3973 50  0000 C CNN
F 2 "" H 9150 3800 50  0001 C CNN
F 3 "" H 9150 3800 50  0001 C CNN
	1    9150 3800
	-1   0    0    1   
$EndComp
$Comp
L power:+BATT #PWR063
U 1 1 5D0E88D8
P 1350 1700
F 0 "#PWR063" H 1350 1550 50  0001 C CNN
F 1 "+BATT" H 1365 1873 50  0000 C CNN
F 2 "" H 1350 1700 50  0001 C CNN
F 3 "" H 1350 1700 50  0001 C CNN
	1    1350 1700
	1    0    0    -1  
$EndComp
$Sheet
S 1600 5350 500  150 
U 5CF2BB44
F0 "DataAcquisition" 50
F1 "DataAcquisition.sch" 50
$EndSheet
$Comp
L Switch:SW_DPDT_x2 SW31
U 1 1 5CF2C564
P 8300 650
F 0 "SW31" H 8300 935 50  0000 C CNN
F 1 "SW_DPDT_x2" H 8300 844 50  0000 C CNN
F 2 "Button_Switch_THT:SW_E-Switch_EG1271_DPDT" H 8300 650 50  0001 C CNN
F 3 "~" H 8300 650 50  0001 C CNN
	1    8300 650 
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW31
U 2 1 5CF2D41F
P 8300 2200
F 0 "SW31" H 8300 2485 50  0000 C CNN
F 1 "SW_DPDT_x2" H 8300 2394 50  0000 C CNN
F 2 "Button_Switch_THT:SW_E-Switch_EG1271_DPDT" H 8300 2200 50  0001 C CNN
F 3 "~" H 8300 2200 50  0001 C CNN
	2    8300 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2300 8950 2300
Wire Wire Line
	8500 750  8950 750 
Wire Wire Line
	7750 650  8050 650 
Wire Wire Line
	7750 650  7750 700 
Wire Wire Line
	7750 2100 7750 2200
$Comp
L Device:Battery_Cell BT32
U 1 1 5CD816BD
P 7750 2000
F 0 "BT32" H 7632 2096 50  0000 R CNN
F 1 "3V6" H 7632 2005 50  0000 R CNN
F 2 "IonizationChamber:MR18650BatteryHolder" V 7750 2060 50  0001 C CNN
F 3 "~" V 7750 2060 50  0001 C CNN
	1    7750 2000
	1    0    0    -1  
$EndComp
Connection ~ 7750 2200
Wire Wire Line
	7750 1400 7750 1450
Connection ~ 7750 1400
Wire Wire Line
	7300 1400 7300 1450
Wire Wire Line
	7750 1400 7300 1400
$Comp
L power:GND #PWR033
U 1 1 5CDF8594
P 7300 1450
F 0 "#PWR033" H 7300 1200 50  0001 C CNN
F 1 "GND" H 7305 1277 50  0000 C CNN
F 2 "" H 7300 1450 50  0001 C CNN
F 3 "" H 7300 1450 50  0001 C CNN
	1    7300 1450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7750 2250 7750 2200
$Comp
L power:PWR_FLAG #FLG033
U 1 1 5CD97E81
P 7750 2250
F 0 "#FLG033" H 7750 2325 50  0001 C CNN
F 1 "PWR_FLAG" H 7750 2424 50  0000 C CNN
F 2 "" H 7750 2250 50  0001 C CNN
F 3 "~" H 7750 2250 50  0001 C CNN
	1    7750 2250
	1    0    0    1   
$EndComp
Wire Wire Line
	7750 2200 8050 2200
$Comp
L power:GND #PWR067
U 1 1 5CE761F3
P 4100 2650
F 0 "#PWR067" H 4100 2400 50  0001 C CNN
F 1 "GND" H 4105 2477 50  0000 C CNN
F 2 "" H 4100 2650 50  0001 C CNN
F 3 "" H 4100 2650 50  0001 C CNN
	1    4100 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4400 2750 4300 2750
Wire Wire Line
	4300 2750 4300 2550
Wire Wire Line
	4300 2550 4100 2550
Wire Wire Line
	4100 2550 4100 2650
Wire Wire Line
	4300 2950 4250 2950
Connection ~ 4300 2950
Wire Wire Line
	3950 2950 3900 2950
Wire Wire Line
	3600 2950 3550 2950
Wire Wire Line
	3550 2950 3550 2850
Wire Wire Line
	3550 2850 3500 2850
Connection ~ 3500 2850
Wire Wire Line
	5900 2850 5900 2650
Text GLabel 5900 2650 1    50   Input ~ 0
analog_output
Wire Wire Line
	8500 550  8550 550 
Wire Wire Line
	8550 550  8550 500 
Wire Wire Line
	8550 500  8050 500 
Wire Wire Line
	8050 500  8050 650 
Connection ~ 8050 650 
Wire Wire Line
	8050 650  8100 650 
Wire Wire Line
	8500 2100 8550 2100
Wire Wire Line
	8550 2100 8550 2050
Wire Wire Line
	8550 2050 8050 2050
Wire Wire Line
	8050 2050 8050 2200
Connection ~ 8050 2200
Wire Wire Line
	8050 2200 8100 2200
$Comp
L Device:C C42
U 1 1 5CEF9E41
P 8000 3700
F 0 "C42" H 7885 3654 50  0000 R CNN
F 1 "100n" H 7885 3745 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8038 3550 50  0001 C CNN
F 3 "~" H 8000 3700 50  0001 C CNN
	1    8000 3700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR045
U 1 1 5CEFA2D5
P 8350 3400
F 0 "#PWR045" H 8350 3150 50  0001 C CNN
F 1 "GND" H 8355 3227 50  0000 C CNN
F 2 "" H 8350 3400 50  0001 C CNN
F 3 "" H 8350 3400 50  0001 C CNN
	1    8350 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7750 3000 7850 3000
Wire Wire Line
	7750 3700 7850 3700
Wire Wire Line
	8150 3700 8250 3700
Wire Wire Line
	8250 3700 8250 3350
Wire Wire Line
	8250 3000 8150 3000
Wire Wire Line
	8350 3400 8350 3350
Wire Wire Line
	8350 3350 8250 3350
Connection ~ 8250 3350
Wire Wire Line
	8250 3350 8250 3000
$Comp
L Device:C C44
U 1 1 5CF55DC2
P 9450 3700
F 0 "C44" H 9335 3654 50  0000 R CNN
F 1 "100n" H 9335 3745 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9488 3550 50  0001 C CNN
F 3 "~" H 9450 3700 50  0001 C CNN
	1    9450 3700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR046
U 1 1 5CF56173
P 9800 3350
F 0 "#PWR046" H 9800 3100 50  0001 C CNN
F 1 "GND" H 9805 3177 50  0000 C CNN
F 2 "" H 9800 3350 50  0001 C CNN
F 3 "" H 9800 3350 50  0001 C CNN
	1    9800 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9600 3700 9700 3700
Wire Wire Line
	9700 3700 9700 3300
Wire Wire Line
	9700 3000 9600 3000
Wire Wire Line
	9800 3350 9800 3300
Wire Wire Line
	9800 3300 9700 3300
Connection ~ 9700 3300
Wire Wire Line
	9700 3300 9700 3000
Wire Wire Line
	9600 2300 9950 2300
Wire Wire Line
	9400 2300 9600 2300
Connection ~ 9600 2300
Wire Wire Line
	9600 2400 9600 2300
$Comp
L power:PWR_FLAG #FLG035
U 1 1 5CE2D1AE
P 9600 2400
F 0 "#FLG035" H 9600 2475 50  0001 C CNN
F 1 "PWR_FLAG" H 9600 2574 50  0000 C CNN
F 2 "" H 9600 2400 50  0001 C CNN
F 3 "~" H 9600 2400 50  0001 C CNN
	1    9600 2400
	1    0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP31
U 1 1 5D77DF7D
P 1650 2100
F 0 "TP31" H 1650 2425 50  0000 C CNN
F 1 "TestPoint" H 1650 2334 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.60mm_Drill0.9mm_Beaded" H 1850 2100 50  0001 C CNN
F 3 "~" H 1850 2100 50  0001 C CNN
	1    1650 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2100 1650 2150
Wire Wire Line
	1650 2150 1350 2150
Connection ~ 1350 2150
Wire Wire Line
	1350 2150 1350 2350
Wire Notes Line
	8650 6400 7150 6400
$Comp
L Device:C C5
U 1 1 5D7D5A31
P 4700 3550
F 0 "C5" V 4860 3550 50  0000 C CNN
F 1 "10n" V 4951 3550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4738 3400 50  0001 C CNN
F 3 "~" H 4700 3550 50  0001 C CNN
	1    4700 3550
	0    -1   1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5D7D6168
P 3150 3450
F 0 "C4" V 3310 3450 50  0000 C CNN
F 1 "10n" V 3401 3450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3188 3300 50  0001 C CNN
F 3 "~" H 3150 3450 50  0001 C CNN
	1    3150 3450
	0    -1   1    0   
$EndComp
Wire Wire Line
	3300 3450 3500 3450
Wire Wire Line
	3500 3450 3500 3250
Connection ~ 3500 3250
Wire Wire Line
	3000 3450 2750 3450
Connection ~ 2750 3450
Wire Wire Line
	2750 3450 2750 3550
Wire Wire Line
	4550 3550 4300 3550
Wire Wire Line
	4300 3550 4300 3150
Connection ~ 4300 3150
Wire Wire Line
	4850 3550 5100 3550
Wire Wire Line
	5100 3550 5100 3150
Connection ~ 5100 3150
Wire Wire Line
	1350 1700 1350 2150
Text Notes 900  7150 0    98   ~ 20
Power supply= +2*3V6m -2*3V6
$Comp
L Device:Battery_Cell BT3
U 1 1 60FA2573
P 5750 750
F 0 "BT3" H 5632 846 50  0000 R CNN
F 1 "2 x 3V6" H 5632 755 50  0000 R CNN
F 2 "Battery:BatteryHolder_Keystone_2466_1xAAA" V 5750 810 50  0001 C CNN
F 3 "~" V 5750 810 50  0001 C CNN
	1    5750 750 
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 60FAB74E
P 5000 1250
F 0 "BT1" H 4882 1346 50  0000 R CNN
F 1 "2 x 3V6" H 4882 1255 50  0000 R CNN
F 2 "Battery:BatteryHolder_Keystone_2466_1xAAA" V 5000 1310 50  0001 C CNN
F 3 "~" V 5000 1310 50  0001 C CNN
	1    5000 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT6
U 1 1 60FB8ADE
P 5700 1200
F 0 "BT6" H 5582 1296 50  0000 R CNN
F 1 "2 x 3V6" H 5582 1205 50  0000 R CNN
F 2 "Battery:BatteryHolder_Keystone_2466_1xAAA" V 5700 1260 50  0001 C CNN
F 3 "~" V 5700 1260 50  0001 C CNN
	1    5700 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT9
U 1 1 60FC659D
P 5400 1200
F 0 "BT9" H 5282 1296 50  0000 R CNN
F 1 "2 x 3V6" H 5282 1205 50  0000 R CNN
F 2 "Battery:BatteryHolder_Keystone_2466_1xAAA" V 5400 1260 50  0001 C CNN
F 3 "~" V 5400 1260 50  0001 C CNN
	1    5400 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT5
U 1 1 610447D9
P 7750 1650
F 0 "BT5" H 7632 1746 50  0000 R CNN
F 1 "3V6" H 7632 1655 50  0000 R CNN
F 2 "IonizationChamber:MR18650BatteryHolder" V 7750 1710 50  0001 C CNN
F 3 "~" V 7750 1710 50  0001 C CNN
	1    7750 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT4
U 1 1 610491A7
P 7750 1250
F 0 "BT4" H 7632 1346 50  0000 R CNN
F 1 "3V6" H 7632 1255 50  0000 R CNN
F 2 "IonizationChamber:MR18650BatteryHolder" V 7750 1310 50  0001 C CNN
F 3 "~" V 7750 1310 50  0001 C CNN
	1    7750 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT2
U 1 1 6104DBBA
P 7750 900
F 0 "BT2" H 7632 996 50  0000 R CNN
F 1 "3V6" H 7632 905 50  0000 R CNN
F 2 "IonizationChamber:MR18650BatteryHolder" V 7750 960 50  0001 C CNN
F 3 "~" V 7750 960 50  0001 C CNN
	1    7750 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1750 7750 1800
Wire Wire Line
	7750 1350 7750 1400
Wire Wire Line
	8950 1250 8950 1400
Connection ~ 8950 1400
Wire Wire Line
	7750 1000 7750 1050
$EndSCHEMATC
