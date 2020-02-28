/*
 * 	startup.c
 *
 */
 unsigned char SegCodes[] = { 0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71 };
 unsigned char KeyValues[4][4] = { { 0x1, 0x2, 0x3, 0xA }, { 0x4, 0x5, 0x6, 0xB }, { 0x7, 0x8, 0x9, 0xC }, { 0xE, 0x0, 0xF, 0xD } };
 
 unsigned char* keypad_out = ( (unsigned char *) 0x40020C15);
 unsigned char* keypad_in = ( (unsigned char *) 0x40020C11);
 unsigned char* display_out = ( (unsigned char *) 0x40020C14);
 
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
    * ( (unsigned int *) 0x40020C00) &= 0x00FF0000;
    * ( (unsigned int *) 0x40020C00) |= 0x55005555;   // Configure port D bit 15-12, 7-0 as output
    * ( (unsigned char *) 0x40020C05) = 0;         // Configure port D GPIO_OTYPER
    * ( (unsigned short *) 0x40020C0E) = 0xAA;    // Configure port D GPIO_PUPDR
}

unsigned char keyb(void)
{
    char row, col, col_vals;
    
    for (row = 0; row < 4; row++)
    {
        // Activate row
        *keypad_out = (1 << (4 + row));
        
        // Read columns
        col_vals = *keypad_in & 0xF;
        
        for (col = 0; col < 4; col++)
        {
           if ( (col_vals & (1 << col)) != 0 )
           {
               return KeyValues[row][col];
           } 
        }
        
        // Deactivate row
        *keypad_out = 0;
    }
    
    return 0xFF;
}

void out7seg(unsigned char c)
{
    char outVal;
    
    if (c >= sizeof(SegCodes))
    {
        outVal = 0;
    }
    else
    {
        outVal = SegCodes[c];
    }
    
    *display_out = outVal;
}

void main(void)
{
    app_init();
    while (1)
    {
        out7seg(keyb());
    }
}

