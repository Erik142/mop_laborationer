 #ifndef GRAPHIC_DISPLAY_H
 #define GRAPHIC_DISPLAY_H
 
 #define PORT_E_BASE_ADDRESS 0x40021000
 // Definiera word-adresser för initieringar
 #define portModer PORT_E_BASE_ADDRESS + 0x00
 #define portOtyper PORT_E_BASE_ADDRESS + 0x04
 #define portOspeedr PORT_E_BASE_ADDRESS + 0x08
 #define portPupdr PORT_E_BASE_ADDRESS + 0x0C
 // Definiera byte-adresser för data- och styrregister
 #define portIdrLow PORT_E_BASE_ADDRESS + 0x10
 #define portIdrHigh PORT_E_BASE_ADDRESS + 0x11
 #define portOdrLow PORT_E_BASE_ADDRESS + 0x14
 #define portOdrHigh PORT_E_BASE_ADDRESS + 0x15
 
 typedef unsigned char uint8_t;
 
 void graphic_ctrl_bit_set(uint8_t x);
 void graphic_ctrl_bit_clear(uint8_t x);
 
 void select_controller(uint8_t controller);
 
 void graphic_wait_ready(void);
 
 uint8_t graphic_read(uint8_t controller);
 uint8_t graphic_read_data(uint8_t controller);
  
 void graphic_write(uint8_t value, uint8_t controller);
 void graphic_write_command(uint8_t cmd, uint8_t controller);
 void graphic_write_data(uint8_t data, uint8_t controller);
 
 void graphic_initialize(void);
 
 void graphic_clear_screen(void);
 
 void pixel(unsigned x, unsigned y, unsigned set);
 
 #endif