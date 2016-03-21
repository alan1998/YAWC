EESchema Schematic File Version 2
LIBS:YAWC-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:MySymbols
LIBS:MyComponents
LIBS:contrib
LIBS:valves
LIBS:YAWC-cache
EELAYER 25 0
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
L TPS769XX-RESCUE-YAWC U1
U 1 1 538F6803
P 3200 1700
F 0 "U1" H 2950 2000 40  0000 C CNN
F 1 "TPS769XX" H 3350 2000 40  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 3200 1850 30  0001 C CIN
F 3 "" H 3200 1700 60  0000 C CNN
	1    3200 1700
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-YAWC C1
U 1 1 538F685C
P 2200 1750
F 0 "C1" H 2200 1850 40  0000 L CNN
F 1 "1u" H 2206 1665 40  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 2238 1600 30  0001 C CNN
F 3 "" H 2200 1750 60  0000 C CNN
	1    2200 1750
	1    0    0    -1  
$EndComp
Connection ~ 2200 1550
Wire Wire Line
	2200 1950 2200 2200
Wire Wire Line
	1800 1150 1800 2000
Connection ~ 2200 2000
Text Label 1800 1550 0    60   ~ 0
Vbatt
Text GLabel 3900 1150 1    60   Input ~ 0
VCC
Wire Wire Line
	3900 1150 3900 1550
Wire Wire Line
	3900 1550 3650 1550
$Comp
L GND-RESCUE-YAWC #PWR01
U 1 1 538F68DF
P 2200 2200
F 0 "#PWR01" H 2200 2200 30  0001 C CNN
F 1 "GND" H 2200 2130 30  0001 C CNN
F 2 "" H 2200 2200 60  0000 C CNN
F 3 "" H 2200 2200 60  0000 C CNN
	1    2200 2200
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-YAWC C2
U 1 1 538F6921
P 3900 1750
F 0 "C2" H 3900 1850 40  0000 L CNN
F 1 "4u7" H 3906 1665 40  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3938 1600 30  0001 C CNN
F 3 "" H 3900 1750 60  0000 C CNN
	1    3900 1750
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 Amp1
U 1 1 5394B652
P 1450 3000
F 0 "Amp1" V 1400 3000 50  0000 C CNN
F 1 "CONN_4" V 1500 3000 50  0000 C CNN
F 2 "PIN_Hdr:Pin_Header_Straight_1x04" H 1450 3000 60  0001 C CNN
F 3 "" H 1450 3000 60  0000 C CNN
F 4 "151-6291" H 1550 3300 60  0000 C CNN "PartNo"
F 5 "S4B-XH-A" V 1450 3000 60  0001 C CNN "ManPart"
	1    1450 3000
	-1   0    0    1   
$EndComp
$Sheet
S 1300 6650 1050 150 
U 5394B774
F0 "Micro" 60
F1 "Micro.sch" 60
$EndSheet
Text GLabel 3600 1150 1    60   Input ~ 0
GND
Text Label 1800 3050 0    60   ~ 0
VCC
Text Label 1800 2850 0    60   ~ 0
Vib
Text Label 1800 2950 0    60   ~ 0
Bth
Text GLabel 4150 1150 1    60   Input ~ 0
Vib
Text GLabel 4350 1150 1    60   Input ~ 0
Bth
NoConn ~ 3650 1700
Wire Wire Line
	1800 3150 2650 3150
Wire Wire Line
	3200 2000 3200 2350
Wire Wire Line
	1800 2000 2200 2000
Text Label 2000 3150 0    60   ~ 0
GND
$Comp
L GND-RESCUE-YAWC #PWR02
U 1 1 539EE6EA
P 2000 3250
F 0 "#PWR02" H 2000 3250 30  0001 C CNN
F 1 "GND" H 2000 3180 30  0001 C CNN
F 2 "" H 2000 3250 60  0000 C CNN
F 3 "" H 2000 3250 60  0000 C CNN
	1    2000 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3150 2000 3250
$Comp
L GND-RESCUE-YAWC #PWR03
U 1 1 539EF1A8
P 3200 2350
F 0 "#PWR03" H 3200 2350 30  0001 C CNN
F 1 "GND" H 3200 2280 30  0001 C CNN
F 2 "" H 3200 2350 60  0000 C CNN
F 3 "" H 3200 2350 60  0000 C CNN
	1    3200 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1700 2750 2000
Wire Wire Line
	2750 2000 3900 2000
Wire Wire Line
	3900 2000 3900 1950
Connection ~ 3200 2000
Wire Wire Line
	1550 1550 2750 1550
$Comp
L R-RESCUE-YAWC R6
U 1 1 53A1C4D0
P 2450 1850
F 0 "R6" V 2530 1850 40  0000 C CNN
F 1 "4k" V 2457 1851 40  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2380 1850 30  0001 C CNN
F 3 "" H 2450 1850 30  0000 C CNN
	1    2450 1850
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-YAWC R7
U 1 1 53A1C505
P 2450 2450
F 0 "R7" V 2530 2450 40  0000 C CNN
F 1 "1k" V 2457 2451 40  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2380 2450 30  0001 C CNN
F 3 "" H 2450 2450 30  0000 C CNN
	1    2450 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1600 2450 1550
Connection ~ 2450 1550
Wire Wire Line
	2450 2200 2450 2100
Wire Wire Line
	2450 2700 2700 2700
Wire Wire Line
	2700 2700 2700 2250
Wire Wire Line
	2700 2250 3200 2250
Connection ~ 3200 2250
Wire Wire Line
	2450 2200 2850 2200
Text GLabel 2850 2550 2    60   Input ~ 0
BatSample
Wire Wire Line
	2850 2200 2850 2550
$Comp
L CONN_01X03 P1
U 1 1 56C62FA6
P 1350 1650
F 0 "P1" H 1350 1850 50  0000 C CNN
F 1 "CONN_01X03" V 1450 1650 50  0000 C CNN
F 2 "JST:S3B-XH" H 1350 1650 50  0001 C CNN
F 3 "" H 1350 1650 50  0000 C CNN
	1    1350 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	1800 1750 1550 1750
Wire Wire Line
	1550 1650 1550 1300
Wire Wire Line
	1550 1300 3900 1300
Connection ~ 3900 1300
$Comp
L CONN_01X01 P6
U 1 1 56C86765
P 2650 3550
F 0 "P6" H 2650 3650 50  0000 C CNN
F 1 "TP1b" V 2750 3550 50  0000 C CNN
F 2 "PIN_Hdr:Pin_Header_Straight_1x01" H 2650 3550 50  0001 C CNN
F 3 "" H 2650 3550 50  0000 C CNN
	1    2650 3550
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P2
U 1 1 56C867E8
P 2300 3550
F 0 "P2" H 2300 3650 50  0000 C CNN
F 1 "TP1a" V 2400 3550 50  0000 C CNN
F 2 "PIN_Hdr:Pin_Header_Straight_1x01" H 2300 3550 50  0001 C CNN
F 3 "" H 2300 3550 50  0000 C CNN
	1    2300 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 3150 2650 3350
Wire Wire Line
	2300 3150 2300 3350
Connection ~ 2300 3150
Connection ~ 2000 3150
Text Notes 2200 3900 0    60   ~ 0
Wire loop \nnear breath in
Text GLabel 3450 2150 2    60   Input ~ 0
GND
Wire Wire Line
	3200 2150 3450 2150
Connection ~ 3200 2150
Wire Wire Line
	3600 1150 1800 1150
Connection ~ 1800 1750
$EndSCHEMATC
