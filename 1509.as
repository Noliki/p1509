opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 49521"

opt pagewidth 120

	opt pm

	processor	16F1509
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
indf1	equ	1
pc	equ	2
pcl	equ	2
status	equ	3
fsr0l	equ	4
fsr0h	equ	5
fsr1l	equ	6
fsr1h	equ	7
bsr	equ	8
wreg	equ	9
intcon	equ	11
c	equ	1
z	equ	0
pclath	equ	10
# 46 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
INDF0 equ 00h ;# 
# 65 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
INDF1 equ 01h ;# 
# 84 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PCL equ 02h ;# 
# 103 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
STATUS equ 03h ;# 
# 166 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
FSR0L equ 04h ;# 
# 185 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
FSR0H equ 05h ;# 
# 207 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
FSR1L equ 06h ;# 
# 226 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
FSR1H equ 07h ;# 
# 245 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
BSR equ 08h ;# 
# 296 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
WREG equ 09h ;# 
# 315 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PCLATH equ 0Ah ;# 
# 334 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
INTCON equ 0Bh ;# 
# 411 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PORTA equ 0Ch ;# 
# 460 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PORTB equ 0Dh ;# 
# 498 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PORTC equ 0Eh ;# 
# 559 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PIR1 equ 011h ;# 
# 615 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PIR2 equ 012h ;# 
# 660 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PIR3 equ 013h ;# 
# 697 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
TMR0 equ 015h ;# 
# 716 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
TMR1 equ 016h ;# 
# 722 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
TMR1L equ 016h ;# 
# 741 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
TMR1H equ 017h ;# 
# 760 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
T1CON equ 018h ;# 
# 831 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
T1GCON equ 019h ;# 
# 900 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
TMR2 equ 01Ah ;# 
# 919 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PR2 equ 01Bh ;# 
# 938 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
T2CON equ 01Ch ;# 
# 1008 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
TRISA equ 08Ch ;# 
# 1057 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
TRISB equ 08Dh ;# 
# 1095 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
TRISC equ 08Eh ;# 
# 1156 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PIE1 equ 091h ;# 
# 1212 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PIE2 equ 092h ;# 
# 1257 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PIE3 equ 093h ;# 
# 1294 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
OPTION_REG equ 095h ;# 
# 1376 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PCON equ 096h ;# 
# 1432 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
WDTCON equ 097h ;# 
# 1490 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
OSCCON equ 099h ;# 
# 1555 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
OSCSTAT equ 09Ah ;# 
# 1600 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
ADRES equ 09Bh ;# 
# 1606 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
ADRESL equ 09Bh ;# 
# 1625 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
ADRESH equ 09Ch ;# 
# 1644 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
ADCON0 equ 09Dh ;# 
# 1723 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
ADCON1 equ 09Eh ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
ADCON2 equ 09Fh ;# 
# 1816 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
LATA equ 010Ch ;# 
# 1860 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
LATB equ 010Dh ;# 
# 1898 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
LATC equ 010Eh ;# 
# 1959 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CM1CON0 equ 0111h ;# 
# 2015 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CM1CON1 equ 0112h ;# 
# 2086 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CM2CON0 equ 0113h ;# 
# 2142 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CM2CON1 equ 0114h ;# 
# 2213 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CMOUT equ 0115h ;# 
# 2238 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
BORCON equ 0116h ;# 
# 2270 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
FVRCON equ 0117h ;# 
# 2345 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
DACCON0 equ 0118h ;# 
# 2385 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
DACCON1 equ 0119h ;# 
# 2436 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
APFCON equ 011Dh ;# 
# 2482 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
ANSELA equ 018Ch ;# 
# 2528 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
ANSELB equ 018Dh ;# 
# 2563 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
ANSELC equ 018Eh ;# 
# 2621 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PMADR equ 0191h ;# 
# 2627 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PMADRL equ 0191h ;# 
# 2646 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PMADRH equ 0192h ;# 
# 2665 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PMDAT equ 0193h ;# 
# 2671 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PMDATL equ 0193h ;# 
# 2690 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PMDATH equ 0194h ;# 
# 2709 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PMCON1 equ 0195h ;# 
# 2770 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PMCON2 equ 0196h ;# 
# 2789 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
VREGCON equ 0197h ;# 
# 2809 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
RCREG equ 0199h ;# 
# 2828 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
TXREG equ 019Ah ;# 
# 2847 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
SPBRGL equ 019Bh ;# 
# 2866 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
SPBRGH equ 019Ch ;# 
# 2885 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
RCSTA equ 019Dh ;# 
# 2946 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
TXSTA equ 019Eh ;# 
# 3007 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
BAUDCON equ 019Fh ;# 
# 3058 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
WPUA equ 020Ch ;# 
# 3115 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
WPUB equ 020Dh ;# 
# 3162 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
SSP1BUF equ 0211h ;# 
# 3167 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
SSPBUF equ 0211h ;# 
# 3199 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
SSP1ADD equ 0212h ;# 
# 3204 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
SSPADD equ 0212h ;# 
# 3236 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
SSP1MSK equ 0213h ;# 
# 3241 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
SSPMSK equ 0213h ;# 
# 3273 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
SSP1STAT equ 0214h ;# 
# 3278 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
SSPSTAT equ 0214h ;# 
# 3394 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
SSP1CON1 equ 0215h ;# 
# 3399 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
SSPCON equ 0215h ;# 
# 3403 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
SSPCON1 equ 0215h ;# 
# 3597 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
SSP1CON2 equ 0216h ;# 
# 3602 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
SSPCON2 equ 0216h ;# 
# 3718 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
SSP1CON3 equ 0217h ;# 
# 3723 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
SSPCON3 equ 0217h ;# 
# 3839 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
IOCAP equ 0391h ;# 
# 3896 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
IOCAN equ 0392h ;# 
# 3953 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
IOCAF equ 0393h ;# 
# 4010 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
IOCBP equ 0394h ;# 
# 4057 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
IOCBN equ 0395h ;# 
# 4104 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
IOCBF equ 0396h ;# 
# 4153 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
NCO1ACC equ 0498h ;# 
# 4159 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
NCO1ACCL equ 0498h ;# 
# 4220 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
NCO1ACCH equ 0499h ;# 
# 4281 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
NCO1ACCU equ 049Ah ;# 
# 4318 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
NCO1INC equ 049Bh ;# 
# 4324 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
NCO1INCL equ 049Bh ;# 
# 4385 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
NCO1INCH equ 049Ch ;# 
# 4446 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
NCO1CON equ 049Eh ;# 
# 4490 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
NCO1CLK equ 049Fh ;# 
# 4549 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PWM1DCL equ 0611h ;# 
# 4584 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PWM1DCH equ 0612h ;# 
# 4653 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PWM1CON equ 0613h ;# 
# 4658 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PWM1CON0 equ 0613h ;# 
# 4728 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PWM2DCL equ 0614h ;# 
# 4763 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PWM2DCH equ 0615h ;# 
# 4832 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PWM2CON equ 0616h ;# 
# 4837 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PWM2CON0 equ 0616h ;# 
# 4907 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PWM3DCL equ 0617h ;# 
# 4942 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PWM3DCH equ 0618h ;# 
# 5011 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PWM3CON equ 0619h ;# 
# 5016 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PWM3CON0 equ 0619h ;# 
# 5086 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PWM4DCL equ 061Ah ;# 
# 5121 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PWM4DCH equ 061Bh ;# 
# 5190 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PWM4CON equ 061Ch ;# 
# 5195 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PWM4CON0 equ 061Ch ;# 
# 5265 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CWG1DBR equ 0691h ;# 
# 5322 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CWG1DBF equ 0692h ;# 
# 5379 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CWG1CON0 equ 0693h ;# 
# 5437 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CWG1CON1 equ 0694h ;# 
# 5513 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CWG1CON2 equ 0695h ;# 
# 5563 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLCDATA equ 0F0Fh ;# 
# 5600 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC1CON equ 0F10h ;# 
# 5719 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC1POL equ 0F11h ;# 
# 5796 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC1SEL0 equ 0F12h ;# 
# 5900 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC1SEL1 equ 0F13h ;# 
# 6004 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC1GLS0 equ 0F14h ;# 
# 6115 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC1GLS1 equ 0F15h ;# 
# 6226 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC1GLS2 equ 0F16h ;# 
# 6337 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC1GLS3 equ 0F17h ;# 
# 6448 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC2CON equ 0F18h ;# 
# 6567 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC2POL equ 0F19h ;# 
# 6644 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC2SEL0 equ 0F1Ah ;# 
# 6748 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC2SEL1 equ 0F1Bh ;# 
# 6852 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC2GLS0 equ 0F1Ch ;# 
# 6963 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC2GLS1 equ 0F1Dh ;# 
# 7074 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC2GLS2 equ 0F1Eh ;# 
# 7185 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC2GLS3 equ 0F1Fh ;# 
# 7296 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC3CON equ 0F20h ;# 
# 7415 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC3POL equ 0F21h ;# 
# 7492 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC3SEL0 equ 0F22h ;# 
# 7596 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC3SEL1 equ 0F23h ;# 
# 7700 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC3GLS0 equ 0F24h ;# 
# 7811 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC3GLS1 equ 0F25h ;# 
# 7922 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC3GLS2 equ 0F26h ;# 
# 8033 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC3GLS3 equ 0F27h ;# 
# 8144 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC4CON equ 0F28h ;# 
# 8263 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC4POL equ 0F29h ;# 
# 8340 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC4SEL0 equ 0F2Ah ;# 
# 8444 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC4SEL1 equ 0F2Bh ;# 
# 8548 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC4GLS0 equ 0F2Ch ;# 
# 8659 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC4GLS1 equ 0F2Dh ;# 
# 8770 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC4GLS2 equ 0F2Eh ;# 
# 8881 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
CLC4GLS3 equ 0F2Fh ;# 
# 8992 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
ICDIO equ 0F8Ch ;# 
# 9042 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
ICDCON0 equ 0F8Dh ;# 
# 9087 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
ICDSTAT equ 0F91h ;# 
# 9120 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
DEVSEL equ 0F95h ;# 
# 9151 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
ICDINSTL equ 0F96h ;# 
# 9212 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
ICDINSTH equ 0F97h ;# 
# 9261 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
ICDBK0CON equ 0F9Ch ;# 
# 9287 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
ICDBK0L equ 0F9Dh ;# 
# 9348 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
ICDBK0H equ 0F9Eh ;# 
# 9403 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
BSRICDSHAD equ 0FE3h ;# 
# 9422 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
STATUS_SHAD equ 0FE4h ;# 
# 9453 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
WREG_SHAD equ 0FE5h ;# 
# 9472 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
BSR_SHAD equ 0FE6h ;# 
# 9491 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
PCLATH_SHAD equ 0FE7h ;# 
# 9510 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
FSR0L_SHAD equ 0FE8h ;# 
# 9529 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
FSR0H_SHAD equ 0FE9h ;# 
# 9548 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
FSR1L_SHAD equ 0FEAh ;# 
# 9567 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
FSR1H_SHAD equ 0FEBh ;# 
# 9586 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
STKPTR equ 0FEDh ;# 
# 9605 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
TOSL equ 0FEEh ;# 
# 9624 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f1509.h"
TOSH equ 0FEFh ;# 
	FNCALL	_main,_ctime
	FNCALL	_ctime,_localtime
	FNCALL	_ctime,_asctime
	FNCALL	_localtime,_gmtime
	FNCALL	_gmtime,___almod
	FNCALL	_gmtime,___aldiv
	FNCALL	_gmtime,___awmod
	FNCALL	_gmtime,_dylen
	FNCALL	_dylen,___lwmod
	FNCALL	_asctime,___bmul
	FNCALL	_asctime,_put2d
	FNCALL	_asctime,___awdiv
	FNCALL	_asctime,___awmod
	FNCALL	_put2d,___lbmod
	FNCALL	_put2d,___lbdiv
	FNROOT	_main
	FNCALL	_isr,_term
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_moninit
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
	global    __stringtab
__stringtab:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"../../common/ctime.c"
	line	7
_moninit:
	retlw	01Fh
	retlw	01Ch
	retlw	01Fh
	retlw	01Eh
	retlw	01Fh
	retlw	01Eh
	retlw	01Fh
	retlw	01Fh
	retlw	01Eh
	retlw	01Fh
	retlw	01Eh
	retlw	01Fh
	global __end_of_moninit
__end_of_moninit:
	global	_moninit
	global	_t_active
	global	_st
	global	_txpos
	global	asctime@buf
	global	gmtime@tim
	global	_unixtime
	global	_rxbufer
	global	_txbufer
	global	_T1CON
_T1CON	set	0x18
	global	_TMR1H
_TMR1H	set	0x17
	global	_TMR1L
_TMR1L	set	0x16
	global	_ADIF
_ADIF	set	0x8E
	global	_CLC1IF
_CLC1IF	set	0x98
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_RCIF
_RCIF	set	0x8D
	global	_T0IE
_T0IE	set	0x5D
	global	_T0IF
_T0IF	set	0x5A
	global	_TMR1IF
_TMR1IF	set	0x88
	global	_TXIF
_TXIF	set	0x8C
	global	_ADCON0
_ADCON0	set	0x9D
	global	_ADCON1
_ADCON1	set	0x9E
	global	_TRISA
_TRISA	set	0x8C
	global	_TRISB
_TRISB	set	0x8D
	global	_TRISC
_TRISC	set	0x8E
	global	_CLC1IE
_CLC1IE	set	0x498
	global	_PS0
_PS0	set	0x4A8
	global	_PS1
_PS1	set	0x4A9
	global	_PS2
_PS2	set	0x4AA
	global	_PSA
_PSA	set	0x4AB
	global	_RCIE
_RCIE	set	0x48D
	global	_T0CS
_T0CS	set	0x4AD
	global	_TMR1IE
_TMR1IE	set	0x488
	global	_TXIE
_TXIE	set	0x48C
	global	_CM1CON0
_CM1CON0	set	0x111
	global	_FVRCON
_FVRCON	set	0x117
	global	_ANSELA
_ANSELA	set	0x18C
	global	_RCREG
_RCREG	set	0x199
	global	_SPBRGH
_SPBRGH	set	0x19C
	global	_SPBRGL
_SPBRGL	set	0x19B
	global	_TXREG
_TXREG	set	0x19A
	global	_BRG16
_BRG16	set	0xCFB
	global	_BRGH
_BRGH	set	0xCF2
	global	_CREN
_CREN	set	0xCEC
	global	_SPEN
_SPEN	set	0xCEF
	global	_SYNC
_SYNC	set	0xCF4
	global	_TXEN
_TXEN	set	0xCF5
	global __stringdata
__stringdata:
	
STR_2:	
	retlw	74	;'J'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	70	;'F'
	retlw	101	;'e'
	retlw	98	;'b'
	retlw	77	;'M'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	65	;'A'
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	77	;'M'
	retlw	97	;'a'
	retlw	121	;'y'
	retlw	74	;'J'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	74	;'J'
	retlw	117	;'u'
	retlw	108	;'l'
	retlw	65	;'A'
	retlw	117	;'u'
	retlw	103	;'g'
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	112	;'p'
	retlw	79	;'O'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	78	;'N'
	retlw	111	;'o'
	retlw	118	;'v'
	retlw	68	;'D'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	0
psect	strings
	
STR_1:	
	retlw	83	;'S'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	84	;'T'
	retlw	117	;'u'
	retlw	101	;'e'
	retlw	87	;'W'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	84	;'T'
	retlw	104	;'h'
	retlw	117	;'u'
	retlw	70	;'F'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	83	;'S'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	0
psect	strings
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
	file	"1509.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_t_active:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_st:
       ds      1

_txpos:
       ds      1

asctime@buf:
       ds      27

gmtime@tim:
       ds      18

_unixtime:
       ds      4

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_rxbufer:
       ds      30

_txbufer:
       ds      30

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR0 containing the base address, and
;	WREG with the size to clear
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	decfsz wreg		;Have we reached the end of clearing yet?
	goto clrloop	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbitbssCOMMON
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	033h
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK1
	movlw	low(__pbssBANK1)
	movwf	fsr0l
	movlw	high(__pbssBANK1)
	movwf	fsr0h
	movlw	03Ch
	fcall	clear_ram
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
?_term:	; 0 bytes @ 0x0
??_term:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_isr:	; 0 bytes @ 0x0
?_ctime:	; 1 bytes @ 0x0
?_gmtime:	; 1 bytes @ 0x0
?_localtime:	; 1 bytes @ 0x0
?_asctime:	; 1 bytes @ 0x0
	global	term@t
term@t:	; 1 bytes @ 0x0
	ds	1
??_isr:	; 0 bytes @ 0x1
	global	isr@bufer
isr@bufer:	; 1 bytes @ 0x1
	ds	1
	global	?___bmul
?___bmul:	; 1 bytes @ 0x2
	global	?___lbdiv
?___lbdiv:	; 1 bytes @ 0x2
	global	?___lbmod
?___lbmod:	; 1 bytes @ 0x2
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x2
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x2
	global	?___awmod
?___awmod:	; 2 bytes @ 0x2
	global	?___almod
?___almod:	; 4 bytes @ 0x2
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x2
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x2
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x2
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x2
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x2
	global	___almod@divisor
___almod@divisor:	; 4 bytes @ 0x2
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x2
	ds	1
??___bmul:	; 0 bytes @ 0x3
??___lbdiv:	; 0 bytes @ 0x3
??___lbmod:	; 0 bytes @ 0x3
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x3
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x3
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x4
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x4
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x4
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x4
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x4
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x4
	ds	1
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x5
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x5
	ds	1
??___lwmod:	; 0 bytes @ 0x6
??___awdiv:	; 0 bytes @ 0x6
??___awmod:	; 0 bytes @ 0x6
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x6
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x6
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x6
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x6
	global	___almod@dividend
___almod@dividend:	; 4 bytes @ 0x6
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x6
	ds	1
	global	?_dylen
?_dylen:	; 2 bytes @ 0x7
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x7
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x7
	global	dylen@yr
dylen@yr:	; 2 bytes @ 0x7
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x8
	ds	1
??_dylen:	; 0 bytes @ 0x9
	ds	1
??_gmtime:	; 0 bytes @ 0xA
??_put2d:	; 0 bytes @ 0xA
??___almod:	; 0 bytes @ 0xA
??___aldiv:	; 0 bytes @ 0xA
	global	put2d@cp
put2d@cp:	; 1 bytes @ 0xA
	ds	1
??_ctime:	; 0 bytes @ 0xB
??_main:	; 0 bytes @ 0xB
??_localtime:	; 0 bytes @ 0xB
??_asctime:	; 0 bytes @ 0xB
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_put2d
?_put2d:	; 2 bytes @ 0x0
	global	put2d@i
put2d@i:	; 1 bytes @ 0x0
	global	___almod@counter
___almod@counter:	; 1 bytes @ 0x0
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x0
	ds	1
	global	put2d@cl
put2d@cl:	; 1 bytes @ 0x1
	global	___almod@sign
___almod@sign:	; 1 bytes @ 0x1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x1
	ds	1
	global	put2d@ct
put2d@ct:	; 1 bytes @ 0x2
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x2
	ds	1
	global	asctime@s
asctime@s:	; 1 bytes @ 0x3
	ds	1
	global	asctime@tim
asctime@tim:	; 1 bytes @ 0x4
	ds	1
	global	asctime@cp
asctime@cp:	; 1 bytes @ 0x5
	ds	1
	global	gmtime@tp
gmtime@tp:	; 1 bytes @ 0x6
	ds	1
	global	gmtime@tc
gmtime@tc:	; 4 bytes @ 0x7
	ds	4
	global	localtime@tp
localtime@tp:	; 1 bytes @ 0xB
	ds	1
	global	localtime@t
localtime@t:	; 4 bytes @ 0xC
	ds	4
	global	ctime@tp
ctime@tp:	; 1 bytes @ 0x10
	ds	1
;!
;!Data Sizes:
;!    Strings     59
;!    Constant    12
;!    Data        0
;!    BSS         111
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     11      12
;!    BANK0            80     17      68
;!    BANK1            80      0      60
;!    BANK2            80      0       0
;!    BANK3            80      0       0
;!    BANK4            80      0       0
;!    BANK5            80      0       0
;!    BANK6            16      0       0

;!
;!Pointer List with Targets:
;!
;!    ?_asctime	PTR unsigned char  size(1) Largest target is 27
;!		 -> asctime@buf(BANK0[27]), 
;!
;!    ?___awdiv	int  size(1) Largest target is 0
;!
;!    ?___awmod	int  size(1) Largest target is 0
;!
;!    ?___aldiv	long  size(1) Largest target is 0
;!
;!    ?___almod	long  size(1) Largest target is 0
;!
;!    ?_localtime	PTR struct tm size(1) Largest target is 18
;!		 -> gmtime@tim(BANK0[18]), 
;!
;!    ?_gmtime	PTR struct tm size(1) Largest target is 18
;!		 -> gmtime@tim(BANK0[18]), 
;!
;!    ?___lwmod	unsigned int  size(1) Largest target is 0
;!
;!    ?_ctime	PTR unsigned char  size(1) Largest target is 27
;!		 -> asctime@buf(BANK0[27]), 
;!
;!    ctime@tp	PTR const long  size(1) Largest target is 4
;!		 -> unixtime(BANK0[4]), 
;!
;!    sp__asctime	PTR unsigned char  size(1) Largest target is 27
;!		 -> asctime@buf(BANK0[27]), 
;!
;!    asctime@cp	PTR unsigned char  size(1) Largest target is 27
;!		 -> asctime@buf(BANK0[27]), 
;!
;!    asctime@tim	PTR const struct tm size(1) Largest target is 18
;!		 -> gmtime@tim(BANK0[18]), 
;!
;!    asctime@s	PTR const unsigned char  size(1) Largest target is 37
;!		 -> STR_2(CODE[37]), STR_1(CODE[22]), 
;!
;!    gmtime@tp	PTR const long  size(1) Largest target is 4
;!		 -> localtime@t(BANK0[4]), 
;!
;!    sp__localtime	PTR struct tm size(1) Largest target is 18
;!		 -> gmtime@tim(BANK0[18]), 
;!
;!    sp__gmtime	PTR struct tm size(1) Largest target is 18
;!		 -> gmtime@tim(BANK0[18]), 
;!
;!    localtime@tp	PTR const long  size(1) Largest target is 4
;!		 -> unixtime(BANK0[4]), 
;!
;!    put2d@cp	PTR unsigned char  size(1) Largest target is 27
;!		 -> asctime@buf(BANK0[27]), 
;!
;!    sp__ctime	PTR unsigned char  size(1) Largest target is 27
;!		 -> asctime@buf(BANK0[27]), 
;!
;!    utime	PTR unsigned char  size(1) Largest target is 27
;!		 -> NULL(NULL[0]), asctime@buf(BANK0[27]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _localtime->_gmtime
;!    _gmtime->___almod
;!    _gmtime->___aldiv
;!    _dylen->___lwmod
;!    _asctime->_put2d
;!    _put2d->___awdiv
;!
;!Critical Paths under _isr in COMMON
;!
;!    _isr->_term
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_ctime
;!    _ctime->_localtime
;!    _localtime->_gmtime
;!    _gmtime->___aldiv
;!    _asctime->_put2d
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _isr in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _isr in BANK6
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0    3373
;!                              _ctime
;! ---------------------------------------------------------------------------------
;! (1) _ctime                                                1     1      0    3373
;!                                             16 BANK0      1     1      0
;!                          _localtime
;!                            _asctime
;! ---------------------------------------------------------------------------------
;! (2) _localtime                                            5     5      0    1659
;!                                             11 BANK0      5     5      0
;!                             _gmtime
;! ---------------------------------------------------------------------------------
;! (3) _gmtime                                               6     6      0    1591
;!                                             10 COMMON     1     1      0
;!                                              6 BANK0      5     5      0
;!                            ___almod
;!                            ___aldiv
;!                            ___awmod
;!                              _dylen
;! ---------------------------------------------------------------------------------
;! (4) _dylen                                                2     0      2     225
;!                                              7 COMMON     2     0      2
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (2) _asctime                                              3     3      0    1683
;!                                              3 BANK0      3     3      0
;!                             ___bmul
;!                              _put2d
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (3) _put2d                                                4     1      3     520
;!                                             10 COMMON     1     1      0
;!                                              0 BANK0      3     0      3
;!                            ___lbmod
;!                            ___lbdiv
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___bmul                                               3     2      1      92
;!                                              2 COMMON     3     2      1
;! ---------------------------------------------------------------------------------
;! (5) ___lwmod                                              5     1      4     159
;!                                              2 COMMON     5     1      4
;! ---------------------------------------------------------------------------------
;! (4) ___lbdiv                                              4     3      1     162
;!                                              2 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (4) ___lbmod                                              5     4      1     159
;!                                              2 COMMON     5     4      1
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              8     4      4     300
;!                                              2 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (4) ___almod                                             10     2      8     433
;!                                              2 COMMON     8     0      8
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (4) ___aldiv                                             14     6      8     300
;!                                              2 COMMON     8     0      8
;!                                              0 BANK0      6     6      0
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              6     2      4     296
;!                                              2 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (6) _isr                                                  1     1      0      67
;!                                              1 COMMON     1     1      0
;!                               _term
;! ---------------------------------------------------------------------------------
;! (7) _term                                                 1     1      0      44
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _ctime
;!     _localtime
;!       _gmtime
;!         ___almod
;!         ___aldiv
;!         ___awmod
;!         _dylen
;!           ___lwmod
;!     _asctime
;!       ___bmul
;!       _put2d
;!         ___lbmod
;!         ___lbdiv
;!         ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awdiv
;!       ___awmod
;!
;! _isr (ROOT)
;!   _term
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             1F0      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       1       1        7.1%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      B       C       2       85.7%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       9       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0      8C       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BANK0               50     11      44       6       85.0%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BITBANK1            50      0       0       7        0.0%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BANK1               50      0      3C       8       75.0%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BITBANK2            50      0       0       9        0.0%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BANK2               50      0       0      10        0.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BITBANK3            50      0       0      11        0.0%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!BANK3               50      0       0      12        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BITBANK4            50      0       0      13        0.0%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BANK4               50      0       0      14        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!BITBANK5            50      0       0      15        0.0%
;!BITSFR14             0      0       0      15        0.0%
;!SFR14                0      0       0      15        0.0%
;!BANK5               50      0       0      16        0.0%
;!BITSFR15             0      0       0      16        0.0%
;!SFR15                0      0       0      16        0.0%
;!BITBANK6            10      0       0      17        0.0%
;!BITSFR16             0      0       0      17        0.0%
;!SFR16                0      0       0      17        0.0%
;!BANK6               10      0       0      18        0.0%
;!BITSFR17             0      0       0      18        0.0%
;!SFR17                0      0       0      18        0.0%
;!BITSFR18             0      0       0      19        0.0%
;!SFR18                0      0       0      19        0.0%
;!DATA                 0      0      95      19        0.0%
;!BITSFR19             0      0       0      20        0.0%
;!SFR19                0      0       0      20        0.0%
;!BITSFR20             0      0       0      21        0.0%
;!SFR20                0      0       0      21        0.0%
;!BITSFR21             0      0       0      22        0.0%
;!SFR21                0      0       0      22        0.0%
;!BITSFR22             0      0       0      23        0.0%
;!SFR22                0      0       0      23        0.0%
;!BITSFR23             0      0       0      24        0.0%
;!SFR23                0      0       0      24        0.0%
;!BITSFR24             0      0       0      25        0.0%
;!SFR24                0      0       0      25        0.0%
;!BITSFR25             0      0       0      26        0.0%
;!SFR25                0      0       0      26        0.0%
;!BITSFR26             0      0       0      27        0.0%
;!SFR26                0      0       0      27        0.0%
;!BITSFR27             0      0       0      28        0.0%
;!SFR27                0      0       0      28        0.0%
;!BITSFR28             0      0       0      29        0.0%
;!SFR28                0      0       0      29        0.0%
;!BITSFR29             0      0       0      30        0.0%
;!SFR29                0      0       0      30        0.0%
;!BITSFR30             0      0       0      31        0.0%
;!SFR30                0      0       0      31        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 52 in file "D:\_creatiff\_Projects\pic16f1509\fw\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ptr             2    0        PTR unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_ctime
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\_creatiff\_Projects\pic16f1509\fw\main.c"
	line	52
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 9
; Regs used in _main: [allreg]
	line	57
	
l1891:	
;main.c: 57: ANSELA = 0x00;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	58
;main.c: 58: CM1CON0 = 0x00;
	movlb 2	; select bank2
	clrf	(273)^0100h	;volatile
	line	60
;main.c: 60: TRISA=0;
	movlb 1	; select bank1
	clrf	(140)^080h	;volatile
	line	61
;main.c: 61: TRISC=0;
	clrf	(142)^080h	;volatile
	line	62
	
l1893:	
;main.c: 62: TRISB=0b00100000;
	movlw	(020h)
	movwf	(141)^080h	;volatile
	line	66
	
l1895:	
;main.c: 66: FVRCON=0xF3;
	movlw	(0F3h)
	movlb 2	; select bank2
	movwf	(279)^0100h	;volatile
	line	67
	
l1897:	
;main.c: 67: ADCON1=0b10000000;
	movlw	(080h)
	movlb 1	; select bank1
	movwf	(158)^080h	;volatile
	line	68
	
l1899:	
;main.c: 68: ADCON0=0b01110101;
	movlw	(075h)
	movwf	(157)^080h	;volatile
	line	71
	
l1901:	
;main.c: 71: T0CS=0;
	bcf	(1197/8)^080h,(1197)&7	;volatile
	line	73
	
l1903:	
;main.c: 73: PSA=1;
	bsf	(1195/8)^080h,(1195)&7	;volatile
	line	74
	
l1905:	
;main.c: 74: PS0=0;
	bcf	(1192/8)^080h,(1192)&7	;volatile
	line	75
	
l1907:	
;main.c: 75: PS1=0;
	bcf	(1193/8)^080h,(1193)&7	;volatile
	line	76
	
l1909:	
;main.c: 76: PS2=0;
	bcf	(1194/8)^080h,(1194)&7	;volatile
	line	78
	
l1911:	
;main.c: 78: T0IE=1;
	bsf	(93/8),(93)&7	;volatile
	line	81
	
l1913:	
;main.c: 81: T1CON=0b10001001;
	movlw	(089h)
	movlb 0	; select bank0
	movwf	(24)	;volatile
	line	82
	
l1915:	
;main.c: 82: TMR1IE=1;
	movlb 1	; select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	86
	
l1917:	
;main.c: 86: for(txpos=0;txpos++;txpos<30)
	movlb 0	; select bank0
	clrf	(_txpos)
	goto	l1921
	line	88
	
l1919:	
;main.c: 87: {
;main.c: 88: txbufer[txpos]='\0';
	movf	(_txpos),w
	addlw	_txbufer&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	89
;main.c: 89: rxbufer[txpos]='\0';
	movf	(_txpos),w
	addlw	_rxbufer&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	86
	
l1921:	
	incf	(_txpos),f
	decf	((_txpos)),w
	skipz
	goto	u1191
	goto	u1190
u1191:
	goto	l1919
u1190:
	
l107:	
	line	91
;main.c: 90: }
;main.c: 91: CREN=1;
	movlb 3	; select bank3
	bsf	(3308/8)^0180h,(3308)&7	;volatile
	line	92
;main.c: 92: TXEN=1;
	bsf	(3317/8)^0180h,(3317)&7	;volatile
	line	93
;main.c: 93: SYNC=0;
	bcf	(3316/8)^0180h,(3316)&7	;volatile
	line	94
;main.c: 94: BRG16=1;
	bsf	(3323/8)^0180h,(3323)&7	;volatile
	line	95
;main.c: 95: SPEN=1;
	bsf	(3311/8)^0180h,(3311)&7	;volatile
	line	96
;main.c: 96: BRGH=1;
	bsf	(3314/8)^0180h,(3314)&7	;volatile
	line	97
	
l1923:	
;main.c: 97: SPBRGH=0x01;
	movlw	(01h)
	movwf	(412)^0180h	;volatile
	line	98
;main.c: 98: SPBRGL=0xA0;
	movlw	(0A0h)
	movwf	(411)^0180h	;volatile
	line	99
	
l1925:	
;main.c: 99: RCIE=1;
	movlb 1	; select bank1
	bsf	(1165/8)^080h,(1165)&7	;volatile
	line	100
	
l1927:	
;main.c: 100: TXIE=1;
	bsf	(1164/8)^080h,(1164)&7	;volatile
	line	102
	
l1929:	
;main.c: 102: utime=ctime(&unixtime);
	movlw	(_unixtime)&0ffh
	fcall	_ctime
	line	109
	
l1931:	
;main.c: 109: CLC1IF = 0;
	bcf	(152/8),(152)&7	;volatile
	line	110
	
l1933:	
;main.c: 110: CLC1IE = 0;
	movlb 1	; select bank1
	bcf	(1176/8)^080h,(1176)&7	;volatile
	line	113
	
l1935:	
;main.c: 113: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	114
	
l1937:	
;main.c: 114: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	117
	
l1939:	
;main.c: 117: st=0;
	movlb 0	; select bank0
	clrf	(_st)
	goto	l1947
	line	124
;main.c: 123: {
;main.c: 124: case 0:
	
l110:	
	line	125
;main.c: 125: t_active=1;
	bsf	(_t_active/8),(_t_active)&7
	line	127
	
l1941:	
;main.c: 127: utime=ctime(&unixtime);
	movlw	(_unixtime)&0ffh
	fcall	_ctime
	line	129
	
l1943:	
;main.c: 129: t_active=0;
	bcf	(_t_active/8),(_t_active)&7
	line	132
;main.c: 132: break;
	goto	l1947
	line	122
	
l109:	
	
l1947:	
	movf	(_st),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           14     6 (fixed)
; jumptable            260     6 (fixed)
; rangetable             8     4 (fixed)
; spacedrange           13     6 (fixed)
; locatedrange           4     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l110
	xorlw	1^0	; case 1
	skipnz
	goto	l109
	xorlw	2^1	; case 2
	skipnz
	goto	l109
	xorlw	3^2	; case 3
	skipnz
	goto	l109
	goto	l1947
	opt asmopt_on

	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	148
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_ctime

;; *************** function _ctime *****************
;; Defined at:
;;		line 104 in file "../../common/ctime.c"
;; Parameters:    Size  Location     Type
;;  tp              1    wreg     PTR const long 
;;		 -> unixtime(4), 
;; Auto vars:     Size  Location     Type
;;  tp              1   16[BANK0 ] PTR const long 
;;		 -> unixtime(4), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 1E/1
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_localtime
;;		_asctime
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text389,local,class=CODE,delta=2,merge=1
global __ptext389
__ptext389:	;psect for function _ctime
psect	text389
	file	"C:\Program Files (x86)\Microchip\xc8\v1.12\sources\ctime.c"
	line	104
	global	__size_of_ctime
	__size_of_ctime	equ	__end_of_ctime-_ctime
	
_ctime:	
	opt	stack 9
; Regs used in _ctime: [allreg]
;ctime@tp stored from wreg
	movlb 0	; select bank0
	movwf	(ctime@tp)
	line	105
	
l1949:	
	movf	(ctime@tp),w
	fcall	_localtime
	fcall	_asctime
	line	106
	
l178:	
	return
	opt stack 0
GLOBAL	__end_of_ctime
	__end_of_ctime:
	signat	_ctime,4217
	global	_localtime

;; *************** function _localtime *****************
;; Defined at:
;;		line 31 in file "../../common/ctime.c"
;; Parameters:    Size  Location     Type
;;  tp              1    wreg     PTR const long 
;;		 -> unixtime(4), 
;; Auto vars:     Size  Location     Type
;;  tp              1   11[BANK0 ] PTR const long 
;;		 -> unixtime(4), 
;;  t               4   12[BANK0 ] long 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR struct tm
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       5       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_gmtime
;; This function is called by:
;;		_ctime
;; This function uses a non-reentrant model
;;
psect	text390,local,class=CODE,delta=2,merge=1
global __ptext390
__ptext390:	;psect for function _localtime
psect	text390
	file	"C:\Program Files (x86)\Microchip\xc8\v1.12\sources\ctime.c"
	line	31
	global	__size_of_localtime
	__size_of_localtime	equ	__end_of_localtime-_localtime
	
_localtime:	
	opt	stack 9
; Regs used in _localtime: [wreg+fsr1l-status,0+pclath+cstack]
;localtime@tp stored from wreg
	line	34
	movwf	(localtime@tp)
	
l1953:	
	movf	(localtime@tp),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(localtime@t)
	moviw	[1]fsr1
	movwf	(localtime@t+1)
	moviw	[2]fsr1
	movwf	(localtime@t+2)
	moviw	[3]fsr1
	movwf	(localtime@t+3)
	line	35
	
l1955:	
	movlw	(localtime@t)&0ffh
	fcall	_gmtime
	line	36
	
l159:	
	return
	opt stack 0
GLOBAL	__end_of_localtime
	__end_of_localtime:
	signat	_localtime,4217
	global	_gmtime

;; *************** function _gmtime *****************
;; Defined at:
;;		line 40 in file "../../common/ctime.c"
;; Parameters:    Size  Location     Type
;;  tp              1    wreg     PTR const long 
;;		 -> localtime@t(4), 
;; Auto vars:     Size  Location     Type
;;  tp              1    6[BANK0 ] PTR const long 
;;		 -> localtime@t(4), 
;;  tc              4    7[BANK0 ] struct .
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR struct tm
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       5       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       5       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___almod
;;		___aldiv
;;		___awmod
;;		_dylen
;; This function is called by:
;;		_localtime
;; This function uses a non-reentrant model
;;
psect	text391,local,class=CODE,delta=2,merge=1
global __ptext391
__ptext391:	;psect for function _gmtime
psect	text391
	file	"C:\Program Files (x86)\Microchip\xc8\v1.12\sources\ctime.c"
	line	40
	global	__size_of_gmtime
	__size_of_gmtime	equ	__end_of_gmtime-_gmtime
	
_gmtime:	
	opt	stack 9
; Regs used in _gmtime: [wreg+fsr1l-status,0+pclath+cstack]
;gmtime@tp stored from wreg
	line	49
	movwf	(gmtime@tp)
	
l1959:	
	movf	(gmtime@tp),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(gmtime@tc)
	moviw	[1]fsr1
	movwf	(gmtime@tc+1)
	moviw	[2]fsr1
	movwf	(gmtime@tc+2)
	moviw	[3]fsr1
	movwf	(gmtime@tc+3)
	line	50
	
l1961:	
	movlw	03Ch
	movwf	(?___almod)
	clrf	(?___almod+1)
	clrf	(?___almod+2)
	clrf	(?___almod+3)

	movf	(gmtime@tc+3),w
	movwf	3+(?___almod)+04h
	movf	(gmtime@tc+2),w
	movwf	2+(?___almod)+04h
	movf	(gmtime@tc+1),w
	movwf	1+(?___almod)+04h
	movf	(gmtime@tc),w
	movwf	0+(?___almod)+04h

	fcall	___almod
	movf	1+(((0+(?___almod)))),w
	movwf	(gmtime@tim+1)
	movf	0+(((0+(?___almod)))),w
	movwf	(gmtime@tim)
	line	51
	
l1963:	
	movlw	03Ch
	movwf	(?___aldiv)
	clrf	(?___aldiv+1)
	clrf	(?___aldiv+2)
	clrf	(?___aldiv+3)

	movf	(gmtime@tc+3),w
	movwf	3+(?___aldiv)+04h
	movf	(gmtime@tc+2),w
	movwf	2+(?___aldiv)+04h
	movf	(gmtime@tc+1),w
	movwf	1+(?___aldiv)+04h
	movf	(gmtime@tc),w
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	movf	(3+(?___aldiv)),w
	movwf	(gmtime@tc+3)
	movf	(2+(?___aldiv)),w
	movwf	(gmtime@tc+2)
	movf	(1+(?___aldiv)),w
	movwf	(gmtime@tc+1)
	movf	(0+(?___aldiv)),w
	movwf	(gmtime@tc)

	line	52
	
l1965:	
	movlw	03Ch
	movwf	(?___almod)
	clrf	(?___almod+1)
	clrf	(?___almod+2)
	clrf	(?___almod+3)

	movf	(gmtime@tc+3),w
	movwf	3+(?___almod)+04h
	movf	(gmtime@tc+2),w
	movwf	2+(?___almod)+04h
	movf	(gmtime@tc+1),w
	movwf	1+(?___almod)+04h
	movf	(gmtime@tc),w
	movwf	0+(?___almod)+04h

	fcall	___almod
	movf	1+(((0+(?___almod)))),w
	movwf	1+(gmtime@tim)+02h
	movf	0+(((0+(?___almod)))),w
	movwf	0+(gmtime@tim)+02h
	line	53
	
l1967:	
	movlw	03Ch
	movwf	(?___aldiv)
	clrf	(?___aldiv+1)
	clrf	(?___aldiv+2)
	clrf	(?___aldiv+3)

	movf	(gmtime@tc+3),w
	movwf	3+(?___aldiv)+04h
	movf	(gmtime@tc+2),w
	movwf	2+(?___aldiv)+04h
	movf	(gmtime@tc+1),w
	movwf	1+(?___aldiv)+04h
	movf	(gmtime@tc),w
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	movf	(3+(?___aldiv)),w
	movwf	(gmtime@tc+3)
	movf	(2+(?___aldiv)),w
	movwf	(gmtime@tc+2)
	movf	(1+(?___aldiv)),w
	movwf	(gmtime@tc+1)
	movf	(0+(?___aldiv)),w
	movwf	(gmtime@tc)

	line	54
	
l1969:	
	movlw	018h
	movwf	(?___almod)
	clrf	(?___almod+1)
	clrf	(?___almod+2)
	clrf	(?___almod+3)

	movf	(gmtime@tc+3),w
	movwf	3+(?___almod)+04h
	movf	(gmtime@tc+2),w
	movwf	2+(?___almod)+04h
	movf	(gmtime@tc+1),w
	movwf	1+(?___almod)+04h
	movf	(gmtime@tc),w
	movwf	0+(?___almod)+04h

	fcall	___almod
	movf	1+(((0+(?___almod)))),w
	movwf	1+(gmtime@tim)+04h
	movf	0+(((0+(?___almod)))),w
	movwf	0+(gmtime@tim)+04h
	line	55
	
l1971:	
	movlw	018h
	movwf	(?___aldiv)
	clrf	(?___aldiv+1)
	clrf	(?___aldiv+2)
	clrf	(?___aldiv+3)

	movf	(gmtime@tc+3),w
	movwf	3+(?___aldiv)+04h
	movf	(gmtime@tc+2),w
	movwf	2+(?___aldiv)+04h
	movf	(gmtime@tc+1),w
	movwf	1+(?___aldiv)+04h
	movf	(gmtime@tc),w
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	movf	1+(((0+(?___aldiv)))),w
	movwf	1+(gmtime@tim)+06h
	movf	0+(((0+(?___aldiv)))),w
	movwf	0+(gmtime@tim)+06h
	line	56
	
l1973:	
	movlw	07h
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	0+(gmtime@tim)+06h,w
	addlw	low(04h)
	movwf	0+(?___awmod)+02h
	movlw	high(04h)
	addwfc	1+(gmtime@tim)+06h,w
	movwf	1+0+(?___awmod)+02h
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	1+(gmtime@tim)+0Ch
	movf	(0+(?___awmod)),w
	movwf	0+(gmtime@tim)+0Ch
	line	57
	
l1975:	
	movlw	046h
	movwf	0+(gmtime@tim)+0Ah
	clrf	1+(gmtime@tim)+0Ah
	line	58
	goto	l1981
	line	59
	
l1977:	
	movlb 0	; select bank0
	movf	1+(gmtime@tim)+0Ah,w
	movwf	(?_dylen+1)
	movf	0+(gmtime@tim)+0Ah,w
	movwf	(?_dylen)
	fcall	_dylen
	movf	(0+(?_dylen)),w
	subwf	0+(gmtime@tim)+06h,f
	movf	(1+(?_dylen)),w
	subwfb	1+(gmtime@tim)+06h,f
	line	60
	
l1979:	
	incf	0+(gmtime@tim)+0Ah,f
	skipnz
	incf	1+(gmtime@tim)+0Ah,f
	line	58
	
l1981:	
	movf	1+(gmtime@tim)+0Ah,w
	movwf	(?_dylen+1)
	movf	0+(gmtime@tim)+0Ah,w
	movwf	(?_dylen)
	fcall	_dylen
	movf	1+(gmtime@tim)+06h,w
	xorlw	80h
	movwf	(??_gmtime+0)+0
	movf	(1+(?_dylen)),w
	xorlw	80h
	subwf	(??_gmtime+0)+0,w
	skipz
	goto	u1205
	movf	(0+(?_dylen)),w
	subwf	0+(gmtime@tim)+06h,w
u1205:

	skipnc
	goto	u1201
	goto	u1200
u1201:
	goto	l1977
u1200:
	line	63
	
l1983:	
	movlb 0	; select bank0
	movf	1+(gmtime@tim)+0Ah,w
	movwf	(?_dylen+1)
	movf	0+(gmtime@tim)+0Ah,w
	movwf	(?_dylen)
	fcall	_dylen
	movf	(0+(?_dylen)),w
	movwf	(gmtime@tc)
	
l1985:	
	movlw	(02h)
	andwf	(gmtime@tc),f
	line	64
	
l1987:	
	movf	1+(gmtime@tim)+06h,w
	movwf	1+(gmtime@tim)+0Eh
	movf	0+(gmtime@tim)+06h,w
	movwf	0+(gmtime@tim)+0Eh
	line	65
	
l1989:	
	clrf	0+(gmtime@tim)+08h
	clrf	1+(gmtime@tim)+08h
	line	66
	goto	l167
	line	67
	
l1991:	
	movlb 0	; select bank0
	movf	0+(gmtime@tc)+01h,w
	subwf	0+(gmtime@tim)+06h,f
	skipc
	decf	1+(gmtime@tim)+06h,f
	line	68
	
l1993:	
	incf	0+(gmtime@tim)+08h,f
	skipnz
	incf	1+(gmtime@tim)+08h,f
	line	69
	
l1995:	
	lsrf	(gmtime@tc),f
	line	70
	
l167:	
	line	66
	movf	0+(gmtime@tim)+08h,w
	addlw	low(_moninit|8000h)
	movlp	high __stringtab
	callw
	pagesel	$ ;select current page
	iorwf	(gmtime@tc),w
	movwf	0+(gmtime@tc)+01h
	movf	1+(gmtime@tim)+06h,w
	xorlw	80h
	movwf	(??_gmtime+0)+0
	movlw	80h
	subwf	(??_gmtime+0)+0,w
	skipz
	goto	u1215
	movf	(0+(gmtime@tc)+01h),w
	subwf	0+(gmtime@tim)+06h,w
u1215:

	skipnc
	goto	u1211
	goto	u1210
u1211:
	goto	l1991
u1210:
	line	71
	
l1997:	
	movlb 0	; select bank0
	incf	0+(gmtime@tim)+06h,f
	skipnz
	incf	1+(gmtime@tim)+06h,f
	line	72
	
l1999:	
	movlw	(gmtime@tim)&0ffh
	line	73
	
l170:	
	return
	opt stack 0
GLOBAL	__end_of_gmtime
	__end_of_gmtime:
	signat	_gmtime,4217
	global	_dylen

;; *************** function _dylen *****************
;; Defined at:
;;		line 23 in file "../../common/ctime.c"
;; Parameters:    Size  Location     Type
;;  yr              2    7[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         2       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwmod
;; This function is called by:
;;		_gmtime
;; This function uses a non-reentrant model
;;
psect	text392,local,class=CODE,delta=2,merge=1
global __ptext392
__ptext392:	;psect for function _dylen
psect	text392
	file	"C:\Program Files (x86)\Microchip\xc8\v1.12\sources\ctime.c"
	line	23
	global	__size_of_dylen
	__size_of_dylen	equ	__end_of_dylen-_dylen
	
_dylen:	
	opt	stack 9
; Regs used in _dylen: [wreg+status,2+status,0+pclath+cstack]
	line	24
	
l1467:	
	movf	(dylen@yr),w
	andlw	03h
	btfss	status,2
	goto	u621
	goto	u620
u621:
	goto	l1473
u620:
	
l1469:	
	movlw	064h
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movf	(dylen@yr+1),w
	movwf	1+(?___lwmod)+02h
	movf	(dylen@yr),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	((1+(?___lwmod))),w
	iorwf	((0+(?___lwmod))),w
	skipz
	goto	u631
	goto	u630
u631:
	goto	l1477
u630:
	
l1471:	
	movlw	low(0190h)
	movwf	(?___lwmod)
	movlw	high(0190h)
	movwf	((?___lwmod))+1
	movf	(dylen@yr),w
	addlw	low(012Ch)
	movwf	0+(?___lwmod)+02h
	movlw	high(012Ch)
	addwfc	(dylen@yr+1),w
	movwf	1+0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	iorwf	(0+(?___lwmod)),w
	skipnz
	goto	u641
	goto	u640
u641:
	goto	l1477
u640:
	line	25
	
l1473:	
	movlw	low(016Dh)
	movwf	(?_dylen)
	movlw	high(016Dh)
	movwf	((?_dylen))+1
	goto	l156
	line	26
	
l1477:	
	movlw	low(016Eh)
	movwf	(?_dylen)
	movlw	high(016Eh)
	movwf	((?_dylen))+1
	line	27
	
l156:	
	return
	opt stack 0
GLOBAL	__end_of_dylen
	__end_of_dylen:
	signat	_dylen,4218
	global	_asctime

;; *************** function _asctime *****************
;; Defined at:
;;		line 77 in file "../../common/ctime.c"
;; Parameters:    Size  Location     Type
;;  tim             1    wreg     PTR const struct tm
;;		 -> gmtime@tim(18), 
;; Auto vars:     Size  Location     Type
;;  tim             1    4[BANK0 ] PTR const struct tm
;;		 -> gmtime@tim(18), 
;;  cp              1    5[BANK0 ] PTR unsigned char 
;;		 -> asctime@buf(27), 
;;  s               1    3[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(37), STR_1(22), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___bmul
;;		_put2d
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_ctime
;; This function uses a non-reentrant model
;;
psect	text393,local,class=CODE,delta=2,merge=1
global __ptext393
__ptext393:	;psect for function _asctime
psect	text393
	file	"C:\Program Files (x86)\Microchip\xc8\v1.12\sources\ctime.c"
	line	77
	global	__size_of_asctime
	__size_of_asctime	equ	__end_of_asctime-_asctime
	
_asctime:	
	opt	stack 10
; Regs used in _asctime: [wreg+fsr1l-status,0+pclath+cstack]
;asctime@tim stored from wreg
	line	82
	movwf	(asctime@tim)
	
l1531:	
	movlw	(03h)
	movwf	(?___bmul)
	movf	(asctime@tim),w
	addlw	0Ch
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	fcall	___bmul
	addlw	low(STR_1|8000h)
	movwf	(asctime@s)
	line	83
	
l1533:	
	movlw	(asctime@buf)&0ffh
	movwf	(asctime@cp)
	line	84
	
l1535:	
	movf	(asctime@cp),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(asctime@s),w
	movlp	high __stringtab
	callw
	pagesel	$ ;select current page
	movwf	indf1
	
l1537:	
	incf	(asctime@s),f
	
l1539:	
	incf	(asctime@cp),f
	line	85
	
l1541:	
	movf	(asctime@cp),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(asctime@s),w
	movlp	high __stringtab
	callw
	pagesel	$ ;select current page
	movwf	indf1
	
l1543:	
	incf	(asctime@s),f
	
l1545:	
	incf	(asctime@cp),f
	line	86
	
l1547:	
	movf	(asctime@cp),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(asctime@s),w
	movlp	high __stringtab
	callw
	pagesel	$ ;select current page
	movwf	indf1
	
l1549:	
	incf	(asctime@cp),f
	line	87
	
l1551:	
	movf	(asctime@cp),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(020h)
	movwf	indf1
	
l1553:	
	incf	(asctime@cp),f
	line	88
	
l1555:	
	movlw	(03h)
	movwf	(?___bmul)
	movf	(asctime@tim),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	fcall	___bmul
	addlw	low(STR_2|8000h)
	movwf	(asctime@s)
	line	89
	
l1557:	
	movf	(asctime@cp),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(asctime@s),w
	movlp	high __stringtab
	callw
	pagesel	$ ;select current page
	movwf	indf1
	
l1559:	
	incf	(asctime@s),f
	
l1561:	
	incf	(asctime@cp),f
	line	90
	
l1563:	
	movf	(asctime@cp),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(asctime@s),w
	movlp	high __stringtab
	callw
	pagesel	$ ;select current page
	movwf	indf1
	
l1565:	
	incf	(asctime@s),f
	
l1567:	
	incf	(asctime@cp),f
	line	91
	
l1569:	
	movf	(asctime@cp),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(asctime@s),w
	movlp	high __stringtab
	callw
	pagesel	$ ;select current page
	movwf	indf1
	line	92
	
l1571:	
	movlw	(020h)
	movwf	0+(asctime@buf)+07h
	line	93
	
l1573:	
	movf	(asctime@tim),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[06h]fsr1
	movwf	(?_put2d)
	movlw	(020h)
	movwf	0+(?_put2d)+01h
	movlw	(020h)
	movwf	0+(?_put2d)+02h
	movlw	(asctime@buf+0Ah)&0ffh
	fcall	_put2d
	line	94
	
l1575:	
	movf	(asctime@tim),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[04h]fsr1
	movwf	(?_put2d)
	movlw	(030h)
	movwf	0+(?_put2d)+01h
	movlw	(03Ah)
	movwf	0+(?_put2d)+02h
	movlw	(asctime@buf+0Dh)&0ffh
	fcall	_put2d
	line	95
	
l1577:	
	movf	(asctime@tim),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[02h]fsr1
	movwf	(?_put2d)
	movlw	(030h)
	movwf	0+(?_put2d)+01h
	movlw	(03Ah)
	movwf	0+(?_put2d)+02h
	movlw	(asctime@buf+010h)&0ffh
	fcall	_put2d
	line	96
	
l1579:	
	movf	(asctime@tim),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(?_put2d)
	movlw	(030h)
	movwf	0+(?_put2d)+01h
	movlw	(020h)
	movwf	0+(?_put2d)+02h
	movlw	(asctime@buf+013h)&0ffh
	fcall	_put2d
	line	97
	
l1581:	
	movlw	064h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(asctime@tim),w
	addlw	0Ah
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	0+(?___awdiv)+02h
	moviw	[1]fsr1
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	013h
	movwf	(?_put2d)
	movlw	(020h)
	movwf	0+(?_put2d)+01h
	clrf	0+(?_put2d)+02h
	movlw	(asctime@buf+016h)&0ffh
	fcall	_put2d
	line	98
	
l1583:	
	movlw	064h
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(asctime@tim),w
	addlw	0Ah
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	0+(?___awmod)+02h
	moviw	[1]fsr1
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	movwf	(?_put2d)
	movlw	(030h)
	movwf	0+(?_put2d)+01h
	movlw	(0Ah)
	movwf	0+(?_put2d)+02h
	movlw	(asctime@buf+018h)&0ffh
	fcall	_put2d
	line	99
	
l1585:	
	movlw	(asctime@buf)&0ffh
	line	100
	
l175:	
	return
	opt stack 0
GLOBAL	__end_of_asctime
	__end_of_asctime:
	signat	_asctime,4217
	global	_put2d

;; *************** function _put2d *****************
;; Defined at:
;;		line 12 in file "../../common/ctime.c"
;; Parameters:    Size  Location     Type
;;  cp              1    wreg     PTR unsigned char 
;;		 -> asctime@buf(27), 
;;  i               1    0[BANK0 ] unsigned char 
;;  cl              1    1[BANK0 ] unsigned char 
;;  ct              1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  cp              1   10[COMMON] PTR unsigned char 
;;		 -> asctime@buf(27), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       3       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         1       3       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lbmod
;;		___lbdiv
;; This function is called by:
;;		_asctime
;; This function uses a non-reentrant model
;;
psect	text394,local,class=CODE,delta=2,merge=1
global __ptext394
__ptext394:	;psect for function _put2d
psect	text394
	file	"C:\Program Files (x86)\Microchip\xc8\v1.12\sources\ctime.c"
	line	12
	global	__size_of_put2d
	__size_of_put2d	equ	__end_of_put2d-_put2d
	
_put2d:	
	opt	stack 10
; Regs used in _put2d: [wreg+fsr1l-status,0+pclath+cstack]
;put2d@cp stored from wreg
	movwf	(put2d@cp)
	line	13
	
l1457:	
	movf	(put2d@cp),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(put2d@ct),w
	movwf	indf1
	line	14
	
l1459:	
	decf	(put2d@cp),f
	movf	((put2d@cp)),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(put2d@i),w
	fcall	___lbmod
	addlw	030h
	movwf	indf1
	line	15
	
l1461:	
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(put2d@i),w
	fcall	___lbdiv
	movwf	(put2d@i)
	movf	((put2d@i)),w
	xorlw	0&0ffh
	skipnz
	goto	u611
	goto	u610
u611:
	goto	l1465
u610:
	line	16
	
l1463:	
	decf	(put2d@cp),f
	movf	((put2d@cp)),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(put2d@i),w
	addlw	030h
	movwf	indf1
	goto	l150
	line	18
	
l1465:	
	decf	(put2d@cp),f
	movf	((put2d@cp)),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(put2d@cl),w
	movwf	indf1
	line	19
	
l150:	
	return
	opt stack 0
GLOBAL	__end_of_put2d
	__end_of_put2d:
	signat	_put2d,16506
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\Microchip\xc8\v1.12\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    4[COMMON] unsigned char 
;;  product         1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         1       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_asctime
;; This function uses a non-reentrant model
;;
psect	text395,local,class=CODE,delta=2,merge=1
global __ptext395
__ptext395:	;psect for function ___bmul
psect	text395
	file	"C:\Program Files (x86)\Microchip\xc8\v1.12\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 11
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l1589:	
	clrf	(___bmul@product)
	line	7
	
l1591:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u671
	goto	u670
u671:
	goto	l1595
u670:
	line	8
	
l1593:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l1595:	
	lslf	(___bmul@multiplicand),f
	line	10
	
l1597:	
	lsrf	(___bmul@multiplier),f
	line	11
	
l1599:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u681
	goto	u680
u681:
	goto	l1591
u680:
	line	12
	
l1601:	
	movf	(___bmul@product),w
	line	13
	
l188:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.12\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         4       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_dylen
;; This function uses a non-reentrant model
;;
psect	text396,local,class=CODE,delta=2,merge=1
global __ptext396
__ptext396:	;psect for function ___lwmod
psect	text396
	file	"C:\Program Files (x86)\Microchip\xc8\v1.12\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 9
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l1605:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u691
	goto	u690
u691:
	goto	l1621
u690:
	line	9
	
l1607:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l1611
	line	11
	
l1609:	
	lslf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l1611:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u701
	goto	u700
u701:
	goto	l1609
u700:
	line	15
	
l1613:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u715
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u715:
	skipc
	goto	u711
	goto	u710
u711:
	goto	l1617
u710:
	line	16
	
l1615:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	subwfb	(___lwmod@dividend+1),f
	line	17
	
l1617:	
	lsrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l1619:	
	decfsz	(___lwmod@counter),f
	goto	u721
	goto	u720
u721:
	goto	l1613
u720:
	line	20
	
l1621:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l214:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lbdiv

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.12\sources\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    3[COMMON] unsigned char 
;;  quotient        1    5[COMMON] unsigned char 
;;  counter         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         1       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_put2d
;; This function uses a non-reentrant model
;;
psect	text397,local,class=CODE,delta=2,merge=1
global __ptext397
__ptext397:	;psect for function ___lbdiv
psect	text397
	file	"C:\Program Files (x86)\Microchip\xc8\v1.12\sources\lbdiv.c"
	line	5
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
	opt	stack 10
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	line	9
	movwf	(___lbdiv@dividend)
	
l1625:	
	clrf	(___lbdiv@quotient)
	line	10
	
l1627:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u730
	goto	l1645
u730:
	line	11
	
l1629:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l1633
	
l219:	
	line	13
	lslf	(___lbdiv@divisor),f
	line	14
	
l1631:	
	incf	(___lbdiv@counter),f
	line	12
	
l1633:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u741
	goto	u740
u741:
	goto	l219
u740:
	line	16
	
l221:	
	line	17
	lslf	(___lbdiv@quotient),f
	line	18
	
l1635:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u751
	goto	u750
u751:
	goto	l1641
u750:
	line	19
	
l1637:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l1639:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l1641:	
	lsrf	(___lbdiv@divisor),f
	line	23
	
l1643:	
	decfsz	(___lbdiv@counter),f
	goto	u761
	goto	u760
u761:
	goto	l221
u760:
	line	25
	
l1645:	
	movf	(___lbdiv@quotient),w
	line	26
	
l224:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	___lbmod

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.12\sources\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    4[COMMON] unsigned char 
;;  rem             1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         1       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_put2d
;; This function uses a non-reentrant model
;;
psect	text398,local,class=CODE,delta=2,merge=1
global __ptext398
__ptext398:	;psect for function ___lbmod
psect	text398
	file	"C:\Program Files (x86)\Microchip\xc8\v1.12\sources\lbmod.c"
	line	5
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
	opt	stack 10
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	line	9
	movwf	(___lbmod@dividend)
	
l1649:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l1651:	
	clrf	(___lbmod@rem)
	line	12
	
l1653:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u775:
	lsrf	(??___lbmod+0)+0,f
	decfsz	wreg,f
	goto	u775
	lslf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l1655:	
	lslf	(___lbmod@dividend),f
	line	14
	
l1657:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u781
	goto	u780
u781:
	goto	l1661
u780:
	line	15
	
l1659:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l1661:	
	decfsz	(___lbmod@counter),f
	goto	u791
	goto	u790
u791:
	goto	l1653
u790:
	line	17
	
l1663:	
	movf	(___lbmod@rem),w
	line	18
	
l230:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.12\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] int 
;;  dividend        2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    8[COMMON] int 
;;  sign            1    7[COMMON] unsigned char 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         4       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_asctime
;; This function uses a non-reentrant model
;;
psect	text399,local,class=CODE,delta=2,merge=1
global __ptext399
__ptext399:	;psect for function ___awdiv
psect	text399
	file	"C:\Program Files (x86)\Microchip\xc8\v1.12\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 11
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l1679:	
	clrf	(___awdiv@sign)
	line	10
	
l1681:	
	btfss	(___awdiv@divisor+1),7
	goto	u821
	goto	u820
u821:
	goto	l1687
u820:
	line	11
	
l1683:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l1685:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l1687:	
	btfss	(___awdiv@dividend+1),7
	goto	u831
	goto	u830
u831:
	goto	l1693
u830:
	line	15
	
l1689:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l1691:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l1693:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l1695:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u841
	goto	u840
u841:
	goto	l1715
u840:
	line	20
	
l1697:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l1701
	line	22
	
l1699:	
	lslf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l1701:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u851
	goto	u850
u851:
	goto	l1699
u850:
	line	26
	
l1703:	
	lslf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l1705:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u865
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u865:
	skipc
	goto	u861
	goto	u860
u861:
	goto	l1711
u860:
	line	28
	
l1707:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	subwfb	(___awdiv@dividend+1),f
	line	29
	
l1709:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l1711:	
	lsrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l1713:	
	decfsz	(___awdiv@counter),f
	goto	u871
	goto	u870
u871:
	goto	l1703
u870:
	line	34
	
l1715:	
	movf	(___awdiv@sign),w
	skipz
	goto	u880
	goto	l1719
u880:
	line	35
	
l1717:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l1719:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l341:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	___almod

;; *************** function ___almod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.12\sources\almod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    2[COMMON] long 
;;  dividend        4    6[COMMON] long 
;; Auto vars:     Size  Location     Type
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    2[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         8       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         8       2       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_gmtime
;; This function uses a non-reentrant model
;;
psect	text400,local,class=CODE,delta=2,merge=1
global __ptext400
__ptext400:	;psect for function ___almod
psect	text400
	file	"C:\Program Files (x86)\Microchip\xc8\v1.12\sources\almod.c"
	line	5
	global	__size_of___almod
	__size_of___almod	equ	__end_of___almod-___almod
	
___almod:	
	opt	stack 10
; Regs used in ___almod: [wreg+status,2+status,0]
	line	8
	
l2003:	
	clrf	(___almod@sign)
	line	9
	
l2005:	
	btfss	(___almod@dividend+3),7
	goto	u1221
	goto	u1220
u1221:
	goto	l373
u1220:
	line	10
	
l2007:	
	comf	(___almod@dividend),f
	comf	(___almod@dividend+1),f
	comf	(___almod@dividend+2),f
	comf	(___almod@dividend+3),f
	incf	(___almod@dividend),f
	skipnz
	incf	(___almod@dividend+1),f
	skipnz
	incf	(___almod@dividend+2),f
	skipnz
	incf	(___almod@dividend+3),f
	line	11
	clrf	(___almod@sign)
	incf	(___almod@sign),f
	line	12
	
l373:	
	line	13
	btfss	(___almod@divisor+3),7
	goto	u1231
	goto	u1230
u1231:
	goto	l2011
u1230:
	line	14
	
l2009:	
	comf	(___almod@divisor),f
	comf	(___almod@divisor+1),f
	comf	(___almod@divisor+2),f
	comf	(___almod@divisor+3),f
	incf	(___almod@divisor),f
	skipnz
	incf	(___almod@divisor+1),f
	skipnz
	incf	(___almod@divisor+2),f
	skipnz
	incf	(___almod@divisor+3),f
	line	15
	
l2011:	
	movf	(___almod@divisor+3),w
	iorwf	(___almod@divisor+2),w
	iorwf	(___almod@divisor+1),w
	iorwf	(___almod@divisor),w
	skipnz
	goto	u1241
	goto	u1240
u1241:
	goto	l2027
u1240:
	line	16
	
l2013:	
	clrf	(___almod@counter)
	incf	(___almod@counter),f
	line	17
	goto	l2017
	line	18
	
l2015:	
	lslf	(___almod@divisor),f
	rlf	(___almod@divisor+1),f
	rlf	(___almod@divisor+2),f
	rlf	(___almod@divisor+3),f
	line	19
	incf	(___almod@counter),f
	line	17
	
l2017:	
	btfss	(___almod@divisor+3),(31)&7
	goto	u1251
	goto	u1250
u1251:
	goto	l2015
u1250:
	line	22
	
l2019:	
	movf	(___almod@divisor+3),w
	subwf	(___almod@dividend+3),w
	skipz
	goto	u1265
	movf	(___almod@divisor+2),w
	subwf	(___almod@dividend+2),w
	skipz
	goto	u1265
	movf	(___almod@divisor+1),w
	subwf	(___almod@dividend+1),w
	skipz
	goto	u1265
	movf	(___almod@divisor),w
	subwf	(___almod@dividend),w
u1265:
	skipc
	goto	u1261
	goto	u1260
u1261:
	goto	l2023
u1260:
	line	23
	
l2021:	
	movf	(___almod@divisor),w
	subwf	(___almod@dividend),f
	movf	(___almod@divisor+1),w
	subwfb	(___almod@dividend+1),f
	movf	(___almod@divisor+2),w
	subwfb	(___almod@dividend+2),f
	movf	(___almod@divisor+3),w
	subwfb	(___almod@dividend+3),f
	line	24
	
l2023:	
	lsrf	(___almod@divisor+3),f
	rrf	(___almod@divisor+2),f
	rrf	(___almod@divisor+1),f
	rrf	(___almod@divisor),f
	line	25
	
l2025:	
	decfsz	(___almod@counter),f
	goto	u1271
	goto	u1270
u1271:
	goto	l2019
u1270:
	line	27
	
l2027:	
	movf	(___almod@sign),w
	skipz
	goto	u1280
	goto	l2031
u1280:
	line	28
	
l2029:	
	comf	(___almod@dividend),f
	comf	(___almod@dividend+1),f
	comf	(___almod@dividend+2),f
	comf	(___almod@dividend+3),f
	incf	(___almod@dividend),f
	skipnz
	incf	(___almod@dividend+1),f
	skipnz
	incf	(___almod@dividend+2),f
	skipnz
	incf	(___almod@dividend+3),f
	line	29
	
l2031:	
	movf	(___almod@dividend+3),w
	movwf	(?___almod+3)
	movf	(___almod@dividend+2),w
	movwf	(?___almod+2)
	movf	(___almod@dividend+1),w
	movwf	(?___almod+1)
	movf	(___almod@dividend),w
	movwf	(?___almod)

	line	30
	
l383:	
	return
	opt stack 0
GLOBAL	__end_of___almod
	__end_of___almod:
	signat	___almod,8316
	global	___aldiv

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.12\sources\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    2[COMMON] long 
;;  dividend        4    6[COMMON] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    2[BANK0 ] long 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    2[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         8       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         8       6       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_gmtime
;; This function uses a non-reentrant model
;;
psect	text401,local,class=CODE,delta=2,merge=1
global __ptext401
__ptext401:	;psect for function ___aldiv
psect	text401
	file	"C:\Program Files (x86)\Microchip\xc8\v1.12\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt	stack 10
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
l1755:	
	clrf	(___aldiv@sign)
	line	10
	
l1757:	
	btfss	(___aldiv@divisor+3),7
	goto	u961
	goto	u960
u961:
	goto	l386
u960:
	line	11
	
l1759:	
	comf	(___aldiv@divisor),f
	comf	(___aldiv@divisor+1),f
	comf	(___aldiv@divisor+2),f
	comf	(___aldiv@divisor+3),f
	incf	(___aldiv@divisor),f
	skipnz
	incf	(___aldiv@divisor+1),f
	skipnz
	incf	(___aldiv@divisor+2),f
	skipnz
	incf	(___aldiv@divisor+3),f
	line	12
	clrf	(___aldiv@sign)
	incf	(___aldiv@sign),f
	line	13
	
l386:	
	line	14
	btfss	(___aldiv@dividend+3),7
	goto	u971
	goto	u970
u971:
	goto	l1765
u970:
	line	15
	
l1761:	
	comf	(___aldiv@dividend),f
	comf	(___aldiv@dividend+1),f
	comf	(___aldiv@dividend+2),f
	comf	(___aldiv@dividend+3),f
	incf	(___aldiv@dividend),f
	skipnz
	incf	(___aldiv@dividend+1),f
	skipnz
	incf	(___aldiv@dividend+2),f
	skipnz
	incf	(___aldiv@dividend+3),f
	line	16
	
l1763:	
	movlw	(01h)
	xorwf	(___aldiv@sign),f
	line	18
	
l1765:	
	clrf	(___aldiv@quotient)
	clrf	(___aldiv@quotient+1)
	clrf	(___aldiv@quotient+2)
	clrf	(___aldiv@quotient+3)
	line	19
	
l1767:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u981
	goto	u980
u981:
	goto	l1787
u980:
	line	20
	
l1769:	
	clrf	(___aldiv@counter)
	incf	(___aldiv@counter),f
	line	21
	goto	l1773
	line	22
	
l1771:	
	lslf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	line	23
	incf	(___aldiv@counter),f
	line	21
	
l1773:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u991
	goto	u990
u991:
	goto	l1771
u990:
	line	26
	
l1775:	
	lslf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	line	27
	
l1777:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u1005
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u1005
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u1005
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u1005:
	skipc
	goto	u1001
	goto	u1000
u1001:
	goto	l1783
u1000:
	line	28
	
l1779:	
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),f
	movf	(___aldiv@divisor+1),w
	subwfb	(___aldiv@dividend+1),f
	movf	(___aldiv@divisor+2),w
	subwfb	(___aldiv@dividend+2),f
	movf	(___aldiv@divisor+3),w
	subwfb	(___aldiv@dividend+3),f
	line	29
	
l1781:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	line	31
	
l1783:	
	lsrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	line	32
	
l1785:	
	decfsz	(___aldiv@counter),f
	goto	u1011
	goto	u1010
u1011:
	goto	l1775
u1010:
	line	34
	
l1787:	
	movf	(___aldiv@sign),w
	skipz
	goto	u1020
	goto	l1791
u1020:
	line	35
	
l1789:	
	comf	(___aldiv@quotient),f
	comf	(___aldiv@quotient+1),f
	comf	(___aldiv@quotient+2),f
	comf	(___aldiv@quotient+3),f
	incf	(___aldiv@quotient),f
	skipnz
	incf	(___aldiv@quotient+1),f
	skipnz
	incf	(___aldiv@quotient+2),f
	skipnz
	incf	(___aldiv@quotient+3),f
	line	36
	
l1791:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	line	37
	
l396:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.12\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] int 
;;  dividend        2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    7[COMMON] unsigned char 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         4       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_gmtime
;;		_asctime
;; This function uses a non-reentrant model
;;
psect	text402,local,class=CODE,delta=2,merge=1
global __ptext402
__ptext402:	;psect for function ___awmod
psect	text402
	file	"C:\Program Files (x86)\Microchip\xc8\v1.12\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 11
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l1795:	
	clrf	(___awmod@sign)
	line	9
	
l1797:	
	btfss	(___awmod@dividend+1),7
	goto	u1031
	goto	u1030
u1031:
	goto	l1803
u1030:
	line	10
	
l1799:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l1801:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l1803:	
	btfss	(___awmod@divisor+1),7
	goto	u1041
	goto	u1040
u1041:
	goto	l1807
u1040:
	line	14
	
l1805:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l1807:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u1051
	goto	u1050
u1051:
	goto	l1823
u1050:
	line	16
	
l1809:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l1813
	line	18
	
l1811:	
	lslf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l1813:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u1061
	goto	u1060
u1061:
	goto	l1811
u1060:
	line	22
	
l1815:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u1075
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u1075:
	skipc
	goto	u1071
	goto	u1070
u1071:
	goto	l1819
u1070:
	line	23
	
l1817:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	subwfb	(___awmod@dividend+1),f
	line	24
	
l1819:	
	lsrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l1821:	
	decfsz	(___awmod@counter),f
	goto	u1081
	goto	u1080
u1081:
	goto	l1815
u1080:
	line	27
	
l1823:	
	movf	(___awmod@sign),w
	skipz
	goto	u1090
	goto	l1827
u1090:
	line	28
	
l1825:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l1827:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l409:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 151 in file "D:\_creatiff\_Projects\pic16f1509\fw\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  bufer           1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_term
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
psect	intentry
	file	"D:\_creatiff\_Projects\pic16f1509\fw\main.c"
	line	151
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
	opt	stack 9
; Regs used in _isr: [wreg-status,0+pclath+cstack]
psect	intentry
	pagesel	$
	line	153
	
i1l1831:	
;main.c: 152: unsigned char bufer;
;main.c: 153: if(ADIF)
	line	157
;main.c: 154: {
	
i1l120:	
	line	159
;main.c: 157: }
;main.c: 159: if(TXIF)
	movlb 0	; select bank0
	btfss	(140/8),(140)&7	;volatile
	goto	u110_21
	goto	u110_20
u110_21:
	goto	i1l1843
u110_20:
	line	161
	
i1l1833:	
;main.c: 160: {
;main.c: 161: TXIF=0;
	bcf	(140/8),(140)&7	;volatile
	line	162
	
i1l1835:	
;main.c: 162: if(txbufer[txpos]!='\0')
	movf	(_txpos),w
	addlw	_txbufer&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u111_21
	goto	u111_20
u111_21:
	goto	i1l1841
u111_20:
	line	164
	
i1l1837:	
;main.c: 163: {
;main.c: 164: TXREG=txbufer[txpos];
	movf	(_txpos),w
	addlw	_txbufer&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	165
;main.c: 165: txbufer[txpos]='\0';
	movlb 0	; select bank0
	movf	(_txpos),w
	addlw	_txbufer&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	166
	
i1l1839:	
;main.c: 166: ++txpos;
	incf	(_txpos),f
	line	167
;main.c: 167: }
	goto	i1l1843
	line	170
	
i1l1841:	
;main.c: 168: else
;main.c: 169: {
;main.c: 170: txpos=0;
	clrf	(_txpos)
	line	174
	
i1l1843:	
;main.c: 171: }
;main.c: 172: }
;main.c: 174: if(RCIF)
	btfss	(141/8),(141)&7	;volatile
	goto	u112_21
	goto	u112_20
u112_21:
	goto	i1l1851
u112_20:
	line	176
	
i1l1845:	
;main.c: 175: {
;main.c: 176: RCIF=0;
	bcf	(141/8),(141)&7	;volatile
	line	177
	
i1l1847:	
;main.c: 177: bufer=RCREG;
	movlb 3	; select bank3
	movf	(409)^0180h,w	;volatile
	movwf	(isr@bufer)
	line	178
	
i1l1849:	
;main.c: 178: term(bufer);
	movf	(isr@bufer),w
	fcall	_term
	line	181
	
i1l1851:	
;main.c: 179: }
;main.c: 181: if(CLC1IF&&CLC1IE)
	btfss	(152/8),(152)&7	;volatile
	goto	u113_21
	goto	u113_20
u113_21:
	goto	i1l125
u113_20:
	
i1l1853:	
	movlb 1	; select bank1
	btfss	(1176/8)^080h,(1176)&7	;volatile
	goto	u114_21
	goto	u114_20
u114_21:
	goto	i1l125
u114_20:
	line	184
	
i1l1855:	
;main.c: 182: {
;main.c: 184: CLC1IF=0;
	movlb 0	; select bank0
	bcf	(152/8),(152)&7	;volatile
	line	185
	
i1l125:	
	line	188
;main.c: 185: }
;main.c: 188: if(TMR1IF)
	movlb 0	; select bank0
	btfss	(136/8),(136)&7	;volatile
	goto	u115_21
	goto	u115_20
u115_21:
	goto	i1l1865
u115_20:
	line	191
	
i1l1857:	
;main.c: 189: {
;main.c: 191: TMR1IF=0;
	bcf	(136/8),(136)&7	;volatile
	line	192
	
i1l1859:	
;main.c: 192: TMR1L=0x00;
	clrf	(22)	;volatile
	line	193
	
i1l1861:	
;main.c: 193: TMR1H=0x7F;
	movlw	(07Fh)
	movwf	(23)	;volatile
	line	194
	
i1l1863:	
;main.c: 194: unixtime++;
	incf	(_unixtime),f
	skipnz
	incf	(_unixtime+1),f
	skipnz
	incf	(_unixtime+2),f
	skipnz
	incf	(_unixtime+3),f
	line	199
	
i1l1865:	
;main.c: 195: }
;main.c: 199: if(T0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u116_21
	goto	u116_20
u116_21:
	goto	i1l131
u116_20:
	line	201
	
i1l1867:	
;main.c: 200: {
;main.c: 201: if(!t_active)
	btfsc	(_t_active/8),(_t_active)&7
	goto	u117_21
	goto	u117_20
u117_21:
	goto	i1l1875
u117_20:
	line	203
	
i1l1869:	
;main.c: 202: {
;main.c: 203: if(st<3)st++;
	movlw	(03h)
	subwf	(_st),w
	skipnc
	goto	u118_21
	goto	u118_20
u118_21:
	goto	i1l1873
u118_20:
	
i1l1871:	
	incf	(_st),f
	goto	i1l1875
	line	204
	
i1l1873:	
;main.c: 204: else st=0;
	clrf	(_st)
	line	206
	
i1l1875:	
;main.c: 205: }
;main.c: 206: T0IF=0;
	bcf	(90/8),(90)&7	;volatile
	line	208
	
i1l131:	
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,88
	global	_term

;; *************** function _term *****************
;; Defined at:
;;		line 213 in file "D:\_creatiff\_Projects\pic16f1509\fw\main.c"
;; Parameters:    Size  Location     Type
;;  t               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  t               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/3
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text404,local,class=CODE,delta=2,merge=1
global __ptext404
__ptext404:	;psect for function _term
psect	text404
	file	"D:\_creatiff\_Projects\pic16f1509\fw\main.c"
	line	213
	global	__size_of_term
	__size_of_term	equ	__end_of_term-_term
	
_term:	
	opt	stack 9
; Regs used in _term: [wreg-fsr0h+status,2+status,0]
;term@t stored from wreg
	movwf	(term@t)
	line	215
	
i1l1439:	
;main.c: 215: switch(t)
	goto	i1l1449
	line	218
	
i1l1441:	
;main.c: 218: txbufer[0]='\n';
	movlw	(0Ah)
	movlb 1	; select bank1
	movwf	(_txbufer)^080h
	line	219
;main.c: 219: txbufer[1]='\r';
	movlw	(0Dh)
	movwf	0+(_txbufer)^080h+01h
	line	220
;main.c: 220: txbufer[2]='>';
	movlw	(03Eh)
	movwf	0+(_txbufer)^080h+02h
	line	221
;main.c: 221: break;
	goto	i1l1451
	line	224
	
i1l1443:	
;main.c: 224: txpos=0;
	movlb 0	; select bank0
	clrf	(_txpos)
	line	238
;main.c: 238: st=0;
	clrf	(_st)
	line	239
;main.c: 239: break;
	goto	i1l1451
	line	243
	
i1l1445:	
;main.c: 243: txbufer[0]=t;
	movf	(term@t),w
	movlb 1	; select bank1
	movwf	(_txbufer)^080h
	line	244
;main.c: 244: break;
	goto	i1l1451
	line	215
	
i1l1449:	
	movf	(term@t),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 13 to 97
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte          179     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	13^0	; case 13
	skipnz
	goto	i1l1441
	xorlw	97^13	; case 97
	skipnz
	goto	i1l1443
	goto	i1l1445
	opt asmopt_on

	line	246
	
i1l1451:	
;main.c: 246: TXREG=txbufer[0];
	movlb 1	; select bank1
	movf	(_txbufer)^080h,w
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	247
	
i1l1453:	
;main.c: 247: txbufer[0]='\0';
	movlb 1	; select bank1
	clrf	(_txbufer)^080h
	line	248
	
i1l1455:	
;main.c: 248: txpos++;
	movlb 0	; select bank0
	incf	(_txpos),f
	line	249
	
i1l139:	
	return
	opt stack 0
GLOBAL	__end_of_term
	__end_of_term:
	signat	_term,4216
psect	text405,local,class=CODE,delta=2,merge=1
global __ptext405
__ptext405:	;psect for function _term
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
