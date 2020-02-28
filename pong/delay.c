 #define SYSTICK_BASE_ADDRESS 0xE000E010
 #define SYSTICK_CTRL ( (unsigned long *) (SYSTICK_BASE_ADDRESS + 0x0))
 #define SYSTICK_LOAD ( (unsigned long *) (SYSTICK_BASE_ADDRESS + 0x4))
 #define SYSTICK_VAL ( (unsigned long *) (SYSTICK_BASE_ADDRESS + 0x8))
 
void delay_250ns(void)
{
    *SYSTICK_CTRL = 0x0;
    
    // Set STK_LOAD value (250 ns = 42 clock cycles = 0x2A)
    *SYSTICK_LOAD = 0x29;
    
#ifdef SIMULATOR
    *SYSTICK_LOAD = 1; // Decrease delay if we're simulating
#endif
    
    *SYSTICK_VAL = 0;
    
    // Enable counter
    *SYSTICK_CTRL = 0x5;
    
    // Wait until "COUNTFLAG" in STK_CTRL is 1
    while ( (*SYSTICK_CTRL & 0x10000) == 0);
    
    *SYSTICK_CTRL = 0x0;
}

void delay_500ns(void)
{
    delay_250ns();
    delay_250ns();
}

void delay_mikro(unsigned int us)
{
    int i, limit = 4*us;
    
#ifdef SIMULATOR    
    if(limit > 50)
    {
        limit = 50;
    }
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