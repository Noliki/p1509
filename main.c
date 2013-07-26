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

unsigned char bufer;

static uchar st; //status

bit RC;

uchar T,i;


void main()
{ 
//WDTCON = 0b00010001; //WDT 256 ms

//OSCCON = 0x6A; //internal osc = 4MHz //OSCCON = 0b00010010; //set INTOSC to 31,25 kHz

ANSELA = 0x00; //all digital
CM1CON0 = 0x00; //comparator

/*CLC Config
TRISA=0b00000010; 
TRISC=0b11001000;
TRISB=0b00110000;
*/

TRISA=0b00000000; 
TRISC=0b00000000;
TRISB=0b01010000; //i2c


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
PS0=1;
PS1=1;
PS2=1;
	//прерывание таймера ноль
T0IE=1;   //TMR0 int enable

//таймер 1
T1CON=0b10001001; 
TMR1IE=1; //прерывание разрешено

//MSSP
SSPBUF = 0x0;
SSPADD = 0x27;              /* I2C @ 100KHz (Fosc = 16MHz) */ 
SSPCON = 0x28;                 // power on state master mode
//SSPCON2 = 0x00;                 // power on state


//USART
/*
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
*/
	//EXTERNAL INTERRUPT (RA2)   
//INTEDG=0; //ext int by falling edge
//INTF=0; 
//INTE=0;  

	//CLC INTERRUPT
CLC1IF = 0;
CLC1IE = 0;

	//ГЛОБАЛЬНЫЕ ПРЕРЫВАНИЯ


/*
st=0;

	CLC1GLS0 = 0x01;
	CLC1GLS1 = 0x08;
	CLC1GLS2 = 0x00;
	CLC1GLS3 = 0x00;
	CLC1SEL0 = 0x71;
	CLC1SEL1 = 0x00;
	CLC1POL  = 0x80;
	CLC1CON  = 0xC0;

	CLC2GLS0 = 0x02;
	CLC2GLS1 = 0x08;
	CLC2GLS2 = 0x00;
	CLC2GLS3 = 0x00;
	CLC2SEL0 = 0x70;
	CLC2SEL1 = 0x00;
	CLC2POL  = 0x80;
	CLC2CON  = 0xC0;

	CLC3GLS0 = 0x01;
	CLC3GLS1 = 0x00;
	CLC3GLS2 = 0x00;
	CLC3GLS3 = 0x40;
	CLC3SEL0 = 0x00;
	CLC3SEL1 = 0x50;
	CLC3POL  = 0x00;
	CLC3CON  = 0xC3;

	CLC4GLS0 = 0x02;
	CLC4GLS1 = 0x00;
	CLC4GLS2 = 0x00;
	CLC4GLS3 = 0x80;
	CLC4SEL0 = 0x00;
	CLC4SEL1 = 0x50;
	CLC4POL  = 0x00;
	CLC4CON  = 0xC1;
*/
//init_tasks();


PEIE=1;
GIE=1;

					/****** LOOP *******/

while(1)
{
	SEN=1;
	while(SEN); 
	SSPBUF=0xFF;//0b01011000;
	while(BF);
	TMR0=0;
	i=2;
	while(i)
	if(ACKSTAT)RA0=1;
	else 
		{
		RA0=0;
		TMR0=0;
		i=1;
		while(i);
		/*SSPBUF=129;
		while(BF);
		TMR0=0;
		i=1;
		while(i)
		if(ACKSTAT)RA0=1;*/
		}
	
	
	
	
	PEN=1;
	while(PEN);
	
	
	
	T=10;
	while(T);

 
 
/*
if(RC)
	{
	RC=0;
	term(bufer);
	}
task0();
task1();
task2();
msg_prc();
*/
}//EOF While(1)
}//EOF Main

/********************************* INTERRUPT LOGIC ********************************/
void interrupt isr(void)
{ 
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
	RC=1; //recieve complite
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
	TMR1L=0x20;
	TMR1H=0xFF;//TMR1H=0x7F;
	unixtime++;
	if(T)--T;
	}
	//прерывание таймера ноль
if(T0IF)
	{
	T0IF=0;		
	if(i)--i;
	
		
	}	
} /*END OF INTERRUPT LOGIC*/



void term(unsigned char t) //terminal automat
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	




























