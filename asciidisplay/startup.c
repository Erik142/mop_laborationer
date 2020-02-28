/*
 * 	startup.c
 *
 */
 #define PORT_BASE 0x40021000
 // Definiera word-adresser för initieringar
 #define portModer PORT_BASE + 0x00
 #define portOtyper PORT_BASE + 0x04
 #define portOspeedr PORT_BASE + 0x08
 #define portPupdr PORT_BASE + 0x0C
 // Definiera byte-adresser för data- och styrregister
 #define portIdrLow PORT_BASE + 0x10
 #define portIdrHigh PORT_BASE + 0x11
 #define portOdrLow PORT_BASE + 0x14
 #define portOdrHigh PORT_BASE + 0x15
 
 #define B_E 0x40
 #define B_SELECT 0x04
 #define B_RW 0x02
 #define B_RS 0x01
 
 unsigned const long systick_base_addr = 0xE000E010;
 unsigned long *systick_ctrl_addr = ( (unsigned long *) (systick_base_addr + 0x0));
 unsigned long *systick_load_addr = ( (unsigned long *) (systick_base_addr + 0x4));
 unsigned long *systick_val_addr = ( (unsigned long *) (systick_base_addr + 0x8));
 
 typedef struct ascii_reg
 {
     unsigned char *out;
     unsigned char *in;
 } ASCII_REG;
 
 ASCII_REG ascii_ctrl_reg, ascii_data_reg;
 
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

void ascii_ctrl_bit_set(unsigned char x)
{
    *ascii_ctrl_reg.out = (*ascii_ctrl_reg.out & ~x) | x;
    
    char val = *ascii_ctrl_reg.out;
}

void ascii_ctrl_bit_clear(unsigned char x)
{
    *ascii_ctrl_reg.out = (*ascii_ctrl_reg.out & ~x);
}

void ascii_write_controller(unsigned char byte)
{
    ascii_ctrl_bit_set(B_E);
    *ascii_data_reg.out = byte;
    delay_250ns();
    ascii_ctrl_bit_clear(B_E);
}

unsigned char ascii_read_controller(void)
{
    unsigned char ret_val;
    
    ascii_ctrl_bit_set(B_E);
    
    delay_250ns();
    delay_250ns();
    
    ret_val = *ascii_data_reg.in;
    
    ascii_ctrl_bit_clear(B_E);
    
    return ret_val;
}

void ascii_write_cmd(unsigned char command)
{
    ascii_ctrl_bit_clear(B_RW | B_RS);
    ascii_write_controller(command);
}

void ascii_write_data(unsigned char data)
{
    ascii_ctrl_bit_set(B_RS);
    ascii_ctrl_bit_clear(B_RW);
    
    ascii_write_controller(data);
}

unsigned char ascii_read_status(void)
{
    unsigned char status;
    
    * ( (unsigned short *) (portModer + 0x2)) = 0x0000;
    
    ascii_ctrl_bit_clear(B_RS);
    ascii_ctrl_bit_set(B_RW);
    
    status = ascii_read_controller();
    
    * ( (unsigned short *) (portModer + 0x2)) = 0x5555;
    
    return status;
}

unsigned char ascii_read_data(void)
{
    unsigned char data;
    
    * ( (unsigned short *) (portModer + 0x2)) = 0x0000;
    
    ascii_ctrl_bit_set(B_RS | B_RW);
    
    data = ascii_read_controller();
    
    * ( (unsigned short *) (portModer + 0x2)) = 0x5555;
    
    return data;
}

void ascii_init(void)
{
    ascii_ctrl_bit_set(B_SELECT);
    
    while( (ascii_read_status() & 0x80) == 0x80);
    
    delay_mikro(8);
    
    // Set font size to 5x8 and set 2 rows
    ascii_write_cmd(0x3C);
    delay_mikro(40);
    
    // Set display and marker on
    ascii_write_cmd(0x0E);
    delay_mikro(40);
    
    // Clear Display
    ascii_write_cmd(0x01);
    delay_mili(2);
    
    // Set addressing mode to increment, no buffer shift
    ascii_write_cmd(0x06);
    delay_mikro(40);
}

void ascii_write_char(char c)
{
    while( (ascii_read_status() & 0x80) == 0x80);
    
    delay_mikro(8);
    
    ascii_write_data(c);
    
    delay_mikro(43);
}

void ascii_gotoxy(int x, int y)
{
    char address = x - 1;
    
    if (y == 2)
    {
        address += 0x40;
    }
    
    ascii_write_cmd( 0x80 | address);
}

void app_init(void)
{
    ascii_ctrl_reg.in = ( (unsigned char *) portIdrLow);
    ascii_ctrl_reg.out = ( (unsigned char *) portOdrLow);
    
    ascii_data_reg.in = ( (unsigned char *) portIdrHigh);
    ascii_data_reg.out = ( (unsigned char *) portOdrHigh);
    
    * ( (unsigned long *) portModer) = 0x55555555;
}

void main(void)
{
    char *s;
    char test1[] = "Alfanumerisk ";
    char test2[] = "Display - test";
    
    app_init();
    ascii_init();
    ascii_gotoxy(1,1);
    
    s = test1;
    
    while( *s )
    {
        ascii_write_char(*s++);
    }
    
    ascii_gotoxy(1,2);
    
    s = test2;
    
    while( *s )
    {
        ascii_write_char(*s++);
    }
}

