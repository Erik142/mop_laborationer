/*
 * 	startup.c
 *
 */
 unsigned long *systick_ctrl_addr = ( (unsigned long *) (0xE000E010 + 0x0));
 unsigned long *systick_load_addr = ( (unsigned long *) (0xE000E010 + 0x4));
 unsigned long *systick_val_addr = ( (unsigned long *) (0xE000E010 + 0x8));
 
 unsigned long *gpio_e_moder = ( (unsigned long *) 0x40021000);
 unsigned short *gpio_e_odr = ( (unsigned short *) (0x40021000 + 0x14));
 
__attribute__((naked)) __attribute__((section (".start_section")) )
void startup ( void )
{
__asm__ volatile(" LDR R0,=0x2001C000\n");		/* set stack */
__asm__ volatile(" MOV SP,R0\n");
__asm__ volatile(" BL main\n");					/* call main */
__asm__ volatile(".L1: B .L1\n");				/* never return */
}

void delay_250ns(void)
{
    *systick_ctrl_addr = 0x0;
    
    // Set STK_LOAD value (250 ns = 42 clock cycles = 0x2A)
    *systick_load_addr = 0x2A;
    
#ifdef SIMULATOR
    *systick_load_addr /= 0x2A; // Decrease delay if we're simulating
#endif
    
    *systick_val_addr = 0;
    
    // Enable counter
    *systick_ctrl_addr = 0x5;
    
    // Wait until "COUNTFLAG" in STK_CTRL is 1
    while ( (*systick_ctrl_addr & 0x10000) == 0);
    
    *systick_ctrl_addr = 0x0;
}

void delay_mikro(unsigned int us)
{
    int i, limit = 4*us;
    
#ifdef SIMULATOR
    limit = limit/10;
#endif
    
    for (int i = 1; i <= limit; i++)
    {
        delay_250ns();
    }
}

void delay_mili(unsigned int ms)
{
    int i, limit = 1000;
    
#ifdef SIMULATOR
    limit = 10;
#endif
    
    for (i = 1; i <= limit; i++)
    {
        delay_mikro(ms);
    }
}

void app_init(void)
{
#ifdef USBDM
    * ( (unsigned long *) 0x40023830) = 0x18; // Starta klockor port D och E
    __asm__ volatile( " LDR R0,=0x08000209\n BLX R0 \n"); //Initiera PLL
#endif
    // Set GPIO E Pin 7-0 as output
    *gpio_e_moder = 0x5555;
}

void main(void)
{
    app_init();
    
    while(1)
    {
        *gpio_e_odr = 0x00;
        delay_mili(500);
        *gpio_e_odr = 0xFF;
        delay_mili(500);
    }
}

