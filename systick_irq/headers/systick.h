#ifndef SYSTICK_H
#define SYSTICK_H
unsigned char systick_flag;

void systick_init();
void delay(int us);
#endif