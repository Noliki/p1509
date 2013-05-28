//pic tasks
#include "task.h"
#ifndef uchar
typedef unsigned char uchar;
#endif


/******** Get messsage W/O param *****/	
uchar get_msgwop(uchar msg)
	{
	if(tmsg[msg])return 1;
	else return 0;
	}
	
/******** Get messsage W param *******/		
uchar get_msgwp(uchar msg)
	{
	if(tmsg[msg])return tmsg[msg];
	else return 0;
	}
	
/******** Init all messages **********/
void init_msg(void)
	{
	uchar i;
	for(i=0;i<8;i++)tmsg[i]=0;
	}

/******** Init all tasks ***********/
void init_tasks(void)
	{
	uchar i;
	for(i=0;i<8;i++)tst[i]=0;
	}
	
	
void task1(void)
	{
	switch(tstate1)
		{
		case 0:
			t_active=1;
			
			utime=ctime(&unixtime);
			print(utime);
			t_active=0;
			//TXREG=txbufer[0]; //передача символа
			//TXIE=1;
			break;
		case 1:
			
			//clcs(3,utime);
			//t_active=1;
			//t_active=0;
			break;
		case 2:
			//t_active=1;
			//t_active=0;
			break;
		case 3:
			//t_active=1;
			//t_active=0;
			break;
				
		}
	}