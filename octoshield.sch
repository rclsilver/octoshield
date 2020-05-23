EESchema Schematic File Version 4
LIBS:octoshield-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "OctoShield"
Date "2020-05-22"
Rev "1.0"
Comp "Thomas Bétrancourt"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5EC6CF90
P 1350 2300
F 0 "J1" H 1450 2400 50  0000 C CNN
F 1 "PWR_IN" H 1250 2250 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 1350 2300 50  0001 C CNN
F 3 "~" H 1350 2300 50  0001 C CNN
	1    1350 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5EC790E6
P 2050 1950
F 0 "R1" H 2120 1996 50  0000 L CNN
F 1 "180" H 2120 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1980 1950 50  0001 C CNN
F 3 "~" H 2050 1950 50  0001 C CNN
	1    2050 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2300 1550 1100
Wire Wire Line
	2050 2100 2050 2200
$Comp
L Device:LED D1
U 1 1 5EC7940D
P 2050 2350
F 0 "D1" V 2089 2232 50  0000 R CNN
F 1 "VIN" V 1998 2232 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2050 2350 50  0001 C CNN
F 3 "~" H 2050 2350 50  0001 C CNN
	1    2050 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1550 1100 2050 1100
Wire Wire Line
	1550 2400 1550 3550
Wire Wire Line
	1550 3550 2050 3550
Wire Wire Line
	2050 1800 2050 1100
Connection ~ 2050 1100
Wire Wire Line
	2050 2500 2050 3550
Connection ~ 2050 3550
Wire Wire Line
	3200 1900 3600 1900
Wire Wire Line
	3600 2450 3200 2450
Wire Wire Line
	3200 2450 3200 2750
Wire Wire Line
	2050 1100 3200 1100
Wire Wire Line
	3200 1900 3200 1100
$Comp
L Transistor_FET:2N7000 Q1
U 1 1 5EDA48B1
P 3100 2950
F 0 "Q1" H 3304 2996 50  0000 L CNN
F 1 "2N7000" H 3304 2905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3300 2875 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 3100 2950 50  0001 L CNN
	1    3100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3150 3200 3550
Text GLabel 2650 2950 0    50   Input ~ 0
FAN_OUT
Wire Wire Line
	3600 2300 3600 2450
Wire Wire Line
	3600 1900 3600 2000
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5EDD15B5
P 1550 1100
F 0 "#FLG01" H 1550 1175 50  0001 C CNN
F 1 "PWR_FLAG" H 1550 1273 50  0001 C CNN
F 2 "" H 1550 1100 50  0001 C CNN
F 3 "~" H 1550 1100 50  0001 C CNN
	1    1550 1100
	1    0    0    -1  
$EndComp
Connection ~ 1550 1100
Text GLabel 1550 2300 2    50   Input ~ 0
+5V
Text GLabel 1550 2400 2    50   Input ~ 0
GND
Text GLabel 6000 1100 2    50   Input ~ 0
PWR_OUT
Text GLabel 4950 1100 0    50   Input ~ 0
PWR_IN
Wire Wire Line
	5900 1100 5900 1400
Text GLabel 5900 2000 3    50   Input ~ 0
+5V
Text GLabel 6000 2000 3    50   Input ~ 0
GND
$Comp
L Device:C C1
U 1 1 5EDE5BB0
P 5450 1650
F 0 "C1" H 5565 1696 50  0000 L CNN
F 1 "1uF" H 5565 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5488 1500 50  0001 C CNN
F 3 "~" H 5450 1650 50  0001 C CNN
	1    5450 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1900 6000 2000
Wire Wire Line
	5450 1500 5450 1400
Wire Wire Line
	5450 1800 5450 1900
Wire Wire Line
	5450 1900 5900 1900
Wire Wire Line
	5900 1900 5900 2000
Wire Notes Line
	7000 900  7000 2300
Wire Notes Line
	4450 2300 4450 900 
Text Notes 5250 850  0    50   ~ 0
Power button and LED indicator
Text GLabel 8950 1100 2    50   Input ~ 0
LED_OUT
Text GLabel 7900 1100 0    50   Input ~ 0
LED_IN
Wire Wire Line
	8850 1100 8850 1400
Text GLabel 8850 2000 3    50   Input ~ 0
+5V
Text GLabel 8950 2000 3    50   Input ~ 0
GND
$Comp
L Device:C C3
U 1 1 5EDF3756
P 8400 1650
F 0 "C3" H 8515 1696 50  0000 L CNN
F 1 "1uF" H 8515 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8438 1500 50  0001 C CNN
F 3 "~" H 8400 1650 50  0001 C CNN
	1    8400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1500 8400 1400
Wire Wire Line
	8400 1400 8700 1400
Wire Wire Line
	8400 1800 8400 1900
Wire Wire Line
	8400 1900 8850 1900
Wire Wire Line
	8850 1900 8850 2000
Wire Notes Line
	9950 900  9950 2300
Wire Notes Line
	7400 2300 7400 900 
Text Notes 8200 850  0    50   ~ 0
LED button and LED indicator
Wire Notes Line
	1000 900  4050 900 
Wire Notes Line
	4050 900  4050 3750
Wire Notes Line
	4050 3750 1000 3750
Wire Notes Line
	1000 900  1000 3750
Text Notes 2050 850  0    50   ~ 0
Power in and fan control
Text GLabel 5050 2900 1    50   Input ~ 0
+3.3V
Text GLabel 5050 3650 3    50   Input ~ 0
GND
$Comp
L Device:R R4
U 1 1 5EE28EB8
P 5550 2950
F 0 "R4" V 5343 2950 50  0000 C CNN
F 1 "4.7k" V 5434 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5480 2950 50  0001 C CNN
F 3 "~" H 5550 2950 50  0001 C CNN
	1    5550 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 3300 5900 2950
Wire Wire Line
	5900 2950 5700 2950
Wire Wire Line
	5900 2950 6100 2950
Connection ~ 5900 2950
Text GLabel 6100 2950 2    50   Input ~ 0
TEMP_IN
Wire Notes Line
	4450 2550 6500 2550
Wire Notes Line
	6500 2550 6500 3950
Wire Notes Line
	6500 3950 4450 3950
Wire Notes Line
	4450 3950 4450 2550
Text Notes 5100 2500 0    50   ~ 0
Temperature module
$Comp
L Device:R R5
U 1 1 5EE8DEC2
P 6650 1400
F 0 "R5" H 6720 1446 50  0000 L CNN
F 1 "180" H 6720 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6580 1400 50  0001 C CNN
F 3 "~" H 6650 1400 50  0001 C CNN
	1    6650 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5EE8E5FC
P 6650 1750
F 0 "D3" V 6689 1632 50  0000 R CNN
F 1 "PWR" V 6598 1632 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6650 1750 50  0001 C CNN
F 3 "~" H 6650 1750 50  0001 C CNN
	1    6650 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6650 1900 6150 1900
Wire Wire Line
	6000 1100 6000 1250
Wire Wire Line
	6650 1250 6000 1250
Wire Wire Line
	6650 1550 6650 1600
Wire Notes Line
	4450 900  7000 900 
Wire Notes Line
	7000 2300 4450 2300
$Comp
L Device:R R11
U 1 1 5EEACE23
P 9600 1400
F 0 "R11" H 9670 1446 50  0000 L CNN
F 1 "180" H 9670 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9530 1400 50  0001 C CNN
F 3 "~" H 9600 1400 50  0001 C CNN
	1    9600 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5EEACE29
P 9600 1750
F 0 "D4" V 9639 1633 50  0000 R CNN
F 1 "LED" V 9548 1633 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9600 1750 50  0001 C CNN
F 3 "~" H 9600 1750 50  0001 C CNN
	1    9600 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9600 1250 8950 1250
Wire Wire Line
	9600 1550 9600 1600
Wire Wire Line
	8950 1100 8950 1250
Wire Notes Line
	7400 2300 9950 2300
Wire Notes Line
	7400 900  9950 900 
$Comp
L Connector:Conn_01x02_Female J6
U 1 1 5EF28DBA
P 7100 3300
F 0 "J6" H 7250 3250 50  0000 R CNN
F 1 "SMOKE_DETECTOR" H 7400 3450 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 7100 3300 50  0001 C CNN
F 3 "~" H 7100 3300 50  0001 C CNN
	1    7100 3300
	-1   0    0    1   
$EndComp
Text GLabel 7300 2900 1    50   Input ~ 0
GND
$Comp
L Device:R R6
U 1 1 5EF2FC58
P 7550 3300
F 0 "R6" H 7620 3346 50  0000 L CNN
F 1 "1k" H 7620 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7480 3300 50  0001 C CNN
F 3 "~" H 7550 3300 50  0001 C CNN
	1    7550 3300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5EF301E3
P 7950 3300
F 0 "R7" H 8020 3346 50  0000 L CNN
F 1 "1k" H 8020 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7880 3300 50  0001 C CNN
F 3 "~" H 7950 3300 50  0001 C CNN
	1    7950 3300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 5EF304A5
P 8350 3300
F 0 "R9" H 8420 3346 50  0000 L CNN
F 1 "1k" H 8420 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8280 3300 50  0001 C CNN
F 3 "~" H 8350 3300 50  0001 C CNN
	1    8350 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7300 3300 7400 3300
Wire Wire Line
	7700 3300 7800 3300
Wire Wire Line
	7300 3200 7300 2900
Wire Wire Line
	8500 3300 8500 2900
Wire Wire Line
	8500 2900 7300 2900
Text GLabel 8150 3600 0    50   Input ~ 0
EMERGENCY_IN
Wire Notes Line
	6800 2550 6800 3950
Wire Notes Line
	9000 2550 9000 3950
Text Notes 7050 2500 0    50   ~ 0
Emergency stop (button and smoke detector)
Wire Wire Line
	9600 1900 9150 1900
Wire Wire Line
	8950 1900 8950 2000
Wire Wire Line
	5050 2900 5050 2950
Wire Wire Line
	5400 2950 5050 2950
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5EFDDD1F
P 3000 2150
F 0 "J3" H 3108 2331 50  0000 C CNN
F 1 "FAN" H 3108 2240 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 3000 2150 50  0001 C CNN
F 3 "~" H 3000 2150 50  0001 C CNN
	1    3000 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2250 3200 2450
Connection ~ 3200 2450
Wire Wire Line
	3200 1900 3200 2150
Connection ~ 3200 1900
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 5EFE4F07
P 4850 3300
F 0 "J4" H 4650 3350 50  0000 C CNN
F 1 "DS18B20" H 4700 3250 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 4850 3300 50  0001 C CNN
F 3 "~" H 4850 3300 50  0001 C CNN
	1    4850 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2950 5050 3200
Connection ~ 5050 2950
Wire Wire Line
	5050 3300 5900 3300
Wire Wire Line
	5050 3650 5050 3400
Wire Wire Line
	8100 3300 8150 3300
Wire Wire Line
	8150 3300 8150 3450
Connection ~ 8150 3300
Wire Wire Line
	8150 3300 8200 3300
$Comp
L Device:R R10
U 1 1 5EFFA90D
P 8650 3100
F 0 "R10" H 8720 3146 50  0000 L CNN
F 1 "10k" H 8720 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8580 3100 50  0001 C CNN
F 3 "~" H 8650 3100 50  0001 C CNN
	1    8650 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2900 8650 2900
Wire Wire Line
	8650 2900 8650 2950
Connection ~ 8500 2900
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 5F008472
P 8850 3750
F 0 "J7" H 9000 3800 50  0000 R CNN
F 1 "SW_EMERG" H 9150 3900 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 8850 3750 50  0001 C CNN
F 3 "~" H 8850 3750 50  0001 C CNN
	1    8850 3750
	-1   0    0    1   
$EndComp
Wire Notes Line
	6800 2550 9000 2550
Wire Notes Line
	6800 3950 9000 3950
$Comp
L Device:C C2
U 1 1 5F0121E7
P 8350 3700
F 0 "C2" H 8235 3654 50  0000 R CNN
F 1 "1uF" H 8235 3745 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8388 3550 50  0001 C CNN
F 3 "~" H 8350 3700 50  0001 C CNN
	1    8350 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	8150 3450 8350 3450
Wire Wire Line
	8650 3450 8650 3250
Connection ~ 8150 3450
Wire Wire Line
	8150 3450 8150 3600
Wire Wire Line
	8350 3550 8350 3450
Connection ~ 8350 3450
Wire Wire Line
	8350 3450 8650 3450
Wire Wire Line
	8650 3650 8650 3450
Connection ~ 8650 3450
Text GLabel 8150 3850 0    50   Input ~ 0
+5V
Wire Wire Line
	8150 3850 8350 3850
Wire Wire Line
	8350 3850 8650 3850
Wire Wire Line
	8650 3850 8650 3750
Connection ~ 8350 3850
$Comp
L Connector:Conn_01x04_Male J5
U 1 1 5F0295B5
P 6350 1750
F 0 "J5" H 6350 1700 50  0000 R CNN
F 1 "SW_PWR" H 6600 1450 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 6350 1750 50  0001 C CNN
F 3 "~" H 6350 1750 50  0001 C CNN
	1    6350 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 1850 6150 1900
Connection ~ 6150 1900
Wire Wire Line
	6150 1900 6000 1900
Wire Wire Line
	6150 1550 5900 1550
Wire Wire Line
	5900 1550 5900 1900
Connection ~ 5900 1900
Wire Wire Line
	5900 1400 5750 1400
Wire Wire Line
	5750 1400 5750 1650
Wire Wire Line
	5750 1650 6150 1650
Connection ~ 5750 1400
Wire Wire Line
	5750 1400 5450 1400
Wire Wire Line
	6000 1250 6000 1750
Wire Wire Line
	6000 1750 6150 1750
Connection ~ 6000 1250
$Comp
L Connector:Conn_01x04_Male J8
U 1 1 5F03BBB4
P 9350 1750
F 0 "J8" H 9350 1700 50  0000 R CNN
F 1 "SW_LED" H 9600 1450 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 9350 1750 50  0001 C CNN
F 3 "~" H 9350 1750 50  0001 C CNN
	1    9350 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	9150 1850 9150 1900
Connection ~ 9150 1900
Wire Wire Line
	9150 1900 8950 1900
Wire Wire Line
	8950 1250 8950 1750
Wire Wire Line
	8950 1750 9150 1750
Connection ~ 8950 1250
Wire Wire Line
	9150 1650 8700 1650
Wire Wire Line
	8700 1650 8700 1400
Connection ~ 8700 1400
Wire Wire Line
	8700 1400 8850 1400
Wire Wire Line
	9150 1550 8850 1550
Wire Wire Line
	8850 1550 8850 1900
Connection ~ 8850 1900
$Comp
L Diode:1N4007 D2
U 1 1 5F087983
P 3600 2150
F 0 "D2" V 3554 2229 50  0000 L CNN
F 1 "1N4007" V 3645 2229 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3600 1975 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 3600 2150 50  0001 C CNN
	1    3600 2150
	0    1    1    0   
$EndComp
$Comp
L Connector:Raspberry_Pi_2_3 J2
U 1 1 5F0D51FD
P 2650 5500
F 0 "J2" V 2604 6844 50  0000 L CNN
F 1 "Raspberry Pi 2/3/4" V 2695 6844 50  0001 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 2650 5500 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 2650 5500 50  0001 C CNN
	1    2650 5500
	0    1    1    0   
$EndComp
Text GLabel 1250 5200 0    50   Input ~ 0
GND
Wire Wire Line
	1350 5200 1350 5300
Wire Wire Line
	1350 5300 1350 5400
Connection ~ 1350 5300
Wire Wire Line
	1350 5500 1350 5400
Connection ~ 1350 5400
Wire Wire Line
	1350 5600 1350 5500
Connection ~ 1350 5500
Wire Wire Line
	1350 5700 1350 5600
Connection ~ 1350 5600
Wire Wire Line
	1350 5800 1350 5700
Connection ~ 1350 5700
$Comp
L power:GND #PWR02
U 1 1 5F110C6A
P 1350 5800
F 0 "#PWR02" H 1350 5550 50  0001 C CNN
F 1 "GND" H 1355 5627 50  0001 C CNN
F 2 "" H 1350 5800 50  0001 C CNN
F 3 "" H 1350 5800 50  0001 C CNN
	1    1350 5800
	1    0    0    -1  
$EndComp
Connection ~ 1350 5800
$Comp
L power:GND #PWR0101
U 1 1 5F113848
P 1550 3550
F 0 "#PWR0101" H 1550 3300 50  0001 C CNN
F 1 "GND" H 1555 3377 50  0001 C CNN
F 2 "" H 1550 3550 50  0001 C CNN
F 3 "" H 1550 3550 50  0001 C CNN
	1    1550 3550
	1    0    0    -1  
$EndComp
Connection ~ 1550 3550
Text GLabel 4000 5150 2    50   Input ~ 0
+5V
Connection ~ 3950 5300
Wire Wire Line
	3950 5300 3950 5400
Text GLabel 4000 5900 2    50   Input ~ 0
+3.3V
Wire Wire Line
	4000 5150 3950 5150
Wire Wire Line
	3950 5150 3950 5300
Wire Wire Line
	3950 5700 3950 5900
Wire Wire Line
	3950 5900 4000 5900
Wire Wire Line
	3950 5900 3950 6100
Connection ~ 3950 5900
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5F14B261
P 3950 6100
F 0 "#FLG0102" H 3950 6175 50  0001 C CNN
F 1 "PWR_FLAG" H 3950 6273 50  0001 C CNN
F 2 "" H 3950 6100 50  0001 C CNN
F 3 "~" H 3950 6100 50  0001 C CNN
	1    3950 6100
	0    1    1    0   
$EndComp
Text GLabel 2950 6300 3    50   Input ~ 0
TEMP_IN
Text GLabel 3150 4700 1    50   Input ~ 0
PWR_OUT
Text GLabel 1950 4700 1    50   Input ~ 0
PWR_IN
Text GLabel 2450 4700 1    50   Input ~ 0
LED_OUT
Text GLabel 2350 4700 1    50   Input ~ 0
LED_IN
Text GLabel 2250 4700 1    50   Input ~ 0
FAN_OUT
Text GLabel 2150 4700 1    50   Input ~ 0
EMERGENCY_IN
NoConn ~ 2650 4700
NoConn ~ 2750 4700
NoConn ~ 2850 4700
NoConn ~ 2050 4700
NoConn ~ 3050 4700
NoConn ~ 3250 4700
NoConn ~ 3450 4700
NoConn ~ 3550 4700
NoConn ~ 1850 6300
NoConn ~ 1950 6300
NoConn ~ 2150 6300
NoConn ~ 2250 6300
NoConn ~ 2350 6300
NoConn ~ 2450 6300
NoConn ~ 2550 6300
NoConn ~ 2750 6300
NoConn ~ 2850 6300
NoConn ~ 3150 6300
NoConn ~ 3250 6300
NoConn ~ 3450 6300
NoConn ~ 3550 6300
Wire Notes Line
	1000 4050 4300 4050
Wire Notes Line
	4300 4050 4300 6700
Wire Notes Line
	4300 6700 1000 6700
Wire Notes Line
	1000 4050 1000 6700
Text Notes 2500 4000 0    50   ~ 0
Raspberry Pi 2/3/4
$Comp
L Connector:Conn_01x04_Male J9
U 1 1 5F1BE751
P 8100 5500
F 0 "J9" V 8050 5500 50  0000 R CNN
F 1 "Relay module" V 8000 5700 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 8100 5500 50  0001 C CNN
F 3 "~" H 8100 5500 50  0001 C CNN
	1    8100 5500
	0    -1   -1   0   
$EndComp
Text GLabel 8000 5100 0    50   Input ~ 0
+5V
Text GLabel 8300 5100 2    50   Input ~ 0
GND
Text GLabel 7700 4600 0    50   Input ~ 0
PWR_OUT
Wire Wire Line
	8000 5300 8000 5100
Wire Wire Line
	8300 5300 8300 5100
$Comp
L Transistor_FET:2N7000 Q2
U 1 1 5F1F9825
P 7900 4600
F 0 "Q2" H 7750 4700 50  0000 L CNN
F 1 "2N7000" H 7650 4800 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8100 4525 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 7900 4600 50  0001 L CNN
	1    7900 4600
	1    0    0    1   
$EndComp
$Comp
L Transistor_FET:2N7000 Q3
U 1 1 5F1FDD8B
P 8400 4600
F 0 "Q3" H 8250 4700 50  0000 L CNN
F 1 "2N7000" H 8150 4800 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8600 4525 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 8400 4600 50  0001 L CNN
	1    8400 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	8300 4800 8300 4950
Wire Wire Line
	8300 4950 8200 4950
Wire Wire Line
	8200 4950 8200 5300
Wire Wire Line
	8000 4800 8000 4950
Wire Wire Line
	8000 4950 8100 4950
Wire Wire Line
	8100 4950 8100 5300
Wire Wire Line
	8000 4400 8150 4400
Wire Wire Line
	8150 4400 8150 4350
Connection ~ 8150 4400
Wire Wire Line
	8150 4400 8300 4400
Wire Notes Line
	9000 4100 9000 5650
Wire Notes Line
	9000 5650 7300 5650
Wire Notes Line
	7300 5650 7300 4100
Wire Notes Line
	7300 4100 9000 4100
Text Notes 7900 4100 0    50   ~ 0
Relay module
Text GLabel 8100 1400 3    50   Input ~ 0
GND
Wire Wire Line
	8100 1100 8850 1100
Wire Wire Line
	7900 1100 8100 1100
Connection ~ 8100 1100
$Comp
L Device:R R8
U 1 1 5EDF374D
P 8100 1250
F 0 "R8" H 8170 1296 50  0000 L CNN
F 1 "10k" H 8170 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8030 1250 50  0001 C CNN
F 3 "~" H 8100 1250 50  0001 C CNN
	1    8100 1250
	1    0    0    -1  
$EndComp
Text GLabel 5150 1400 3    50   Input ~ 0
GND
Wire Wire Line
	5150 1100 5900 1100
Wire Wire Line
	4950 1100 5150 1100
Connection ~ 5150 1100
$Comp
L Device:R R3
U 1 1 5EDE2235
P 5150 1250
F 0 "R3" H 5220 1296 50  0000 L CNN
F 1 "10k" H 5220 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5080 1250 50  0001 C CNN
F 3 "~" H 5150 1250 50  0001 C CNN
	1    5150 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3550 3200 3550
Wire Wire Line
	2050 3550 2800 3550
Connection ~ 2800 3550
Wire Wire Line
	2800 3400 2800 3550
Wire Wire Line
	2800 2950 2650 2950
Wire Wire Line
	2900 2950 2800 2950
Connection ~ 2800 2950
Wire Wire Line
	2800 2950 2800 3100
$Comp
L Device:R R2
U 1 1 5EDA88E4
P 2800 3250
F 0 "R2" H 2870 3296 50  0000 L CNN
F 1 "10k" H 2870 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2730 3250 50  0001 C CNN
F 3 "~" H 2800 3250 50  0001 C CNN
	1    2800 3250
	1    0    0    -1  
$EndComp
Text GLabel 8600 4600 2    50   Input ~ 0
LED_OUT
Text GLabel 8150 4350 1    50   Input ~ 0
GND
NoConn ~ 3950 5600
Wire Wire Line
	1250 5200 1350 5200
Connection ~ 1350 5200
Wire Wire Line
	1350 5100 1350 5200
$EndSCHEMATC
