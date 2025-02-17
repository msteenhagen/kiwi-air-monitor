EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Kiwi Easy Board"
Date "2021-04-04"
Rev "1.2"
Comp "Frank van Dam"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 10100 5050 2    50   ~ 0
LED-DIN
Text Label 10100 4950 2    50   ~ 0
I2C-SDA
Text Label 10100 4850 2    50   ~ 0
I2C-SCL
Text Label 4250 1700 0    50   ~ 0
D1mini-UART-Rx
Text Label 4250 1800 0    50   ~ 0
D1mini-UART-Tx
$Comp
L power:+3.3V #PWR0101
U 1 1 5FD459BB
P 1300 1350
F 0 "#PWR0101" H 1300 1200 50  0001 C CNN
F 1 "+3.3V" H 1315 1523 50  0000 C CNN
F 2 "" H 1300 1350 50  0001 C CNN
F 3 "" H 1300 1350 50  0001 C CNN
	1    1300 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1350 1300 1700
Wire Wire Line
	1300 1700 1800 1700
Wire Wire Line
	1300 2400 1800 2400
$Comp
L power:GND #PWR0103
U 1 1 5FD47C54
P 1300 2900
F 0 "#PWR0103" H 1300 2650 50  0001 C CNN
F 1 "GND" H 1305 2727 50  0000 C CNN
F 2 "" H 1300 2900 50  0001 C CNN
F 3 "" H 1300 2900 50  0001 C CNN
	1    1300 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2900 1300 2750
Wire Wire Line
	1300 2750 1800 2750
Wire Wire Line
	9450 1150 8850 1150
Text Label 8850 1150 0    50   ~ 0
LED-DIN
Text Label 4000 3250 0    50   ~ 0
GND
Text Label 4000 3150 0    50   ~ 0
+3.3V
Text Label 4000 3050 0    50   ~ 0
I2C-SCL
Text Label 4000 2950 0    50   ~ 0
I2C-SDA
Text Label 8100 2900 0    50   ~ 0
RCWL-OUT
Text Label 8100 2800 0    50   ~ 0
+5V
Text Notes 7350 2250 0    50   ~ 0
MH-Z19
Text Notes 9350 6200 0    50   ~ 0
ESP8266-12F D1Mini
Wire Notes Line
	650  650  650  3400
Wire Notes Line
	650  3400 2550 3400
Wire Notes Line
	2550 3400 2550 650 
Wire Notes Line
	2550 650  650  650 
Text Notes 1900 3300 0    50   ~ 0
Power/Ground
Text Notes 6600 3550 0    50   ~ 0
SSD1306 128x32 OLED display
Text Notes 10400 3550 0    50   ~ 0
RCWL0516 Radar
Wire Notes Line
	8100 800  10400 800 
$Comp
L Connector:Conn_01x03_Female J8
U 1 1 5FD9167B
P 9650 1250
F 0 "J8" H 9500 1600 50  0000 L CNN
F 1 "LED connector" H 9500 1500 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 9650 1250 50  0001 C CNN
F 3 "~" H 9650 1250 50  0001 C CNN
	1    9650 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1250 8850 1250
Text Label 8850 1250 0    50   ~ 0
GND
Wire Notes Line
	8100 1950 10400 1950
Text Notes 9300 1900 0    50   ~ 0
LED connector WS2812B
Wire Wire Line
	7900 5950 7900 6150
Text Label 7350 6150 0    50   ~ 0
GND
Text Label 7800 4200 0    50   ~ 0
+5V
Text Label 8000 4200 0    50   ~ 0
+3.3V
Wire Wire Line
	7900 6150 7350 6150
Wire Wire Line
	8300 5550 8600 5550
Text Label 8800 5650 0    50   ~ 0
D1mini-UART-Rx
Text Label 8800 5750 0    50   ~ 0
D1mini-UART-Tx
$Comp
L power:GND #PWR01
U 1 1 5FD9B75A
P 950 4250
F 0 "#PWR01" H 950 4000 50  0001 C CNN
F 1 "GND" H 955 4077 50  0000 C CNN
F 2 "" H 950 4250 50  0001 C CNN
F 3 "" H 950 4250 50  0001 C CNN
	1    950  4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5FD9B31B
P 2000 4250
F 0 "#PWR02" H 2000 4000 50  0001 C CNN
F 1 "GND" H 2005 4077 50  0000 C CNN
F 2 "" H 2000 4250 50  0001 C CNN
F 3 "" H 2000 4250 50  0001 C CNN
	1    2000 4250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5FD8C9B6
P 950 4150
F 0 "H1" H 1050 4199 50  0000 L CNN
F 1 "MountingHole_Pad" H 1050 4108 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_TopBottom" H 950 4150 50  0001 C CNN
F 3 "~" H 950 4150 50  0001 C CNN
	1    950  4150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5FD8AE1D
P 2000 4150
F 0 "H2" H 2100 4199 50  0000 L CNN
F 1 "MountingHole_Pad" H 2100 4108 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_TopBottom" H 2000 4150 50  0001 C CNN
F 3 "~" H 2000 4150 50  0001 C CNN
	1    2000 4150
	1    0    0    -1  
$EndComp
Text Notes 3850 4850 0    50   ~ 0
BME280 \nPressure/Temperature/Humidity
Wire Notes Line
	6650 3850 6650 5000
Wire Notes Line
	3650 5000 3650 3850
Wire Notes Line
	7900 600  3650 600 
Wire Notes Line
	7900 600  7900 2350
Wire Notes Line
	3650 2350 7900 2350
Wire Notes Line
	3650 600  3650 2350
$Comp
L KiwiAirMonitorModules:mh_z19b_MH-Z19B U2
U 1 1 5FD975FE
P 7150 1400
F 0 "U2" H 7350 1900 50  0000 C CNN
F 1 "MH-Z19B" H 7450 1800 50  0000 C CNN
F 2 "mh-z19b:Winsen_MH-Z19B" H 7150 750 50  0001 C CNN
F 3 "https://www.winsen-sensor.com/d/files/MH-Z19B.pdf" H 7100 1150 50  0001 C CNN
	1    7150 1400
	1    0    0    -1  
$EndComp
$Comp
L KiwiAirMonitorModules:KiwiAirMonitorModules_BME280_Board U5
U 1 1 5FDD25C9
P 5850 4050
F 0 "U5" H 6200 4950 50  0000 L CNN
F 1 "BME280_Board" H 5950 4850 50  0000 L CNN
F 2 "KiwiAirMonitorModules:BME280_Board" H 6200 4750 50  0001 C CNN
F 3 "" H 6200 4750 50  0001 C CNN
	1    5850 4050
	1    0    0    1   
$EndComp
Wire Wire Line
	8300 4750 8750 4750
Wire Notes Line
	3650 2450 7900 2450
Wire Notes Line
	7900 2450 7900 3600
Wire Notes Line
	3650 2450 3650 3600
Wire Notes Line
	7900 3600 3650 3600
$Comp
L KiwiAirMonitorModules:KiwiAirMonitorModules_RCWL-0516-Board U4
U 1 1 5FDAB549
P 9500 2600
F 0 "U4" H 10050 3350 50  0000 L CNN
F 1 "RCWL-0516 Board" H 10000 3250 50  0000 L CNN
F 2 "KiwiAirMonitorModules:RCWL-0516" H 9550 3250 50  0001 C CNN
F 3 "" H 9550 3250 50  0001 C CNN
	1    9500 2600
	1    0    0    1   
$EndComp
Wire Notes Line
	8000 3600 11100 3600
Wire Notes Line
	11100 3600 11100 2350
Wire Notes Line
	11100 2350 8000 2350
Wire Notes Line
	8000 2350 8000 3600
Wire Notes Line
	10800 3950 10800 6350
NoConn ~ 7650 1200
NoConn ~ 7650 1300
NoConn ~ 7650 1450
NoConn ~ 7650 1550
NoConn ~ 9500 2700
NoConn ~ 9500 3100
NoConn ~ 7500 5150
NoConn ~ 7500 5050
NoConn ~ 8300 4650
NoConn ~ 8300 5450
NoConn ~ 5850 4150
NoConn ~ 5850 4250
Text Label 1800 1700 0    50   ~ 0
+3.3V
Text Label 1800 2400 0    50   ~ 0
+5V
Text Label 1800 2750 0    50   ~ 0
GND
NoConn ~ 6750 1550
$Comp
L MCU_Module:WeMos_D1_mini U1
U 1 1 5FD7E74C
P 7900 5150
F 0 "U1" H 8150 6050 50  0000 C CNN
F 1 "WeMos_D1_mini" H 8100 5950 50  0000 L CNN
F 2 "Module:WEMOS_D1_mini_light" H 7900 4000 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H 6050 4000 50  0001 C CNN
	1    7900 5150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5FF23882
P 1300 2150
F 0 "#PWR0102" H 1300 2000 50  0001 C CNN
F 1 "+5V" H 1315 2323 50  0000 C CNN
F 2 "" H 1300 2150 50  0001 C CNN
F 3 "" H 1300 2150 50  0001 C CNN
	1    1300 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2150 1300 2400
Wire Wire Line
	8300 4850 10100 4850
Wire Wire Line
	8300 4950 10100 4950
Wire Wire Line
	8300 5050 10100 5050
Wire Wire Line
	8600 5550 8600 5750
Wire Wire Line
	8600 5750 9550 5750
Wire Wire Line
	8750 5250 8750 5650
Wire Wire Line
	8750 5650 9550 5650
Wire Wire Line
	8300 5250 8750 5250
Wire Notes Line
	6850 3950 6850 6350
Wire Notes Line
	10800 3950 6850 3950
Wire Notes Line
	6850 6350 10800 6350
Wire Wire Line
	4250 1800 5000 1800
Wire Wire Line
	8100 2900 9500 2900
Wire Wire Line
	4000 3250 6000 3250
Wire Wire Line
	4000 3150 6000 3150
Wire Wire Line
	4000 3050 6000 3050
Wire Wire Line
	4000 2950 6000 2950
$Comp
L Diode:1N4007 D1
U 1 1 5FE6B372
P 8650 1600
F 0 "D1" H 8650 1383 50  0000 C CNN
F 1 "1N4007" H 8650 1474 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8650 1425 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 8650 1600 50  0001 C CNN
	1    8650 1600
	-1   0    0    1   
$EndComp
Wire Notes Line
	8100 800  8100 1950
Wire Notes Line
	10400 800  10400 1950
Text Label 8200 1600 0    50   ~ 0
+5V
Wire Wire Line
	8800 1600 9100 1600
Wire Wire Line
	9100 1600 9100 1350
Wire Wire Line
	9100 1350 9450 1350
Text Label 8900 1600 0    50   ~ 0
VLED
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5FE7ACB3
P 8650 1850
F 0 "JP1" H 8650 2055 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 8650 1964 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 8650 1850 50  0001 C CNN
F 3 "~" H 8650 1850 50  0001 C CNN
	1    8650 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 1850 9100 1850
Wire Wire Line
	9100 1850 9100 1600
Connection ~ 9100 1600
Wire Wire Line
	8500 1850 8350 1850
Wire Wire Line
	8350 1850 8350 1600
Wire Wire Line
	8200 1600 8350 1600
Connection ~ 8350 1600
Wire Wire Line
	8350 1600 8500 1600
$Comp
L Connector:Conn_01x07_Male J16
U 1 1 5FFF5C7B
P 5500 1900
F 0 "J16" H 5472 1832 50  0000 R CNN
F 1 "MHZ19_Conn_PicoBlade" H 5472 1923 50  0000 R CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0710_1x07_P1.25mm_Vertical" H 5500 1900 50  0001 C CNN
F 3 "~" H 5500 1900 50  0001 C CNN
	1    5500 1900
	-1   0    0    1   
$EndComp
NoConn ~ 6750 1200
NoConn ~ 6750 1300
NoConn ~ 7150 1750
NoConn ~ 7150 1050
Wire Wire Line
	4250 1700 4900 1700
Wire Wire Line
	5300 1900 5100 1900
Text Label 4250 1900 0    50   ~ 0
+5V
Text Label 4250 2000 0    50   ~ 0
GND
NoConn ~ 5300 1600
NoConn ~ 5300 2100
NoConn ~ 5300 2200
$Comp
L Connector:Conn_01x01_Female SYM3
U 1 1 6001E9CF
P 1400 6500
F 0 "SYM3" H 1428 6526 50  0000 L CNN
F 1 "GPLv3Logo" H 1428 6435 50  0000 L CNN
F 2 "KiwiAirMonitorModules:GPL3" H 1400 6500 50  0001 C CNN
F 3 "~" H 1400 6500 50  0001 C CNN
	1    1400 6500
	1    0    0    -1  
$EndComp
NoConn ~ 1200 6500
$Comp
L Connector:Conn_01x01_Female SYM2
U 1 1 60026182
P 1400 6150
F 0 "SYM2" H 1428 6176 50  0000 L CNN
F 1 "ESDlogo" H 1428 6085 50  0000 L CNN
F 2 "Symbol:ESD-Logo_8.9x8mm_SilkScreen" H 1400 6150 50  0001 C CNN
F 3 "~" H 1400 6150 50  0001 C CNN
	1    1400 6150
	1    0    0    -1  
$EndComp
NoConn ~ 1200 6150
$Comp
L Connector:Conn_01x01_Female SYM1
U 1 1 600277AE
P 1400 5800
F 0 "SYM1" H 1428 5826 50  0000 L CNN
F 1 "KiwiBirdLogo" H 1428 5735 50  0000 L CNN
F 2 "" H 1400 5800 50  0001 C CNN
F 3 "~" H 1400 5800 50  0001 C CNN
	1    1400 5800
	1    0    0    -1  
$EndComp
NoConn ~ 1200 5800
Wire Wire Line
	5300 2000 5200 2000
Wire Wire Line
	5200 2000 5200 1250
Wire Wire Line
	5200 1250 5250 1250
Connection ~ 5200 2000
Wire Wire Line
	5200 2000 4250 2000
Wire Wire Line
	5100 1900 5100 1150
Wire Wire Line
	5100 1150 5250 1150
Connection ~ 5100 1900
Wire Wire Line
	5100 1900 4250 1900
Wire Wire Line
	5000 1800 5000 1050
Wire Wire Line
	5000 1050 5250 1050
Connection ~ 5000 1800
Wire Wire Line
	5000 1800 5300 1800
Wire Wire Line
	4900 1700 4900 950 
Wire Wire Line
	4900 950  5250 950 
Connection ~ 4900 1700
Wire Wire Line
	4900 1700 5300 1700
Text Label 8100 3000 0    50   ~ 0
GND
Wire Wire Line
	8100 3000 9500 3000
$Comp
L KiwiAirMonitorModules:KiwiAirMonitorModules_SSD1306_OLED_0.91_128x32 U3
U 1 1 5FDAE526
P 6100 3350
F 0 "U3" H 6400 4000 50  0000 C CNN
F 1 "OLED_0.91_128x32" H 6450 3900 50  0000 C CNN
F 2 "KiwiAirMonitorModules:OLED_0.91_128x32" H 6100 3350 50  0001 C CNN
F 3 "" H 6100 3350 50  0001 C CNN
	1    6100 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2800 9500 2800
$Comp
L power:GND #PWR0104
U 1 1 60076832
P 2000 4850
F 0 "#PWR0104" H 2000 4600 50  0001 C CNN
F 1 "GND" H 2005 4677 50  0000 C CNN
F 2 "" H 2000 4850 50  0001 C CNN
F 3 "" H 2000 4850 50  0001 C CNN
	1    2000 4850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 60076838
P 2000 4750
F 0 "H3" H 2100 4799 50  0000 L CNN
F 1 "MountingHole_Pad" H 2100 4708 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_TopBottom" H 2000 4750 50  0001 C CNN
F 3 "~" H 2000 4750 50  0001 C CNN
	1    2000 4750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 604E0670
P 10350 5400
F 0 "SW1" H 10350 5685 50  0000 C CNN
F 1 "SW_Push" H 10350 5594 50  0000 C CNN
F 2 "KiwiAirMonitorModules:SW_Tactile_Straight" H 10350 5600 50  0001 C CNN
F 3 "~" H 10350 5600 50  0001 C CNN
	1    10350 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 604E5490
P 10600 5550
F 0 "#PWR0105" H 10600 5300 50  0001 C CNN
F 1 "GND" H 10605 5377 50  0000 C CNN
F 2 "" H 10600 5550 50  0001 C CNN
F 3 "" H 10600 5550 50  0001 C CNN
	1    10600 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4350 5300 4350
Wire Wire Line
	3750 4450 5300 4450
Wire Wire Line
	3750 4650 5300 4650
Wire Wire Line
	3750 4550 5300 4550
Text Label 3750 4550 0    50   ~ 0
+3.3V
Text Label 3750 4650 0    50   ~ 0
GND
Text Label 3750 4450 0    50   ~ 0
I2C-SCL
Text Label 3750 4350 0    50   ~ 0
I2C-SDA
Wire Wire Line
	8000 4200 8000 4350
Wire Wire Line
	7800 4200 7800 4350
Wire Wire Line
	8750 4750 8750 4050
Wire Wire Line
	8750 4050 7200 4050
Wire Wire Line
	7200 4050 7200 4750
Wire Wire Line
	7200 4750 7500 4750
Text Label 8450 4750 0    50   ~ 0
WakeUp
Wire Wire Line
	8300 5150 10000 5150
Wire Wire Line
	10000 5150 10000 5400
Wire Wire Line
	10000 5400 10150 5400
Wire Wire Line
	10550 5400 10600 5400
Wire Wire Line
	10600 5400 10600 5550
Text Label 9750 5150 0    50   ~ 0
Button
Wire Wire Line
	8300 5350 8600 5350
Text Label 8300 5350 0    50   ~ 0
RCWL-OUT
$Comp
L Connector:Conn_01x04_Female J18
U 1 1 605442FB
P 5500 4550
F 0 "J18" H 5392 4125 50  0000 C CNN
F 1 "BME280_4pinJST-XH_Connector" H 5392 4216 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 5500 4550 50  0001 C CNN
F 3 "~" H 5500 4550 50  0001 C CNN
	1    5500 4550
	1    0    0    1   
$EndComp
NoConn ~ 5850 4350
NoConn ~ 5850 4450
NoConn ~ 5850 4550
NoConn ~ 5850 4650
$Comp
L Connector:Conn_01x04_Female J17
U 1 1 6055B0C3
P 5450 1150
F 0 "J17" H 5342 725 50  0000 C CNN
F 1 "MH_Z19B_4pinJST-XH_Connector" H 5342 816 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 5450 1150 50  0001 C CNN
F 3 "~" H 5450 1150 50  0001 C CNN
	1    5450 1150
	1    0    0    1   
$EndComp
$Comp
L LED:WS2812B D2
U 1 1 6064E7E6
P 5550 6100
F 0 "D2" H 5894 6146 50  0000 L CNN
F 1 "WS2812B" H 5894 6055 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 5600 5800 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 5650 5725 50  0001 L TNN
	1    5550 6100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J_WS2812_PCB1
U 1 1 606535CE
P 4200 6300
F 0 "J_WS2812_PCB1" H 4050 6650 50  0000 L CNN
F 1 "LED_PCB_Connector" H 4050 6550 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4200 6300 50  0001 C CNN
F 3 "~" H 4200 6300 50  0001 C CNN
	1    4200 6300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4400 6300 4800 6300
Wire Wire Line
	4400 6400 4650 6400
Text Label 4450 6200 0    50   ~ 0
WS2812_PCB_LEDIN
Wire Wire Line
	4400 6200 5250 6200
Text Label 4450 6300 0    50   ~ 0
WS2812_PCB_GND
Text Label 5050 6900 0    50   ~ 0
WS2812_PCB_VLED
Wire Wire Line
	4650 6900 6250 6900
Wire Wire Line
	5550 5750 6250 5750
Wire Notes Line
	3550 5650 6650 5650
Wire Notes Line
	6650 5650 6650 7100
Wire Notes Line
	6650 7100 3550 7100
Wire Notes Line
	3550 7100 3550 5650
Text Notes 3950 7050 0    50   ~ 0
WS2812_PCB\nElectrically disconnected, physically connected through mousebites
Wire Notes Line
	3650 3850 6650 3850
Wire Notes Line
	6650 5000 3650 5000
$Comp
L Device:C C1_SMD1
U 1 1 60727EAA
P 5900 6450
F 0 "C1_SMD1" V 6050 6450 50  0000 C CNN
F 1 "100nF" V 6000 6350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5938 6300 50  0001 C CNN
F 3 "~" H 5900 6450 50  0001 C CNN
	1    5900 6450
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2_THT1
U 1 1 60728CDD
P 5900 6750
F 0 "C2_THT1" V 6050 6750 50  0000 C CNN
F 1 "100nF" V 6000 6650 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5938 6600 50  0001 C CNN
F 3 "~" H 5900 6750 50  0001 C CNN
	1    5900 6750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 5750 6250 6450
Wire Wire Line
	4650 6400 4650 6900
Wire Wire Line
	5750 6750 5550 6750
Connection ~ 5550 6750
Wire Wire Line
	5550 6750 4800 6750
Wire Wire Line
	6050 6750 6250 6750
Connection ~ 6250 6750
Wire Wire Line
	6250 6750 6250 6900
Wire Wire Line
	4800 6300 4800 6750
Wire Wire Line
	5550 5800 5550 5750
Wire Wire Line
	5250 6100 5250 6200
Wire Wire Line
	5550 6400 5550 6450
Wire Wire Line
	5550 6450 5750 6450
Connection ~ 5550 6450
Wire Wire Line
	6050 6450 6250 6450
Connection ~ 6250 6450
Wire Wire Line
	6250 6450 6250 6750
Wire Wire Line
	5550 6450 5550 6750
$EndSCHEMATC
