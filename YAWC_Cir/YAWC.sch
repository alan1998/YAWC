EESchema Schematic File Version 2
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
LIBS:special
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
LIBS:contrib
LIBS:valves
LIBS:YAWC-cache
EELAYER 24 0
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
L CONN_2 P1
U 1 1 538F66AD
P 1450 1650
F 0 "P1" V 1400 1650 40  0000 C CNN
F 1 "JST-PH_2" V 1500 1650 40  0000 C CNN
F 2 "" H 1450 1650 60  0000 C CNN
F 3 "" H 1450 1650 60  0000 C CNN
	1    1450 1650
	-1   0    0    -1  
$EndComp
$Comp
L TPS769XX U1
U 1 1 538F6803
P 3200 1700
F 0 "U1" H 2950 2000 40  0000 C CNN
F 1 "TPS769XX" H 3350 2000 40  0000 C CNN
F 2 "SOT-23-5" H 3200 1850 30  0000 C CIN
F 3 "" H 3200 1700 60  0000 C CNN
	1    3200 1700
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 538F685C
P 2200 1750
F 0 "C1" H 2200 1850 40  0000 L CNN
F 1 "1u" H 2206 1665 40  0000 L CNN
F 2 "" H 2238 1600 30  0000 C CNN
F 3 "" H 2200 1750 60  0000 C CNN
	1    2200 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1550 2750 1550
Connection ~ 2200 1550
Wire Wire Line
	2200 1950 2200 2200
Wire Wire Line
	1800 2000 3900 2000
Wire Wire Line
	1800 2000 1800 1750
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
L GND #PWR01
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
L C C2
U 1 1 538F6921
P 3900 1750
F 0 "C2" H 3900 1850 40  0000 L CNN
F 1 "4u7" H 3906 1665 40  0000 L CNN
F 2 "" H 3938 1600 30  0000 C CNN
F 3 "" H 3900 1750 60  0000 C CNN
	1    3900 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2000 3900 1950
Connection ~ 3200 2000
Wire Wire Line
	2750 1700 2750 2000
Connection ~ 2750 2000
$Comp
L CONN_4 Amp1
U 1 1 5394B652
P 1450 3000
F 0 "Amp1" V 1400 3000 50  0000 C CNN
F 1 "CONN_4" V 1500 3000 50  0000 C CNN
F 2 "" H 1450 3000 60  0000 C CNN
F 3 "" H 1450 3000 60  0000 C CNN
	1    1450 3000
	-1   0    0    1   
$EndComp
$Sheet
S 1300 6650 1050 150 
U 5394B774
F0 "Micro" 60
F1 "Micro.sch" 60
$EndSheet
$Comp
L GND #PWR02
U 1 1 5398AB48
P 2000 3300
F 0 "#PWR02" H 2000 3300 30  0001 C CNN
F 1 "GND" H 2000 3230 30  0001 C CNN
F 2 "" H 2000 3300 60  0000 C CNN
F 3 "" H 2000 3300 60  0000 C CNN
	1    2000 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3150 2000 3150
Wire Wire Line
	2000 3150 2000 3300
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
$EndSCHEMATC
