/* 
 * File:   main.c
 * Author: Noliki
 *
 * PIC16F1509 Rhinoceros module
 */
#include "xc.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include "task.h"

 //__CONFIG (FOSC_INTOSC & WDTE_OFF & PWRTE_OFF & MCLRE_ON & CP_OFF & BOREN_OFF & CLKOUTEN_ON);
// __CONFIG (WRT_OFF & STVREN_OFF & LVP_OFF);

typedef unsigned char uchar;

 
#define p1 					RB6 		// PIN 1
#define up_ends 			RA1 		//high endstop
#define down_valve 			RA4			//low valve	
#define up_valve 			RA5 		//high valve
#define down_ends_pullup 	RC1			//resistor 100k
#define up_ends_pullup 		RA0			//resistor 100k

/******************* PRIMITIVES *****************/
uchar *tempsens();
void clcs(uchar num, uchar* str);
void term(unsigned char t); //terminal function
void print(uchar *str);		//transmit string by USART
void read_adc(unsigned char ch); //read adc(channel)
/********************* CONST ********************/


/********************* GLOBAL VAR **********************/

bit t_active;
bit txcomp;
unsigned int adresult; //A\D result global

time_t unixtime; //UNIX format time variable

static uchar* utime; //Human format time variable

static uchar rxbufer[30];
static uchar rxpos=0;

static uchar txbufer[30];
static uchar txpos=0; 

static uchar st; //status

//uchar T,i;


void main()
{ 
//WDTCON = 0b00010001; //WDT 256 ms

//OSCCON = 0x6A; //internal osc = 4MHz //OSCCON = 0b00010010; //set INTOSC to 31,25 kHz

ANSELA = 0x00; //all digital
CM1CON0 = 0x00; //comparator


TRISA=0b00000000; 
TRISC=0b00000000;
TRISB=0b00100000;
/*
//ADC and Temperature Sensor
FVRCON=0xF3; //TS enabled, High Range, ADC ref is 4,096V
ADCON1=0b10000000; //Vref=internal, F=Fosc/2
ADCON0=0b01110101; //ADCIN = TS, ADON
ADCON2=0x40; //trigger source is T1 ovf
ADIE=1;
*/
//таймер ноль 
T0CS=0; 
	//и прескаллер его
PSA=1;
PS0=0;
PS1=0;
PS2=0;
	//прерывание таймера ноль
T0IE=1;   //TMR0 int enable

//таймер 1
T1CON=0b10001001; 
TMR1IE=1; //прерывание разрешено


//USART

strcpy(txbufer, '\0');
strcpy(rxbufer, '\0');
CREN=1;
TXEN=1;
SYNC=0;
BRG16=1;
SPEN=1;
BRGH=1;
SPBRGH=0x01; //9600    (0x00(0) for 115 000)
SPBRGL=0xA0; //9600    (0x22(34) for 115 000)
RCIE=1; //interrupt enable
TXIE=0;

	//EXTERNAL INTERRUPT (RA2)   
//INTEDG=0; //ext int by falling edge
//INTF=0; 
//INTE=0;  

	//CLC INTERRUPT
CLC1IF = 0;
CLC1IE = 0;

	//ГЛОБАЛЬНЫЕ ПРЕРЫВАНИЯ



st=0;

CLC1GLS0 = 0x02;
CLC1GLS1 = 0x20;
CLC1GLS2 = 0x08;
CLC1GLS3 = 0x00;
CLC1SEL0 = 0x05;
CLC1SEL1 = 0x00;
CLC1POL  = 0x02;
CLC1CON  = 0xC4;
/*
CLC1GLS0 = 0x00;
CLC1GLS1 = 0x08;
CLC1GLS2 = 0x00;
CLC1GLS3 = 0x20;
CLC1SEL0 = 0x10;
CLC1SEL1 = 0x00;
CLC1POL  = 0x01;
CLC1CON  = 0xC6;
*/
init_tasks();
PEIE=1;
GIE=1;
while(1)
{
task0();
task1();
msg_prc();

}//EOF While(1)
}//EOF Main

/********************************* INTERRUPT LOGIC ********************************/
 void interrupt isr(void)
{ 
unsigned char bufer;
unsigned int result;
if(ADIF)
	{
	ADIF=0;
	adresult = result|(ADRESH<<8);
	adresult = result|ADRESL;
	}
	//serial transmit interrupt
if(TXIF&&TXIE) //&&TXIE
	{
	//TXIF=0;
	if(txbufer[txpos]!='\0') 	//если еще есть в буфере данные
		{
		
		TXREG=txbufer[txpos]; 	//передаем
		txbufer[txpos]='\0';	//стираем то, что передал
		++txpos;				//сдвиг позициии
		}
	else
		{
		TXIE=0;
		txpos=0;				//обнуляем позицию буфера
		txcomp=1;
		}
	}
	//serial recieve interrupt
if(RCIF)
	{
	RCIF=0;
	bufer=RCREG;
	term(bufer);
	}
	//прерывание таймера ноль
if(CLC1IF&&CLC1IE)
    {	
		//обнулить флаг прерывания
    CLC1IF=0;
	}

//прерывание таймера 1
if(TMR1IF)
	{
	//asm("clrwdt");
	TMR1IF=0;
	TMR1L=0x00;
	TMR1H=0x7F;
	unixtime++;
	}


	//прерывание таймера ноль
if(T0IF)
	{	
	
	T0IF=0;		
	}	
} /*END OF INTERRUPT LOGIC*/



void term(unsigned char t)
	{
	switch(t)
		{
		case '\r':
			txbufer[0]='\n';
			txbufer[1]='\r';
			txbufer[2]='>';
			break;
		case 'a':
			//t_active=1;
			
			//strcpy(txbufer, utime);//ctime(&unixtime));
			st=0;
			break;
			
			
		default:
			txbufer[0]=t;
			break;
		}
	TXREG=txbufer[0]; //передача символа
	TXIE=1;
	txbufer[0]='\0';
	txpos++;
	}

/****************** PRINT ********************/
void print(uchar *str)
	{
	uchar pos=0;
	txpos=0;	
	while((txbufer[pos]=*str)!='\0')
		{
		//*txbufer=*utime;
		++pos;
		++str;
		}
	}

/************** CLC Setup ***********************/
void clcs(uchar num, uchar* str)
	{
	/*
	switch(num)
		{
		case 1:
			CLC1GLS0 = str[0];
			CLC1GLS1 = str[1];
			CLC1GLS2 = str[2];
			CLC1GLS3 = str[3];
			CLC1SEL0 = str[4];
			CLC1SEL1 = str[5];
			CLC1POL  = str[6];
			CLC1CON  = str[7];
			break;
		case 2:
			CLC2GLS0 = str[0];
			CLC2GLS1 = str[1];
			CLC2GLS2 = str[2];
			CLC2GLS3 = str[3];
			CLC2SEL0 = str[4];
			CLC2SEL1 = str[5];
			CLC2POL  = str[6];
			CLC2CON  = str[7];
			break;
		case 3:
			CLC3GLS0 = str[0];
			CLC3GLS1 = str[1];
			CLC3GLS2 = str[2];
			CLC3GLS3 = str[3];
			CLC3SEL0 = str[4];
			CLC3SEL1 = str[5];
			CLC3POL  = str[6];
			CLC3CON  = str[7];
			break;
		case 4:
			CLC4GLS0 = str[0];
			CLC4GLS1 = str[1];
			CLC4GLS2 = str[2];
			CLC4GLS3 = str[3];
			CLC4SEL0 = str[4];
			CLC4SEL1 = str[5];
			CLC4POL  = str[6];
			CLC4CON  = str[7];
			break;
		default: break;
		}*/
	}
	
/************* TEMPERATURE SENSOR ***************/	
uchar* tempsens()
	{
	static uchar *t_temp; 
	//unsigned int adbuf;
	//adbuf=adresult/
	*t_temp = '\r'; //(adresult/1000)+48;
	return t_temp;
	}
	
/****************** ADC ********************/
/*
void read_adc(unsigned char ch,speed,trig)
	{
	ADCON0=ch; //input selection	
	ADCON1=speed; //speed of convertion selection	
	ADCON2=0x40;//trig;  //trigger source selection
	}
	
	*/
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	




























