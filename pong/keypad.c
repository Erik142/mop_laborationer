#define KEYPAD_BASE_ADDRESS 0x40020C00
#define KEYPAD_IDR ((unsigned char *) (KEYPAD_BASE_ADDRESS + 0x11))
#define KEYPAD_ODR ((unsigned char *) (KEYPAD_BASE_ADDRESS + 0x15))


unsigned const char KeyValues[4][4] = { { 0x1, 0x2, 0x3, 0xA }, { 0x4, 0x5, 0x6, 0xB }, { 0x7, 0x8, 0x9, 0xC }, { 0xE, 0x0, 0xF, 0xD } };

unsigned char keyb(void)
{
    char row, col, col_vals;
    
    for (row = 0; row < 4; row++)
    {
        // Activate row
        *KEYPAD_IDR = (1 << (4 + row));
        //*PORTD_ODR_HIGH = (1 << (4 + row));
        
        for (int i=0;i<10000;i++){
            
        }
        
        // Read columns
        col_vals = *KEYPAD_IDR & 0xF;
        //col_vals = *PORTD_IDR_HIGH & 0xF;
        
        for (col = 0; col < 4; col++)
        {
           if ( (col_vals & (1 << col)) != 0 )
           {
               return KeyValues[row][col];
           } 
        }
        
        // Deactivate row
        *KEYPAD_ODR = 0;
    }
    
    return 0xFF;
}