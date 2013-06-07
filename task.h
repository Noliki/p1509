//pic tasks headers
#ifndef TASK_H
#define TASK_H

#include <time.h>
#ifndef uchar
typedef unsigned char uchar;
#endif


#define TASK_NUM 3 //number of tasks


uchar 	tst[TASK_NUM]; //tasks states
				
uchar	tmsg[TASK_NUM]; //tasks messages

time_t unixtime;  //UNIX format time variable

static uchar* utime;  //Human format time variable
	

	
void init_tasks(void);
void init_msg(void);
uchar get_msgwp(uchar msg);
uchar get_msgwop(uchar msg);
void msg_prc(void);


void task0(void);
void task1(void);
void task2(void);






//void task3(void);
//void task4(void);
//void task5(void);
//void task6(void);

#endif
