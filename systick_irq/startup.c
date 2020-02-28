/*
 * 	startup.c
 *
 */
 #include "headers/systick.h"
 
#ifdef SIMULATOR
#define DELAY_COUNT 500
#else
#define DELAY_COUNT 1000000
#endif
 
 #define PORT_D_BASE_ADDRESS 0x40020C00
 
 #define PORT_D_MODER ((unsigned short *) PORT_D_BASE_ADDRESS)
 #define PORT_D_ODR ((unsigned char *) (PORT_D_BASE_ADDRESS + 0x14))
 
__attribute__((naked)) __attribute__((section (".start_section")) )
void startup ( void )
{
__asm__ volatile(" LDR R0,=0x2001C000\n");		/* set stack */
__asm__ volatile(" MOV SP,R0\n");
__asm__ volatile(" BL main\n");					/* call main */
__asm__ volatile(".L1: B .L1\n");				/* never return */
}

void app_init(void)
{
    systick_init();
    
    *PORT_D_MODER = 0x5555;
}

void main(void)
{
    app_init();

    while(1)
    {    
        *PORT_D_ODR = 0x00;
        
        delay(DELAY_COUNT);
        
        *PORT_D_ODR = 0xFF;
        
        while(1)
        {
            if(systick_flag)
            {
                break;
            }
        }
        
        *PORT_D_ODR = 0x00;
        
        delay(DELAY_COUNT);
        
        while(1)
        {
            if(systick_flag)
            {
                break;
            }
        }
    }
}

