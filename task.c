//pic tasks
#include "task.h"


/******** Get messsage W/O param *****/	//just true if message>0 
uchar get_msgwop(uchar msg)
	{
	uchar buf=tmsg[msg]&0b00000011;
	if(buf==2)return 1;
	else return 0;
	}
	
/******** Get messsage With param *******/	//whole message return	
uchar get_msgwp(uchar msg)
	{
	uchar buf=tmsg[msg]&0b00000011;
	if(buf==2)return tmsg[msg];
	else return 0;
	}
	
/*********** Init all messages **********/ //clear all messages
void init_msg(void)
	{
	uchar i;
	for(i=0;i<TASK_NUM;i++)tmsg[i]=0;
	}
	
/*********** Message Processing **********/
//Если сообщение есть - повышается приоритет. 
//Если приоритет повышен - обнуление сообщения.

void msg_prc(void)
	{
	uchar i,buf;
	for(i=0;i<TASK_NUM;i++)
		{
		buf=tmsg[i]&0x3;
		switch(buf)
			{
			case 1:
				tmsg[i]|=0b00000010;
				tmsg[i]&=0b11111110;	
				break;
			case 2:
				tmsg[i]=0;		
				break;
			default:			
				break;
			}
		}
	
	}

/******** Init all tasks ***********/
void init_tasks(void)
	{
	uchar i;
	for(i=0;i<TASK_NUM;i++)tst[i]=0;
	}
	
/********** Terminal Task **********/	
void task0(void) 
	{
	switch(tst[0])
		{
		case 0:
			utime=ctime(&unixtime);
			tmsg[1]=1;
			tst[0]=1;
			break;
		case 1:
			tst[0]=2;
			break;
		case 2:
			tst[0]=3;
			break;
		case 3:
			tst[0]=0;
			break;
				
		}
	}
	
/***************  Task 1 **************/
void task1(void)
	{
	
	switch(tst[1])
		{
		case 0:
			if(get_msgwop(1))
				{
				tst[1]=1; //// в этом месте надо будет дебажить наверно
				
				}		
			break;
		case 1:
			tst[1]=2;
			break;
		case 2:
			tst[1]=0;
			break;
		}
	
	}
/************* Task 2 ****************/
void task2(void) 
	{
	switch(tst[2])
		{
		case 0:
			utime=ctime(&unixtime);
			tmsg[1]=1;						//отправка сообщения задаче 1
			tst[2]=1; 
			break;
		case 1:
			tst[2]=2;
			break;
		case 2:
			tst[2]=3;
			break;
		case 3:
			tst[2]=0;
			break;
				
		}
	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	