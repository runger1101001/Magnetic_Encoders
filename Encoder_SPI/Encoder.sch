EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "AS5048B I2C Magnetic Encoder Board"
Date ""
Rev "1.0"
Comp "Richard Unger"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Sensor_Magnetic:AS5048A U1
U 1 1 5F5E846B
P 4650 3150
F 0 "U1" H 5194 3196 50  0000 L CNN
F 1 "AS5048A" H 5194 3105 50  0000 L CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 4650 2400 50  0001 C CNN
F 3 "https://ams.com/documents/20143/36005/AS5048_DS000298_4-00.pdf" H 2500 4750 50  0001 C CNN
F 4 "AMS - www.ams.com" H 4650 3150 50  0001 C CNN "Manu"
F 5 "AS5048A" H 4650 3150 50  0001 C CNN "Part"
	1    4650 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F5E8DAF
P 4950 4100
F 0 "#PWR0101" H 4950 3850 50  0001 C CNN
F 1 "GND" H 4955 3927 50  0000 C CNN
F 2 "" H 4950 4100 50  0001 C CNN
F 3 "" H 4950 4100 50  0001 C CNN
	1    4950 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3650 4950 3900
Wire Wire Line
	4350 3650 4350 3900
Connection ~ 4950 3900
Wire Wire Line
	4950 3900 4950 4100
Wire Wire Line
	4350 3900 4950 3900
NoConn ~ 4450 3650
NoConn ~ 4550 3650
NoConn ~ 4650 3650
NoConn ~ 4750 3650
NoConn ~ 4850 3650
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5F5EA2C6
P 6100 3050
F 0 "J2" H 6072 2982 50  0000 R CNN
F 1 "PWM" H 6072 3073 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6100 3050 50  0001 C CNN
F 3 "~" H 6100 3050 50  0001 C CNN
	1    6100 3050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 3150 5900 3150
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5F5EAA65
P 4600 2250
F 0 "JP1" H 4600 2455 50  0000 C CNN
F 1 "Open 5V Closed 3.3V" H 4600 2364 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4600 2250 50  0001 C CNN
F 3 "~" H 4600 2250 50  0001 C CNN
	1    4600 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 5F5F0CC8
P 6100 1650
F 0 "J1" H 6180 1642 50  0000 L CNN
F 1 "Conn_01x06" H 6180 1551 50  0000 L CNN
F 2 "Connector_JST:JST_SH_SM06B-SRSS-TB_1x06-1MP_P1.00mm_Horizontal" H 6100 1650 50  0001 C CNN
F 3 "~" H 6100 1650 50  0001 C CNN
F 4 "JST - www.jst.com" H 6100 1650 50  0001 C CNN "Manufacturer"
F 5 "ST_SH_SM06B-SRSS-TB_1x06-1MP" H 6100 1650 50  0001 C CNN "Manufacturer Part #"
	1    6100 1650
	1    0    0    -1  
$EndComp
Text GLabel 5900 1550 0    50   Input ~ 0
VCC
Text GLabel 5900 1450 0    50   Input ~ 0
GND
Text GLabel 5900 1850 0    50   Input ~ 0
CLK
Text GLabel 5900 1750 0    50   Input ~ 0
MISO
Text GLabel 4150 3050 0    50   Input ~ 0
CLK
Text GLabel 4150 3150 0    50   Input ~ 0
CS
Text GLabel 5150 1700 2    50   Input ~ 0
VCC
$Comp
L Device:C C1
U 1 1 5F5F39E8
P 3900 2250
F 0 "C1" V 3648 2250 50  0000 C CNN
F 1 "10µF" V 3739 2250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3938 2100 50  0001 C CNN
F 3 "~" H 3900 2250 50  0001 C CNN
	1    3900 2250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F5F43D7
P 3650 2250
F 0 "#PWR0102" H 3650 2000 50  0001 C CNN
F 1 "GND" V 3655 2122 50  0000 R CNN
F 2 "" H 3650 2250 50  0001 C CNN
F 3 "" H 3650 2250 50  0001 C CNN
	1    3650 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 2650 4850 2650
Wire Wire Line
	4850 2650 4850 2250
Wire Wire Line
	4350 2650 4350 2250
Wire Wire Line
	4350 2250 4050 2250
Wire Wire Line
	4850 2250 4750 2250
Connection ~ 4850 2250
Wire Wire Line
	4850 2250 4850 1700
Wire Wire Line
	4450 2250 4350 2250
Connection ~ 4350 2250
$Comp
L Device:C C2
U 1 1 5F5F7BEB
P 5400 2250
F 0 "C2" V 5148 2250 50  0000 C CNN
F 1 "100nF" V 5239 2250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5438 2100 50  0001 C CNN
F 3 "~" H 5400 2250 50  0001 C CNN
	1    5400 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 2250 5250 2250
$Comp
L power:GND #PWR0103
U 1 1 5F5F8670
P 5650 2250
F 0 "#PWR0103" H 5650 2000 50  0001 C CNN
F 1 "GND" V 5655 2122 50  0000 R CNN
F 2 "" H 5650 2250 50  0001 C CNN
F 3 "" H 5650 2250 50  0001 C CNN
	1    5650 2250
	0    -1   -1   0   
$EndComp
Text GLabel 5150 3900 2    50   Input ~ 0
GND
Wire Wire Line
	4950 3900 5150 3900
Wire Wire Line
	5150 1700 4850 1700
$Comp
L power:VCC #PWR0106
U 1 1 5F5FF0A6
P 4850 1550
F 0 "#PWR0106" H 4850 1400 50  0001 C CNN
F 1 "VCC" H 4867 1723 50  0000 C CNN
F 2 "" H 4850 1550 50  0001 C CNN
F 3 "" H 4850 1550 50  0001 C CNN
	1    4850 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1550 4850 1700
Connection ~ 4850 1700
Wire Wire Line
	3650 2250 3750 2250
Wire Wire Line
	5650 2250 5550 2250
Wire Wire Line
	4550 2650 4350 2650
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F60980C
P 4550 2650
F 0 "#FLG0101" H 4550 2725 50  0001 C CNN
F 1 "PWR_FLAG" H 4550 2823 50  0000 C CNN
F 2 "" H 4550 2650 50  0001 C CNN
F 3 "~" H 4550 2650 50  0001 C CNN
	1    4550 2650
	1    0    0    -1  
$EndComp
Connection ~ 4550 2650
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5F609DB2
P 5650 2250
F 0 "#FLG0103" H 5650 2325 50  0001 C CNN
F 1 "PWR_FLAG" H 5650 2423 50  0000 C CNN
F 2 "" H 5650 2250 50  0001 C CNN
F 3 "~" H 5650 2250 50  0001 C CNN
	1    5650 2250
	-1   0    0    1   
$EndComp
Connection ~ 5650 2250
Text GLabel 5900 3050 0    50   Input ~ 0
VCC
Text GLabel 5900 2950 0    50   Input ~ 0
GND
$Comp
L Mechanical:MountingHole H1
U 1 1 5F61FBB4
P 7150 3050
F 0 "H1" H 7250 3096 50  0000 L CNN
F 1 "MountingHole" H 7250 3005 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 7150 3050 50  0001 C CNN
F 3 "~" H 7150 3050 50  0001 C CNN
	1    7150 3050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F62012C
P 7150 3300
F 0 "H2" H 7250 3346 50  0000 L CNN
F 1 "MountingHole" H 7250 3255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 7150 3300 50  0001 C CNN
F 3 "~" H 7150 3300 50  0001 C CNN
	1    7150 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5F70C0F4
P 4250 1700
F 0 "D1" H 4243 1916 50  0000 C CNN
F 1 "LED (green)" H 4420 1820 50  0000 C CNN
F 2 "LED_SMD:LED_0402_1005Metric" H 4250 1700 50  0001 C CNN
F 3 "~" H 4250 1700 50  0001 C CNN
	1    4250 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5F70E0DB
P 3950 1700
F 0 "R5" V 4157 1700 50  0000 C CNN
F 1 "4.7kΩ" V 4066 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3880 1700 50  0001 C CNN
F 3 "~" H 3950 1700 50  0001 C CNN
	1    3950 1700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5F70EB0C
P 3650 1700
F 0 "#PWR0109" H 3650 1450 50  0001 C CNN
F 1 "GND" V 3655 1572 50  0000 R CNN
F 2 "" H 3650 1700 50  0001 C CNN
F 3 "" H 3650 1700 50  0001 C CNN
	1    3650 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 1700 4400 1700
Wire Wire Line
	3800 1700 3650 1700
Text GLabel 5900 1650 0    50   Input ~ 0
MOSI
Text GLabel 5900 1950 0    50   Input ~ 0
CS
Text GLabel 4150 2950 0    50   Input ~ 0
MISO
Text GLabel 4150 2850 0    50   Input ~ 0
MOSI
$EndSCHEMATC
