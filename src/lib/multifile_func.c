#include <stdio.h>
#include <time.h>
#include "multifile_func.h"

void say_hello(void)
{
	printf("Hello, human. How are you today?");
}

void print_the_time(void)
{
	time_t currrent_time;

	time(&currrent_time);

	// No '' in the format string because ctime adds one
	printf("Right now it is: %s", ctime(&currrent_time));
}