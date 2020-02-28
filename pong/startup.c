/*
 * 	startup.c
 *
 */
 #include "headers/usbdm.h"
 #include "headers/delay.h"
 #include "headers/graphicdisplay.h"
 #include "headers/keypad.h"
 #include "headers/geometry/geometry.h"
 #include "headers/geometry/geometry_ball.h"
 #include "headers/geometry/geometry_line.h"
 
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
    init_usbdm();
#endif
    *((unsigned long *) portModer) = 0x55555555;
    * ( (unsigned int *) 0x40020C00) = 0x55005555;      // Configure port D bit 15-12, 7-0 as output
    * ( (unsigned char *) 0x40020C05) = 0;              // Configure port D GPIO_OTYPER
    * ( (unsigned short *) 0x40020C0E) = 0xAA;          // Configure port D GPIO_PUPDR
}

void main(void)
{
    POBJECT pball = &ball;
    POBJECT pline = &line;
    
    app_init();
    graphic_initialize();
#ifndef SIMULATOR
    graphic_clear_screen();
#endif

    pball->set_speed(pball,4,4);
    
    unsigned char c;
    
    while(1)
    {
        pball->move(pball);
        pline->move(pline);
#ifndef SIMULATOR
        delay_mili(40); // 25 bilder per sekund
#endif
        c = keyb();
        switch (c)
        {
            case 2: pline->set_speed(pline, 0, 2); break;
            case 8: pline->set_speed(pline, 0, -2); break;
        }
    }

}


