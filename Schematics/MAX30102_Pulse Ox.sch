EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "MAX30102 Pulse Oximeter PCB"
Date "2020-09-28"
Rev "v1.2"
Comp "University of Cape Town"
Comment1 "EEE4022S Final Year Project"
Comment2 "SNGSHE014"
Comment3 "Shekhar Singh"
Comment4 ""
$EndDescr
$Comp
L Battery_Management:MIC94310 U?
U 1 1 5F607C92
P 8200 2250
AR Path="/5F5E0E41/5F607C92" Ref="U?"  Part="1" 
AR Path="/5F607C92" Ref="U2"  Part="1" 
F 0 "U2" V 8915 2275 50  0000 C CNN
F 1 "MIC94310" V 8824 2275 50  0000 C CNN
F 2 "MIC94310:MIC94310-GYM5-SOT-753" H 8100 2400 50  0001 C CNN
F 3 "" H 8100 2400 50  0001 C CNN
	1    8200 2250
	0    -1   -1   0   
$EndComp
$Comp
L Connector:USB_B_Micro J?
U 1 1 5F607C9E
P 1200 1750
AR Path="/5F5E0E41/5F607C9E" Ref="J?"  Part="1" 
AR Path="/5F607C9E" Ref="J1"  Part="1" 
F 0 "J1" H 1257 2217 50  0000 C CNN
F 1 "USB_B_Micro" H 1257 2126 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex_47346-0001" H 1350 1700 50  0001 C CNN
F 3 "~" H 1350 1700 50  0001 C CNN
	1    1200 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F607D34
P 7600 2350
AR Path="/5F5E0E41/5F607D34" Ref="#PWR?"  Part="1" 
AR Path="/5F607D34" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 7600 2100 50  0001 C CNN
F 1 "GND" H 7605 2177 50  0000 C CNN
F 2 "" H 7600 2350 50  0001 C CNN
F 3 "" H 7600 2350 50  0001 C CNN
	1    7600 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2250 7600 2250
Wire Wire Line
	7600 2250 7600 2350
Wire Wire Line
	7750 2600 7400 2600
Wire Wire Line
	7400 2600 7400 1900
Wire Wire Line
	7400 1900 7750 1900
Wire Wire Line
	8600 2100 9200 2100
$Comp
L power:GND #PWR?
U 1 1 5F607D50
P 9200 2650
AR Path="/5F5E0E41/5F607D50" Ref="#PWR?"  Part="1" 
AR Path="/5F607D50" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 9200 2400 50  0001 C CNN
F 1 "GND" H 9205 2477 50  0000 C CNN
F 2 "" H 9200 2650 50  0001 C CNN
F 3 "" H 9200 2650 50  0001 C CNN
	1    9200 2650
	1    0    0    -1  
$EndComp
NoConn ~ 1500 1750
NoConn ~ 1500 1850
NoConn ~ 1500 1950
NoConn ~ 1100 2150
$Comp
L power:GND #PWR?
U 1 1 5F607D5A
P 1200 2250
AR Path="/5F5E0E41/5F607D5A" Ref="#PWR?"  Part="1" 
AR Path="/5F607D5A" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 1200 2000 50  0001 C CNN
F 1 "GND" H 1205 2077 50  0000 C CNN
F 2 "" H 1200 2250 50  0001 C CNN
F 3 "" H 1200 2250 50  0001 C CNN
	1    1200 2250
	1    0    0    -1  
$EndComp
Text GLabel 4300 1550 1    50   Input ~ 0
+3.6V
$Comp
L Device:R_Small_US R2
U 1 1 5F649913
P 2550 6050
F 0 "R2" H 2618 6096 50  0000 L CNN
F 1 "1.8K" H 2618 6005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2550 6050 50  0001 C CNN
F 3 "~" H 2550 6050 50  0001 C CNN
	1    2550 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 5F64A640
P 2250 6050
F 0 "R1" H 2318 6096 50  0000 L CNN
F 1 "1.8K" H 2318 6005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2250 6050 50  0001 C CNN
F 3 "~" H 2250 6050 50  0001 C CNN
	1    2250 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5950 2550 5750
Wire Wire Line
	2250 5750 2250 5950
Wire Wire Line
	2300 8550 2000 8550
Wire Wire Line
	3000 9150 3000 9450
Wire Wire Line
	3200 9150 3200 9450
Wire Wire Line
	3400 9150 3400 9450
$Comp
L Memory_flash:AT45DB081E-MHN-Y U4
U 1 1 5F690BFD
P 12400 2350
F 0 "U4" H 12400 2815 50  0000 C CNN
F 1 "AT45DB081E-MHN-Y" H 12400 2724 50  0000 C CNN
F 2 "Memory IC:SON127P500X600X60-9N" H 11950 2650 50  0001 C CNN
F 3 "" H 11950 2650 50  0001 C CNN
	1    12400 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	11850 2150 11650 2150
Wire Wire Line
	11850 2300 11650 2300
Wire Wire Line
	11850 2600 11650 2600
$Comp
L Device:R_Small_US R23
U 1 1 5F61423D
P 7000 1900
F 0 "R23" V 6795 1900 50  0000 C CNN
F 1 "0" V 6886 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7000 1900 50  0001 C CNN
F 3 "~" H 7000 1900 50  0001 C CNN
	1    7000 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 1900 7400 1900
Connection ~ 7400 1900
$Comp
L STM32G071G8U6:STM32G071G8U6 IC1
U 1 1 5F621FD9
P 2300 7950
F 0 "IC1" H 4000 8450 50  0000 L CNN
F 1 "STM32G071G8U6" H 2300 6900 50  0000 L CNN
F 2 "PCB_footprints_project:STM32G0_UFQFPN28_T1" H 4150 8350 50  0001 L CNN
F 3 "https://www.st.com/resource/en/datasheet/stm32g071g8.pdf" H 4150 8250 50  0001 L CNN
F 4 "STMICROELECTRONICS - STM32G071G8U6 - MCU, 32BIT, 64MHZ" H 4150 8150 50  0001 L CNN "Description"
F 5 "0.6" H 4150 8050 50  0001 L CNN "Height"
F 6 "STMicroelectronics" H 4150 7950 50  0001 L CNN "Manufacturer_Name"
F 7 "STM32G071G8U6" H 4150 7850 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "STM32G071G8U6" H 4150 7750 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/stm32g071g8u6/stmicroelectronics" H 4150 7650 50  0001 L CNN "Arrow Price/Stock"
F 10 "511-STM32G071G8U6" H 4150 7550 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/STMicroelectronics/STM32G071G8U6?qs=l7cgNqFNU1h6sPpCoQAi5w%3D%3D" H 4150 7450 50  0001 L CNN "Mouser Price/Stock"
	1    2300 7950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 6450 3200 7350
Wire Wire Line
	3100 6550 3100 7350
$Comp
L power:GND #PWR013
U 1 1 5F6A767F
P 13450 2550
F 0 "#PWR013" H 13450 2300 50  0001 C CNN
F 1 "GND" H 13455 2377 50  0000 C CNN
F 2 "" H 13450 2550 50  0001 C CNN
F 3 "" H 13450 2550 50  0001 C CNN
	1    13450 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 7350 9050 7350
Wire Wire Line
	8750 7450 9050 7450
Wire Wire Line
	8750 7550 9050 7550
Wire Wire Line
	2300 8350 2000 8350
Wire Wire Line
	4300 7950 4600 7950
Wire Wire Line
	4300 8050 4600 8050
Wire Wire Line
	8750 8150 9100 8150
Wire Wire Line
	8750 8250 9100 8250
Wire Wire Line
	3000 7350 3000 7200
Wire Wire Line
	3600 9150 3600 9450
Wire Wire Line
	11850 2450 11650 2450
Wire Wire Line
	12950 2600 13000 2600
Wire Wire Line
	3100 9150 3100 9450
Wire Wire Line
	2300 8450 2000 8450
Wire Wire Line
	2300 8150 1750 8150
Wire Wire Line
	1750 8150 1750 7800
Wire Wire Line
	2300 8250 1650 8250
Wire Wire Line
	1650 8250 1650 8300
Wire Wire Line
	1650 8300 1300 8300
$Comp
L power:GND #PWR02
U 1 1 5F6D57A0
P 1300 8400
F 0 "#PWR02" H 1300 8150 50  0001 C CNN
F 1 "GND" H 1305 8227 50  0000 C CNN
F 2 "" H 1300 8400 50  0001 C CNN
F 3 "" H 1300 8400 50  0001 C CNN
	1    1300 8400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 8300 1300 8400
Wire Wire Line
	3300 7350 3300 6350
Wire Wire Line
	1900 6550 2250 6550
Wire Wire Line
	1900 6450 2550 6450
$Comp
L Device:R_Small_US R4
U 1 1 5F7D38C9
P 2850 6050
F 0 "R4" H 2918 6096 50  0000 L CNN
F 1 "1.8K" H 2918 6005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2850 6050 50  0001 C CNN
F 3 "~" H 2850 6050 50  0001 C CNN
	1    2850 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5950 2850 5750
Connection ~ 2550 5750
Wire Wire Line
	2250 6150 2250 6550
Connection ~ 2250 6550
Wire Wire Line
	2250 6550 3100 6550
Wire Wire Line
	2550 6150 2550 6450
Connection ~ 2550 6450
Wire Wire Line
	2550 6450 3200 6450
Wire Wire Line
	2850 6150 2850 6350
Connection ~ 2850 6350
Wire Wire Line
	2850 6350 3300 6350
Wire Wire Line
	1900 6350 2850 6350
$Comp
L power:GND #PWR06
U 1 1 5F75DC74
P 6450 9050
F 0 "#PWR06" H 6450 8800 50  0001 C CNN
F 1 "GND" H 6455 8877 50  0000 C CNN
F 2 "" H 6450 9050 50  0001 C CNN
F 3 "" H 6450 9050 50  0001 C CNN
	1    6450 9050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 8700 5700 8700
Wire Wire Line
	5550 9050 5700 9050
Wire Wire Line
	5550 9400 5700 9400
$Comp
L Device:R_Small_US R18
U 1 1 5F71A47A
P 5450 9400
F 0 "R18" H 5382 9354 50  0000 R CNN
F 1 "1.8K" H 5382 9445 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5450 9400 50  0001 C CNN
F 3 "~" H 5450 9400 50  0001 C CNN
	1    5450 9400
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R17
U 1 1 5F714728
P 5450 9050
F 0 "R17" H 5382 9004 50  0000 R CNN
F 1 "1.8K" H 5382 9095 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5450 9050 50  0001 C CNN
F 3 "~" H 5450 9050 50  0001 C CNN
	1    5450 9050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R16
U 1 1 5F70448C
P 5450 8700
F 0 "R16" H 5382 8654 50  0000 R CNN
F 1 "1.8K" H 5382 8745 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5450 8700 50  0001 C CNN
F 3 "~" H 5450 8700 50  0001 C CNN
	1    5450 8700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5F787A4F
P 6200 6600
F 0 "#PWR05" H 6200 6350 50  0001 C CNN
F 1 "GND" H 6205 6427 50  0000 C CNN
F 2 "" H 6200 6600 50  0001 C CNN
F 3 "" H 6200 6600 50  0001 C CNN
	1    6200 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 6400 6200 6550
Wire Wire Line
	5400 6400 6200 6400
Wire Wire Line
	4850 6400 5000 6400
$Comp
L Switch:SW_Push SW1
U 1 1 5F76186F
P 5150 6850
F 0 "SW1" H 5150 7135 50  0000 C CNN
F 1 "SW_Push" H 5150 7044 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3U-1000P" H 5150 7050 50  0001 C CNN
F 3 "~" H 5150 7050 50  0001 C CNN
	1    5150 6850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5F760C3E
P 5200 6400
F 0 "SW2" H 5200 6685 50  0000 C CNN
F 1 "SW_Push" H 5200 6594 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3U-1000P" H 5200 6600 50  0001 C CNN
F 3 "~" H 5200 6600 50  0001 C CNN
	1    5200 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R15
U 1 1 5F8F10A6
P 5400 7650
F 0 "R15" H 5468 7696 50  0000 L CNN
F 1 "1.8K" H 5468 7605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5400 7650 50  0001 C CNN
F 3 "~" H 5400 7650 50  0001 C CNN
	1    5400 7650
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R21
U 1 1 5F8F10AC
P 5700 7650
F 0 "R21" H 5768 7696 50  0000 L CNN
F 1 "1.8K" H 5768 7605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5700 7650 50  0001 C CNN
F 3 "~" H 5700 7650 50  0001 C CNN
	1    5700 7650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5400 7550 5400 7350
Wire Wire Line
	5700 7350 5700 7550
Wire Wire Line
	5950 8250 5700 8250
Wire Wire Line
	5700 7750 5700 8250
Wire Wire Line
	5400 7750 5400 8150
$Comp
L Device:R_Small_US R13
U 1 1 5F9CF634
P 5150 8150
F 0 "R13" V 5355 8150 50  0000 C CNN
F 1 "0" V 5264 8150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5150 8150 50  0001 C CNN
F 3 "~" H 5150 8150 50  0001 C CNN
	1    5150 8150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R14
U 1 1 5F9D0B3F
P 5150 8250
F 0 "R14" V 4950 8250 50  0000 C CNN
F 1 "0" V 5050 8250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5150 8250 50  0001 C CNN
F 3 "~" H 5150 8250 50  0001 C CNN
	1    5150 8250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 8150 4300 8150
Wire Wire Line
	5050 8250 4300 8250
Wire Wire Line
	5250 8150 5400 8150
Connection ~ 5400 8150
Wire Wire Line
	5400 8150 5950 8150
Wire Wire Line
	5250 8250 5700 8250
Connection ~ 5700 8250
Wire Wire Line
	8750 8900 9100 8900
Wire Wire Line
	8750 9000 9100 9000
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 5FA8B909
P 8550 9700
F 0 "J5" H 8468 10017 50  0000 C CNN
F 1 "SPI_B Connector" H 8468 9926 50  0000 C CNN
F 2 "solderPads:SolderWirePad_1x04_SMD" H 8550 9700 50  0001 C CNN
F 3 "~" H 8550 9700 50  0001 C CNN
	1    8550 9700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8750 9600 9100 9600
Wire Wire Line
	8750 9700 9100 9700
Wire Wire Line
	8750 9800 9100 9800
Wire Wire Line
	8750 9900 9100 9900
$Comp
L Device:R_Small_US R8
U 1 1 5FB4157B
P 3700 5900
F 0 "R8" V 3600 5900 50  0000 C CNN
F 1 "0" V 3814 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3700 5900 50  0001 C CNN
F 3 "~" H 3700 5900 50  0001 C CNN
	1    3700 5900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R10
U 1 1 5FB58442
P 4000 6300
F 0 "R10" V 3900 6300 50  0000 C CNN
F 1 "0" V 4114 6300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4000 6300 50  0001 C CNN
F 3 "~" H 4000 6300 50  0001 C CNN
	1    4000 6300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R9
U 1 1 5FB66457
P 3850 6100
F 0 "R9" V 3750 6100 50  0000 C CNN
F 1 "0" V 3950 6100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3850 6100 50  0001 C CNN
F 3 "~" H 3850 6100 50  0001 C CNN
	1    3850 6100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 7350 3400 5900
Wire Wire Line
	3400 5900 3600 5900
Wire Wire Line
	3750 6100 3500 6100
Wire Wire Line
	3900 6300 3600 6300
Wire Wire Line
	3800 5900 4250 5900
Wire Wire Line
	3950 6100 4250 6100
Wire Wire Line
	4250 6300 4100 6300
Wire Wire Line
	4950 8700 4950 8350
Wire Wire Line
	4950 8350 4300 8350
Wire Wire Line
	4950 8700 5350 8700
Wire Wire Line
	4800 9050 4800 8450
Wire Wire Line
	4800 8450 4300 8450
Wire Wire Line
	4800 9050 5350 9050
Wire Wire Line
	5350 9400 4600 9400
Wire Wire Line
	4600 9400 4600 8550
Wire Wire Line
	4600 8550 4300 8550
Wire Wire Line
	3600 6300 3600 6850
$Comp
L Device:R_Small_US R12
U 1 1 5FD3BAC1
P 4500 6550
F 0 "R12" V 4400 6550 50  0000 C CNN
F 1 "0" V 4614 6550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4500 6550 50  0001 C CNN
F 3 "~" H 4500 6550 50  0001 C CNN
	1    4500 6550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R11
U 1 1 5FD47C23
P 4250 6850
F 0 "R11" V 4150 6850 50  0000 C CNN
F 1 "0" V 4364 6850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4250 6850 50  0001 C CNN
F 3 "~" H 4250 6850 50  0001 C CNN
	1    4250 6850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 6400 4850 6550
Wire Wire Line
	4850 6550 4600 6550
Wire Wire Line
	4400 6550 3500 6550
Wire Wire Line
	3500 6100 3500 6550
Connection ~ 3500 6550
Wire Wire Line
	3500 6550 3500 7350
Wire Wire Line
	4350 6850 4950 6850
Wire Wire Line
	4150 6850 3600 6850
Connection ~ 3600 6850
Wire Wire Line
	3600 6850 3600 7350
$Comp
L Device:R_Small_US R7
U 1 1 5FD92C57
P 3500 10050
F 0 "R7" V 3400 10050 50  0000 C CNN
F 1 "0" V 3614 10050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3500 10050 50  0001 C CNN
F 3 "~" H 3500 10050 50  0001 C CNN
	1    3500 10050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3500 9950 3500 9150
Wire Wire Line
	3500 10150 3500 10300
Text GLabel 9850 2100 2    50   Input ~ 0
+1.8V
Wire Wire Line
	1300 7800 1550 7800
Connection ~ 1550 7800
Wire Wire Line
	1550 7800 1750 7800
Wire Wire Line
	2250 5750 2550 5750
Wire Wire Line
	2550 5750 2850 5750
Wire Wire Line
	10100 5400 10100 5550
Wire Wire Line
	14600 6000 14950 6000
Wire Wire Line
	14600 6000 14300 6000
Connection ~ 14600 6000
Wire Wire Line
	14600 6000 14600 6100
$Comp
L power:GND #PWR015
U 1 1 5FF49192
P 14600 6100
F 0 "#PWR015" H 14600 5850 50  0001 C CNN
F 1 "GND" H 14605 5927 50  0000 C CNN
F 2 "" H 14600 6100 50  0001 C CNN
F 3 "" H 14600 6100 50  0001 C CNN
	1    14600 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	14750 7600 15100 7600
Wire Wire Line
	14750 7600 14450 7600
Connection ~ 14750 7600
Wire Wire Line
	12950 5200 13300 5200
Wire Wire Line
	13600 6650 14250 6650
Wire Wire Line
	14300 5050 14950 5050
Wire Wire Line
	14050 5050 14300 5050
Connection ~ 14050 5050
Wire Wire Line
	13950 5050 14050 5050
Wire Wire Line
	9550 5200 10050 5200
Wire Wire Line
	9550 5000 9950 5000
Wire Wire Line
	13250 5800 13250 7100
Connection ~ 13250 5800
Wire Wire Line
	12950 5800 13250 5800
Wire Wire Line
	13250 5600 13250 5800
Wire Wire Line
	12950 5600 13250 5600
Wire Wire Line
	14450 6650 15100 6650
Connection ~ 14450 6650
Wire Wire Line
	14250 6650 14450 6650
$Comp
L power:GND #PWR016
U 1 1 5F6347AD
P 14750 7700
F 0 "#PWR016" H 14750 7450 50  0001 C CNN
F 1 "GND" H 14755 7527 50  0000 C CNN
F 2 "" H 14750 7700 50  0001 C CNN
F 3 "" H 14750 7700 50  0001 C CNN
	1    14750 7700
	1    0    0    -1  
$EndComp
Connection ~ 14250 6650
Wire Wire Line
	13600 7100 13600 6650
Wire Wire Line
	13250 7100 13600 7100
Connection ~ 14300 5050
Wire Wire Line
	13950 5500 13950 5050
Wire Wire Line
	13100 5500 13950 5500
Wire Wire Line
	13100 5400 13100 5500
Wire Wire Line
	12950 5400 13100 5400
Wire Wire Line
	10350 5400 10100 5400
$Comp
L power:GND #PWR012
U 1 1 5F6215BD
P 10100 5550
F 0 "#PWR012" H 10100 5300 50  0001 C CNN
F 1 "GND" H 10105 5377 50  0000 C CNN
F 2 "" H 10100 5550 50  0001 C CNN
F 3 "" H 10100 5550 50  0001 C CNN
	1    10100 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5F6209BA
P 13300 5200
F 0 "#PWR014" H 13300 4950 50  0001 C CNN
F 1 "GND" H 13305 5027 50  0000 C CNN
F 2 "" H 13300 5200 50  0001 C CNN
F 3 "" H 13300 5200 50  0001 C CNN
	1    13300 5200
	1    0    0    -1  
$EndComp
NoConn ~ 10350 5600
NoConn ~ 10350 5800
$Comp
L 2020-09-13_12-08-15:MAX30102EFD+ U3
U 1 1 5F5ED613
P 10350 4800
F 0 "U3" H 11650 5387 60  0000 C CNN
F 1 "MAX30102EFD+" H 11650 5281 60  0000 C CNN
F 2 "PCB_footprints_project2:MAX30102EFD&plus_" H 11650 5340 60  0001 C CNN
F 3 "" H 10350 4800 60  0000 C CNN
	1    10350 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R24
U 1 1 5FFD937B
P 10050 5000
F 0 "R24" V 9950 5000 50  0000 C CNN
F 1 "0" V 10164 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10050 5000 50  0001 C CNN
F 3 "~" H 10050 5000 50  0001 C CNN
	1    10050 5000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R25
U 1 1 5FFE5EB9
P 10150 5200
F 0 "R25" V 10050 5200 50  0000 C CNN
F 1 "0" V 10264 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10150 5200 50  0001 C CNN
F 3 "~" H 10150 5200 50  0001 C CNN
	1    10150 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10250 5200 10350 5200
Wire Wire Line
	10150 5000 10350 5000
$Comp
L Connector_Generic:Conn_01x05 J2
U 1 1 6001ABCD
P 8550 7450
F 0 "J2" H 8468 7867 50  0000 C CNN
F 1 "ST-link/V2 connector" H 8468 7776 50  0000 C CNN
F 2 "solderPads:SolderWirePad_1x05_SMD" H 8550 7450 50  0001 C CNN
F 3 "~" H 8550 7450 50  0001 C CNN
	1    8550 7450
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 60044011
P 8850 7650
F 0 "#PWR08" H 8850 7400 50  0001 C CNN
F 1 "GND" H 8855 7477 50  0000 C CNN
F 2 "" H 8850 7650 50  0001 C CNN
F 3 "" H 8850 7650 50  0001 C CNN
	1    8850 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 7650 8850 7650
Wire Wire Line
	14050 4800 14050 5050
Wire Wire Line
	14250 6450 14250 6650
Wire Wire Line
	14750 7600 14750 7700
Wire Wire Line
	2550 5600 2550 5750
Connection ~ 9200 2100
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 60085EB6
P 8550 8250
F 0 "J3" H 8468 8567 50  0000 C CNN
F 1 "USART connector" H 8468 8476 50  0000 C CNN
F 2 "solderPads:SolderWirePad_1x03_SMD" H 8550 8250 50  0001 C CNN
F 3 "~" H 8550 8250 50  0001 C CNN
	1    8550 8250
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 6009351D
P 8850 8350
F 0 "#PWR09" H 8850 8100 50  0001 C CNN
F 1 "GND" H 8855 8177 50  0000 C CNN
F 2 "" H 8850 8350 50  0001 C CNN
F 3 "" H 8850 8350 50  0001 C CNN
	1    8850 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 8350 8850 8350
Text GLabel 3000 9450 3    50   Input ~ 0
SPI1_MOSI
Text GLabel 3100 9450 3    50   Input ~ 0
WP
Text GLabel 3200 9450 3    50   Input ~ 0
SPI1_NSS
Text GLabel 3300 9450 3    50   Input ~ 0
DAC_OUT2
Text GLabel 3400 9450 3    50   Input ~ 0
SPI1_MISO
Text GLabel 3500 10300 3    50   Input ~ 0
SPI1_MOSI2
Text GLabel 3600 9450 3    50   Input ~ 0
USART3_RX
Text GLabel 2000 8350 0    50   Input ~ 0
NRST
Text GLabel 2000 8450 0    50   Input ~ 0
RESET
Text GLabel 2000 8550 0    50   Input ~ 0
SPI1_SCK
Text GLabel 14050 4800 1    50   Input ~ 0
+1.8V
Text GLabel 2550 5600 1    50   Input ~ 0
+1.8V
Text GLabel 1550 7650 1    50   Input ~ 0
+1.8V
Wire Wire Line
	1550 7650 1550 7800
Text GLabel 4600 8050 2    50   Input ~ 0
T_SWDIO
Text GLabel 4600 7950 2    50   Input ~ 0
T_SWCLK
Text GLabel 5950 8250 2    50   Input ~ 0
I2C2_SCL
Text GLabel 5950 8150 2    50   Input ~ 0
I2C2_SDA
Text GLabel 9100 9900 2    50   Input ~ 0
SPI1_MOSI2
Text GLabel 4250 5900 2    50   Input ~ 0
SPI1_MISO2
Text GLabel 4250 6100 2    50   Input ~ 0
SPI1_SCK2
Text GLabel 4250 6300 2    50   Input ~ 0
SPI1_NSS2
Text GLabel 9100 9800 2    50   Input ~ 0
SPI1_MISO2
Text GLabel 9100 9700 2    50   Input ~ 0
SPI1_SCK2
Text GLabel 9100 9600 2    50   Input ~ 0
SPI1_NSS2
Text GLabel 3000 7200 1    50   Input ~ 0
USART3_TX
Text GLabel 1900 6350 0    50   Input ~ 0
30102_INT
Text GLabel 1900 6450 0    50   Input ~ 0
I2C1_SCL
Text GLabel 1900 6550 0    50   Input ~ 0
I2C1_SDA
Text GLabel 9100 9000 2    50   Input ~ 0
I2C2_SCL
Text GLabel 9100 8900 2    50   Input ~ 0
I2C2_SDA
Text GLabel 9100 8250 2    50   Input ~ 0
USART3_TX
Text GLabel 9100 8150 2    50   Input ~ 0
USART3_RX
Text GLabel 9050 7550 2    50   Input ~ 0
NRST
Text GLabel 9050 7350 2    50   Input ~ 0
T_SWDIO
Text GLabel 9050 7450 2    50   Input ~ 0
T_SWCLK
Text GLabel 9550 5000 0    50   Input ~ 0
I2C1_SCL
Text GLabel 9550 5200 0    50   Input ~ 0
I2C1_SDA
Text GLabel 13200 5000 2    50   Input ~ 0
30102_INT
$Comp
L Device:C_Small C7
U 1 1 5F968465
P 14950 5550
F 0 "C7" H 15042 5596 50  0000 L CNN
F 1 "0.1uF" H 15042 5505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 14950 5550 50  0001 C CNN
F 3 "~" H 14950 5550 50  0001 C CNN
	1    14950 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5F96922C
P 14300 5550
F 0 "C5" H 14392 5596 50  0000 L CNN
F 1 "4.7uF" H 14392 5505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 14300 5550 50  0001 C CNN
F 3 "~" H 14300 5550 50  0001 C CNN
	1    14300 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5F974F7B
P 15100 7150
F 0 "C8" H 15192 7196 50  0000 L CNN
F 1 "0.1uF" H 15192 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 15100 7150 50  0001 C CNN
F 3 "~" H 15100 7150 50  0001 C CNN
	1    15100 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5F980D6B
P 14450 7150
F 0 "C6" H 14542 7196 50  0000 L CNN
F 1 "10uF" H 14542 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 14450 7150 50  0001 C CNN
F 3 "~" H 14450 7150 50  0001 C CNN
	1    14450 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 6650 14450 7050
Wire Wire Line
	14450 7250 14450 7600
Wire Wire Line
	15100 7250 15100 7600
Wire Wire Line
	15100 6650 15100 7050
Wire Wire Line
	14300 5650 14300 6000
Wire Wire Line
	14300 5050 14300 5450
Wire Wire Line
	14950 5050 14950 5450
Wire Wire Line
	14950 5650 14950 6000
$Comp
L Device:C_Small C1
U 1 1 5F9EF019
P 1300 8050
F 0 "C1" H 1392 8096 50  0000 L CNN
F 1 "4.7uF" H 1392 8005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1300 8050 50  0001 C CNN
F 3 "~" H 1300 8050 50  0001 C CNN
	1    1300 8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 7800 1300 7950
Wire Wire Line
	1300 8150 1300 8300
Connection ~ 1300 8300
$Comp
L Device:C_Small C4
U 1 1 5FA2C2AB
P 9200 2400
F 0 "C4" H 9292 2446 50  0000 L CNN
F 1 "4.7uF" H 9292 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9200 2400 50  0001 C CNN
F 3 "~" H 9200 2400 50  0001 C CNN
	1    9200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2100 9200 2300
Wire Wire Line
	9200 2500 9200 2650
$Comp
L Device:LED_Small D4
U 1 1 5FAB905A
P 5800 8700
F 0 "D4" H 5800 8495 50  0000 C CNN
F 1 "LED" H 5800 8586 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 5800 8700 50  0001 C CNN
F 3 "~" V 5800 8700 50  0001 C CNN
	1    5800 8700
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small D5
U 1 1 5FAC5E86
P 5800 9050
F 0 "D5" H 5800 8845 50  0000 C CNN
F 1 "LED" H 5800 8936 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 5800 9050 50  0001 C CNN
F 3 "~" V 5800 9050 50  0001 C CNN
	1    5800 9050
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small D6
U 1 1 5FAD298C
P 5800 9400
F 0 "D6" H 5800 9195 50  0000 C CNN
F 1 "LED" H 5800 9286 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 5800 9400 50  0001 C CNN
F 3 "~" V 5800 9400 50  0001 C CNN
	1    5800 9400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 9400 6150 9400
Wire Wire Line
	5900 9050 6150 9050
Wire Wire Line
	5900 8700 6150 8700
Text GLabel 11650 2150 0    50   Input ~ 0
SPI1_MOSI
Text GLabel 11650 2600 0    50   Input ~ 0
SPI1_NSS
Text GLabel 13200 2150 2    50   Input ~ 0
SPI1_MISO
Text GLabel 11650 2450 0    50   Input ~ 0
RESET
Text GLabel 11650 2300 0    50   Input ~ 0
SPI1_SCK
Text GLabel 13000 2600 2    50   Input ~ 0
WP
Text GLabel 13000 2450 2    50   Input ~ 0
+1.8V
Wire Wire Line
	12950 2450 13000 2450
Wire Wire Line
	12950 2150 13200 2150
Wire Wire Line
	5350 6850 5450 6850
Wire Wire Line
	5450 6850 5450 6550
Wire Wire Line
	5450 6550 6200 6550
Connection ~ 6200 6550
Wire Wire Line
	6200 6550 6200 6600
Wire Notes Line
	800  5050 800  10950
Wire Notes Line
	800  10950 6850 10950
Wire Notes Line
	6850 10950 6850 5050
Wire Notes Line
	6850 5050 800  5050
Text Notes 800  5000 0    50   ~ 0
Microcontroller
Wire Notes Line
	700  4700 7650 4700
Wire Notes Line
	7650 4700 7650 3150
Wire Notes Line
	7650 3150 10350 3150
Wire Notes Line
	10350 3150 10350 900 
Wire Notes Line
	10350 900  700  900 
Wire Notes Line
	700  900  700  4700
Text Notes 700  850  0    50   ~ 0
Power management
$Comp
L power:GND #PWR010
U 1 1 5FFA3C50
P 8850 9100
F 0 "#PWR010" H 8850 8850 50  0001 C CNN
F 1 "GND" H 8855 8927 50  0000 C CNN
F 2 "" H 8850 9100 50  0001 C CNN
F 3 "" H 8850 9100 50  0001 C CNN
	1    8850 9100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 9100 8850 9100
Wire Notes Line
	8150 6900 9900 6900
Text Notes 8150 6850 0    50   ~ 0
Connectors
Wire Notes Line
	8750 3950 8750 6650
Wire Notes Line
	8750 6650 12850 6650
Wire Notes Line
	12850 6650 12850 8200
Wire Notes Line
	12850 8200 15500 8200
Wire Notes Line
	15500 8200 15500 3950
Wire Notes Line
	15500 3950 8750 3950
Text Notes 8750 3900 0    50   ~ 0
Sensor
Wire Notes Line
	11000 1750 11000 2850
Text Notes 11000 1700 0    50   ~ 0
Memory
$Comp
L Mechanical:MountingHole H1
U 1 1 5F7ABF8F
P 11200 7850
F 0 "H1" H 11300 7896 50  0000 L CNN
F 1 "MountingHole" H 11300 7805 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 11200 7850 50  0001 C CNN
F 3 "~" H 11200 7850 50  0001 C CNN
	1    11200 7850
	1    0    0    -1  
$EndComp
Wire Notes Line
	11900 7600 11050 7600
Text Notes 11050 7550 0    50   ~ 0
Mounting hole
Wire Wire Line
	1200 2150 1200 2250
Wire Wire Line
	9200 2100 9850 2100
NoConn ~ 2300 7950
NoConn ~ 2300 8050
$Comp
L Device:R_Small_US R26
U 1 1 5F84CB7F
P 9250 7250
F 0 "R26" H 9318 7296 50  0000 L CNN
F 1 "0" H 9318 7205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9250 7250 50  0001 C CNN
F 3 "~" H 9250 7250 50  0001 C CNN
	1    9250 7250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12950 5000 13200 5000
Wire Wire Line
	8750 10250 9100 10250
Text GLabel 9100 10250 2    50   Input ~ 0
DAC_OUT2
Wire Wire Line
	3300 9150 3300 9450
$Comp
L Mechanical:MountingHole H2
U 1 1 5F8B7ED6
P 11200 8100
F 0 "H2" H 11300 8146 50  0000 L CNN
F 1 "MountingHole" H 11300 8055 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 11200 8100 50  0001 C CNN
F 3 "~" H 11200 8100 50  0001 C CNN
	1    11200 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	13450 2300 13450 2550
Wire Wire Line
	12950 2300 13450 2300
Wire Notes Line
	14000 2850 14000 1750
Wire Notes Line
	11000 2850 14000 2850
Wire Notes Line
	11000 1750 14000 1750
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 5F7EBA5F
P 4250 1900
F 0 "J7" H 4330 1892 50  0000 L CNN
F 1 "Battery" H 4330 1801 50  0000 L CNN
F 2 "solderPads:SolderWirePad_1x02_SMD" H 4250 1900 50  0001 C CNN
F 3 "~" H 4250 1900 50  0001 C CNN
	1    4250 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 7250 9150 7250
Wire Wire Line
	9350 7250 9450 7250
Text GLabel 9450 7250 2    50   Input ~ 0
+1.8V
Wire Wire Line
	5400 7350 5550 7350
Text GLabel 5550 7250 1    50   Input ~ 0
+1.8V
Wire Wire Line
	5550 7250 5550 7350
Connection ~ 5550 7350
Wire Wire Line
	5550 7350 5700 7350
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 5F9113E1
P 8550 9000
F 0 "J4" H 8468 9317 50  0000 C CNN
F 1 "I2C_B connector" H 8468 9226 50  0000 C CNN
F 2 "solderPads:SolderWirePad_1x03_SMD" H 8550 9000 50  0001 C CNN
F 3 "~" H 8550 9000 50  0001 C CNN
	1    8550 9000
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5F964CE3
P 8550 10250
F 0 "J6" H 8468 10467 50  0000 C CNN
F 1 "DAC_OUT" H 8468 10376 50  0000 C CNN
F 2 "solderPads:SolderWirePad_1x02_SMD" H 8550 10250 50  0001 C CNN
F 3 "~" H 8550 10250 50  0001 C CNN
	1    8550 10250
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5F98DEBC
P 8850 10350
F 0 "#PWR017" H 8850 10100 50  0001 C CNN
F 1 "GND" H 8855 10177 50  0000 C CNN
F 2 "" H 8850 10350 50  0001 C CNN
F 3 "" H 8850 10350 50  0001 C CNN
	1    8850 10350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 10350 8850 10350
Wire Notes Line
	8150 10600 9900 10600
Wire Notes Line
	9900 6900 9900 10600
Wire Notes Line
	8150 6900 8150 10600
$Comp
L 2020-09-25_22-21-49:C2Q_250 F1
U 1 1 5F7051BC
P 5700 1300
F 0 "F1" V 5953 1220 60  0000 R CNN
F 1 "250mA" V 5847 1220 60  0000 R CNN
F 2 "PCB_footprints_project:C2Q250" H 5900 990 60  0001 C CNN
F 3 "" H 5700 1300 60  0000 C CNN
	1    5700 1300
	-1   0    0    1   
$EndComp
Text GLabel 6100 1300 2    50   Input ~ 0
V_led
Text GLabel 14250 6450 1    50   Input ~ 0
V_led
Wire Wire Line
	6150 9400 6150 9050
Connection ~ 6150 9050
Wire Wire Line
	6150 9050 6450 9050
Wire Wire Line
	6150 8700 6150 9050
$Comp
L Mechanical:MountingHole H3
U 1 1 5F877686
P 11200 8350
F 0 "H3" H 11300 8396 50  0000 L CNN
F 1 "MountingHole" H 11300 8305 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 11200 8350 50  0001 C CNN
F 3 "~" H 11200 8350 50  0001 C CNN
	1    11200 8350
	1    0    0    -1  
$EndComp
Wire Notes Line
	11050 8500 11900 8500
Wire Notes Line
	11050 7600 11050 8500
Wire Notes Line
	11900 7600 11900 8500
$Comp
L Mechanical:Fiducial FID4
U 1 1 5F8A6C3A
P 11750 9050
F 0 "FID4" H 11835 9096 50  0000 L CNN
F 1 "Fiducial" H 11835 9005 50  0000 L CNN
F 2 "Fiducial:Fiducial_1mm_Mask2mm" H 11750 9050 50  0001 C CNN
F 3 "~" H 11750 9050 50  0001 C CNN
	1    11750 9050
	0    1    1    0   
$EndComp
$Comp
L Mechanical:Fiducial FID3
U 1 1 5F8A75E0
P 11550 9050
F 0 "FID3" H 11635 9096 50  0000 L CNN
F 1 "Fiducial" H 11635 9005 50  0000 L CNN
F 2 "Fiducial:Fiducial_1mm_Mask2mm" H 11550 9050 50  0001 C CNN
F 3 "~" H 11550 9050 50  0001 C CNN
	1    11550 9050
	0    1    1    0   
$EndComp
$Comp
L Mechanical:Fiducial FID2
U 1 1 5F8A7F39
P 11350 9050
F 0 "FID2" H 11435 9096 50  0000 L CNN
F 1 "Fiducial" H 11435 9005 50  0000 L CNN
F 2 "Fiducial:Fiducial_1mm_Mask2mm" H 11350 9050 50  0001 C CNN
F 3 "~" H 11350 9050 50  0001 C CNN
	1    11350 9050
	0    1    1    0   
$EndComp
$Comp
L Mechanical:Fiducial FID1
U 1 1 5F8A8792
P 11150 9050
F 0 "FID1" H 11235 9096 50  0000 L CNN
F 1 "Fiducial" H 11235 9005 50  0000 L CNN
F 2 "Fiducial:Fiducial_1mm_Mask2mm" H 11150 9050 50  0001 C CNN
F 3 "~" H 11150 9050 50  0001 C CNN
	1    11150 9050
	0    1    1    0   
$EndComp
Wire Notes Line
	11000 8950 11000 9500
Text Notes 11000 8900 0    50   ~ 0
Fiducials
Wire Notes Line
	11000 8950 11850 8950
Wire Notes Line
	11850 8950 11850 9500
Wire Notes Line
	11850 9500 11000 9500
$Comp
L mcp73811:MCP73811T-420I_OT U1
U 1 1 5F73CD1A
P 2850 4150
F 0 "U1" V 4003 3722 60  0000 R CNN
F 1 "MCP73811T-420I_OT" V 3897 3722 60  0000 R CNN
F 2 "mcp:MCP73811T-420I&slash_OT" H 3950 4390 60  0001 C CNN
F 3 "" H 2850 4150 60  0000 C CNN
	1    2850 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 1550 2850 1550
Wire Wire Line
	2950 1550 2950 1950
Wire Wire Line
	2850 1950 2850 1550
Connection ~ 2850 1550
Wire Wire Line
	2850 1550 2950 1550
Wire Wire Line
	2850 4150 2250 4150
Wire Wire Line
	2250 4150 2250 1550
$Comp
L power:GND #PWR04
U 1 1 5F78424B
P 2950 4300
F 0 "#PWR04" H 2950 4050 50  0001 C CNN
F 1 "GND" H 2955 4127 50  0000 C CNN
F 2 "" H 2950 4300 50  0001 C CNN
F 3 "" H 2950 4300 50  0001 C CNN
	1    2950 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4150 2950 4300
$Comp
L Device:C_Small C2
U 1 1 5F7A3782
P 1850 1950
F 0 "C2" H 1942 1996 50  0000 L CNN
F 1 "1uF" H 1942 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1850 1950 50  0001 C CNN
F 3 "~" H 1850 1950 50  0001 C CNN
	1    1850 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1550 1850 1550
Wire Wire Line
	1850 1850 1850 1550
Connection ~ 1850 1550
Wire Wire Line
	1850 1550 2250 1550
Wire Wire Line
	1850 2050 1850 2300
$Comp
L power:GND #PWR?
U 1 1 5F7E2AA5
P 1850 2300
AR Path="/5F5E0E41/5F7E2AA5" Ref="#PWR?"  Part="1" 
AR Path="/5F7E2AA5" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 1850 2050 50  0001 C CNN
F 1 "GND" H 1855 2127 50  0000 C CNN
F 2 "" H 1850 2300 50  0001 C CNN
F 3 "" H 1850 2300 50  0001 C CNN
	1    1850 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5F7ECCC4
P 3650 2150
F 0 "C3" H 3742 2196 50  0000 L CNN
F 1 "1uF" H 3742 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3650 2150 50  0001 C CNN
F 3 "~" H 3650 2150 50  0001 C CNN
	1    3650 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1950 3050 1550
Wire Wire Line
	3050 1550 3650 1550
Wire Wire Line
	3650 1550 3650 2050
Wire Wire Line
	3650 1550 4050 1550
Wire Wire Line
	4050 1550 4050 1900
Connection ~ 3650 1550
Wire Wire Line
	3650 2250 3650 2350
Wire Wire Line
	3650 2350 3900 2350
Wire Wire Line
	4050 2350 4050 2000
Wire Wire Line
	3900 2350 3900 2450
Connection ~ 3900 2350
Wire Wire Line
	3900 2350 4050 2350
$Comp
L power:GND #PWR018
U 1 1 5F81AF37
P 3900 2450
F 0 "#PWR018" H 3900 2200 50  0001 C CNN
F 1 "GND" H 3905 2277 50  0000 C CNN
F 2 "" H 3900 2450 50  0001 C CNN
F 3 "" H 3900 2450 50  0001 C CNN
	1    3900 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1900 5550 1550
Connection ~ 4050 1550
$Comp
L pnp_transistors:MMBT3906-7-F U5
U 1 1 5F843F8B
P 5100 3900
F 0 "U5" V 6053 3572 60  0000 R CNN
F 1 "MMBT3906-7-F" V 6100 4500 60  0000 R CNN
F 2 "pnp:MMBT3906-7-F" H 6000 4140 60  0001 C CNN
F 3 "" H 5100 3900 60  0000 C CNN
	1    5100 3900
	0    -1   -1   0   
$EndComp
$Comp
L pnp_transistors:MMBT3906-7-F U6
U 1 1 5F8459FA
P 6300 4000
F 0 "U6" V 7253 3672 60  0000 R CNN
F 1 "MMBT3906-7-F" V 7147 3672 60  0000 R CNN
F 2 "pnp:MMBT3906-7-F" H 7200 4240 60  0001 C CNN
F 3 "" H 6300 4000 60  0000 C CNN
	1    6300 4000
	0    -1   -1   0   
$EndComp
Connection ~ 2250 1550
$Comp
L Device:R_Small_US R3
U 1 1 5F8F8F1D
P 4150 3850
F 0 "R3" H 4218 3896 50  0000 L CNN
F 1 "10K" H 4218 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4150 3850 50  0001 C CNN
F 3 "~" H 4150 3850 50  0001 C CNN
	1    4150 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 5F9064FE
P 5750 3750
F 0 "R5" H 5818 3796 50  0000 L CNN
F 1 "10K" H 5818 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5750 3750 50  0001 C CNN
F 3 "~" H 5750 3750 50  0001 C CNN
	1    5750 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R6
U 1 1 5F91325D
P 5900 4300
F 0 "R6" V 5695 4300 50  0000 C CNN
F 1 "10K" V 5786 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5900 4300 50  0001 C CNN
F 3 "~" H 5900 4300 50  0001 C CNN
	1    5900 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R19
U 1 1 5F91EBA3
P 6700 4300
F 0 "R19" V 6495 4300 50  0000 C CNN
F 1 "1.8K" V 6586 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6700 4300 50  0001 C CNN
F 3 "~" H 6700 4300 50  0001 C CNN
	1    6700 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 1900 6400 1900
Wire Wire Line
	4050 1550 5000 1550
Wire Wire Line
	5300 1300 5000 1300
Wire Wire Line
	5000 1300 5000 1550
Connection ~ 5000 1550
Wire Wire Line
	5000 1550 5200 1550
Wire Wire Line
	5700 1300 6100 1300
Wire Wire Line
	5100 2100 4650 2100
Wire Wire Line
	4650 2100 4650 3250
Wire Wire Line
	4650 3250 4150 3250
Wire Wire Line
	4150 3250 4150 3750
Wire Wire Line
	5200 2100 5200 1550
Connection ~ 5200 1550
Wire Wire Line
	5200 1550 5550 1550
Wire Wire Line
	6400 2200 6400 1900
Connection ~ 6400 1900
Wire Wire Line
	6300 2200 6300 2100
Wire Wire Line
	6300 2100 5750 2100
Wire Wire Line
	5750 2100 5750 3250
Wire Wire Line
	5100 3900 5100 4050
Wire Wire Line
	5100 4050 5550 4050
Wire Wire Line
	5550 4050 5550 3250
Wire Wire Line
	5550 3250 5750 3250
Connection ~ 5750 3250
Wire Wire Line
	5750 3250 5750 3650
Wire Wire Line
	6300 4000 6300 4300
Wire Wire Line
	6300 4300 6000 4300
Wire Wire Line
	6600 4300 6300 4300
Connection ~ 6300 4300
Wire Wire Line
	6800 4300 6800 1900
Wire Wire Line
	6400 1900 6800 1900
Connection ~ 6800 1900
Wire Wire Line
	6800 1900 6900 1900
Wire Wire Line
	5750 3850 5750 4200
Wire Wire Line
	5750 4200 5200 4200
Wire Wire Line
	5200 4200 5200 4300
Wire Wire Line
	5200 4300 5800 4300
$Comp
L Device:LED_Small D1
U 1 1 5FA03C8A
P 4150 4150
F 0 "D1" H 4150 3945 50  0000 C CNN
F 1 "RED" H 4150 4036 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 4150 4150 50  0001 C CNN
F 3 "~" V 4150 4150 50  0001 C CNN
	1    4150 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 3950 4150 4050
Wire Wire Line
	4150 4250 4150 4300
Wire Wire Line
	4150 4300 5200 4300
Connection ~ 5200 4300
$Comp
L power:GND #PWR019
U 1 1 5FA30662
P 5200 4400
F 0 "#PWR019" H 5200 4150 50  0001 C CNN
F 1 "GND" H 5205 4227 50  0000 C CNN
F 2 "" H 5200 4400 50  0001 C CNN
F 3 "" H 5200 4400 50  0001 C CNN
	1    5200 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4300 5200 4400
$EndSCHEMATC
