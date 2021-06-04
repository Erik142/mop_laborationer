/*
 * 	startup.c
 *
 */
 unsigned const char SegCodes[] = { 0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71 };
 unsigned const char KeyValues[4][4] = { { 0x1, 0x2, 0x3, 0xA }, { 0x4, 0x5, 0x6, 0xB }, { 0x7, 0x8, 0x9, 0xC }, { 0xE, 0x0, 0xF, 0xD } };
 
 unsigned char* keypad_out = ( (unsigned volatile char *) 0x40020C15);
 unsigned char* keypad_in = ( (unsigned volatile char *) 0x40020C11);
 unsigned char* display_out = ( (unsigned volatile char *) 0x40020C14);
 
 #define PORTD_IDR_HIGH *((unsigned char *) 0x40020C11)
 #define PORTD_ODR_HIGH *((unsigned char *) 0x40020C15)
 
 #define PORTD_ODR_LOW *((unsigned char *) 0x40020C14)
 
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
 
 #define B_CLEAR 0x01
 
 #define B_RST 0x20
 #define B_CS2 0x10
 #define B_CS1 0x08
 
 #define LCD_ON 0x3F
 #define LCD_OFF 0x3E
 #define LCD_SET_ADD 0x40
 #define LCD_SET_PAGE 0xB8
 #define LCD_DISP_START 0xC0
 #define LCD_BUSY 0x80
 
 #define MAX_POINTS 100
 
 #define GRAPHIC_CTRL_ODR ( (unsigned char *) portOdrLow)
 #define GRAPHIC CTRL_IDR ( (unsigned char *) portIdrLow)
 #define GRAPHIC_DATA_ODR ( (unsigned char *) portOdrHigh)
 #define GRAPHIC_DATA_IDR ( (unsigned char *) portIdrHigh)
 
 #define SYSTICK_BASE_ADDRESS 0xE000E010
 #define SYSTICK_CTRL ( (unsigned long *) (SYSTICK_BASE_ADDRESS + 0x0))
 #define SYSTICK_LOAD ( (unsigned long *) (SYSTICK_BASE_ADDRESS + 0x4))
 #define SYSTICK_VAL ( (unsigned long *) (SYSTICK_BASE_ADDRESS + 0x8))
 
 #define PLAYER_1_STR (char *) "PLAYER 1: "
 #define PLAYER_2_STR (char *) "PLAYER 2: "
 
 typedef unsigned char uint8_t;
 
 typedef struct tPoint
 {
     uint8_t x;
     uint8_t y;
 } POINT;
 
 typedef struct tGeometry
 {
     int numpoints;
     int sizex;
     int sizey;
     POINT px[MAX_POINTS];
 } GEOMETRY, *PGEOMETRY;
 
 typedef struct tObj
 {
     PGEOMETRY geo;
     int dirx,diry;
     int posx,posy;
     void (* draw) (struct tobj *);
     void (* clear) (struct tobj *);
     void (* move) (struct tobj *);
     void (* set_speed) (struct tobj *, int, int);
 } OBJECT, *POBJECT;
 
 void draw_object(POBJECT o);
 void clear_object(POBJECT o);
 void move_object(POBJECT o);
 void set_speed_object(POBJECT o, int speedx, int speedy);
 void move_paddle(POBJECT o);
 
 GEOMETRY ball_geometry =
 {
     12,                                //numpoints
     4,4,                               //sizex,sizey
     {
         {0,1}, {0,2}, {1,0}, {1,1},
         {1,2}, {1,3}, {2,0}, {2,1},    //points
         {2,2}, {2,3}, {3,1}, {3,2}
     }
 };
 
 GEOMETRY paddle_geometry =
 {
     40,
     2,20,
     {
         {0,0}, {1,0},
         {0,1}, {1,1},
         {0,2}, {1,2},
         {0,3}, {1,3},
         {0,4}, {1,4},
         {0,5}, {1,5},
         {0,6}, {1,6},
         {0,7}, {1,7},
         {0,8}, {1,8},
         {0,9}, {1,9},
         {0,10}, {1,10},
         {0,11}, {1,11},
         {0,12}, {1,12},
         {0,13}, {1,13},
         {0,14}, {1,14},
         {0,15}, {1,15},
         {0,16}, {1,16},
         {0,17}, {1,17},
         {0,18}, {1,18},
         {0,19}, {1,19}
     }
 };
 
 static OBJECT ball =
 {
     &ball_geometry,    // geometri för en boll
     4,4,               // initiala riktningskoordinater
     64,32,               // initial startposition
     draw_object,
     clear_object,
     move_object,
     set_speed_object
 };
 
 static OBJECT left_paddle = 
 {
     &paddle_geometry,
     0,0,
     2,27,
     draw_object,
     clear_object,
     move_paddle,
     set_speed_object
 };
 
 static OBJECT right_paddle =
 {
     &paddle_geometry,
     0,0,
     126,27,
     draw_object,
     clear_object,
     move_paddle,
     set_speed_object
 };
 
 static volatile char left_point;
 static volatile char right_point;
 
__attribute__((naked)) __attribute__((section (".start_section")) )
void startup ( void )
{
__asm__ volatile(" LDR R0,=0x2001C000\n");		/* set stack */
__asm__ volatile(" MOV SP,R0\n");
__asm__ volatile(" BL main\n");					/* call main */
__asm__ volatile(".L1: B .L1\n");				/* never return */
}

unsigned char keyb(char column)
{
    char row, col, col_vals;
    
    for (row = 0; row < 4; row++)
    {
        // Activate row
        *keypad_out = (1 << (4 + row));
        //*PORTD_ODR_HIGH = (1 << (4 + row));
        
        for (int i=0;i<10000;i++){
            
        }
        
        // Read columns
        col_vals = *keypad_in & 0xF;
        //col_vals = *PORTD_IDR_HIGH & 0xF;
        
        if ( (col_vals & (1 << (column - 1))) != 0 )
        {
            return KeyValues[row][column - 1];
        } 
        
        // Deactivate row
        *keypad_out = 0;
    }
    
    return 0xFF;
}

void delay_250ns(void)
{
    *SYSTICK_CTRL = 0x0;
    
    // Set STK_LOAD value (250 ns = 42 clock cycles = 0x2A)
    *SYSTICK_LOAD = 0x2A;
    
#ifdef SIMULATOR
    *SYSTICK_LOAD /= 0x2A; // Decrease delay if we're simulating
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
    limit = limit/10;
    
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
    
    unsigned char busy;
    
    do
    {
        graphic_ctrl_bit_set(B_E);
        delay_500ns();
        
        busy = *GRAPHIC_DATA_IDR & LCD_BUSY;
        
        graphic_ctrl_bit_clear(B_E);
        delay_500ns();
    } while(busy != 0);
    
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
    graphic_ctrl_bit_clear(B_SELECT);
    delay_mikro(10);
    
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

void draw_object(POBJECT o)
{
    int i;
    
    for(i = 0; i < o->geo->numpoints; i++)
    {
        pixel(o->posx + o->geo->px[i].x,o->posy + o->geo->px[i].y,1);
    }
}

void clear_object(POBJECT o)
{
        int i;
    
    for(i = 0; i < o->geo->numpoints; i++)
    {
        pixel(o->posx + o->geo->px[i].x,o->posy + o->geo->px[i].y,0);
    }
}

void move_object(POBJECT o)
{
    clear_object(o);
    
    o->posx += o->dirx;
    o->posy += o->diry;
    
    if((o->posy) >= left_paddle.posy && (o->posy + o->geo->sizey) <= (left_paddle.posy + left_paddle.geo->sizey))
    {
        if(o->posx <= (left_paddle.posx + left_paddle.geo->sizex))
        {
            o->dirx *= -1;
            o->posx = left_paddle.posx + o->geo->sizex;
        }
    }
    
    if(o->posx < 1)
    {
        o->posx = 64;
        right_point += 1;
    }
    if( (o->posx + o->geo->sizex) > 128)
    {
        o->posx = 64;
        left_point += 1; 
    }
    
    if((o->posy) >= right_paddle.posy && (o->posy + o->geo->sizey) <= (right_paddle.posy + right_paddle.geo->sizey))
    {
        if( (o->posx + o->geo->sizex) >= right_paddle.posx)
        {
            o->dirx *= -1;
            o->posx = right_paddle.posx - o->geo->sizex;
        }
    }
    else
    {
        
    }
    
    if(o->posy < 1)
    {
        o->diry *= -1;
    }
    if( (o->posy + o->geo->sizey) > 64 )
    {
        o->diry *= -1;
    }
    
    draw_object(o);
}

void move_paddle(POBJECT o)
{
    clear_object(o);
    
    o->posx += o->dirx;
    o->posy += o->diry;
   
    if(o->posy < 1)
    {
        o->diry = 0;
    }
    if( (o->posy + o->geo->sizey) > 64 )
    {
        o->diry = 0;
    }
    
    draw_object(o);
    o->dirx = 0;
    o->diry = 0;
}

void set_speed_object(POBJECT o, int speedx, int speedy)
{
    o->dirx = speedx;
    o->diry = speedy;
}

void ascii_ctrl_bit_set(unsigned char x)
{
    *GRAPHIC_CTRL_ODR = (*GRAPHIC_CTRL_ODR & ~x) | x;
}

void ascii_ctrl_bit_clear(unsigned char x)
{
    *GRAPHIC_CTRL_ODR = (*GRAPHIC_CTRL_ODR & ~x);
}

void ascii_write_controller(unsigned char byte)
{
    ascii_ctrl_bit_set(B_E);
    *GRAPHIC_DATA_ODR = byte;
    delay_250ns();
    ascii_ctrl_bit_clear(B_E);
}

unsigned char ascii_read_controller(void)
{
    unsigned char ret_val;
    
    ascii_ctrl_bit_set(B_E);
    
    delay_250ns();
    delay_250ns();
    
    ret_val = *GRAPHIC_DATA_IDR;
    
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

void set_scoreboard(void)
{
    ascii_ctrl_bit_set(B_SELECT);
    
    ascii_clear_display();
    
    char *str = PLAYER_1_STR;
    
    while(*str)
    {
        ascii_write_char(*str++);
    }
    
    ascii_write_char(left_point + 48);
    
    ascii_gotoxy(1,2);
    
    str = PLAYER_2_STR;
    
    while(*str)
    {
        ascii_write_char(*str++);
    }
    
    ascii_write_char(right_point + 48);
    
    ascii_ctrl_bit_clear(B_SELECT);
}

void ascii_clear_display(void)
{
    ascii_ctrl_bit_clear(B_RS);
    
    ascii_ctrl_bit_clear(B_RW);
    
    ascii_write_cmd(B_CLEAR);
    delay_mili(2);
}

void app_init(void)
{   
    left_point = 0;
    right_point = 0;
   #ifdef USBDM
    *((unsigned long *) 0x40023830) = 0x18;
    __asm volatile ("LDR R0,=0x08000209\n BLX R0 \n");
    #endif
    *((unsigned long *) portModer) = 0x55555555;
    * ( (unsigned int *) 0x40020C00) = 0x55005555;      // Configure port D bit 15-12, 7-0 as output
    * ( (unsigned char *) 0x40020C05) = 0;              // Configure port D GPIO_OTYPER
    * ( (unsigned short *) 0x40020C0E) = 0xAA;          // Configure port D GPIO_PUPDR
}

void main(void)
{
    POBJECT p = &ball;
    POBJECT lp = &left_paddle;
    POBJECT rp = &right_paddle;
    
    app_init();
    
    ascii_init();
    ascii_gotoxy(1,1);
    
    graphic_initialize();
#ifndef SIMULATOR
    graphic_clear_screen();
#endif

    //set_scoreboard();

    //p->set_speed(p,4,1);
    
    unsigned char c1, c2;
    
    while(1)
    {
        set_scoreboard();
        lp->move(lp);
        rp->move(rp);
        //delay_mili(40);
        c1 = keyb(1);
        c2 = keyb(4);
        switch (c1)
        {
            case 1: 
            if (lp->posy <= 0)
            {
                lp->set_speed(lp, 0, 0);
            }
            else
            {
                lp->set_speed(lp, 0, -4);
            }
            break;
            case 14:
            if ((lp->posy + lp->geo->sizey) >= 64)
            {
                lp->set_speed(lp, 0, 0);
            }
            else
            {
                lp->set_speed(lp, 0, 4);
            }
            break;
        }
         switch (c2)
        {
            case 0xA:
            if (rp->posy <= 0)
            {
                rp->set_speed(rp, 0, 0);
            }
            else
            {
                rp->set_speed(rp, 0, -4);
            }
            break;
            case 0xD: 
            if ((rp->posy + rp->geo->sizey) >= 64)
            {
                rp->set_speed(rp, 0, 0);
            }
            else
            {
                rp->set_speed(rp, 0, 4);
            }
            break;
        }
         p->move(p);
#ifndef SIMULATOR
        delay_mili(30); // 25 bilder per sekund
#endif
    }

}


