 #include "headers/graphicdisplay.h"
 
 #define B_E 0x40
 #define B_SELECT 0x04
 #define B_RW 0x02
 #define B_RS 0x01
 
 #define B_RST 0x20
 #define B_CS2 0x10
 #define B_CS1 0x08
 
 #define LCD_ON 0x3F
 #define LCD_OFF 0x3E
 #define LCD_SET_ADD 0x40
 #define LCD_SET_PAGE 0xB8
 #define LCD_DISP_START 0xC0
 #define LCD_BUSY 0x80
 
 #define GRAPHIC_CTRL_ODR ( (unsigned char *) portOdrLow)
 #define GRAPHIC CTRL_IDR ( (unsigned char *) portIdrLow)
 #define GRAPHIC_DATA_ODR ( (unsigned char *) portOdrHigh)
 #define GRAPHIC_DATA_IDR ( (unsigned char *) portIdrHigh)
 
void graphic_ctrl_bit_set(uint8_t x)
{
    *GRAPHIC_CTRL_ODR = (*GRAPHIC_CTRL_ODR & ~x) | x;
}

void graphic_ctrl_bit_clear(uint8_t x)
{
    *GRAPHIC_CTRL_ODR = (*GRAPHIC_CTRL_ODR & ~x);
}

void select_controller(uint8_t controller)
{
    switch(controller)
    {
        case 0:
            graphic_ctrl_bit_clear(B_CS1 | B_CS2);
            break;
        case B_CS1:
            graphic_ctrl_bit_set(B_CS1);
            graphic_ctrl_bit_clear(B_CS2);
            break;
        case B_CS2:
            graphic_ctrl_bit_clear(B_CS1);
            graphic_ctrl_bit_set(B_CS2);
            break;
        case (B_CS1 | B_CS2):
            graphic_ctrl_bit_set(B_CS1 | B_CS2);
            break;
        default:
            break;
    }
}

void graphic_wait_ready(void)
{
    graphic_ctrl_bit_clear(B_E);
    
    * ( (unsigned long *) portModer) = 0x00005555;
    
    graphic_ctrl_bit_clear(B_RS);
    graphic_ctrl_bit_set(B_RW);
    
    delay_500ns();
    
    unsigned char isbusy;
    
    do
    {
        graphic_ctrl_bit_set(B_E);
        delay_500ns();
        
        isbusy = *GRAPHIC_DATA_IDR & LCD_BUSY;
        
        graphic_ctrl_bit_clear(B_E);
        delay_500ns();
    } while(isbusy != 0);
    
    graphic_ctrl_bit_set(B_E);
    
    * ( (unsigned long *) portModer) = 0x55555555;
}

uint8_t graphic_read(uint8_t controller)
{
    uint8_t ret_val;
    
    graphic_ctrl_bit_clear(B_E);
    
    * ( (unsigned long *) portModer) = 0x00005555;
    
    graphic_ctrl_bit_set(B_RS | B_RW);
    
    select_controller(controller);
    delay_500ns();
    
    graphic_ctrl_bit_set(B_E);
    delay_500ns();
    
    ret_val = *GRAPHIC_DATA_IDR;
    
    graphic_ctrl_bit_clear(B_E);
    
    * ( (unsigned long *) portModer) = 0x55555555;
    
    if(controller == B_CS1)
    {
        select_controller(B_CS1);
        graphic_wait_ready();
    }
    if(controller == B_CS2)
    {
        select_controller(B_CS2);
        graphic_wait_ready();
    }
    
    return ret_val;
}

void graphic_write(uint8_t value, uint8_t controller)
{
    *GRAPHIC_DATA_ODR = value;
    
    select_controller(controller);
    delay_500ns();
    
    graphic_ctrl_bit_set(B_E);
    delay_500ns();
    graphic_ctrl_bit_clear(B_E);
    
    if ( (controller & B_CS1) )
    {
        select_controller(B_CS1);
        graphic_wait_ready();
    }
    if ( (controller & B_CS2) )
    {
        select_controller(B_CS2);
        graphic_wait_ready();
    }
    
    *GRAPHIC_DATA_ODR = 0x0;
    
    graphic_ctrl_bit_set(B_E);
    
    select_controller(0);
}

void graphic_write_command(uint8_t cmd, uint8_t controller)
{
    graphic_ctrl_bit_clear(B_E);
    
    select_controller(controller);
    
    graphic_ctrl_bit_clear(B_RS | B_RW);
    
    graphic_write(cmd, controller);
}

void graphic_write_data(uint8_t data, uint8_t controller)
{
    graphic_ctrl_bit_clear(B_E);
    
    select_controller(controller);
    
    graphic_ctrl_bit_set(B_RS);
    graphic_ctrl_bit_clear(B_RW);
    
    graphic_write(data,controller);
}

uint8_t graphic_read_data(uint8_t controller)
{
    (void) graphic_read(controller);
    return graphic_read(controller);
}

void graphic_initialize(void)
{
    //graphic_ctrl_bit_clear(B_SELECT);
    //delay_mikro(10);
    
    graphic_ctrl_bit_set(B_E);
    delay_mikro(10);
    
    graphic_ctrl_bit_clear(B_CS1 | B_CS2 | B_RST | B_E);
    delay_mili(30);
    
    graphic_ctrl_bit_set(B_RST);
    
    graphic_write_command(LCD_OFF, B_CS1 | B_CS2);
    graphic_write_command(LCD_ON, B_CS1 | B_CS2);
    graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
    graphic_write_command(LCD_SET_ADD, B_CS1 | B_CS2);
    graphic_write_command(LCD_SET_PAGE, B_CS1 | B_CS2);
    
    select_controller(0);
}

void graphic_clear_screen(void)
{
    char page, add;
    
    for(page = 0; page <= 7; page++)
    {
        graphic_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
        graphic_write_command(LCD_SET_ADD | 0, B_CS1 | B_CS2);
        
        for(add = 0; add <= 63; add++)
        {
            graphic_write_data(0, B_CS1 | B_CS2);
        }
    }
}

void pixel(unsigned x, unsigned y, unsigned set)
{
    if (x > 128 || x == 0 || y > 64 || y == 0 || set > 1)
    {
        return;
    }
    
    uint8_t bitmask, controller, x_fysisk, index = (y-1)/8;
    
    switch ((y-1) % 8)
    {
        case 0:
            bitmask = 0x01;
            break;
        case 1:
            bitmask = 0x02;
            break;
        case 2:
            bitmask = 0x04;
            break;
        case 3:
            bitmask = 0x08;
            break;
        case 4:
            bitmask = 0x10;
            break;
        case 5:
            bitmask = 0x20;
            break;
        case 6:
            bitmask = 0x40;
            break;
        case 7:
            bitmask = 0x80;
            break;
    }
    
    if (set == 0)
    {
        bitmask = ~bitmask;
    }
    
    if (x > 64)
    {
        controller = B_CS2;
        x_fysisk = x-65;
    }
    else
    {
        controller = B_CS1;
        x_fysisk = x-1;
    }
    
    graphic_write_command(LCD_SET_ADD | x_fysisk, controller);
    graphic_write_command(LCD_SET_PAGE | index, controller);
    
    uint8_t temp = graphic_read_data(controller);
    
    graphic_write_command(LCD_SET_ADD | x_fysisk, controller);
    
    if (set == 1)
    {
        bitmask = bitmask | temp;
    }
    else
    {
        bitmask = bitmask & temp;
    }
    
    graphic_write_data(bitmask, controller);
}