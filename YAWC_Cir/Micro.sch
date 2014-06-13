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
L SAMD20J18A-M U2
U 1 1 5394B7AD
P 5700 3300
F 0 "U2" H 4050 4950 40  0000 C CNN
F 1 "SAMD20J18A-M" H 7150 1650 40  0000 C CNN
F 2 "QFN64" H 5700 2150 32  0000 C CIN
F 3 "" H 5700 3550 60  0000 C CNN
	1    5700 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5394B7FB
P 5700 5350
F 0 "#PWR03" H 5700 5350 30  0001 C CNN
F 1 "GND" H 5700 5280 30  0001 C CNN
F 2 "" H 5700 5350 60  0000 C CNN
F 3 "" H 5700 5350 60  0000 C CNN
	1    5700 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5050 5400 5250
Wire Wire Line
	5400 5250 5950 5250
Wire Wire Line
	5700 5050 5700 5350
Wire Wire Line
	5500 5050 5500 5250
Connection ~ 5500 5250
Wire Wire Line
	5600 5050 5600 5250
Connection ~ 5600 5250
Connection ~ 5700 5250
Wire Wire Line
	5950 5250 5950 5050
Text GLabel 5400 1100 1    60   Input ~ 0
VCC
Wire Wire Line
	5100 1550 5100 1200
Wire Wire Line
	5100 1200 5950 1200
Wire Wire Line
	5400 1200 5400 1100
Connection ~ 5300 1200
Wire Wire Line
	5500 1200 5500 1550
Connection ~ 5400 1200
Wire Wire Line
	5600 1200 5600 1550
Connection ~ 5500 1200
Wire Wire Line
	5700 1200 5700 1550
Connection ~ 5600 1200
Wire Wire Line
	5950 1200 5950 1550
Connection ~ 5700 1200
Text GLabel 1500 1150 1    60   Input ~ 0
VCC
$Comp
L GND #PWR04
U 1 1 5397365F
P 1500 1750
F 0 "#PWR04" H 1500 1750 30  0001 C CNN
F 1 "GND" H 1500 1680 30  0001 C CNN
F 2 "" H 1500 1750 60  0000 C CNN
F 3 "" H 1500 1750 60  0000 C CNN
	1    1500 1750
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 53973676
P 1150 1450
F 0 "C3" H 1150 1550 40  0000 L CNN
F 1 "100n" H 1156 1365 40  0000 L CNN
F 2 "" H 1188 1300 30  0000 C CNN
F 3 "" H 1150 1450 60  0000 C CNN
	1    1150 1450
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 539736A9
P 1400 1450
F 0 "C4" H 1400 1550 40  0000 L CNN
F 1 "100n" H 1406 1365 40  0000 L CNN
F 2 "" H 1438 1300 30  0000 C CNN
F 3 "" H 1400 1450 60  0000 C CNN
	1    1400 1450
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 539736C2
P 1650 1450
F 0 "C5" H 1650 1550 40  0000 L CNN
F 1 "100n" H 1656 1365 40  0000 L CNN
F 2 "" H 1688 1300 30  0000 C CNN
F 3 "" H 1650 1450 60  0000 C CNN
	1    1650 1450
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 539736DB
P 1900 1450
F 0 "C6" H 1900 1550 40  0000 L CNN
F 1 "100n" H 1906 1365 40  0000 L CNN
F 2 "" H 1938 1300 30  0000 C CNN
F 3 "" H 1900 1450 60  0000 C CNN
	1    1900 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1250 1900 1250
Connection ~ 1650 1250
Wire Wire Line
	1150 1650 1900 1650
Connection ~ 1400 1650
Connection ~ 1650 1650
Wire Wire Line
	1500 1750 1500 1650
Connection ~ 1500 1650
Wire Wire Line
	1500 1150 1500 1250
Connection ~ 1500 1250
$Comp
L C C7
U 1 1 5397386B
P 4550 1300
F 0 "C7" H 4550 1400 40  0000 L CNN
F 1 "100n" H 4556 1215 40  0000 L CNN
F 2 "" H 4588 1150 30  0000 C CNN
F 3 "" H 4550 1300 60  0000 C CNN
	1    4550 1300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 539738BC
P 4100 1400
F 0 "#PWR05" H 4100 1400 30  0001 C CNN
F 1 "GND" H 4100 1330 30  0001 C CNN
F 2 "" H 4100 1400 60  0000 C CNN
F 3 "" H 4100 1400 60  0000 C CNN
	1    4100 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1350 4100 1300
Wire Wire Line
	4100 1300 4350 1300
Wire Wire Line
	4750 1300 5300 1300
Wire Wire Line
	5300 1300 5300 1550
Text Label 7550 2050 0    60   ~ 0
Y0
Text Label 7550 2150 0    60   ~ 0
Y1
Text Label 7550 2250 0    60   ~ 0
Y2
Text Label 7550 2350 0    60   ~ 0
Y3
Text Label 7550 2450 0    60   ~ 0
Y4
Text Label 7550 2550 0    60   ~ 0
Y5
Text Label 3850 2050 2    60   ~ 0
Y6
Text Label 3850 2150 2    60   ~ 0
Y7
Text Label 3850 2250 2    60   ~ 0
Y8
Text Label 3850 2350 2    60   ~ 0
Y9
Text Label 3850 2450 2    60   ~ 0
Y10
Text Label 3850 2550 2    60   ~ 0
Y11
Text Label 3850 2650 2    60   ~ 0
Y12
Text Label 3850 2750 2    60   ~ 0
Y13
Text Label 3850 2850 2    60   ~ 0
Y14
Text Label 3850 2950 2    60   ~ 0
Y15
Text Notes 2250 1150 2    60   ~ 0
Close to chip
$Comp
L CONN_5 P3
U 1 1 53973B2F
P 1300 4350
F 0 "P3" V 1250 4350 50  0000 C CNN
F 1 "CONN_5" V 1350 4350 50  0000 C CNN
F 2 "" H 1300 4350 60  0000 C CNN
F 3 "" H 1300 4350 60  0000 C CNN
	1    1300 4350
	-1   0    0    -1  
$EndComp
$Comp
L CONN_5 P4
U 1 1 53973B8C
P 1300 5250
F 0 "P4" V 1250 5250 50  0000 C CNN
F 1 "CONN_5" V 1350 5250 50  0000 C CNN
F 2 "" H 1300 5250 60  0000 C CNN
F 3 "" H 1300 5250 60  0000 C CNN
	1    1300 5250
	-1   0    0    -1  
$EndComp
$Comp
L CONN_6 P5
U 1 1 53973DA3
P 1300 6250
F 0 "P5" V 1250 6250 60  0000 C CNN
F 1 "CONN_6" V 1350 6250 60  0000 C CNN
F 2 "" H 1300 6250 60  0000 C CNN
F 3 "" H 1300 6250 60  0000 C CNN
	1    1300 6250
	-1   0    0    -1  
$EndComp
Text Notes 1350 6700 2    60   ~ 0
RH
Text Notes 1450 5650 2    60   ~ 0
Octave
Text Notes 1250 4750 2    60   ~ 0
LH
Text Notes 1400 4000 2    60   ~ 0
Pin headers.
Text Label 1700 4150 0    60   ~ 0
Y4
Text Label 1700 5050 0    60   ~ 0
Y11
Text Label 1700 4250 0    60   ~ 0
Y2
Text Label 1700 5150 0    60   ~ 0
Y13
Text Label 1700 4350 0    60   ~ 0
Y14
Text Label 1700 5250 0    60   ~ 0
Y15
Text Label 1700 4450 0    60   ~ 0
Y12
Text Label 1700 5350 0    60   ~ 0
Y3
Text Label 1700 4550 0    60   ~ 0
Y10
Text Label 1700 5450 0    60   ~ 0
Y5
Text Label 1650 6000 0    60   ~ 0
Y0
Text Label 1650 6100 0    60   ~ 0
Y1
Text Label 1650 6200 0    60   ~ 0
Y9
Text Label 1650 6300 0    60   ~ 0
Y8
Text Label 1650 6400 0    60   ~ 0
Y7
Text Label 1650 6500 0    60   ~ 0
Y6
Text Label 3850 1850 2    60   ~ 0
Reset
$Comp
L CONN_5 SWD1
U 1 1 53989F52
P 10400 2000
F 0 "SWD1" V 10350 2000 50  0000 C CNN
F 1 "CONN_5" V 10450 2000 50  0000 C CNN
F 2 "" H 10400 2000 60  0000 C CNN
F 3 "" H 10400 2000 60  0000 C CNN
	1    10400 2000
	1    0    0    -1  
$EndComp
Text GLabel 9700 1050 1    60   Input ~ 0
VCC
$Comp
L R R1
U 1 1 53989FCC
P 9700 1400
F 0 "R1" V 9780 1400 40  0000 C CNN
F 1 "100k" V 9707 1401 40  0000 C CNN
F 2 "" V 9630 1400 30  0000 C CNN
F 3 "" H 9700 1400 30  0000 C CNN
	1    9700 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1050 9700 1150
Wire Wire Line
	9700 1650 9700 1800
Connection ~ 9700 1800
Text Label 10000 1800 1    60   ~ 0
Reset
Wire Wire Line
	9700 1800 10000 1800
Text Label 7550 4650 0    60   ~ 0
SWCLK
Text Label 7550 4750 0    60   ~ 0
SWDIO
Text Label 10000 1900 2    60   ~ 0
SWDIO
Text Label 10000 2000 2    60   ~ 0
SWCLK
$Comp
L GND #PWR06
U 1 1 5398A8C9
P 9700 2350
F 0 "#PWR06" H 9700 2350 30  0001 C CNN
F 1 "GND" H 9700 2280 30  0001 C CNN
F 2 "" H 9700 2350 60  0000 C CNN
F 3 "" H 9700 2350 60  0000 C CNN
	1    9700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 2350 9700 2200
Wire Wire Line
	9700 2200 10000 2200
Wire Wire Line
	10000 2100 9500 2100
Wire Wire Line
	9500 2100 9500 1150
Wire Wire Line
	9500 1150 9700 1150
Text GLabel 9700 2200 0    60   Input ~ 0
GND
Text Label 7550 2850 0    60   ~ 0
Vib
Text Label 7550 2950 0    60   ~ 0
Bth
Text GLabel 9400 2800 2    60   Input ~ 0
Vib
Text GLabel 9400 2950 2    60   Input ~ 0
Bth
$EndSCHEMATC
