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
 
 #define PORT_D_MODER ((unsigned long *) PORT_D_BASE_ADDRESS)
 #define PORT_D_ODR_LOW ((unsigned char *) (PORT_D_BASE_ADDRESS + 0x14))
 #define PORT_D_ODR_HIGH ((unsigned char *) (PORT_D_BASE_ADDRESS + 0x15))
 
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
    #ifdef USBDM
    *((unsigned long *) 0x40023830) = 0x18;
    __asm volatile("LDR R0,=0x08000209\n BLX R0 \n");
    *((unsigned long *) 0x40023844) |= 0x4000;
    *((unsigned long *) 0xE000ED08) = 0x2001C000;
    #endif
    
    systick_init();
    
    *PORT_D_MODER = 0x5555;
}

void main(void)
{
    app_init();

    *PORT_D_ODR_LOW = 0x00;
    
    delay(DELAY_COUNT);
    
    *PORT_D_ODR_LOW = 0xFF;
    
    while(1)
    {
        //*PORT_D_ODR_HIGH = global_count % 0xFF;
        
        if(systick_flag)
        {
            break;
        }
    }
    
    *PORT_D_ODR_LOW = 0x00;

}

