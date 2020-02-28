#include "headers/systick.h"

#define INTERRUPT_BASE_ADDRESS 0x2001C000

#define SYSTICK_INTERRUPT_HANDLER ((void (**) (void)) (INTERRUPT_BASE_ADDRESS + 0x3C))
#define SCB_VTOR ((unsigned volatile int *) 0xE000ED08)

#define SYSTICK_TICKS 0xA9  // Antal klockcykler för att fördröja 1 us

#define SYSTICK_BASE_ADDRESS 0xE000E010
#define SYSTICK_CTRL ((unsigned long *) SYSTICK_BASE_ADDRESS)
#define SYSTICK_LOAD ((unsigned long *) (SYSTICK_BASE_ADDRESS + 0x4))

unsigned int global_count;

void delay_1mikro(void)
{
    systick_flag = 0;
    
    *SYSTICK_CTRL = 0;
    
    *SYSTICK_LOAD = SYSTICK_TICKS;
    
    *SYSTICK_CTRL = 0x7;
}

void systick_handler(void)
{
    global_count -= 1;
    
    if (global_count > 0)
    {
        delay_1mikro();
    }
    else
    {
        systick_flag = 1;
    }
}

void systick_init(void)
{
    *SCB_VTOR = INTERRUPT_BASE_ADDRESS;
    *SYSTICK_INTERRUPT_HANDLER = systick_handler;
    
    global_count = 0;
    systick_flag = 0;
}

void delay(int us)
{
    global_count = us;
    delay_1mikro();
}