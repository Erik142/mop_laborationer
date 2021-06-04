   1              		.arch armv6-m
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 6
   9              		.eabi_attribute 34, 0
  10              		.eabi_attribute 18, 4
  11              		.file	"startup.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.global	SegCodes
  16              		.section	.rodata
  17              		.align	2
  20              	SegCodes:
  21 0000 3F       		.byte	63
  22 0001 06       		.byte	6
  23 0002 5B       		.byte	91
  24 0003 4F       		.byte	79
  25 0004 66       		.byte	102
  26 0005 6D       		.byte	109
  27 0006 7D       		.byte	125
  28 0007 07       		.byte	7
  29 0008 7F       		.byte	127
  30 0009 6F       		.byte	111
  31 000a 77       		.byte	119
  32 000b 7C       		.byte	124
  33 000c 39       		.byte	57
  34 000d 5E       		.byte	94
  35 000e 79       		.byte	121
  36 000f 71       		.byte	113
  37              		.global	KeyValues
  38              		.align	2
  41              	KeyValues:
  42 0010 01       		.byte	1
  43 0011 02       		.byte	2
  44 0012 03       		.byte	3
  45 0013 0A       		.byte	10
  46 0014 04       		.byte	4
  47 0015 05       		.byte	5
  48 0016 06       		.byte	6
  49 0017 0B       		.byte	11
  50 0018 07       		.byte	7
  51 0019 08       		.byte	8
  52 001a 09       		.byte	9
  53 001b 0C       		.byte	12
  54 001c 0E       		.byte	14
  55 001d 00       		.byte	0
  56 001e 0F       		.byte	15
  57 001f 0D       		.byte	13
  58              		.global	keypad_out
  59              		.data
  60              		.align	2
  63              	keypad_out:
  64 0000 150C0240 		.word	1073875989
  65              		.global	keypad_in
  66              		.align	2
  69              	keypad_in:
  70 0004 110C0240 		.word	1073875985
  71              		.global	display_out
  72              		.align	2
  75              	display_out:
  76 0008 140C0240 		.word	1073875988
  77              		.global	ball_geometry
  78              		.align	2
  81              	ball_geometry:
  82 000c 0C000000 		.word	12
  83 0010 04000000 		.word	4
  84 0014 04000000 		.word	4
  85 0018 00       		.byte	0
  86 0019 01       		.byte	1
  87 001a 00       		.byte	0
  88 001b 02       		.byte	2
  89 001c 01       		.byte	1
  90 001d 00       		.byte	0
  91 001e 01       		.byte	1
  92 001f 01       		.byte	1
  93 0020 01       		.byte	1
  94 0021 02       		.byte	2
  95 0022 01       		.byte	1
  96 0023 03       		.byte	3
  97 0024 02       		.byte	2
  98 0025 00       		.byte	0
  99 0026 02       		.byte	2
 100 0027 01       		.byte	1
 101 0028 02       		.byte	2
 102 0029 02       		.byte	2
 103 002a 02       		.byte	2
 104 002b 03       		.byte	3
 105 002c 03       		.byte	3
 106 002d 01       		.byte	1
 107 002e 03       		.byte	3
 108 002f 02       		.byte	2
 109 0030 00000000 		.space	176
 109      00000000 
 109      00000000 
 109      00000000 
 109      00000000 
 110              		.global	paddle_geometry
 111              		.align	2
 114              	paddle_geometry:
 115 00e0 28000000 		.word	40
 116 00e4 02000000 		.word	2
 117 00e8 14000000 		.word	20
 118 00ec 00       		.byte	0
 119 00ed 00       		.byte	0
 120 00ee 01       		.byte	1
 121 00ef 00       		.byte	0
 122 00f0 00       		.byte	0
 123 00f1 01       		.byte	1
 124 00f2 01       		.byte	1
 125 00f3 01       		.byte	1
 126 00f4 00       		.byte	0
 127 00f5 02       		.byte	2
 128 00f6 01       		.byte	1
 129 00f7 02       		.byte	2
 130 00f8 00       		.byte	0
 131 00f9 03       		.byte	3
 132 00fa 01       		.byte	1
 133 00fb 03       		.byte	3
 134 00fc 00       		.byte	0
 135 00fd 04       		.byte	4
 136 00fe 01       		.byte	1
 137 00ff 04       		.byte	4
 138 0100 00       		.byte	0
 139 0101 05       		.byte	5
 140 0102 01       		.byte	1
 141 0103 05       		.byte	5
 142 0104 00       		.byte	0
 143 0105 06       		.byte	6
 144 0106 01       		.byte	1
 145 0107 06       		.byte	6
 146 0108 00       		.byte	0
 147 0109 07       		.byte	7
 148 010a 01       		.byte	1
 149 010b 07       		.byte	7
 150 010c 00       		.byte	0
 151 010d 08       		.byte	8
 152 010e 01       		.byte	1
 153 010f 08       		.byte	8
 154 0110 00       		.byte	0
 155 0111 09       		.byte	9
 156 0112 01       		.byte	1
 157 0113 09       		.byte	9
 158 0114 00       		.byte	0
 159 0115 0A       		.byte	10
 160 0116 01       		.byte	1
 161 0117 0A       		.byte	10
 162 0118 00       		.byte	0
 163 0119 0B       		.byte	11
 164 011a 01       		.byte	1
 165 011b 0B       		.byte	11
 166 011c 00       		.byte	0
 167 011d 0C       		.byte	12
 168 011e 01       		.byte	1
 169 011f 0C       		.byte	12
 170 0120 00       		.byte	0
 171 0121 0D       		.byte	13
 172 0122 01       		.byte	1
 173 0123 0D       		.byte	13
 174 0124 00       		.byte	0
 175 0125 0E       		.byte	14
 176 0126 01       		.byte	1
 177 0127 0E       		.byte	14
 178 0128 00       		.byte	0
 179 0129 0F       		.byte	15
 180 012a 01       		.byte	1
 181 012b 0F       		.byte	15
 182 012c 00       		.byte	0
 183 012d 10       		.byte	16
 184 012e 01       		.byte	1
 185 012f 10       		.byte	16
 186 0130 00       		.byte	0
 187 0131 11       		.byte	17
 188 0132 01       		.byte	1
 189 0133 11       		.byte	17
 190 0134 00       		.byte	0
 191 0135 12       		.byte	18
 192 0136 01       		.byte	1
 193 0137 12       		.byte	18
 194 0138 00       		.byte	0
 195 0139 13       		.byte	19
 196 013a 01       		.byte	1
 197 013b 13       		.byte	19
 198 013c 00000000 		.space	120
 198      00000000 
 198      00000000 
 198      00000000 
 198      00000000 
 199              		.align	2
 202              	ball:
 203 01b4 00000000 		.word	ball_geometry
 204 01b8 04000000 		.word	4
 205 01bc 04000000 		.word	4
 206 01c0 40000000 		.word	64
 207 01c4 20000000 		.word	32
 208 01c8 00000000 		.word	draw_object
 209 01cc 00000000 		.word	clear_object
 210 01d0 00000000 		.word	move_object
 211 01d4 00000000 		.word	set_speed_object
 212              		.align	2
 215              	left_paddle:
 216 01d8 00000000 		.word	paddle_geometry
 217 01dc 00000000 		.word	0
 218 01e0 00000000 		.word	0
 219 01e4 02000000 		.word	2
 220 01e8 1B000000 		.word	27
 221 01ec 00000000 		.word	draw_object
 222 01f0 00000000 		.word	clear_object
 223 01f4 00000000 		.word	move_paddle
 224 01f8 00000000 		.word	set_speed_object
 225              		.align	2
 228              	right_paddle:
 229 01fc 00000000 		.word	paddle_geometry
 230 0200 00000000 		.word	0
 231 0204 00000000 		.word	0
 232 0208 7E000000 		.word	126
 233 020c 1B000000 		.word	27
 234 0210 00000000 		.word	draw_object
 235 0214 00000000 		.word	clear_object
 236 0218 00000000 		.word	move_paddle
 237 021c 00000000 		.word	set_speed_object
 238              		.bss
 239              	left_point:
 240 0000 00       		.space	1
 242              	right_point:
 243 0001 00       		.space	1
 245              		.section	.start_section,"ax",%progbits
 246              		.align	1
 247              		.global	startup
 248              		.syntax unified
 249              		.code	16
 250              		.thumb_func
 251              		.fpu softvfp
 253              	startup:
 254              	.LFB0:
 255              		.file 1 "Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong/startup.c"
   1:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** /*
   2:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  * 	startup.c
   3:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  *
   4:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  */
   5:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  unsigned const char SegCodes[] = { 0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x7
   6:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  unsigned const char KeyValues[4][4] = { { 0x1, 0x2, 0x3, 0xA }, { 0x4, 0x5, 0x6, 0xB }, { 0x7, 0x8
   7:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
   8:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  unsigned char* keypad_out = ( (unsigned volatile char *) 0x40020C15);
   9:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  unsigned char* keypad_in = ( (unsigned volatile char *) 0x40020C11);
  10:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  unsigned char* display_out = ( (unsigned volatile char *) 0x40020C14);
  11:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
  12:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define PORTD_IDR_HIGH *((unsigned char *) 0x40020C11)
  13:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define PORTD_ODR_HIGH *((unsigned char *) 0x40020C15)
  14:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
  15:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define PORTD_ODR_LOW *((unsigned char *) 0x40020C14)
  16:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
  17:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define PORT_BASE 0x40021000
  18:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  // Definiera word-adresser för initieringar
  19:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define portModer PORT_BASE + 0x00
  20:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define portOtyper PORT_BASE + 0x04
  21:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define portOspeedr PORT_BASE + 0x08
  22:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define portPupdr PORT_BASE + 0x0C
  23:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  // Definiera byte-adresser för data- och styrregister
  24:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define portIdrLow PORT_BASE + 0x10
  25:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define portIdrHigh PORT_BASE + 0x11
  26:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define portOdrLow PORT_BASE + 0x14
  27:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define portOdrHigh PORT_BASE + 0x15
  28:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
  29:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define B_E 0x40
  30:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define B_SELECT 0x04
  31:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define B_RW 0x02
  32:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define B_RS 0x01
  33:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
  34:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define B_CLEAR 0x01
  35:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
  36:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define B_RST 0x20
  37:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define B_CS2 0x10
  38:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define B_CS1 0x08
  39:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
  40:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define LCD_ON 0x3F
  41:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define LCD_OFF 0x3E
  42:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define LCD_SET_ADD 0x40
  43:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define LCD_SET_PAGE 0xB8
  44:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define LCD_DISP_START 0xC0
  45:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define LCD_BUSY 0x80
  46:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
  47:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define MAX_POINTS 100
  48:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
  49:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define GRAPHIC_CTRL_ODR ( (unsigned char *) portOdrLow)
  50:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define GRAPHIC CTRL_IDR ( (unsigned char *) portIdrLow)
  51:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define GRAPHIC_DATA_ODR ( (unsigned char *) portOdrHigh)
  52:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define GRAPHIC_DATA_IDR ( (unsigned char *) portIdrHigh)
  53:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
  54:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define SYSTICK_BASE_ADDRESS 0xE000E010
  55:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define SYSTICK_CTRL ( (unsigned long *) (SYSTICK_BASE_ADDRESS + 0x0))
  56:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define SYSTICK_LOAD ( (unsigned long *) (SYSTICK_BASE_ADDRESS + 0x4))
  57:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define SYSTICK_VAL ( (unsigned long *) (SYSTICK_BASE_ADDRESS + 0x8))
  58:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
  59:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define PLAYER_1_STR (char *) "PLAYER 1: "
  60:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  #define PLAYER_2_STR (char *) "PLAYER 2: "
  61:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
  62:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  typedef unsigned char uint8_t;
  63:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
  64:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  typedef struct tPoint
  65:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  {
  66:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      uint8_t x;
  67:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      uint8_t y;
  68:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  } POINT;
  69:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
  70:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  typedef struct tGeometry
  71:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  {
  72:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      int numpoints;
  73:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      int sizex;
  74:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      int sizey;
  75:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      POINT px[MAX_POINTS];
  76:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  } GEOMETRY, *PGEOMETRY;
  77:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
  78:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  typedef struct tObj
  79:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  {
  80:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      PGEOMETRY geo;
  81:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      int dirx,diry;
  82:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      int posx,posy;
  83:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      void (* draw) (struct tobj *);
  84:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      void (* clear) (struct tobj *);
  85:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      void (* move) (struct tobj *);
  86:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      void (* set_speed) (struct tobj *, int, int);
  87:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  } OBJECT, *POBJECT;
  88:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
  89:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  void draw_object(POBJECT o);
  90:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  void clear_object(POBJECT o);
  91:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  void move_object(POBJECT o);
  92:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  void set_speed_object(POBJECT o, int speedx, int speedy);
  93:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  void move_paddle(POBJECT o);
  94:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
  95:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  GEOMETRY ball_geometry =
  96:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  {
  97:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      12,                                //numpoints
  98:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      4,4,                               //sizex,sizey
  99:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      {
 100:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {0,1}, {0,2}, {1,0}, {1,1},
 101:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {1,2}, {1,3}, {2,0}, {2,1},    //points
 102:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {2,2}, {2,3}, {3,1}, {3,2}
 103:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      }
 104:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  };
 105:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
 106:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  GEOMETRY paddle_geometry =
 107:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  {
 108:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      40,
 109:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      2,20,
 110:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      {
 111:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {0,0}, {1,0},
 112:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {0,1}, {1,1},
 113:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {0,2}, {1,2},
 114:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {0,3}, {1,3},
 115:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {0,4}, {1,4},
 116:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {0,5}, {1,5},
 117:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {0,6}, {1,6},
 118:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {0,7}, {1,7},
 119:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {0,8}, {1,8},
 120:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {0,9}, {1,9},
 121:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {0,10}, {1,10},
 122:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {0,11}, {1,11},
 123:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {0,12}, {1,12},
 124:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {0,13}, {1,13},
 125:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {0,14}, {1,14},
 126:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {0,15}, {1,15},
 127:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {0,16}, {1,16},
 128:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {0,17}, {1,17},
 129:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {0,18}, {1,18},
 130:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          {0,19}, {1,19}
 131:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      }
 132:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  };
 133:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
 134:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  static OBJECT ball =
 135:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  {
 136:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      &ball_geometry,    // geometri för en boll
 137:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      4,4,               // initiala riktningskoordinater
 138:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      64,32,               // initial startposition
 139:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      draw_object,
 140:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      clear_object,
 141:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      move_object,
 142:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      set_speed_object
 143:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  };
 144:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
 145:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  static OBJECT left_paddle = 
 146:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  {
 147:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      &paddle_geometry,
 148:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      0,0,
 149:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      2,27,
 150:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      draw_object,
 151:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      clear_object,
 152:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      move_paddle,
 153:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      set_speed_object
 154:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  };
 155:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
 156:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  static OBJECT right_paddle =
 157:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  {
 158:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      &paddle_geometry,
 159:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      0,0,
 160:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      126,27,
 161:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      draw_object,
 162:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      clear_object,
 163:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      move_paddle,
 164:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****      set_speed_object
 165:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  };
 166:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
 167:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  static volatile char left_point;
 168:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  static volatile char right_point;
 169:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****  
 170:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** __attribute__((naked)) __attribute__((section (".start_section")) )
 171:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void startup ( void )
 172:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 256              		.loc 1 172 0
 257              		.cfi_startproc
 258              		@ Naked Function: prologue and epilogue provided by programmer.
 259              		@ args = 0, pretend = 0, frame = 0
 260              		@ frame_needed = 1, uses_anonymous_args = 0
 173:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** __asm__ volatile(" LDR R0,=0x2001C000\n");		/* set stack */
 261              		.loc 1 173 0
 262              		.syntax divided
 263              	@ 173 "Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong/startup.c" 1
 264 0000 0248     		 LDR R0,=0x2001C000
 265              	
 266              	@ 0 "" 2
 174:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** __asm__ volatile(" MOV SP,R0\n");
 267              		.loc 1 174 0
 268              	@ 174 "Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong/startup.c" 1
 269 0002 8546     		 MOV SP,R0
 270              	
 271              	@ 0 "" 2
 175:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** __asm__ volatile(" BL main\n");					/* call main */
 272              		.loc 1 175 0
 273              	@ 175 "Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong/startup.c" 1
 274 0004 FFF7FEFF 		 BL main
 275              	
 276              	@ 0 "" 2
 176:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** __asm__ volatile(".L1: B .L1\n");				/* never return */
 277              		.loc 1 176 0
 278              	@ 176 "Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong/startup.c" 1
 279 0008 FEE7     		.L1: B .L1
 280              	
 281              	@ 0 "" 2
 177:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 282              		.loc 1 177 0
 283              		.thumb
 284              		.syntax unified
 285 000a C046     		nop
 286              		.cfi_endproc
 287              	.LFE0:
 289              		.text
 290              		.align	1
 291              		.global	keyb
 292              		.syntax unified
 293              		.code	16
 294              		.thumb_func
 295              		.fpu softvfp
 297              	keyb:
 298              	.LFB1:
 178:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 179:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** unsigned char keyb(char column)
 180:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 299              		.loc 1 180 0
 300              		.cfi_startproc
 301              		@ args = 0, pretend = 0, frame = 24
 302              		@ frame_needed = 1, uses_anonymous_args = 0
 303 0000 80B5     		push	{r7, lr}
 304              		.cfi_def_cfa_offset 8
 305              		.cfi_offset 7, -8
 306              		.cfi_offset 14, -4
 307 0002 86B0     		sub	sp, sp, #24
 308              		.cfi_def_cfa_offset 32
 309 0004 00AF     		add	r7, sp, #0
 310              		.cfi_def_cfa_register 7
 311 0006 0200     		movs	r2, r0
 312 0008 FB1D     		adds	r3, r7, #7
 313 000a 1A70     		strb	r2, [r3]
 181:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     char row, col, col_vals;
 182:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 183:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     for (row = 0; row < 4; row++)
 314              		.loc 1 183 0
 315 000c 1723     		movs	r3, #23
 316 000e FB18     		adds	r3, r7, r3
 317 0010 0022     		movs	r2, #0
 318 0012 1A70     		strb	r2, [r3]
 319 0014 3AE0     		b	.L3
 320              	.L8:
 184:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 185:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         // Activate row
 186:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         *keypad_out = (1 << (4 + row));
 321              		.loc 1 186 0
 322 0016 1723     		movs	r3, #23
 323 0018 FB18     		adds	r3, r7, r3
 324 001a 1B78     		ldrb	r3, [r3]
 325 001c 0433     		adds	r3, r3, #4
 326 001e 0122     		movs	r2, #1
 327 0020 9A40     		lsls	r2, r2, r3
 328 0022 1F4B     		ldr	r3, .L9
 329 0024 1B68     		ldr	r3, [r3]
 330 0026 D2B2     		uxtb	r2, r2
 331 0028 1A70     		strb	r2, [r3]
 332              	.LBB2:
 187:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         //*PORTD_ODR_HIGH = (1 << (4 + row));
 188:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         
 189:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         for (int i=0;i<10000;i++){
 333              		.loc 1 189 0
 334 002a 0023     		movs	r3, #0
 335 002c 3B61     		str	r3, [r7, #16]
 336 002e 02E0     		b	.L4
 337              	.L5:
 338              		.loc 1 189 0 is_stmt 0 discriminator 3
 339 0030 3B69     		ldr	r3, [r7, #16]
 340 0032 0133     		adds	r3, r3, #1
 341 0034 3B61     		str	r3, [r7, #16]
 342              	.L4:
 343              		.loc 1 189 0 discriminator 1
 344 0036 3B69     		ldr	r3, [r7, #16]
 345 0038 1A4A     		ldr	r2, .L9+4
 346 003a 9342     		cmp	r3, r2
 347 003c F8DD     		ble	.L5
 348              	.LBE2:
 190:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             
 191:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         }
 192:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         
 193:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         // Read columns
 194:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         col_vals = *keypad_in & 0xF;
 349              		.loc 1 194 0 is_stmt 1
 350 003e 1A4B     		ldr	r3, .L9+8
 351 0040 1B68     		ldr	r3, [r3]
 352 0042 1A78     		ldrb	r2, [r3]
 353 0044 0F20     		movs	r0, #15
 354 0046 3B18     		adds	r3, r7, r0
 355 0048 0F21     		movs	r1, #15
 356 004a 0A40     		ands	r2, r1
 357 004c 1A70     		strb	r2, [r3]
 195:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         //col_vals = *PORTD_IDR_HIGH & 0xF;
 196:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         
 197:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         if ( (col_vals & (1 << (column - 1))) != 0 )
 358              		.loc 1 197 0
 359 004e 3B18     		adds	r3, r7, r0
 360 0050 1A78     		ldrb	r2, [r3]
 361 0052 FB1D     		adds	r3, r7, #7
 362 0054 1B78     		ldrb	r3, [r3]
 363 0056 013B     		subs	r3, r3, #1
 364 0058 1A41     		asrs	r2, r2, r3
 365 005a 1300     		movs	r3, r2
 366 005c 0122     		movs	r2, #1
 367 005e 1340     		ands	r3, r2
 368 0060 0AD0     		beq	.L6
 198:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         {
 199:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             return KeyValues[row][column - 1];
 369              		.loc 1 199 0
 370 0062 1723     		movs	r3, #23
 371 0064 FB18     		adds	r3, r7, r3
 372 0066 1A78     		ldrb	r2, [r3]
 373 0068 FB1D     		adds	r3, r7, #7
 374 006a 1B78     		ldrb	r3, [r3]
 375 006c 013B     		subs	r3, r3, #1
 376 006e 0F49     		ldr	r1, .L9+12
 377 0070 9200     		lsls	r2, r2, #2
 378 0072 8A18     		adds	r2, r1, r2
 379 0074 D35C     		ldrb	r3, [r2, r3]
 380 0076 0FE0     		b	.L7
 381              	.L6:
 200:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         } 
 201:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         
 202:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         // Deactivate row
 203:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         *keypad_out = 0;
 382              		.loc 1 203 0 discriminator 2
 383 0078 094B     		ldr	r3, .L9
 384 007a 1B68     		ldr	r3, [r3]
 385 007c 0022     		movs	r2, #0
 386 007e 1A70     		strb	r2, [r3]
 183:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 387              		.loc 1 183 0 discriminator 2
 388 0080 1721     		movs	r1, #23
 389 0082 7B18     		adds	r3, r7, r1
 390 0084 1A78     		ldrb	r2, [r3]
 391 0086 7B18     		adds	r3, r7, r1
 392 0088 0132     		adds	r2, r2, #1
 393 008a 1A70     		strb	r2, [r3]
 394              	.L3:
 183:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 395              		.loc 1 183 0 is_stmt 0 discriminator 1
 396 008c 1723     		movs	r3, #23
 397 008e FB18     		adds	r3, r7, r3
 398 0090 1B78     		ldrb	r3, [r3]
 399 0092 032B     		cmp	r3, #3
 400 0094 BFD9     		bls	.L8
 204:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 205:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 206:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     return 0xFF;
 401              		.loc 1 206 0 is_stmt 1
 402 0096 FF23     		movs	r3, #255
 403              	.L7:
 207:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 404              		.loc 1 207 0
 405 0098 1800     		movs	r0, r3
 406 009a BD46     		mov	sp, r7
 407 009c 06B0     		add	sp, sp, #24
 408              		@ sp needed
 409 009e 80BD     		pop	{r7, pc}
 410              	.L10:
 411              		.align	2
 412              	.L9:
 413 00a0 00000000 		.word	keypad_out
 414 00a4 0F270000 		.word	9999
 415 00a8 00000000 		.word	keypad_in
 416 00ac 00000000 		.word	KeyValues
 417              		.cfi_endproc
 418              	.LFE1:
 420              		.align	1
 421              		.global	delay_250ns
 422              		.syntax unified
 423              		.code	16
 424              		.thumb_func
 425              		.fpu softvfp
 427              	delay_250ns:
 428              	.LFB2:
 208:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 209:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void delay_250ns(void)
 210:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 429              		.loc 1 210 0
 430              		.cfi_startproc
 431              		@ args = 0, pretend = 0, frame = 0
 432              		@ frame_needed = 1, uses_anonymous_args = 0
 433 00b0 80B5     		push	{r7, lr}
 434              		.cfi_def_cfa_offset 8
 435              		.cfi_offset 7, -8
 436              		.cfi_offset 14, -4
 437 00b2 00AF     		add	r7, sp, #0
 438              		.cfi_def_cfa_register 7
 211:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     *SYSTICK_CTRL = 0x0;
 439              		.loc 1 211 0
 440 00b4 0C4B     		ldr	r3, .L13
 441 00b6 0022     		movs	r2, #0
 442 00b8 1A60     		str	r2, [r3]
 212:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 213:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     // Set STK_LOAD value (250 ns = 42 clock cycles = 0x2A)
 214:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     *SYSTICK_LOAD = 0x2A;
 443              		.loc 1 214 0
 444 00ba 0C4B     		ldr	r3, .L13+4
 445 00bc 2A22     		movs	r2, #42
 446 00be 1A60     		str	r2, [r3]
 215:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 216:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** #ifdef SIMULATOR
 217:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     *SYSTICK_LOAD /= 0x2A; // Decrease delay if we're simulating
 218:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** #endif
 219:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 220:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     *SYSTICK_VAL = 0;
 447              		.loc 1 220 0
 448 00c0 0B4B     		ldr	r3, .L13+8
 449 00c2 0022     		movs	r2, #0
 450 00c4 1A60     		str	r2, [r3]
 221:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 222:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     // Enable counter
 223:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     *SYSTICK_CTRL = 0x5;
 451              		.loc 1 223 0
 452 00c6 084B     		ldr	r3, .L13
 453 00c8 0522     		movs	r2, #5
 454 00ca 1A60     		str	r2, [r3]
 224:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 225:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     // Wait until "COUNTFLAG" in STK_CTRL is 1
 226:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     while ( (*SYSTICK_CTRL & 0x10000) == 0);
 455              		.loc 1 226 0
 456 00cc C046     		nop
 457              	.L12:
 458              		.loc 1 226 0 is_stmt 0 discriminator 1
 459 00ce 064B     		ldr	r3, .L13
 460 00d0 1A68     		ldr	r2, [r3]
 461 00d2 8023     		movs	r3, #128
 462 00d4 5B02     		lsls	r3, r3, #9
 463 00d6 1340     		ands	r3, r2
 464 00d8 F9D0     		beq	.L12
 227:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 228:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     *SYSTICK_CTRL = 0x0;
 465              		.loc 1 228 0 is_stmt 1
 466 00da 034B     		ldr	r3, .L13
 467 00dc 0022     		movs	r2, #0
 468 00de 1A60     		str	r2, [r3]
 229:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 469              		.loc 1 229 0
 470 00e0 C046     		nop
 471 00e2 BD46     		mov	sp, r7
 472              		@ sp needed
 473 00e4 80BD     		pop	{r7, pc}
 474              	.L14:
 475 00e6 C046     		.align	2
 476              	.L13:
 477 00e8 10E000E0 		.word	-536813552
 478 00ec 14E000E0 		.word	-536813548
 479 00f0 18E000E0 		.word	-536813544
 480              		.cfi_endproc
 481              	.LFE2:
 483              		.align	1
 484              		.global	delay_500ns
 485              		.syntax unified
 486              		.code	16
 487              		.thumb_func
 488              		.fpu softvfp
 490              	delay_500ns:
 491              	.LFB3:
 230:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 231:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void delay_500ns(void)
 232:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 492              		.loc 1 232 0
 493              		.cfi_startproc
 494              		@ args = 0, pretend = 0, frame = 0
 495              		@ frame_needed = 1, uses_anonymous_args = 0
 496 00f4 80B5     		push	{r7, lr}
 497              		.cfi_def_cfa_offset 8
 498              		.cfi_offset 7, -8
 499              		.cfi_offset 14, -4
 500 00f6 00AF     		add	r7, sp, #0
 501              		.cfi_def_cfa_register 7
 233:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     delay_250ns();
 502              		.loc 1 233 0
 503 00f8 FFF7FEFF 		bl	delay_250ns
 234:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     delay_250ns();
 504              		.loc 1 234 0
 505 00fc FFF7FEFF 		bl	delay_250ns
 235:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 506              		.loc 1 235 0
 507 0100 C046     		nop
 508 0102 BD46     		mov	sp, r7
 509              		@ sp needed
 510 0104 80BD     		pop	{r7, pc}
 511              		.cfi_endproc
 512              	.LFE3:
 514              		.align	1
 515              		.global	delay_mikro
 516              		.syntax unified
 517              		.code	16
 518              		.thumb_func
 519              		.fpu softvfp
 521              	delay_mikro:
 522              	.LFB4:
 236:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 237:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void delay_mikro(unsigned int us)
 238:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 523              		.loc 1 238 0
 524              		.cfi_startproc
 525              		@ args = 0, pretend = 0, frame = 16
 526              		@ frame_needed = 1, uses_anonymous_args = 0
 527 0106 80B5     		push	{r7, lr}
 528              		.cfi_def_cfa_offset 8
 529              		.cfi_offset 7, -8
 530              		.cfi_offset 14, -4
 531 0108 84B0     		sub	sp, sp, #16
 532              		.cfi_def_cfa_offset 24
 533 010a 00AF     		add	r7, sp, #0
 534              		.cfi_def_cfa_register 7
 535 010c 7860     		str	r0, [r7, #4]
 239:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     int i, limit = 4*us;
 536              		.loc 1 239 0
 537 010e 7B68     		ldr	r3, [r7, #4]
 538 0110 9B00     		lsls	r3, r3, #2
 539 0112 BB60     		str	r3, [r7, #8]
 540              	.LBB3:
 240:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 241:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** #ifdef SIMULATOR
 242:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     limit = limit/10;
 243:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 244:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     if(limit > 50)
 245:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 246:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         limit = 50;
 247:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 248:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** #endif
 249:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 250:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 251:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     for (int i = 1; i <= limit; i++)
 541              		.loc 1 251 0
 542 0114 0123     		movs	r3, #1
 543 0116 FB60     		str	r3, [r7, #12]
 544 0118 04E0     		b	.L17
 545              	.L18:
 252:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 253:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         delay_250ns();
 546              		.loc 1 253 0 discriminator 3
 547 011a FFF7FEFF 		bl	delay_250ns
 251:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 548              		.loc 1 251 0 discriminator 3
 549 011e FB68     		ldr	r3, [r7, #12]
 550 0120 0133     		adds	r3, r3, #1
 551 0122 FB60     		str	r3, [r7, #12]
 552              	.L17:
 251:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 553              		.loc 1 251 0 is_stmt 0 discriminator 1
 554 0124 FA68     		ldr	r2, [r7, #12]
 555 0126 BB68     		ldr	r3, [r7, #8]
 556 0128 9A42     		cmp	r2, r3
 557 012a F6DD     		ble	.L18
 558              	.LBE3:
 254:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 255:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 559              		.loc 1 255 0 is_stmt 1
 560 012c C046     		nop
 561 012e BD46     		mov	sp, r7
 562 0130 04B0     		add	sp, sp, #16
 563              		@ sp needed
 564 0132 80BD     		pop	{r7, pc}
 565              		.cfi_endproc
 566              	.LFE4:
 568              		.align	1
 569              		.global	delay_mili
 570              		.syntax unified
 571              		.code	16
 572              		.thumb_func
 573              		.fpu softvfp
 575              	delay_mili:
 576              	.LFB5:
 256:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 257:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void delay_mili(unsigned int ms)
 258:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 577              		.loc 1 258 0
 578              		.cfi_startproc
 579              		@ args = 0, pretend = 0, frame = 16
 580              		@ frame_needed = 1, uses_anonymous_args = 0
 581 0134 80B5     		push	{r7, lr}
 582              		.cfi_def_cfa_offset 8
 583              		.cfi_offset 7, -8
 584              		.cfi_offset 14, -4
 585 0136 84B0     		sub	sp, sp, #16
 586              		.cfi_def_cfa_offset 24
 587 0138 00AF     		add	r7, sp, #0
 588              		.cfi_def_cfa_register 7
 589 013a 7860     		str	r0, [r7, #4]
 259:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     int i, limit = 1000;
 590              		.loc 1 259 0
 591 013c FA23     		movs	r3, #250
 592 013e 9B00     		lsls	r3, r3, #2
 593 0140 BB60     		str	r3, [r7, #8]
 260:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 261:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** #ifdef SIMULATOR
 262:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     limit = 10;
 263:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** #endif
 264:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 265:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     for (i = 1; i <= limit; i++)
 594              		.loc 1 265 0
 595 0142 0123     		movs	r3, #1
 596 0144 FB60     		str	r3, [r7, #12]
 597 0146 06E0     		b	.L20
 598              	.L21:
 266:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 267:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         delay_mikro(ms);
 599              		.loc 1 267 0 discriminator 3
 600 0148 7B68     		ldr	r3, [r7, #4]
 601 014a 1800     		movs	r0, r3
 602 014c FFF7FEFF 		bl	delay_mikro
 265:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 603              		.loc 1 265 0 discriminator 3
 604 0150 FB68     		ldr	r3, [r7, #12]
 605 0152 0133     		adds	r3, r3, #1
 606 0154 FB60     		str	r3, [r7, #12]
 607              	.L20:
 265:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 608              		.loc 1 265 0 is_stmt 0 discriminator 1
 609 0156 FA68     		ldr	r2, [r7, #12]
 610 0158 BB68     		ldr	r3, [r7, #8]
 611 015a 9A42     		cmp	r2, r3
 612 015c F4DD     		ble	.L21
 268:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 269:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 613              		.loc 1 269 0 is_stmt 1
 614 015e C046     		nop
 615 0160 BD46     		mov	sp, r7
 616 0162 04B0     		add	sp, sp, #16
 617              		@ sp needed
 618 0164 80BD     		pop	{r7, pc}
 619              		.cfi_endproc
 620              	.LFE5:
 622              		.align	1
 623              		.global	graphic_ctrl_bit_set
 624              		.syntax unified
 625              		.code	16
 626              		.thumb_func
 627              		.fpu softvfp
 629              	graphic_ctrl_bit_set:
 630              	.LFB6:
 270:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 271:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void graphic_ctrl_bit_set(uint8_t x)
 272:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 631              		.loc 1 272 0
 632              		.cfi_startproc
 633              		@ args = 0, pretend = 0, frame = 8
 634              		@ frame_needed = 1, uses_anonymous_args = 0
 635 0166 80B5     		push	{r7, lr}
 636              		.cfi_def_cfa_offset 8
 637              		.cfi_offset 7, -8
 638              		.cfi_offset 14, -4
 639 0168 82B0     		sub	sp, sp, #8
 640              		.cfi_def_cfa_offset 16
 641 016a 00AF     		add	r7, sp, #0
 642              		.cfi_def_cfa_register 7
 643 016c 0200     		movs	r2, r0
 644 016e FB1D     		adds	r3, r7, #7
 645 0170 1A70     		strb	r2, [r3]
 273:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     *GRAPHIC_CTRL_ODR = (*GRAPHIC_CTRL_ODR & ~x) | x;
 646              		.loc 1 273 0
 647 0172 064B     		ldr	r3, .L23
 648 0174 1A78     		ldrb	r2, [r3]
 649 0176 0549     		ldr	r1, .L23
 650 0178 FB1D     		adds	r3, r7, #7
 651 017a 1B78     		ldrb	r3, [r3]
 652 017c 1343     		orrs	r3, r2
 653 017e DBB2     		uxtb	r3, r3
 654 0180 0B70     		strb	r3, [r1]
 274:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 655              		.loc 1 274 0
 656 0182 C046     		nop
 657 0184 BD46     		mov	sp, r7
 658 0186 02B0     		add	sp, sp, #8
 659              		@ sp needed
 660 0188 80BD     		pop	{r7, pc}
 661              	.L24:
 662 018a C046     		.align	2
 663              	.L23:
 664 018c 14100240 		.word	1073877012
 665              		.cfi_endproc
 666              	.LFE6:
 668              		.align	1
 669              		.global	graphic_ctrl_bit_clear
 670              		.syntax unified
 671              		.code	16
 672              		.thumb_func
 673              		.fpu softvfp
 675              	graphic_ctrl_bit_clear:
 676              	.LFB7:
 275:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 276:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void graphic_ctrl_bit_clear(uint8_t x)
 277:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 677              		.loc 1 277 0
 678              		.cfi_startproc
 679              		@ args = 0, pretend = 0, frame = 8
 680              		@ frame_needed = 1, uses_anonymous_args = 0
 681 0190 80B5     		push	{r7, lr}
 682              		.cfi_def_cfa_offset 8
 683              		.cfi_offset 7, -8
 684              		.cfi_offset 14, -4
 685 0192 82B0     		sub	sp, sp, #8
 686              		.cfi_def_cfa_offset 16
 687 0194 00AF     		add	r7, sp, #0
 688              		.cfi_def_cfa_register 7
 689 0196 0200     		movs	r2, r0
 690 0198 FB1D     		adds	r3, r7, #7
 691 019a 1A70     		strb	r2, [r3]
 278:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     *GRAPHIC_CTRL_ODR = (*GRAPHIC_CTRL_ODR & ~x);
 692              		.loc 1 278 0
 693 019c 084B     		ldr	r3, .L26
 694 019e 1B78     		ldrb	r3, [r3]
 695 01a0 5BB2     		sxtb	r3, r3
 696 01a2 FA1D     		adds	r2, r7, #7
 697 01a4 1278     		ldrb	r2, [r2]
 698 01a6 52B2     		sxtb	r2, r2
 699 01a8 D243     		mvns	r2, r2
 700 01aa 52B2     		sxtb	r2, r2
 701 01ac 1340     		ands	r3, r2
 702 01ae 5AB2     		sxtb	r2, r3
 703 01b0 034B     		ldr	r3, .L26
 704 01b2 D2B2     		uxtb	r2, r2
 705 01b4 1A70     		strb	r2, [r3]
 279:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 706              		.loc 1 279 0
 707 01b6 C046     		nop
 708 01b8 BD46     		mov	sp, r7
 709 01ba 02B0     		add	sp, sp, #8
 710              		@ sp needed
 711 01bc 80BD     		pop	{r7, pc}
 712              	.L27:
 713 01be C046     		.align	2
 714              	.L26:
 715 01c0 14100240 		.word	1073877012
 716              		.cfi_endproc
 717              	.LFE7:
 719              		.align	1
 720              		.global	select_controller
 721              		.syntax unified
 722              		.code	16
 723              		.thumb_func
 724              		.fpu softvfp
 726              	select_controller:
 727              	.LFB8:
 280:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 281:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void select_controller(uint8_t controller)
 282:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 728              		.loc 1 282 0
 729              		.cfi_startproc
 730              		@ args = 0, pretend = 0, frame = 8
 731              		@ frame_needed = 1, uses_anonymous_args = 0
 732 01c4 80B5     		push	{r7, lr}
 733              		.cfi_def_cfa_offset 8
 734              		.cfi_offset 7, -8
 735              		.cfi_offset 14, -4
 736 01c6 82B0     		sub	sp, sp, #8
 737              		.cfi_def_cfa_offset 16
 738 01c8 00AF     		add	r7, sp, #0
 739              		.cfi_def_cfa_register 7
 740 01ca 0200     		movs	r2, r0
 741 01cc FB1D     		adds	r3, r7, #7
 742 01ce 1A70     		strb	r2, [r3]
 283:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     switch(controller)
 743              		.loc 1 283 0
 744 01d0 FB1D     		adds	r3, r7, #7
 745 01d2 1B78     		ldrb	r3, [r3]
 746 01d4 082B     		cmp	r3, #8
 747 01d6 0CD0     		beq	.L30
 748 01d8 02DC     		bgt	.L31
 749 01da 002B     		cmp	r3, #0
 750 01dc 05D0     		beq	.L32
 284:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 285:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         case 0:
 286:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             graphic_ctrl_bit_clear(B_CS1 | B_CS2);
 287:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             break;
 288:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         case B_CS1:
 289:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             graphic_ctrl_bit_set(B_CS1);
 290:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             graphic_ctrl_bit_clear(B_CS2);
 291:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             break;
 292:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         case B_CS2:
 293:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             graphic_ctrl_bit_clear(B_CS1);
 294:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             graphic_ctrl_bit_set(B_CS2);
 295:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             break;
 296:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         case (B_CS1 | B_CS2):
 297:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             graphic_ctrl_bit_set(B_CS1 | B_CS2);
 298:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             break;
 299:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         default:
 300:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             break;
 751              		.loc 1 300 0
 752 01de 1AE0     		b	.L35
 753              	.L31:
 283:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     switch(controller)
 754              		.loc 1 283 0
 755 01e0 102B     		cmp	r3, #16
 756 01e2 0DD0     		beq	.L33
 757 01e4 182B     		cmp	r3, #24
 758 01e6 12D0     		beq	.L34
 759              		.loc 1 300 0
 760 01e8 15E0     		b	.L35
 761              	.L32:
 286:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             break;
 762              		.loc 1 286 0
 763 01ea 1820     		movs	r0, #24
 764 01ec FFF7FEFF 		bl	graphic_ctrl_bit_clear
 287:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         case B_CS1:
 765              		.loc 1 287 0
 766 01f0 11E0     		b	.L35
 767              	.L30:
 289:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             graphic_ctrl_bit_clear(B_CS2);
 768              		.loc 1 289 0
 769 01f2 0820     		movs	r0, #8
 770 01f4 FFF7FEFF 		bl	graphic_ctrl_bit_set
 290:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             break;
 771              		.loc 1 290 0
 772 01f8 1020     		movs	r0, #16
 773 01fa FFF7FEFF 		bl	graphic_ctrl_bit_clear
 291:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         case B_CS2:
 774              		.loc 1 291 0
 775 01fe 0AE0     		b	.L35
 776              	.L33:
 293:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             graphic_ctrl_bit_set(B_CS2);
 777              		.loc 1 293 0
 778 0200 0820     		movs	r0, #8
 779 0202 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 294:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             break;
 780              		.loc 1 294 0
 781 0206 1020     		movs	r0, #16
 782 0208 FFF7FEFF 		bl	graphic_ctrl_bit_set
 295:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         case (B_CS1 | B_CS2):
 783              		.loc 1 295 0
 784 020c 03E0     		b	.L35
 785              	.L34:
 297:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             break;
 786              		.loc 1 297 0
 787 020e 1820     		movs	r0, #24
 788 0210 FFF7FEFF 		bl	graphic_ctrl_bit_set
 298:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         default:
 789              		.loc 1 298 0
 790 0214 C046     		nop
 791              	.L35:
 301:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 302:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 792              		.loc 1 302 0
 793 0216 C046     		nop
 794 0218 BD46     		mov	sp, r7
 795 021a 02B0     		add	sp, sp, #8
 796              		@ sp needed
 797 021c 80BD     		pop	{r7, pc}
 798              		.cfi_endproc
 799              	.LFE8:
 801              		.align	1
 802              		.global	graphic_wait_ready
 803              		.syntax unified
 804              		.code	16
 805              		.thumb_func
 806              		.fpu softvfp
 808              	graphic_wait_ready:
 809              	.LFB9:
 303:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 304:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void graphic_wait_ready(void)
 305:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 810              		.loc 1 305 0
 811              		.cfi_startproc
 812              		@ args = 0, pretend = 0, frame = 8
 813              		@ frame_needed = 1, uses_anonymous_args = 0
 814 021e 80B5     		push	{r7, lr}
 815              		.cfi_def_cfa_offset 8
 816              		.cfi_offset 7, -8
 817              		.cfi_offset 14, -4
 818 0220 82B0     		sub	sp, sp, #8
 819              		.cfi_def_cfa_offset 16
 820 0222 00AF     		add	r7, sp, #0
 821              		.cfi_def_cfa_register 7
 306:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_ctrl_bit_clear(B_E);
 822              		.loc 1 306 0
 823 0224 4020     		movs	r0, #64
 824 0226 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 307:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 308:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     * ( (unsigned long *) portModer) = 0x00005555;
 825              		.loc 1 308 0
 826 022a 144B     		ldr	r3, .L38
 827 022c 144A     		ldr	r2, .L38+4
 828 022e 1A60     		str	r2, [r3]
 309:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 310:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_ctrl_bit_clear(B_RS);
 829              		.loc 1 310 0
 830 0230 0120     		movs	r0, #1
 831 0232 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 311:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_ctrl_bit_set(B_RW);
 832              		.loc 1 311 0
 833 0236 0220     		movs	r0, #2
 834 0238 FFF7FEFF 		bl	graphic_ctrl_bit_set
 312:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 313:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     delay_500ns();
 835              		.loc 1 313 0
 836 023c FFF7FEFF 		bl	delay_500ns
 837              	.L37:
 314:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 315:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     unsigned char busy;
 316:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 317:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     do
 318:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 319:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         graphic_ctrl_bit_set(B_E);
 838              		.loc 1 319 0 discriminator 1
 839 0240 4020     		movs	r0, #64
 840 0242 FFF7FEFF 		bl	graphic_ctrl_bit_set
 320:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         delay_500ns();
 841              		.loc 1 320 0 discriminator 1
 842 0246 FFF7FEFF 		bl	delay_500ns
 321:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         
 322:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         busy = *GRAPHIC_DATA_IDR & LCD_BUSY;
 843              		.loc 1 322 0 discriminator 1
 844 024a 0E4B     		ldr	r3, .L38+8
 845 024c 1A78     		ldrb	r2, [r3]
 846 024e FB1D     		adds	r3, r7, #7
 847 0250 7F21     		movs	r1, #127
 848 0252 8A43     		bics	r2, r1
 849 0254 1A70     		strb	r2, [r3]
 323:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         
 324:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         graphic_ctrl_bit_clear(B_E);
 850              		.loc 1 324 0 discriminator 1
 851 0256 4020     		movs	r0, #64
 852 0258 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 325:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         delay_500ns();
 853              		.loc 1 325 0 discriminator 1
 854 025c FFF7FEFF 		bl	delay_500ns
 326:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     } while(busy != 0);
 855              		.loc 1 326 0 discriminator 1
 856 0260 FB1D     		adds	r3, r7, #7
 857 0262 1B78     		ldrb	r3, [r3]
 858 0264 002B     		cmp	r3, #0
 859 0266 EBD1     		bne	.L37
 327:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 328:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_ctrl_bit_set(B_E);
 860              		.loc 1 328 0
 861 0268 4020     		movs	r0, #64
 862 026a FFF7FEFF 		bl	graphic_ctrl_bit_set
 329:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 330:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     * ( (unsigned long *) portModer) = 0x55555555;
 863              		.loc 1 330 0
 864 026e 034B     		ldr	r3, .L38
 865 0270 054A     		ldr	r2, .L38+12
 866 0272 1A60     		str	r2, [r3]
 331:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 867              		.loc 1 331 0
 868 0274 C046     		nop
 869 0276 BD46     		mov	sp, r7
 870 0278 02B0     		add	sp, sp, #8
 871              		@ sp needed
 872 027a 80BD     		pop	{r7, pc}
 873              	.L39:
 874              		.align	2
 875              	.L38:
 876 027c 00100240 		.word	1073876992
 877 0280 55550000 		.word	21845
 878 0284 11100240 		.word	1073877009
 879 0288 55555555 		.word	1431655765
 880              		.cfi_endproc
 881              	.LFE9:
 883              		.align	1
 884              		.global	graphic_read
 885              		.syntax unified
 886              		.code	16
 887              		.thumb_func
 888              		.fpu softvfp
 890              	graphic_read:
 891              	.LFB10:
 332:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 333:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** uint8_t graphic_read(uint8_t controller)
 334:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 892              		.loc 1 334 0
 893              		.cfi_startproc
 894              		@ args = 0, pretend = 0, frame = 16
 895              		@ frame_needed = 1, uses_anonymous_args = 0
 896 028c 80B5     		push	{r7, lr}
 897              		.cfi_def_cfa_offset 8
 898              		.cfi_offset 7, -8
 899              		.cfi_offset 14, -4
 900 028e 84B0     		sub	sp, sp, #16
 901              		.cfi_def_cfa_offset 24
 902 0290 00AF     		add	r7, sp, #0
 903              		.cfi_def_cfa_register 7
 904 0292 0200     		movs	r2, r0
 905 0294 FB1D     		adds	r3, r7, #7
 906 0296 1A70     		strb	r2, [r3]
 335:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     uint8_t ret_val;
 336:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 337:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_ctrl_bit_clear(B_E);
 907              		.loc 1 337 0
 908 0298 4020     		movs	r0, #64
 909 029a FFF7FEFF 		bl	graphic_ctrl_bit_clear
 338:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 339:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     * ( (unsigned long *) portModer) = 0x00005555;
 910              		.loc 1 339 0
 911 029e 1B4B     		ldr	r3, .L44
 912 02a0 1B4A     		ldr	r2, .L44+4
 913 02a2 1A60     		str	r2, [r3]
 340:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 341:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_ctrl_bit_set(B_RS | B_RW);
 914              		.loc 1 341 0
 915 02a4 0320     		movs	r0, #3
 916 02a6 FFF7FEFF 		bl	graphic_ctrl_bit_set
 342:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 343:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     select_controller(controller);
 917              		.loc 1 343 0
 918 02aa FB1D     		adds	r3, r7, #7
 919 02ac 1B78     		ldrb	r3, [r3]
 920 02ae 1800     		movs	r0, r3
 921 02b0 FFF7FEFF 		bl	select_controller
 344:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     delay_500ns();
 922              		.loc 1 344 0
 923 02b4 FFF7FEFF 		bl	delay_500ns
 345:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 346:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_ctrl_bit_set(B_E);
 924              		.loc 1 346 0
 925 02b8 4020     		movs	r0, #64
 926 02ba FFF7FEFF 		bl	graphic_ctrl_bit_set
 347:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     delay_500ns();
 927              		.loc 1 347 0
 928 02be FFF7FEFF 		bl	delay_500ns
 348:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 349:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ret_val = *GRAPHIC_DATA_IDR;
 929              		.loc 1 349 0
 930 02c2 144A     		ldr	r2, .L44+8
 931 02c4 0F23     		movs	r3, #15
 932 02c6 FB18     		adds	r3, r7, r3
 933 02c8 1278     		ldrb	r2, [r2]
 934 02ca 1A70     		strb	r2, [r3]
 350:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 351:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_ctrl_bit_clear(B_E);
 935              		.loc 1 351 0
 936 02cc 4020     		movs	r0, #64
 937 02ce FFF7FEFF 		bl	graphic_ctrl_bit_clear
 352:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 353:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     * ( (unsigned long *) portModer) = 0x55555555;
 938              		.loc 1 353 0
 939 02d2 0E4B     		ldr	r3, .L44
 940 02d4 104A     		ldr	r2, .L44+12
 941 02d6 1A60     		str	r2, [r3]
 354:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 355:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     if(controller == B_CS1)
 942              		.loc 1 355 0
 943 02d8 FB1D     		adds	r3, r7, #7
 944 02da 1B78     		ldrb	r3, [r3]
 945 02dc 082B     		cmp	r3, #8
 946 02de 04D1     		bne	.L41
 356:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 357:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         select_controller(B_CS1);
 947              		.loc 1 357 0
 948 02e0 0820     		movs	r0, #8
 949 02e2 FFF7FEFF 		bl	select_controller
 358:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         graphic_wait_ready();
 950              		.loc 1 358 0
 951 02e6 FFF7FEFF 		bl	graphic_wait_ready
 952              	.L41:
 359:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 360:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     if(controller == B_CS2)
 953              		.loc 1 360 0
 954 02ea FB1D     		adds	r3, r7, #7
 955 02ec 1B78     		ldrb	r3, [r3]
 956 02ee 102B     		cmp	r3, #16
 957 02f0 04D1     		bne	.L42
 361:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 362:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         select_controller(B_CS2);
 958              		.loc 1 362 0
 959 02f2 1020     		movs	r0, #16
 960 02f4 FFF7FEFF 		bl	select_controller
 363:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         graphic_wait_ready();
 961              		.loc 1 363 0
 962 02f8 FFF7FEFF 		bl	graphic_wait_ready
 963              	.L42:
 364:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 365:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 366:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     return ret_val;
 964              		.loc 1 366 0
 965 02fc 0F23     		movs	r3, #15
 966 02fe FB18     		adds	r3, r7, r3
 967 0300 1B78     		ldrb	r3, [r3]
 367:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 968              		.loc 1 367 0
 969 0302 1800     		movs	r0, r3
 970 0304 BD46     		mov	sp, r7
 971 0306 04B0     		add	sp, sp, #16
 972              		@ sp needed
 973 0308 80BD     		pop	{r7, pc}
 974              	.L45:
 975 030a C046     		.align	2
 976              	.L44:
 977 030c 00100240 		.word	1073876992
 978 0310 55550000 		.word	21845
 979 0314 11100240 		.word	1073877009
 980 0318 55555555 		.word	1431655765
 981              		.cfi_endproc
 982              	.LFE10:
 984              		.align	1
 985              		.global	graphic_write
 986              		.syntax unified
 987              		.code	16
 988              		.thumb_func
 989              		.fpu softvfp
 991              	graphic_write:
 992              	.LFB11:
 368:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 369:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void graphic_write(uint8_t value, uint8_t controller)
 370:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 993              		.loc 1 370 0
 994              		.cfi_startproc
 995              		@ args = 0, pretend = 0, frame = 8
 996              		@ frame_needed = 1, uses_anonymous_args = 0
 997 031c 80B5     		push	{r7, lr}
 998              		.cfi_def_cfa_offset 8
 999              		.cfi_offset 7, -8
 1000              		.cfi_offset 14, -4
 1001 031e 82B0     		sub	sp, sp, #8
 1002              		.cfi_def_cfa_offset 16
 1003 0320 00AF     		add	r7, sp, #0
 1004              		.cfi_def_cfa_register 7
 1005 0322 0200     		movs	r2, r0
 1006 0324 FB1D     		adds	r3, r7, #7
 1007 0326 1A70     		strb	r2, [r3]
 1008 0328 BB1D     		adds	r3, r7, #6
 1009 032a 0A1C     		adds	r2, r1, #0
 1010 032c 1A70     		strb	r2, [r3]
 371:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     *GRAPHIC_DATA_ODR = value;
 1011              		.loc 1 371 0
 1012 032e 1A4A     		ldr	r2, .L49
 1013 0330 FB1D     		adds	r3, r7, #7
 1014 0332 1B78     		ldrb	r3, [r3]
 1015 0334 1370     		strb	r3, [r2]
 372:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 373:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     select_controller(controller);
 1016              		.loc 1 373 0
 1017 0336 BB1D     		adds	r3, r7, #6
 1018 0338 1B78     		ldrb	r3, [r3]
 1019 033a 1800     		movs	r0, r3
 1020 033c FFF7FEFF 		bl	select_controller
 374:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     delay_500ns();
 1021              		.loc 1 374 0
 1022 0340 FFF7FEFF 		bl	delay_500ns
 375:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 376:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_ctrl_bit_set(B_E);
 1023              		.loc 1 376 0
 1024 0344 4020     		movs	r0, #64
 1025 0346 FFF7FEFF 		bl	graphic_ctrl_bit_set
 377:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     delay_500ns();
 1026              		.loc 1 377 0
 1027 034a FFF7FEFF 		bl	delay_500ns
 378:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_ctrl_bit_clear(B_E);
 1028              		.loc 1 378 0
 1029 034e 4020     		movs	r0, #64
 1030 0350 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 379:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 380:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     if ( (controller & B_CS1) )
 1031              		.loc 1 380 0
 1032 0354 BB1D     		adds	r3, r7, #6
 1033 0356 1B78     		ldrb	r3, [r3]
 1034 0358 0822     		movs	r2, #8
 1035 035a 1340     		ands	r3, r2
 1036 035c 04D0     		beq	.L47
 381:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 382:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         select_controller(B_CS1);
 1037              		.loc 1 382 0
 1038 035e 0820     		movs	r0, #8
 1039 0360 FFF7FEFF 		bl	select_controller
 383:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         graphic_wait_ready();
 1040              		.loc 1 383 0
 1041 0364 FFF7FEFF 		bl	graphic_wait_ready
 1042              	.L47:
 384:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 385:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     if ( (controller & B_CS2) )
 1043              		.loc 1 385 0
 1044 0368 BB1D     		adds	r3, r7, #6
 1045 036a 1B78     		ldrb	r3, [r3]
 1046 036c 1022     		movs	r2, #16
 1047 036e 1340     		ands	r3, r2
 1048 0370 04D0     		beq	.L48
 386:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 387:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         select_controller(B_CS2);
 1049              		.loc 1 387 0
 1050 0372 1020     		movs	r0, #16
 1051 0374 FFF7FEFF 		bl	select_controller
 388:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         graphic_wait_ready();
 1052              		.loc 1 388 0
 1053 0378 FFF7FEFF 		bl	graphic_wait_ready
 1054              	.L48:
 389:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 390:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 391:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     *GRAPHIC_DATA_ODR = 0x0;
 1055              		.loc 1 391 0
 1056 037c 064B     		ldr	r3, .L49
 1057 037e 0022     		movs	r2, #0
 1058 0380 1A70     		strb	r2, [r3]
 392:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 393:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_ctrl_bit_set(B_E);
 1059              		.loc 1 393 0
 1060 0382 4020     		movs	r0, #64
 1061 0384 FFF7FEFF 		bl	graphic_ctrl_bit_set
 394:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 395:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     select_controller(0);
 1062              		.loc 1 395 0
 1063 0388 0020     		movs	r0, #0
 1064 038a FFF7FEFF 		bl	select_controller
 396:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 1065              		.loc 1 396 0
 1066 038e C046     		nop
 1067 0390 BD46     		mov	sp, r7
 1068 0392 02B0     		add	sp, sp, #8
 1069              		@ sp needed
 1070 0394 80BD     		pop	{r7, pc}
 1071              	.L50:
 1072 0396 C046     		.align	2
 1073              	.L49:
 1074 0398 15100240 		.word	1073877013
 1075              		.cfi_endproc
 1076              	.LFE11:
 1078              		.align	1
 1079              		.global	graphic_write_command
 1080              		.syntax unified
 1081              		.code	16
 1082              		.thumb_func
 1083              		.fpu softvfp
 1085              	graphic_write_command:
 1086              	.LFB12:
 397:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 398:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void graphic_write_command(uint8_t cmd, uint8_t controller)
 399:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 1087              		.loc 1 399 0
 1088              		.cfi_startproc
 1089              		@ args = 0, pretend = 0, frame = 8
 1090              		@ frame_needed = 1, uses_anonymous_args = 0
 1091 039c 80B5     		push	{r7, lr}
 1092              		.cfi_def_cfa_offset 8
 1093              		.cfi_offset 7, -8
 1094              		.cfi_offset 14, -4
 1095 039e 82B0     		sub	sp, sp, #8
 1096              		.cfi_def_cfa_offset 16
 1097 03a0 00AF     		add	r7, sp, #0
 1098              		.cfi_def_cfa_register 7
 1099 03a2 0200     		movs	r2, r0
 1100 03a4 FB1D     		adds	r3, r7, #7
 1101 03a6 1A70     		strb	r2, [r3]
 1102 03a8 BB1D     		adds	r3, r7, #6
 1103 03aa 0A1C     		adds	r2, r1, #0
 1104 03ac 1A70     		strb	r2, [r3]
 400:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_ctrl_bit_clear(B_E);
 1105              		.loc 1 400 0
 1106 03ae 4020     		movs	r0, #64
 1107 03b0 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 401:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 402:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     select_controller(controller);
 1108              		.loc 1 402 0
 1109 03b4 BB1D     		adds	r3, r7, #6
 1110 03b6 1B78     		ldrb	r3, [r3]
 1111 03b8 1800     		movs	r0, r3
 1112 03ba FFF7FEFF 		bl	select_controller
 403:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 404:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_ctrl_bit_clear(B_RS | B_RW);
 1113              		.loc 1 404 0
 1114 03be 0320     		movs	r0, #3
 1115 03c0 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 405:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 406:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_write(cmd, controller);
 1116              		.loc 1 406 0
 1117 03c4 BB1D     		adds	r3, r7, #6
 1118 03c6 1A78     		ldrb	r2, [r3]
 1119 03c8 FB1D     		adds	r3, r7, #7
 1120 03ca 1B78     		ldrb	r3, [r3]
 1121 03cc 1100     		movs	r1, r2
 1122 03ce 1800     		movs	r0, r3
 1123 03d0 FFF7FEFF 		bl	graphic_write
 407:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 1124              		.loc 1 407 0
 1125 03d4 C046     		nop
 1126 03d6 BD46     		mov	sp, r7
 1127 03d8 02B0     		add	sp, sp, #8
 1128              		@ sp needed
 1129 03da 80BD     		pop	{r7, pc}
 1130              		.cfi_endproc
 1131              	.LFE12:
 1133              		.align	1
 1134              		.global	graphic_write_data
 1135              		.syntax unified
 1136              		.code	16
 1137              		.thumb_func
 1138              		.fpu softvfp
 1140              	graphic_write_data:
 1141              	.LFB13:
 408:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 409:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void graphic_write_data(uint8_t data, uint8_t controller)
 410:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 1142              		.loc 1 410 0
 1143              		.cfi_startproc
 1144              		@ args = 0, pretend = 0, frame = 8
 1145              		@ frame_needed = 1, uses_anonymous_args = 0
 1146 03dc 80B5     		push	{r7, lr}
 1147              		.cfi_def_cfa_offset 8
 1148              		.cfi_offset 7, -8
 1149              		.cfi_offset 14, -4
 1150 03de 82B0     		sub	sp, sp, #8
 1151              		.cfi_def_cfa_offset 16
 1152 03e0 00AF     		add	r7, sp, #0
 1153              		.cfi_def_cfa_register 7
 1154 03e2 0200     		movs	r2, r0
 1155 03e4 FB1D     		adds	r3, r7, #7
 1156 03e6 1A70     		strb	r2, [r3]
 1157 03e8 BB1D     		adds	r3, r7, #6
 1158 03ea 0A1C     		adds	r2, r1, #0
 1159 03ec 1A70     		strb	r2, [r3]
 411:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_ctrl_bit_clear(B_E);
 1160              		.loc 1 411 0
 1161 03ee 4020     		movs	r0, #64
 1162 03f0 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 412:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 413:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     select_controller(controller);
 1163              		.loc 1 413 0
 1164 03f4 BB1D     		adds	r3, r7, #6
 1165 03f6 1B78     		ldrb	r3, [r3]
 1166 03f8 1800     		movs	r0, r3
 1167 03fa FFF7FEFF 		bl	select_controller
 414:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 415:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_ctrl_bit_set(B_RS);
 1168              		.loc 1 415 0
 1169 03fe 0120     		movs	r0, #1
 1170 0400 FFF7FEFF 		bl	graphic_ctrl_bit_set
 416:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_ctrl_bit_clear(B_RW);
 1171              		.loc 1 416 0
 1172 0404 0220     		movs	r0, #2
 1173 0406 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 417:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 418:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_write(data,controller);
 1174              		.loc 1 418 0
 1175 040a BB1D     		adds	r3, r7, #6
 1176 040c 1A78     		ldrb	r2, [r3]
 1177 040e FB1D     		adds	r3, r7, #7
 1178 0410 1B78     		ldrb	r3, [r3]
 1179 0412 1100     		movs	r1, r2
 1180 0414 1800     		movs	r0, r3
 1181 0416 FFF7FEFF 		bl	graphic_write
 419:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 1182              		.loc 1 419 0
 1183 041a C046     		nop
 1184 041c BD46     		mov	sp, r7
 1185 041e 02B0     		add	sp, sp, #8
 1186              		@ sp needed
 1187 0420 80BD     		pop	{r7, pc}
 1188              		.cfi_endproc
 1189              	.LFE13:
 1191              		.align	1
 1192              		.global	graphic_read_data
 1193              		.syntax unified
 1194              		.code	16
 1195              		.thumb_func
 1196              		.fpu softvfp
 1198              	graphic_read_data:
 1199              	.LFB14:
 420:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 421:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** uint8_t graphic_read_data(uint8_t controller)
 422:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 1200              		.loc 1 422 0
 1201              		.cfi_startproc
 1202              		@ args = 0, pretend = 0, frame = 8
 1203              		@ frame_needed = 1, uses_anonymous_args = 0
 1204 0422 80B5     		push	{r7, lr}
 1205              		.cfi_def_cfa_offset 8
 1206              		.cfi_offset 7, -8
 1207              		.cfi_offset 14, -4
 1208 0424 82B0     		sub	sp, sp, #8
 1209              		.cfi_def_cfa_offset 16
 1210 0426 00AF     		add	r7, sp, #0
 1211              		.cfi_def_cfa_register 7
 1212 0428 0200     		movs	r2, r0
 1213 042a FB1D     		adds	r3, r7, #7
 1214 042c 1A70     		strb	r2, [r3]
 423:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     (void) graphic_read(controller);
 1215              		.loc 1 423 0
 1216 042e FB1D     		adds	r3, r7, #7
 1217 0430 1B78     		ldrb	r3, [r3]
 1218 0432 1800     		movs	r0, r3
 1219 0434 FFF7FEFF 		bl	graphic_read
 424:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     return graphic_read(controller);
 1220              		.loc 1 424 0
 1221 0438 FB1D     		adds	r3, r7, #7
 1222 043a 1B78     		ldrb	r3, [r3]
 1223 043c 1800     		movs	r0, r3
 1224 043e FFF7FEFF 		bl	graphic_read
 1225 0442 0300     		movs	r3, r0
 425:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 1226              		.loc 1 425 0
 1227 0444 1800     		movs	r0, r3
 1228 0446 BD46     		mov	sp, r7
 1229 0448 02B0     		add	sp, sp, #8
 1230              		@ sp needed
 1231 044a 80BD     		pop	{r7, pc}
 1232              		.cfi_endproc
 1233              	.LFE14:
 1235              		.align	1
 1236              		.global	graphic_initialize
 1237              		.syntax unified
 1238              		.code	16
 1239              		.thumb_func
 1240              		.fpu softvfp
 1242              	graphic_initialize:
 1243              	.LFB15:
 426:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 427:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void graphic_initialize(void)
 428:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 1244              		.loc 1 428 0
 1245              		.cfi_startproc
 1246              		@ args = 0, pretend = 0, frame = 0
 1247              		@ frame_needed = 1, uses_anonymous_args = 0
 1248 044c 80B5     		push	{r7, lr}
 1249              		.cfi_def_cfa_offset 8
 1250              		.cfi_offset 7, -8
 1251              		.cfi_offset 14, -4
 1252 044e 00AF     		add	r7, sp, #0
 1253              		.cfi_def_cfa_register 7
 429:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_ctrl_bit_clear(B_SELECT);
 1254              		.loc 1 429 0
 1255 0450 0420     		movs	r0, #4
 1256 0452 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 430:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     delay_mikro(10);
 1257              		.loc 1 430 0
 1258 0456 0A20     		movs	r0, #10
 1259 0458 FFF7FEFF 		bl	delay_mikro
 431:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 432:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_ctrl_bit_set(B_E);
 1260              		.loc 1 432 0
 1261 045c 4020     		movs	r0, #64
 1262 045e FFF7FEFF 		bl	graphic_ctrl_bit_set
 433:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     delay_mikro(10);
 1263              		.loc 1 433 0
 1264 0462 0A20     		movs	r0, #10
 1265 0464 FFF7FEFF 		bl	delay_mikro
 434:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 435:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_ctrl_bit_clear(B_CS1 | B_CS2 | B_RST | B_E);
 1266              		.loc 1 435 0
 1267 0468 7820     		movs	r0, #120
 1268 046a FFF7FEFF 		bl	graphic_ctrl_bit_clear
 436:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     delay_mili(30);
 1269              		.loc 1 436 0
 1270 046e 1E20     		movs	r0, #30
 1271 0470 FFF7FEFF 		bl	delay_mili
 437:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 438:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_ctrl_bit_set(B_RST);
 1272              		.loc 1 438 0
 1273 0474 2020     		movs	r0, #32
 1274 0476 FFF7FEFF 		bl	graphic_ctrl_bit_set
 439:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 440:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_write_command(LCD_OFF, B_CS1 | B_CS2);
 1275              		.loc 1 440 0
 1276 047a 1821     		movs	r1, #24
 1277 047c 3E20     		movs	r0, #62
 1278 047e FFF7FEFF 		bl	graphic_write_command
 441:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_write_command(LCD_ON, B_CS1 | B_CS2);
 1279              		.loc 1 441 0
 1280 0482 1821     		movs	r1, #24
 1281 0484 3F20     		movs	r0, #63
 1282 0486 FFF7FEFF 		bl	graphic_write_command
 442:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
 1283              		.loc 1 442 0
 1284 048a 1821     		movs	r1, #24
 1285 048c C020     		movs	r0, #192
 1286 048e FFF7FEFF 		bl	graphic_write_command
 443:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_write_command(LCD_SET_ADD, B_CS1 | B_CS2);
 1287              		.loc 1 443 0
 1288 0492 1821     		movs	r1, #24
 1289 0494 4020     		movs	r0, #64
 1290 0496 FFF7FEFF 		bl	graphic_write_command
 444:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_write_command(LCD_SET_PAGE, B_CS1 | B_CS2);
 1291              		.loc 1 444 0
 1292 049a 1821     		movs	r1, #24
 1293 049c B820     		movs	r0, #184
 1294 049e FFF7FEFF 		bl	graphic_write_command
 445:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 446:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     select_controller(0);
 1295              		.loc 1 446 0
 1296 04a2 0020     		movs	r0, #0
 1297 04a4 FFF7FEFF 		bl	select_controller
 447:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 1298              		.loc 1 447 0
 1299 04a8 C046     		nop
 1300 04aa BD46     		mov	sp, r7
 1301              		@ sp needed
 1302 04ac 80BD     		pop	{r7, pc}
 1303              		.cfi_endproc
 1304              	.LFE15:
 1306              		.align	1
 1307              		.global	graphic_clear_screen
 1308              		.syntax unified
 1309              		.code	16
 1310              		.thumb_func
 1311              		.fpu softvfp
 1313              	graphic_clear_screen:
 1314              	.LFB16:
 448:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 449:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void graphic_clear_screen(void)
 450:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 1315              		.loc 1 450 0
 1316              		.cfi_startproc
 1317              		@ args = 0, pretend = 0, frame = 8
 1318              		@ frame_needed = 1, uses_anonymous_args = 0
 1319 04ae 80B5     		push	{r7, lr}
 1320              		.cfi_def_cfa_offset 8
 1321              		.cfi_offset 7, -8
 1322              		.cfi_offset 14, -4
 1323 04b0 82B0     		sub	sp, sp, #8
 1324              		.cfi_def_cfa_offset 16
 1325 04b2 00AF     		add	r7, sp, #0
 1326              		.cfi_def_cfa_register 7
 451:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     char page, add;
 452:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 453:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     for(page = 0; page <= 7; page++)
 1327              		.loc 1 453 0
 1328 04b4 FB1D     		adds	r3, r7, #7
 1329 04b6 0022     		movs	r2, #0
 1330 04b8 1A70     		strb	r2, [r3]
 1331 04ba 23E0     		b	.L57
 1332              	.L60:
 454:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 455:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         graphic_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
 1333              		.loc 1 455 0
 1334 04bc FB1D     		adds	r3, r7, #7
 1335 04be 1B78     		ldrb	r3, [r3]
 1336 04c0 4822     		movs	r2, #72
 1337 04c2 5242     		rsbs	r2, r2, #0
 1338 04c4 1343     		orrs	r3, r2
 1339 04c6 DBB2     		uxtb	r3, r3
 1340 04c8 1821     		movs	r1, #24
 1341 04ca 1800     		movs	r0, r3
 1342 04cc FFF7FEFF 		bl	graphic_write_command
 456:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         graphic_write_command(LCD_SET_ADD | 0, B_CS1 | B_CS2);
 1343              		.loc 1 456 0
 1344 04d0 1821     		movs	r1, #24
 1345 04d2 4020     		movs	r0, #64
 1346 04d4 FFF7FEFF 		bl	graphic_write_command
 457:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         
 458:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         for(add = 0; add <= 63; add++)
 1347              		.loc 1 458 0
 1348 04d8 BB1D     		adds	r3, r7, #6
 1349 04da 0022     		movs	r2, #0
 1350 04dc 1A70     		strb	r2, [r3]
 1351 04de 08E0     		b	.L58
 1352              	.L59:
 459:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         {
 460:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             graphic_write_data(0, B_CS1 | B_CS2);
 1353              		.loc 1 460 0 discriminator 3
 1354 04e0 1821     		movs	r1, #24
 1355 04e2 0020     		movs	r0, #0
 1356 04e4 FFF7FEFF 		bl	graphic_write_data
 458:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         {
 1357              		.loc 1 458 0 discriminator 3
 1358 04e8 BB1D     		adds	r3, r7, #6
 1359 04ea 1A78     		ldrb	r2, [r3]
 1360 04ec BB1D     		adds	r3, r7, #6
 1361 04ee 0132     		adds	r2, r2, #1
 1362 04f0 1A70     		strb	r2, [r3]
 1363              	.L58:
 458:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         {
 1364              		.loc 1 458 0 is_stmt 0 discriminator 1
 1365 04f2 BB1D     		adds	r3, r7, #6
 1366 04f4 1B78     		ldrb	r3, [r3]
 1367 04f6 3F2B     		cmp	r3, #63
 1368 04f8 F2D9     		bls	.L59
 453:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 1369              		.loc 1 453 0 is_stmt 1 discriminator 2
 1370 04fa FB1D     		adds	r3, r7, #7
 1371 04fc 1A78     		ldrb	r2, [r3]
 1372 04fe FB1D     		adds	r3, r7, #7
 1373 0500 0132     		adds	r2, r2, #1
 1374 0502 1A70     		strb	r2, [r3]
 1375              	.L57:
 453:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 1376              		.loc 1 453 0 is_stmt 0 discriminator 1
 1377 0504 FB1D     		adds	r3, r7, #7
 1378 0506 1B78     		ldrb	r3, [r3]
 1379 0508 072B     		cmp	r3, #7
 1380 050a D7D9     		bls	.L60
 461:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         }
 462:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 463:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 1381              		.loc 1 463 0 is_stmt 1
 1382 050c C046     		nop
 1383 050e BD46     		mov	sp, r7
 1384 0510 02B0     		add	sp, sp, #8
 1385              		@ sp needed
 1386 0512 80BD     		pop	{r7, pc}
 1387              		.cfi_endproc
 1388              	.LFE16:
 1390              		.align	1
 1391              		.global	pixel
 1392              		.syntax unified
 1393              		.code	16
 1394              		.thumb_func
 1395              		.fpu softvfp
 1397              	pixel:
 1398              	.LFB17:
 464:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 465:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void pixel(unsigned x, unsigned y, unsigned set)
 466:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 1399              		.loc 1 466 0
 1400              		.cfi_startproc
 1401              		@ args = 0, pretend = 0, frame = 24
 1402              		@ frame_needed = 1, uses_anonymous_args = 0
 1403 0514 F0B5     		push	{r4, r5, r6, r7, lr}
 1404              		.cfi_def_cfa_offset 20
 1405              		.cfi_offset 4, -20
 1406              		.cfi_offset 5, -16
 1407              		.cfi_offset 6, -12
 1408              		.cfi_offset 7, -8
 1409              		.cfi_offset 14, -4
 1410 0516 87B0     		sub	sp, sp, #28
 1411              		.cfi_def_cfa_offset 48
 1412 0518 00AF     		add	r7, sp, #0
 1413              		.cfi_def_cfa_register 7
 1414 051a F860     		str	r0, [r7, #12]
 1415 051c B960     		str	r1, [r7, #8]
 1416 051e 7A60     		str	r2, [r7, #4]
 467:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     if (x > 128 || x == 0 || y > 64 || y == 0 || set > 1)
 1417              		.loc 1 467 0
 1418 0520 FB68     		ldr	r3, [r7, #12]
 1419 0522 802B     		cmp	r3, #128
 1420 0524 00D9     		bls	.LCB943
 1421 0526 B8E0     		b	.L80	@long jump
 1422              	.LCB943:
 1423              		.loc 1 467 0 is_stmt 0 discriminator 1
 1424 0528 FB68     		ldr	r3, [r7, #12]
 1425 052a 002B     		cmp	r3, #0
 1426 052c 00D1     		bne	.LCB946
 1427 052e B4E0     		b	.L80	@long jump
 1428              	.LCB946:
 1429              		.loc 1 467 0 discriminator 2
 1430 0530 BB68     		ldr	r3, [r7, #8]
 1431 0532 402B     		cmp	r3, #64
 1432 0534 00D9     		bls	.LCB949
 1433 0536 B0E0     		b	.L80	@long jump
 1434              	.LCB949:
 1435              		.loc 1 467 0 discriminator 3
 1436 0538 BB68     		ldr	r3, [r7, #8]
 1437 053a 002B     		cmp	r3, #0
 1438 053c 00D1     		bne	.LCB952
 1439 053e ACE0     		b	.L80	@long jump
 1440              	.LCB952:
 1441              		.loc 1 467 0 discriminator 4
 1442 0540 7B68     		ldr	r3, [r7, #4]
 1443 0542 012B     		cmp	r3, #1
 1444 0544 00D9     		bls	.LCB955
 1445 0546 A8E0     		b	.L80	@long jump
 1446              	.LCB955:
 468:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 469:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         return;
 470:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 471:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 472:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     uint8_t bitmask, controller, x_fysisk, index = (y-1)/8;
 1447              		.loc 1 472 0 is_stmt 1
 1448 0548 BB68     		ldr	r3, [r7, #8]
 1449 054a 013B     		subs	r3, r3, #1
 1450 054c DA08     		lsrs	r2, r3, #3
 1451 054e 1423     		movs	r3, #20
 1452 0550 FB18     		adds	r3, r7, r3
 1453 0552 1A70     		strb	r2, [r3]
 473:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 474:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     switch ((y-1) % 8)
 1454              		.loc 1 474 0
 1455 0554 BB68     		ldr	r3, [r7, #8]
 1456 0556 013B     		subs	r3, r3, #1
 1457 0558 0722     		movs	r2, #7
 1458 055a 1340     		ands	r3, r2
 1459 055c 072B     		cmp	r3, #7
 1460 055e 2CD8     		bhi	.L65
 1461 0560 9A00     		lsls	r2, r3, #2
 1462 0562 504B     		ldr	r3, .L81
 1463 0564 D318     		adds	r3, r2, r3
 1464 0566 1B68     		ldr	r3, [r3]
 1465 0568 9F46     		mov	pc, r3
 1466              		.section	.rodata
 1467              		.align	2
 1468              	.L67:
 1469 0020 6A050000 		.word	.L66
 1470 0024 74050000 		.word	.L68
 1471 0028 7E050000 		.word	.L69
 1472 002c 88050000 		.word	.L70
 1473 0030 92050000 		.word	.L71
 1474 0034 9C050000 		.word	.L72
 1475 0038 A6050000 		.word	.L73
 1476 003c B0050000 		.word	.L74
 1477              		.text
 1478              	.L66:
 475:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 476:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         case 0:
 477:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             bitmask = 0x01;
 1479              		.loc 1 477 0
 1480 056a 1723     		movs	r3, #23
 1481 056c FB18     		adds	r3, r7, r3
 1482 056e 0122     		movs	r2, #1
 1483 0570 1A70     		strb	r2, [r3]
 478:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             break;
 1484              		.loc 1 478 0
 1485 0572 22E0     		b	.L65
 1486              	.L68:
 479:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         case 1:
 480:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             bitmask = 0x02;
 1487              		.loc 1 480 0
 1488 0574 1723     		movs	r3, #23
 1489 0576 FB18     		adds	r3, r7, r3
 1490 0578 0222     		movs	r2, #2
 1491 057a 1A70     		strb	r2, [r3]
 481:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             break;
 1492              		.loc 1 481 0
 1493 057c 1DE0     		b	.L65
 1494              	.L69:
 482:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         case 2:
 483:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             bitmask = 0x04;
 1495              		.loc 1 483 0
 1496 057e 1723     		movs	r3, #23
 1497 0580 FB18     		adds	r3, r7, r3
 1498 0582 0422     		movs	r2, #4
 1499 0584 1A70     		strb	r2, [r3]
 484:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             break;
 1500              		.loc 1 484 0
 1501 0586 18E0     		b	.L65
 1502              	.L70:
 485:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         case 3:
 486:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             bitmask = 0x08;
 1503              		.loc 1 486 0
 1504 0588 1723     		movs	r3, #23
 1505 058a FB18     		adds	r3, r7, r3
 1506 058c 0822     		movs	r2, #8
 1507 058e 1A70     		strb	r2, [r3]
 487:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             break;
 1508              		.loc 1 487 0
 1509 0590 13E0     		b	.L65
 1510              	.L71:
 488:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         case 4:
 489:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             bitmask = 0x10;
 1511              		.loc 1 489 0
 1512 0592 1723     		movs	r3, #23
 1513 0594 FB18     		adds	r3, r7, r3
 1514 0596 1022     		movs	r2, #16
 1515 0598 1A70     		strb	r2, [r3]
 490:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             break;
 1516              		.loc 1 490 0
 1517 059a 0EE0     		b	.L65
 1518              	.L72:
 491:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         case 5:
 492:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             bitmask = 0x20;
 1519              		.loc 1 492 0
 1520 059c 1723     		movs	r3, #23
 1521 059e FB18     		adds	r3, r7, r3
 1522 05a0 2022     		movs	r2, #32
 1523 05a2 1A70     		strb	r2, [r3]
 493:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             break;
 1524              		.loc 1 493 0
 1525 05a4 09E0     		b	.L65
 1526              	.L73:
 494:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         case 6:
 495:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             bitmask = 0x40;
 1527              		.loc 1 495 0
 1528 05a6 1723     		movs	r3, #23
 1529 05a8 FB18     		adds	r3, r7, r3
 1530 05aa 4022     		movs	r2, #64
 1531 05ac 1A70     		strb	r2, [r3]
 496:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             break;
 1532              		.loc 1 496 0
 1533 05ae 04E0     		b	.L65
 1534              	.L74:
 497:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         case 7:
 498:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             bitmask = 0x80;
 1535              		.loc 1 498 0
 1536 05b0 1723     		movs	r3, #23
 1537 05b2 FB18     		adds	r3, r7, r3
 1538 05b4 8022     		movs	r2, #128
 1539 05b6 1A70     		strb	r2, [r3]
 499:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             break;
 1540              		.loc 1 499 0
 1541 05b8 C046     		nop
 1542              	.L65:
 500:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 501:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 502:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     if (set == 0)
 1543              		.loc 1 502 0
 1544 05ba 7B68     		ldr	r3, [r7, #4]
 1545 05bc 002B     		cmp	r3, #0
 1546 05be 05D1     		bne	.L75
 503:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 504:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         bitmask = ~bitmask;
 1547              		.loc 1 504 0
 1548 05c0 1722     		movs	r2, #23
 1549 05c2 BB18     		adds	r3, r7, r2
 1550 05c4 BA18     		adds	r2, r7, r2
 1551 05c6 1278     		ldrb	r2, [r2]
 1552 05c8 D243     		mvns	r2, r2
 1553 05ca 1A70     		strb	r2, [r3]
 1554              	.L75:
 505:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 506:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 507:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     if (x > 64)
 1555              		.loc 1 507 0
 1556 05cc FB68     		ldr	r3, [r7, #12]
 1557 05ce 402B     		cmp	r3, #64
 1558 05d0 0AD9     		bls	.L76
 508:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 509:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         controller = B_CS2;
 1559              		.loc 1 509 0
 1560 05d2 1623     		movs	r3, #22
 1561 05d4 FB18     		adds	r3, r7, r3
 1562 05d6 1022     		movs	r2, #16
 1563 05d8 1A70     		strb	r2, [r3]
 510:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         x_fysisk = x-65;
 1564              		.loc 1 510 0
 1565 05da FB68     		ldr	r3, [r7, #12]
 1566 05dc DAB2     		uxtb	r2, r3
 1567 05de 1523     		movs	r3, #21
 1568 05e0 FB18     		adds	r3, r7, r3
 1569 05e2 413A     		subs	r2, r2, #65
 1570 05e4 1A70     		strb	r2, [r3]
 1571 05e6 09E0     		b	.L77
 1572              	.L76:
 511:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 512:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     else
 513:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 514:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         controller = B_CS1;
 1573              		.loc 1 514 0
 1574 05e8 1623     		movs	r3, #22
 1575 05ea FB18     		adds	r3, r7, r3
 1576 05ec 0822     		movs	r2, #8
 1577 05ee 1A70     		strb	r2, [r3]
 515:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         x_fysisk = x-1;
 1578              		.loc 1 515 0
 1579 05f0 FB68     		ldr	r3, [r7, #12]
 1580 05f2 DAB2     		uxtb	r2, r3
 1581 05f4 1523     		movs	r3, #21
 1582 05f6 FB18     		adds	r3, r7, r3
 1583 05f8 013A     		subs	r2, r2, #1
 1584 05fa 1A70     		strb	r2, [r3]
 1585              	.L77:
 516:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 517:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 518:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_write_command(LCD_SET_ADD | x_fysisk, controller);
 1586              		.loc 1 518 0
 1587 05fc 1526     		movs	r6, #21
 1588 05fe BB19     		adds	r3, r7, r6
 1589 0600 1B78     		ldrb	r3, [r3]
 1590 0602 4022     		movs	r2, #64
 1591 0604 1343     		orrs	r3, r2
 1592 0606 DAB2     		uxtb	r2, r3
 1593 0608 1625     		movs	r5, #22
 1594 060a 7B19     		adds	r3, r7, r5
 1595 060c 1B78     		ldrb	r3, [r3]
 1596 060e 1900     		movs	r1, r3
 1597 0610 1000     		movs	r0, r2
 1598 0612 FFF7FEFF 		bl	graphic_write_command
 519:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_write_command(LCD_SET_PAGE | index, controller);
 1599              		.loc 1 519 0
 1600 0616 1423     		movs	r3, #20
 1601 0618 FB18     		adds	r3, r7, r3
 1602 061a 1B78     		ldrb	r3, [r3]
 1603 061c 4822     		movs	r2, #72
 1604 061e 5242     		rsbs	r2, r2, #0
 1605 0620 1343     		orrs	r3, r2
 1606 0622 DAB2     		uxtb	r2, r3
 1607 0624 7B19     		adds	r3, r7, r5
 1608 0626 1B78     		ldrb	r3, [r3]
 1609 0628 1900     		movs	r1, r3
 1610 062a 1000     		movs	r0, r2
 1611 062c FFF7FEFF 		bl	graphic_write_command
 520:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 521:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     uint8_t temp = graphic_read_data(controller);
 1612              		.loc 1 521 0
 1613 0630 1323     		movs	r3, #19
 1614 0632 FC18     		adds	r4, r7, r3
 1615 0634 7B19     		adds	r3, r7, r5
 1616 0636 1B78     		ldrb	r3, [r3]
 1617 0638 1800     		movs	r0, r3
 1618 063a FFF7FEFF 		bl	graphic_read_data
 1619 063e 0300     		movs	r3, r0
 1620 0640 2370     		strb	r3, [r4]
 522:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 523:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_write_command(LCD_SET_ADD | x_fysisk, controller);
 1621              		.loc 1 523 0
 1622 0642 BB19     		adds	r3, r7, r6
 1623 0644 1B78     		ldrb	r3, [r3]
 1624 0646 4022     		movs	r2, #64
 1625 0648 1343     		orrs	r3, r2
 1626 064a DAB2     		uxtb	r2, r3
 1627 064c 7B19     		adds	r3, r7, r5
 1628 064e 1B78     		ldrb	r3, [r3]
 1629 0650 1900     		movs	r1, r3
 1630 0652 1000     		movs	r0, r2
 1631 0654 FFF7FEFF 		bl	graphic_write_command
 524:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 525:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     if (set == 1)
 1632              		.loc 1 525 0
 1633 0658 7B68     		ldr	r3, [r7, #4]
 1634 065a 012B     		cmp	r3, #1
 1635 065c 09D1     		bne	.L78
 526:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 527:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         bitmask = bitmask | temp;
 1636              		.loc 1 527 0
 1637 065e 1722     		movs	r2, #23
 1638 0660 BB18     		adds	r3, r7, r2
 1639 0662 B918     		adds	r1, r7, r2
 1640 0664 1322     		movs	r2, #19
 1641 0666 BA18     		adds	r2, r7, r2
 1642 0668 0978     		ldrb	r1, [r1]
 1643 066a 1278     		ldrb	r2, [r2]
 1644 066c 0A43     		orrs	r2, r1
 1645 066e 1A70     		strb	r2, [r3]
 1646 0670 08E0     		b	.L79
 1647              	.L78:
 528:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 529:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     else
 530:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 531:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         bitmask = bitmask & temp;
 1648              		.loc 1 531 0
 1649 0672 1722     		movs	r2, #23
 1650 0674 BB18     		adds	r3, r7, r2
 1651 0676 BA18     		adds	r2, r7, r2
 1652 0678 1321     		movs	r1, #19
 1653 067a 7918     		adds	r1, r7, r1
 1654 067c 1278     		ldrb	r2, [r2]
 1655 067e 0978     		ldrb	r1, [r1]
 1656 0680 0A40     		ands	r2, r1
 1657 0682 1A70     		strb	r2, [r3]
 1658              	.L79:
 532:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 533:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 534:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_write_data(bitmask, controller);
 1659              		.loc 1 534 0
 1660 0684 1623     		movs	r3, #22
 1661 0686 FB18     		adds	r3, r7, r3
 1662 0688 1A78     		ldrb	r2, [r3]
 1663 068a 1723     		movs	r3, #23
 1664 068c FB18     		adds	r3, r7, r3
 1665 068e 1B78     		ldrb	r3, [r3]
 1666 0690 1100     		movs	r1, r2
 1667 0692 1800     		movs	r0, r3
 1668 0694 FFF7FEFF 		bl	graphic_write_data
 1669 0698 00E0     		b	.L61
 1670              	.L80:
 469:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 1671              		.loc 1 469 0
 1672 069a C046     		nop
 1673              	.L61:
 535:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 1674              		.loc 1 535 0
 1675 069c BD46     		mov	sp, r7
 1676 069e 07B0     		add	sp, sp, #28
 1677              		@ sp needed
 1678 06a0 F0BD     		pop	{r4, r5, r6, r7, pc}
 1679              	.L82:
 1680 06a2 C046     		.align	2
 1681              	.L81:
 1682 06a4 20000000 		.word	.L67
 1683              		.cfi_endproc
 1684              	.LFE17:
 1686              		.align	1
 1687              		.global	draw_object
 1688              		.syntax unified
 1689              		.code	16
 1690              		.thumb_func
 1691              		.fpu softvfp
 1693              	draw_object:
 1694              	.LFB18:
 536:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 537:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void draw_object(POBJECT o)
 538:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 1695              		.loc 1 538 0
 1696              		.cfi_startproc
 1697              		@ args = 0, pretend = 0, frame = 16
 1698              		@ frame_needed = 1, uses_anonymous_args = 0
 1699 06a8 80B5     		push	{r7, lr}
 1700              		.cfi_def_cfa_offset 8
 1701              		.cfi_offset 7, -8
 1702              		.cfi_offset 14, -4
 1703 06aa 84B0     		sub	sp, sp, #16
 1704              		.cfi_def_cfa_offset 24
 1705 06ac 00AF     		add	r7, sp, #0
 1706              		.cfi_def_cfa_register 7
 1707 06ae 7860     		str	r0, [r7, #4]
 539:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     int i;
 540:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 541:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     for(i = 0; i < o->geo->numpoints; i++)
 1708              		.loc 1 541 0
 1709 06b0 0023     		movs	r3, #0
 1710 06b2 FB60     		str	r3, [r7, #12]
 1711 06b4 1DE0     		b	.L84
 1712              	.L85:
 542:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 543:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         pixel(o->posx + o->geo->px[i].x,o->posy + o->geo->px[i].y,1);
 1713              		.loc 1 543 0 discriminator 3
 1714 06b6 7B68     		ldr	r3, [r7, #4]
 1715 06b8 DA68     		ldr	r2, [r3, #12]
 1716 06ba 7B68     		ldr	r3, [r7, #4]
 1717 06bc 1968     		ldr	r1, [r3]
 1718 06be FB68     		ldr	r3, [r7, #12]
 1719 06c0 0433     		adds	r3, r3, #4
 1720 06c2 5B00     		lsls	r3, r3, #1
 1721 06c4 CB18     		adds	r3, r1, r3
 1722 06c6 0433     		adds	r3, r3, #4
 1723 06c8 1B78     		ldrb	r3, [r3]
 1724 06ca D318     		adds	r3, r2, r3
 1725 06cc 1800     		movs	r0, r3
 1726 06ce 7B68     		ldr	r3, [r7, #4]
 1727 06d0 1A69     		ldr	r2, [r3, #16]
 1728 06d2 7B68     		ldr	r3, [r7, #4]
 1729 06d4 1968     		ldr	r1, [r3]
 1730 06d6 FB68     		ldr	r3, [r7, #12]
 1731 06d8 0433     		adds	r3, r3, #4
 1732 06da 5B00     		lsls	r3, r3, #1
 1733 06dc CB18     		adds	r3, r1, r3
 1734 06de 0533     		adds	r3, r3, #5
 1735 06e0 1B78     		ldrb	r3, [r3]
 1736 06e2 D318     		adds	r3, r2, r3
 1737 06e4 0122     		movs	r2, #1
 1738 06e6 1900     		movs	r1, r3
 1739 06e8 FFF7FEFF 		bl	pixel
 541:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 1740              		.loc 1 541 0 discriminator 3
 1741 06ec FB68     		ldr	r3, [r7, #12]
 1742 06ee 0133     		adds	r3, r3, #1
 1743 06f0 FB60     		str	r3, [r7, #12]
 1744              	.L84:
 541:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 1745              		.loc 1 541 0 is_stmt 0 discriminator 1
 1746 06f2 7B68     		ldr	r3, [r7, #4]
 1747 06f4 1B68     		ldr	r3, [r3]
 1748 06f6 1B68     		ldr	r3, [r3]
 1749 06f8 FA68     		ldr	r2, [r7, #12]
 1750 06fa 9A42     		cmp	r2, r3
 1751 06fc DBDB     		blt	.L85
 544:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 545:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 1752              		.loc 1 545 0 is_stmt 1
 1753 06fe C046     		nop
 1754 0700 BD46     		mov	sp, r7
 1755 0702 04B0     		add	sp, sp, #16
 1756              		@ sp needed
 1757 0704 80BD     		pop	{r7, pc}
 1758              		.cfi_endproc
 1759              	.LFE18:
 1761              		.align	1
 1762              		.global	clear_object
 1763              		.syntax unified
 1764              		.code	16
 1765              		.thumb_func
 1766              		.fpu softvfp
 1768              	clear_object:
 1769              	.LFB19:
 546:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 547:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void clear_object(POBJECT o)
 548:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 1770              		.loc 1 548 0
 1771              		.cfi_startproc
 1772              		@ args = 0, pretend = 0, frame = 16
 1773              		@ frame_needed = 1, uses_anonymous_args = 0
 1774 0706 80B5     		push	{r7, lr}
 1775              		.cfi_def_cfa_offset 8
 1776              		.cfi_offset 7, -8
 1777              		.cfi_offset 14, -4
 1778 0708 84B0     		sub	sp, sp, #16
 1779              		.cfi_def_cfa_offset 24
 1780 070a 00AF     		add	r7, sp, #0
 1781              		.cfi_def_cfa_register 7
 1782 070c 7860     		str	r0, [r7, #4]
 549:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         int i;
 550:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 551:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     for(i = 0; i < o->geo->numpoints; i++)
 1783              		.loc 1 551 0
 1784 070e 0023     		movs	r3, #0
 1785 0710 FB60     		str	r3, [r7, #12]
 1786 0712 1DE0     		b	.L87
 1787              	.L88:
 552:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 553:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         pixel(o->posx + o->geo->px[i].x,o->posy + o->geo->px[i].y,0);
 1788              		.loc 1 553 0 discriminator 3
 1789 0714 7B68     		ldr	r3, [r7, #4]
 1790 0716 DA68     		ldr	r2, [r3, #12]
 1791 0718 7B68     		ldr	r3, [r7, #4]
 1792 071a 1968     		ldr	r1, [r3]
 1793 071c FB68     		ldr	r3, [r7, #12]
 1794 071e 0433     		adds	r3, r3, #4
 1795 0720 5B00     		lsls	r3, r3, #1
 1796 0722 CB18     		adds	r3, r1, r3
 1797 0724 0433     		adds	r3, r3, #4
 1798 0726 1B78     		ldrb	r3, [r3]
 1799 0728 D318     		adds	r3, r2, r3
 1800 072a 1800     		movs	r0, r3
 1801 072c 7B68     		ldr	r3, [r7, #4]
 1802 072e 1A69     		ldr	r2, [r3, #16]
 1803 0730 7B68     		ldr	r3, [r7, #4]
 1804 0732 1968     		ldr	r1, [r3]
 1805 0734 FB68     		ldr	r3, [r7, #12]
 1806 0736 0433     		adds	r3, r3, #4
 1807 0738 5B00     		lsls	r3, r3, #1
 1808 073a CB18     		adds	r3, r1, r3
 1809 073c 0533     		adds	r3, r3, #5
 1810 073e 1B78     		ldrb	r3, [r3]
 1811 0740 D318     		adds	r3, r2, r3
 1812 0742 0022     		movs	r2, #0
 1813 0744 1900     		movs	r1, r3
 1814 0746 FFF7FEFF 		bl	pixel
 551:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 1815              		.loc 1 551 0 discriminator 3
 1816 074a FB68     		ldr	r3, [r7, #12]
 1817 074c 0133     		adds	r3, r3, #1
 1818 074e FB60     		str	r3, [r7, #12]
 1819              	.L87:
 551:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 1820              		.loc 1 551 0 is_stmt 0 discriminator 1
 1821 0750 7B68     		ldr	r3, [r7, #4]
 1822 0752 1B68     		ldr	r3, [r3]
 1823 0754 1B68     		ldr	r3, [r3]
 1824 0756 FA68     		ldr	r2, [r7, #12]
 1825 0758 9A42     		cmp	r2, r3
 1826 075a DBDB     		blt	.L88
 554:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 555:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 1827              		.loc 1 555 0 is_stmt 1
 1828 075c C046     		nop
 1829 075e BD46     		mov	sp, r7
 1830 0760 04B0     		add	sp, sp, #16
 1831              		@ sp needed
 1832 0762 80BD     		pop	{r7, pc}
 1833              		.cfi_endproc
 1834              	.LFE19:
 1836              		.align	1
 1837              		.global	move_object
 1838              		.syntax unified
 1839              		.code	16
 1840              		.thumb_func
 1841              		.fpu softvfp
 1843              	move_object:
 1844              	.LFB20:
 556:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 557:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void move_object(POBJECT o)
 558:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 1845              		.loc 1 558 0
 1846              		.cfi_startproc
 1847              		@ args = 0, pretend = 0, frame = 8
 1848              		@ frame_needed = 1, uses_anonymous_args = 0
 1849 0764 80B5     		push	{r7, lr}
 1850              		.cfi_def_cfa_offset 8
 1851              		.cfi_offset 7, -8
 1852              		.cfi_offset 14, -4
 1853 0766 82B0     		sub	sp, sp, #8
 1854              		.cfi_def_cfa_offset 16
 1855 0768 00AF     		add	r7, sp, #0
 1856              		.cfi_def_cfa_register 7
 1857 076a 7860     		str	r0, [r7, #4]
 559:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     clear_object(o);
 1858              		.loc 1 559 0
 1859 076c 7B68     		ldr	r3, [r7, #4]
 1860 076e 1800     		movs	r0, r3
 1861 0770 FFF7FEFF 		bl	clear_object
 560:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 561:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     o->posx += o->dirx;
 1862              		.loc 1 561 0
 1863 0774 7B68     		ldr	r3, [r7, #4]
 1864 0776 DA68     		ldr	r2, [r3, #12]
 1865 0778 7B68     		ldr	r3, [r7, #4]
 1866 077a 5B68     		ldr	r3, [r3, #4]
 1867 077c D218     		adds	r2, r2, r3
 1868 077e 7B68     		ldr	r3, [r7, #4]
 1869 0780 DA60     		str	r2, [r3, #12]
 562:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     o->posy += o->diry;
 1870              		.loc 1 562 0
 1871 0782 7B68     		ldr	r3, [r7, #4]
 1872 0784 1A69     		ldr	r2, [r3, #16]
 1873 0786 7B68     		ldr	r3, [r7, #4]
 1874 0788 9B68     		ldr	r3, [r3, #8]
 1875 078a D218     		adds	r2, r2, r3
 1876 078c 7B68     		ldr	r3, [r7, #4]
 1877 078e 1A61     		str	r2, [r3, #16]
 563:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 564:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     if((o->posy) >= left_paddle.posy && (o->posy + o->geo->sizey) <= (left_paddle.posy + left_paddl
 1878              		.loc 1 564 0
 1879 0790 7B68     		ldr	r3, [r7, #4]
 1880 0792 1A69     		ldr	r2, [r3, #16]
 1881 0794 484B     		ldr	r3, .L97
 1882 0796 1B69     		ldr	r3, [r3, #16]
 1883 0798 9A42     		cmp	r2, r3
 1884 079a 24DB     		blt	.L90
 1885              		.loc 1 564 0 is_stmt 0 discriminator 1
 1886 079c 7B68     		ldr	r3, [r7, #4]
 1887 079e 1A69     		ldr	r2, [r3, #16]
 1888 07a0 7B68     		ldr	r3, [r7, #4]
 1889 07a2 1B68     		ldr	r3, [r3]
 1890 07a4 9B68     		ldr	r3, [r3, #8]
 1891 07a6 D218     		adds	r2, r2, r3
 1892 07a8 434B     		ldr	r3, .L97
 1893 07aa 1969     		ldr	r1, [r3, #16]
 1894 07ac 424B     		ldr	r3, .L97
 1895 07ae 1B68     		ldr	r3, [r3]
 1896 07b0 9B68     		ldr	r3, [r3, #8]
 1897 07b2 CB18     		adds	r3, r1, r3
 1898 07b4 9A42     		cmp	r2, r3
 1899 07b6 16DC     		bgt	.L90
 565:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 566:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         if(o->posx <= (left_paddle.posx + left_paddle.geo->sizex))
 1900              		.loc 1 566 0 is_stmt 1
 1901 07b8 7B68     		ldr	r3, [r7, #4]
 1902 07ba DA68     		ldr	r2, [r3, #12]
 1903 07bc 3E4B     		ldr	r3, .L97
 1904 07be D968     		ldr	r1, [r3, #12]
 1905 07c0 3D4B     		ldr	r3, .L97
 1906 07c2 1B68     		ldr	r3, [r3]
 1907 07c4 5B68     		ldr	r3, [r3, #4]
 1908 07c6 CB18     		adds	r3, r1, r3
 1909 07c8 9A42     		cmp	r2, r3
 1910 07ca 0CDC     		bgt	.L90
 567:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         {
 568:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             o->dirx *= -1;
 1911              		.loc 1 568 0
 1912 07cc 7B68     		ldr	r3, [r7, #4]
 1913 07ce 5B68     		ldr	r3, [r3, #4]
 1914 07d0 5A42     		rsbs	r2, r3, #0
 1915 07d2 7B68     		ldr	r3, [r7, #4]
 1916 07d4 5A60     		str	r2, [r3, #4]
 569:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             o->posx = left_paddle.posx + o->geo->sizex;
 1917              		.loc 1 569 0
 1918 07d6 384B     		ldr	r3, .L97
 1919 07d8 DA68     		ldr	r2, [r3, #12]
 1920 07da 7B68     		ldr	r3, [r7, #4]
 1921 07dc 1B68     		ldr	r3, [r3]
 1922 07de 5B68     		ldr	r3, [r3, #4]
 1923 07e0 D218     		adds	r2, r2, r3
 1924 07e2 7B68     		ldr	r3, [r7, #4]
 1925 07e4 DA60     		str	r2, [r3, #12]
 1926              	.L90:
 570:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         }
 571:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 572:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 573:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     if(o->posx < 1)
 1927              		.loc 1 573 0
 1928 07e6 7B68     		ldr	r3, [r7, #4]
 1929 07e8 DB68     		ldr	r3, [r3, #12]
 1930 07ea 002B     		cmp	r3, #0
 1931 07ec 09DC     		bgt	.L91
 574:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 575:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         o->posx = 64;
 1932              		.loc 1 575 0
 1933 07ee 7B68     		ldr	r3, [r7, #4]
 1934 07f0 4022     		movs	r2, #64
 1935 07f2 DA60     		str	r2, [r3, #12]
 576:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         right_point += 1;
 1936              		.loc 1 576 0
 1937 07f4 314B     		ldr	r3, .L97+4
 1938 07f6 1B78     		ldrb	r3, [r3]
 1939 07f8 DBB2     		uxtb	r3, r3
 1940 07fa 0133     		adds	r3, r3, #1
 1941 07fc DAB2     		uxtb	r2, r3
 1942 07fe 2F4B     		ldr	r3, .L97+4
 1943 0800 1A70     		strb	r2, [r3]
 1944              	.L91:
 577:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 578:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     if( (o->posx + o->geo->sizex) > 128)
 1945              		.loc 1 578 0
 1946 0802 7B68     		ldr	r3, [r7, #4]
 1947 0804 DA68     		ldr	r2, [r3, #12]
 1948 0806 7B68     		ldr	r3, [r7, #4]
 1949 0808 1B68     		ldr	r3, [r3]
 1950 080a 5B68     		ldr	r3, [r3, #4]
 1951 080c D318     		adds	r3, r2, r3
 1952 080e 802B     		cmp	r3, #128
 1953 0810 09DD     		ble	.L92
 579:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 580:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         o->posx = 64;
 1954              		.loc 1 580 0
 1955 0812 7B68     		ldr	r3, [r7, #4]
 1956 0814 4022     		movs	r2, #64
 1957 0816 DA60     		str	r2, [r3, #12]
 581:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         left_point += 1; 
 1958              		.loc 1 581 0
 1959 0818 294B     		ldr	r3, .L97+8
 1960 081a 1B78     		ldrb	r3, [r3]
 1961 081c DBB2     		uxtb	r3, r3
 1962 081e 0133     		adds	r3, r3, #1
 1963 0820 DAB2     		uxtb	r2, r3
 1964 0822 274B     		ldr	r3, .L97+8
 1965 0824 1A70     		strb	r2, [r3]
 1966              	.L92:
 582:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 583:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 584:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     if((o->posy) >= right_paddle.posy && (o->posy + o->geo->sizey) <= (right_paddle.posy + right_pa
 1967              		.loc 1 584 0
 1968 0826 7B68     		ldr	r3, [r7, #4]
 1969 0828 1A69     		ldr	r2, [r3, #16]
 1970 082a 264B     		ldr	r3, .L97+12
 1971 082c 1B69     		ldr	r3, [r3, #16]
 1972 082e 9A42     		cmp	r2, r3
 1973 0830 24DB     		blt	.L93
 1974              		.loc 1 584 0 is_stmt 0 discriminator 1
 1975 0832 7B68     		ldr	r3, [r7, #4]
 1976 0834 1A69     		ldr	r2, [r3, #16]
 1977 0836 7B68     		ldr	r3, [r7, #4]
 1978 0838 1B68     		ldr	r3, [r3]
 1979 083a 9B68     		ldr	r3, [r3, #8]
 1980 083c D218     		adds	r2, r2, r3
 1981 083e 214B     		ldr	r3, .L97+12
 1982 0840 1969     		ldr	r1, [r3, #16]
 1983 0842 204B     		ldr	r3, .L97+12
 1984 0844 1B68     		ldr	r3, [r3]
 1985 0846 9B68     		ldr	r3, [r3, #8]
 1986 0848 CB18     		adds	r3, r1, r3
 1987 084a 9A42     		cmp	r2, r3
 1988 084c 16DC     		bgt	.L93
 585:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 586:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         if( (o->posx + o->geo->sizex) >= right_paddle.posx)
 1989              		.loc 1 586 0 is_stmt 1
 1990 084e 7B68     		ldr	r3, [r7, #4]
 1991 0850 DA68     		ldr	r2, [r3, #12]
 1992 0852 7B68     		ldr	r3, [r7, #4]
 1993 0854 1B68     		ldr	r3, [r3]
 1994 0856 5B68     		ldr	r3, [r3, #4]
 1995 0858 D218     		adds	r2, r2, r3
 1996 085a 1A4B     		ldr	r3, .L97+12
 1997 085c DB68     		ldr	r3, [r3, #12]
 1998 085e 9A42     		cmp	r2, r3
 1999 0860 0CDB     		blt	.L93
 587:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         {
 588:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             o->dirx *= -1;
 2000              		.loc 1 588 0
 2001 0862 7B68     		ldr	r3, [r7, #4]
 2002 0864 5B68     		ldr	r3, [r3, #4]
 2003 0866 5A42     		rsbs	r2, r3, #0
 2004 0868 7B68     		ldr	r3, [r7, #4]
 2005 086a 5A60     		str	r2, [r3, #4]
 589:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             o->posx = right_paddle.posx - o->geo->sizex;
 2006              		.loc 1 589 0
 2007 086c 154B     		ldr	r3, .L97+12
 2008 086e DA68     		ldr	r2, [r3, #12]
 2009 0870 7B68     		ldr	r3, [r7, #4]
 2010 0872 1B68     		ldr	r3, [r3]
 2011 0874 5B68     		ldr	r3, [r3, #4]
 2012 0876 D21A     		subs	r2, r2, r3
 2013 0878 7B68     		ldr	r3, [r7, #4]
 2014 087a DA60     		str	r2, [r3, #12]
 2015              	.L93:
 590:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         }
 591:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 592:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     else
 593:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 594:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         
 595:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 596:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 597:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     if(o->posy < 1)
 2016              		.loc 1 597 0
 2017 087c 7B68     		ldr	r3, [r7, #4]
 2018 087e 1B69     		ldr	r3, [r3, #16]
 2019 0880 002B     		cmp	r3, #0
 2020 0882 04DC     		bgt	.L95
 598:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 599:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         o->diry *= -1;
 2021              		.loc 1 599 0
 2022 0884 7B68     		ldr	r3, [r7, #4]
 2023 0886 9B68     		ldr	r3, [r3, #8]
 2024 0888 5A42     		rsbs	r2, r3, #0
 2025 088a 7B68     		ldr	r3, [r7, #4]
 2026 088c 9A60     		str	r2, [r3, #8]
 2027              	.L95:
 600:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 601:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     if( (o->posy + o->geo->sizey) > 64 )
 2028              		.loc 1 601 0
 2029 088e 7B68     		ldr	r3, [r7, #4]
 2030 0890 1A69     		ldr	r2, [r3, #16]
 2031 0892 7B68     		ldr	r3, [r7, #4]
 2032 0894 1B68     		ldr	r3, [r3]
 2033 0896 9B68     		ldr	r3, [r3, #8]
 2034 0898 D318     		adds	r3, r2, r3
 2035 089a 402B     		cmp	r3, #64
 2036 089c 04DD     		ble	.L96
 602:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 603:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         o->diry *= -1;
 2037              		.loc 1 603 0
 2038 089e 7B68     		ldr	r3, [r7, #4]
 2039 08a0 9B68     		ldr	r3, [r3, #8]
 2040 08a2 5A42     		rsbs	r2, r3, #0
 2041 08a4 7B68     		ldr	r3, [r7, #4]
 2042 08a6 9A60     		str	r2, [r3, #8]
 2043              	.L96:
 604:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 605:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 606:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     draw_object(o);
 2044              		.loc 1 606 0
 2045 08a8 7B68     		ldr	r3, [r7, #4]
 2046 08aa 1800     		movs	r0, r3
 2047 08ac FFF7FEFF 		bl	draw_object
 607:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 2048              		.loc 1 607 0
 2049 08b0 C046     		nop
 2050 08b2 BD46     		mov	sp, r7
 2051 08b4 02B0     		add	sp, sp, #8
 2052              		@ sp needed
 2053 08b6 80BD     		pop	{r7, pc}
 2054              	.L98:
 2055              		.align	2
 2056              	.L97:
 2057 08b8 D8010000 		.word	left_paddle
 2058 08bc 01000000 		.word	right_point
 2059 08c0 00000000 		.word	left_point
 2060 08c4 FC010000 		.word	right_paddle
 2061              		.cfi_endproc
 2062              	.LFE20:
 2064              		.align	1
 2065              		.global	move_paddle
 2066              		.syntax unified
 2067              		.code	16
 2068              		.thumb_func
 2069              		.fpu softvfp
 2071              	move_paddle:
 2072              	.LFB21:
 608:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 609:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void move_paddle(POBJECT o)
 610:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 2073              		.loc 1 610 0
 2074              		.cfi_startproc
 2075              		@ args = 0, pretend = 0, frame = 8
 2076              		@ frame_needed = 1, uses_anonymous_args = 0
 2077 08c8 80B5     		push	{r7, lr}
 2078              		.cfi_def_cfa_offset 8
 2079              		.cfi_offset 7, -8
 2080              		.cfi_offset 14, -4
 2081 08ca 82B0     		sub	sp, sp, #8
 2082              		.cfi_def_cfa_offset 16
 2083 08cc 00AF     		add	r7, sp, #0
 2084              		.cfi_def_cfa_register 7
 2085 08ce 7860     		str	r0, [r7, #4]
 611:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     clear_object(o);
 2086              		.loc 1 611 0
 2087 08d0 7B68     		ldr	r3, [r7, #4]
 2088 08d2 1800     		movs	r0, r3
 2089 08d4 FFF7FEFF 		bl	clear_object
 612:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 613:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     o->posx += o->dirx;
 2090              		.loc 1 613 0
 2091 08d8 7B68     		ldr	r3, [r7, #4]
 2092 08da DA68     		ldr	r2, [r3, #12]
 2093 08dc 7B68     		ldr	r3, [r7, #4]
 2094 08de 5B68     		ldr	r3, [r3, #4]
 2095 08e0 D218     		adds	r2, r2, r3
 2096 08e2 7B68     		ldr	r3, [r7, #4]
 2097 08e4 DA60     		str	r2, [r3, #12]
 614:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     o->posy += o->diry;
 2098              		.loc 1 614 0
 2099 08e6 7B68     		ldr	r3, [r7, #4]
 2100 08e8 1A69     		ldr	r2, [r3, #16]
 2101 08ea 7B68     		ldr	r3, [r7, #4]
 2102 08ec 9B68     		ldr	r3, [r3, #8]
 2103 08ee D218     		adds	r2, r2, r3
 2104 08f0 7B68     		ldr	r3, [r7, #4]
 2105 08f2 1A61     		str	r2, [r3, #16]
 615:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****    
 616:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     if(o->posy < 1)
 2106              		.loc 1 616 0
 2107 08f4 7B68     		ldr	r3, [r7, #4]
 2108 08f6 1B69     		ldr	r3, [r3, #16]
 2109 08f8 002B     		cmp	r3, #0
 2110 08fa 02DC     		bgt	.L100
 617:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 618:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         o->diry = 0;
 2111              		.loc 1 618 0
 2112 08fc 7B68     		ldr	r3, [r7, #4]
 2113 08fe 0022     		movs	r2, #0
 2114 0900 9A60     		str	r2, [r3, #8]
 2115              	.L100:
 619:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 620:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     if( (o->posy + o->geo->sizey) > 64 )
 2116              		.loc 1 620 0
 2117 0902 7B68     		ldr	r3, [r7, #4]
 2118 0904 1A69     		ldr	r2, [r3, #16]
 2119 0906 7B68     		ldr	r3, [r7, #4]
 2120 0908 1B68     		ldr	r3, [r3]
 2121 090a 9B68     		ldr	r3, [r3, #8]
 2122 090c D318     		adds	r3, r2, r3
 2123 090e 402B     		cmp	r3, #64
 2124 0910 02DD     		ble	.L101
 621:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 622:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         o->diry = 0;
 2125              		.loc 1 622 0
 2126 0912 7B68     		ldr	r3, [r7, #4]
 2127 0914 0022     		movs	r2, #0
 2128 0916 9A60     		str	r2, [r3, #8]
 2129              	.L101:
 623:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 624:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 625:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     draw_object(o);
 2130              		.loc 1 625 0
 2131 0918 7B68     		ldr	r3, [r7, #4]
 2132 091a 1800     		movs	r0, r3
 2133 091c FFF7FEFF 		bl	draw_object
 626:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     o->dirx = 0;
 2134              		.loc 1 626 0
 2135 0920 7B68     		ldr	r3, [r7, #4]
 2136 0922 0022     		movs	r2, #0
 2137 0924 5A60     		str	r2, [r3, #4]
 627:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     o->diry = 0;
 2138              		.loc 1 627 0
 2139 0926 7B68     		ldr	r3, [r7, #4]
 2140 0928 0022     		movs	r2, #0
 2141 092a 9A60     		str	r2, [r3, #8]
 628:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 2142              		.loc 1 628 0
 2143 092c C046     		nop
 2144 092e BD46     		mov	sp, r7
 2145 0930 02B0     		add	sp, sp, #8
 2146              		@ sp needed
 2147 0932 80BD     		pop	{r7, pc}
 2148              		.cfi_endproc
 2149              	.LFE21:
 2151              		.align	1
 2152              		.global	set_speed_object
 2153              		.syntax unified
 2154              		.code	16
 2155              		.thumb_func
 2156              		.fpu softvfp
 2158              	set_speed_object:
 2159              	.LFB22:
 629:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 630:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void set_speed_object(POBJECT o, int speedx, int speedy)
 631:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 2160              		.loc 1 631 0
 2161              		.cfi_startproc
 2162              		@ args = 0, pretend = 0, frame = 16
 2163              		@ frame_needed = 1, uses_anonymous_args = 0
 2164 0934 80B5     		push	{r7, lr}
 2165              		.cfi_def_cfa_offset 8
 2166              		.cfi_offset 7, -8
 2167              		.cfi_offset 14, -4
 2168 0936 84B0     		sub	sp, sp, #16
 2169              		.cfi_def_cfa_offset 24
 2170 0938 00AF     		add	r7, sp, #0
 2171              		.cfi_def_cfa_register 7
 2172 093a F860     		str	r0, [r7, #12]
 2173 093c B960     		str	r1, [r7, #8]
 2174 093e 7A60     		str	r2, [r7, #4]
 632:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     o->dirx = speedx;
 2175              		.loc 1 632 0
 2176 0940 FB68     		ldr	r3, [r7, #12]
 2177 0942 BA68     		ldr	r2, [r7, #8]
 2178 0944 5A60     		str	r2, [r3, #4]
 633:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     o->diry = speedy;
 2179              		.loc 1 633 0
 2180 0946 FB68     		ldr	r3, [r7, #12]
 2181 0948 7A68     		ldr	r2, [r7, #4]
 2182 094a 9A60     		str	r2, [r3, #8]
 634:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 2183              		.loc 1 634 0
 2184 094c C046     		nop
 2185 094e BD46     		mov	sp, r7
 2186 0950 04B0     		add	sp, sp, #16
 2187              		@ sp needed
 2188 0952 80BD     		pop	{r7, pc}
 2189              		.cfi_endproc
 2190              	.LFE22:
 2192              		.align	1
 2193              		.global	ascii_ctrl_bit_set
 2194              		.syntax unified
 2195              		.code	16
 2196              		.thumb_func
 2197              		.fpu softvfp
 2199              	ascii_ctrl_bit_set:
 2200              	.LFB23:
 635:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 636:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void ascii_ctrl_bit_set(unsigned char x)
 637:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 2201              		.loc 1 637 0
 2202              		.cfi_startproc
 2203              		@ args = 0, pretend = 0, frame = 8
 2204              		@ frame_needed = 1, uses_anonymous_args = 0
 2205 0954 80B5     		push	{r7, lr}
 2206              		.cfi_def_cfa_offset 8
 2207              		.cfi_offset 7, -8
 2208              		.cfi_offset 14, -4
 2209 0956 82B0     		sub	sp, sp, #8
 2210              		.cfi_def_cfa_offset 16
 2211 0958 00AF     		add	r7, sp, #0
 2212              		.cfi_def_cfa_register 7
 2213 095a 0200     		movs	r2, r0
 2214 095c FB1D     		adds	r3, r7, #7
 2215 095e 1A70     		strb	r2, [r3]
 638:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     *GRAPHIC_CTRL_ODR = (*GRAPHIC_CTRL_ODR & ~x) | x;
 2216              		.loc 1 638 0
 2217 0960 054B     		ldr	r3, .L104
 2218 0962 1A78     		ldrb	r2, [r3]
 2219 0964 0449     		ldr	r1, .L104
 2220 0966 FB1D     		adds	r3, r7, #7
 2221 0968 1B78     		ldrb	r3, [r3]
 2222 096a 1343     		orrs	r3, r2
 2223 096c DBB2     		uxtb	r3, r3
 2224 096e 0B70     		strb	r3, [r1]
 639:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 2225              		.loc 1 639 0
 2226 0970 C046     		nop
 2227 0972 BD46     		mov	sp, r7
 2228 0974 02B0     		add	sp, sp, #8
 2229              		@ sp needed
 2230 0976 80BD     		pop	{r7, pc}
 2231              	.L105:
 2232              		.align	2
 2233              	.L104:
 2234 0978 14100240 		.word	1073877012
 2235              		.cfi_endproc
 2236              	.LFE23:
 2238              		.align	1
 2239              		.global	ascii_ctrl_bit_clear
 2240              		.syntax unified
 2241              		.code	16
 2242              		.thumb_func
 2243              		.fpu softvfp
 2245              	ascii_ctrl_bit_clear:
 2246              	.LFB24:
 640:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 641:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void ascii_ctrl_bit_clear(unsigned char x)
 642:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 2247              		.loc 1 642 0
 2248              		.cfi_startproc
 2249              		@ args = 0, pretend = 0, frame = 8
 2250              		@ frame_needed = 1, uses_anonymous_args = 0
 2251 097c 80B5     		push	{r7, lr}
 2252              		.cfi_def_cfa_offset 8
 2253              		.cfi_offset 7, -8
 2254              		.cfi_offset 14, -4
 2255 097e 82B0     		sub	sp, sp, #8
 2256              		.cfi_def_cfa_offset 16
 2257 0980 00AF     		add	r7, sp, #0
 2258              		.cfi_def_cfa_register 7
 2259 0982 0200     		movs	r2, r0
 2260 0984 FB1D     		adds	r3, r7, #7
 2261 0986 1A70     		strb	r2, [r3]
 643:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     *GRAPHIC_CTRL_ODR = (*GRAPHIC_CTRL_ODR & ~x);
 2262              		.loc 1 643 0
 2263 0988 084B     		ldr	r3, .L107
 2264 098a 1B78     		ldrb	r3, [r3]
 2265 098c 5BB2     		sxtb	r3, r3
 2266 098e FA1D     		adds	r2, r7, #7
 2267 0990 1278     		ldrb	r2, [r2]
 2268 0992 52B2     		sxtb	r2, r2
 2269 0994 D243     		mvns	r2, r2
 2270 0996 52B2     		sxtb	r2, r2
 2271 0998 1340     		ands	r3, r2
 2272 099a 5AB2     		sxtb	r2, r3
 2273 099c 034B     		ldr	r3, .L107
 2274 099e D2B2     		uxtb	r2, r2
 2275 09a0 1A70     		strb	r2, [r3]
 644:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 2276              		.loc 1 644 0
 2277 09a2 C046     		nop
 2278 09a4 BD46     		mov	sp, r7
 2279 09a6 02B0     		add	sp, sp, #8
 2280              		@ sp needed
 2281 09a8 80BD     		pop	{r7, pc}
 2282              	.L108:
 2283 09aa C046     		.align	2
 2284              	.L107:
 2285 09ac 14100240 		.word	1073877012
 2286              		.cfi_endproc
 2287              	.LFE24:
 2289              		.align	1
 2290              		.global	ascii_write_controller
 2291              		.syntax unified
 2292              		.code	16
 2293              		.thumb_func
 2294              		.fpu softvfp
 2296              	ascii_write_controller:
 2297              	.LFB25:
 645:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 646:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void ascii_write_controller(unsigned char byte)
 647:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 2298              		.loc 1 647 0
 2299              		.cfi_startproc
 2300              		@ args = 0, pretend = 0, frame = 8
 2301              		@ frame_needed = 1, uses_anonymous_args = 0
 2302 09b0 80B5     		push	{r7, lr}
 2303              		.cfi_def_cfa_offset 8
 2304              		.cfi_offset 7, -8
 2305              		.cfi_offset 14, -4
 2306 09b2 82B0     		sub	sp, sp, #8
 2307              		.cfi_def_cfa_offset 16
 2308 09b4 00AF     		add	r7, sp, #0
 2309              		.cfi_def_cfa_register 7
 2310 09b6 0200     		movs	r2, r0
 2311 09b8 FB1D     		adds	r3, r7, #7
 2312 09ba 1A70     		strb	r2, [r3]
 648:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_ctrl_bit_set(B_E);
 2313              		.loc 1 648 0
 2314 09bc 4020     		movs	r0, #64
 2315 09be FFF7FEFF 		bl	ascii_ctrl_bit_set
 649:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     *GRAPHIC_DATA_ODR = byte;
 2316              		.loc 1 649 0
 2317 09c2 064A     		ldr	r2, .L110
 2318 09c4 FB1D     		adds	r3, r7, #7
 2319 09c6 1B78     		ldrb	r3, [r3]
 2320 09c8 1370     		strb	r3, [r2]
 650:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     delay_250ns();
 2321              		.loc 1 650 0
 2322 09ca FFF7FEFF 		bl	delay_250ns
 651:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_ctrl_bit_clear(B_E);
 2323              		.loc 1 651 0
 2324 09ce 4020     		movs	r0, #64
 2325 09d0 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 652:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 2326              		.loc 1 652 0
 2327 09d4 C046     		nop
 2328 09d6 BD46     		mov	sp, r7
 2329 09d8 02B0     		add	sp, sp, #8
 2330              		@ sp needed
 2331 09da 80BD     		pop	{r7, pc}
 2332              	.L111:
 2333              		.align	2
 2334              	.L110:
 2335 09dc 15100240 		.word	1073877013
 2336              		.cfi_endproc
 2337              	.LFE25:
 2339              		.align	1
 2340              		.global	ascii_read_controller
 2341              		.syntax unified
 2342              		.code	16
 2343              		.thumb_func
 2344              		.fpu softvfp
 2346              	ascii_read_controller:
 2347              	.LFB26:
 653:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 654:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** unsigned char ascii_read_controller(void)
 655:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 2348              		.loc 1 655 0
 2349              		.cfi_startproc
 2350              		@ args = 0, pretend = 0, frame = 8
 2351              		@ frame_needed = 1, uses_anonymous_args = 0
 2352 09e0 80B5     		push	{r7, lr}
 2353              		.cfi_def_cfa_offset 8
 2354              		.cfi_offset 7, -8
 2355              		.cfi_offset 14, -4
 2356 09e2 82B0     		sub	sp, sp, #8
 2357              		.cfi_def_cfa_offset 16
 2358 09e4 00AF     		add	r7, sp, #0
 2359              		.cfi_def_cfa_register 7
 656:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     unsigned char ret_val;
 657:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 658:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_ctrl_bit_set(B_E);
 2360              		.loc 1 658 0
 2361 09e6 4020     		movs	r0, #64
 2362 09e8 FFF7FEFF 		bl	ascii_ctrl_bit_set
 659:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 660:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     delay_250ns();
 2363              		.loc 1 660 0
 2364 09ec FFF7FEFF 		bl	delay_250ns
 661:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     delay_250ns();
 2365              		.loc 1 661 0
 2366 09f0 FFF7FEFF 		bl	delay_250ns
 662:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 663:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ret_val = *GRAPHIC_DATA_IDR;
 2367              		.loc 1 663 0
 2368 09f4 064A     		ldr	r2, .L114
 2369 09f6 FB1D     		adds	r3, r7, #7
 2370 09f8 1278     		ldrb	r2, [r2]
 2371 09fa 1A70     		strb	r2, [r3]
 664:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 665:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_ctrl_bit_clear(B_E);
 2372              		.loc 1 665 0
 2373 09fc 4020     		movs	r0, #64
 2374 09fe FFF7FEFF 		bl	ascii_ctrl_bit_clear
 666:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 667:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     return ret_val;
 2375              		.loc 1 667 0
 2376 0a02 FB1D     		adds	r3, r7, #7
 2377 0a04 1B78     		ldrb	r3, [r3]
 668:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 2378              		.loc 1 668 0
 2379 0a06 1800     		movs	r0, r3
 2380 0a08 BD46     		mov	sp, r7
 2381 0a0a 02B0     		add	sp, sp, #8
 2382              		@ sp needed
 2383 0a0c 80BD     		pop	{r7, pc}
 2384              	.L115:
 2385 0a0e C046     		.align	2
 2386              	.L114:
 2387 0a10 11100240 		.word	1073877009
 2388              		.cfi_endproc
 2389              	.LFE26:
 2391              		.align	1
 2392              		.global	ascii_write_cmd
 2393              		.syntax unified
 2394              		.code	16
 2395              		.thumb_func
 2396              		.fpu softvfp
 2398              	ascii_write_cmd:
 2399              	.LFB27:
 669:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 670:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void ascii_write_cmd(unsigned char command)
 671:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 2400              		.loc 1 671 0
 2401              		.cfi_startproc
 2402              		@ args = 0, pretend = 0, frame = 8
 2403              		@ frame_needed = 1, uses_anonymous_args = 0
 2404 0a14 80B5     		push	{r7, lr}
 2405              		.cfi_def_cfa_offset 8
 2406              		.cfi_offset 7, -8
 2407              		.cfi_offset 14, -4
 2408 0a16 82B0     		sub	sp, sp, #8
 2409              		.cfi_def_cfa_offset 16
 2410 0a18 00AF     		add	r7, sp, #0
 2411              		.cfi_def_cfa_register 7
 2412 0a1a 0200     		movs	r2, r0
 2413 0a1c FB1D     		adds	r3, r7, #7
 2414 0a1e 1A70     		strb	r2, [r3]
 672:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_ctrl_bit_clear(B_RW | B_RS);
 2415              		.loc 1 672 0
 2416 0a20 0320     		movs	r0, #3
 2417 0a22 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 673:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_write_controller(command);
 2418              		.loc 1 673 0
 2419 0a26 FB1D     		adds	r3, r7, #7
 2420 0a28 1B78     		ldrb	r3, [r3]
 2421 0a2a 1800     		movs	r0, r3
 2422 0a2c FFF7FEFF 		bl	ascii_write_controller
 674:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 2423              		.loc 1 674 0
 2424 0a30 C046     		nop
 2425 0a32 BD46     		mov	sp, r7
 2426 0a34 02B0     		add	sp, sp, #8
 2427              		@ sp needed
 2428 0a36 80BD     		pop	{r7, pc}
 2429              		.cfi_endproc
 2430              	.LFE27:
 2432              		.align	1
 2433              		.global	ascii_write_data
 2434              		.syntax unified
 2435              		.code	16
 2436              		.thumb_func
 2437              		.fpu softvfp
 2439              	ascii_write_data:
 2440              	.LFB28:
 675:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 676:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void ascii_write_data(unsigned char data)
 677:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 2441              		.loc 1 677 0
 2442              		.cfi_startproc
 2443              		@ args = 0, pretend = 0, frame = 8
 2444              		@ frame_needed = 1, uses_anonymous_args = 0
 2445 0a38 80B5     		push	{r7, lr}
 2446              		.cfi_def_cfa_offset 8
 2447              		.cfi_offset 7, -8
 2448              		.cfi_offset 14, -4
 2449 0a3a 82B0     		sub	sp, sp, #8
 2450              		.cfi_def_cfa_offset 16
 2451 0a3c 00AF     		add	r7, sp, #0
 2452              		.cfi_def_cfa_register 7
 2453 0a3e 0200     		movs	r2, r0
 2454 0a40 FB1D     		adds	r3, r7, #7
 2455 0a42 1A70     		strb	r2, [r3]
 678:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_ctrl_bit_set(B_RS);
 2456              		.loc 1 678 0
 2457 0a44 0120     		movs	r0, #1
 2458 0a46 FFF7FEFF 		bl	ascii_ctrl_bit_set
 679:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_ctrl_bit_clear(B_RW);
 2459              		.loc 1 679 0
 2460 0a4a 0220     		movs	r0, #2
 2461 0a4c FFF7FEFF 		bl	ascii_ctrl_bit_clear
 680:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 681:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_write_controller(data);
 2462              		.loc 1 681 0
 2463 0a50 FB1D     		adds	r3, r7, #7
 2464 0a52 1B78     		ldrb	r3, [r3]
 2465 0a54 1800     		movs	r0, r3
 2466 0a56 FFF7FEFF 		bl	ascii_write_controller
 682:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 2467              		.loc 1 682 0
 2468 0a5a C046     		nop
 2469 0a5c BD46     		mov	sp, r7
 2470 0a5e 02B0     		add	sp, sp, #8
 2471              		@ sp needed
 2472 0a60 80BD     		pop	{r7, pc}
 2473              		.cfi_endproc
 2474              	.LFE28:
 2476              		.align	1
 2477              		.global	ascii_read_status
 2478              		.syntax unified
 2479              		.code	16
 2480              		.thumb_func
 2481              		.fpu softvfp
 2483              	ascii_read_status:
 2484              	.LFB29:
 683:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 684:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** unsigned char ascii_read_status(void)
 685:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 2485              		.loc 1 685 0
 2486              		.cfi_startproc
 2487              		@ args = 0, pretend = 0, frame = 8
 2488              		@ frame_needed = 1, uses_anonymous_args = 0
 2489 0a62 90B5     		push	{r4, r7, lr}
 2490              		.cfi_def_cfa_offset 12
 2491              		.cfi_offset 4, -12
 2492              		.cfi_offset 7, -8
 2493              		.cfi_offset 14, -4
 2494 0a64 83B0     		sub	sp, sp, #12
 2495              		.cfi_def_cfa_offset 24
 2496 0a66 00AF     		add	r7, sp, #0
 2497              		.cfi_def_cfa_register 7
 686:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     unsigned char status;
 687:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 688:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     * ( (unsigned short *) (portModer + 0x2)) = 0x0000;
 2498              		.loc 1 688 0
 2499 0a68 0B4B     		ldr	r3, .L120
 2500 0a6a 0022     		movs	r2, #0
 2501 0a6c 1A80     		strh	r2, [r3]
 689:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 690:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_ctrl_bit_clear(B_RS);
 2502              		.loc 1 690 0
 2503 0a6e 0120     		movs	r0, #1
 2504 0a70 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 691:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_ctrl_bit_set(B_RW);
 2505              		.loc 1 691 0
 2506 0a74 0220     		movs	r0, #2
 2507 0a76 FFF7FEFF 		bl	ascii_ctrl_bit_set
 692:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 693:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     status = ascii_read_controller();
 2508              		.loc 1 693 0
 2509 0a7a FC1D     		adds	r4, r7, #7
 2510 0a7c FFF7FEFF 		bl	ascii_read_controller
 2511 0a80 0300     		movs	r3, r0
 2512 0a82 2370     		strb	r3, [r4]
 694:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 695:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     * ( (unsigned short *) (portModer + 0x2)) = 0x5555;
 2513              		.loc 1 695 0
 2514 0a84 044B     		ldr	r3, .L120
 2515 0a86 054A     		ldr	r2, .L120+4
 2516 0a88 1A80     		strh	r2, [r3]
 696:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 697:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     return status;
 2517              		.loc 1 697 0
 2518 0a8a FB1D     		adds	r3, r7, #7
 2519 0a8c 1B78     		ldrb	r3, [r3]
 698:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 2520              		.loc 1 698 0
 2521 0a8e 1800     		movs	r0, r3
 2522 0a90 BD46     		mov	sp, r7
 2523 0a92 03B0     		add	sp, sp, #12
 2524              		@ sp needed
 2525 0a94 90BD     		pop	{r4, r7, pc}
 2526              	.L121:
 2527 0a96 C046     		.align	2
 2528              	.L120:
 2529 0a98 02100240 		.word	1073876994
 2530 0a9c 55550000 		.word	21845
 2531              		.cfi_endproc
 2532              	.LFE29:
 2534              		.align	1
 2535              		.global	ascii_read_data
 2536              		.syntax unified
 2537              		.code	16
 2538              		.thumb_func
 2539              		.fpu softvfp
 2541              	ascii_read_data:
 2542              	.LFB30:
 699:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 700:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** unsigned char ascii_read_data(void)
 701:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 2543              		.loc 1 701 0
 2544              		.cfi_startproc
 2545              		@ args = 0, pretend = 0, frame = 8
 2546              		@ frame_needed = 1, uses_anonymous_args = 0
 2547 0aa0 90B5     		push	{r4, r7, lr}
 2548              		.cfi_def_cfa_offset 12
 2549              		.cfi_offset 4, -12
 2550              		.cfi_offset 7, -8
 2551              		.cfi_offset 14, -4
 2552 0aa2 83B0     		sub	sp, sp, #12
 2553              		.cfi_def_cfa_offset 24
 2554 0aa4 00AF     		add	r7, sp, #0
 2555              		.cfi_def_cfa_register 7
 702:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     unsigned char data;
 703:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 704:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     * ( (unsigned short *) (portModer + 0x2)) = 0x0000;
 2556              		.loc 1 704 0
 2557 0aa6 0A4B     		ldr	r3, .L124
 2558 0aa8 0022     		movs	r2, #0
 2559 0aaa 1A80     		strh	r2, [r3]
 705:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 706:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_ctrl_bit_set(B_RS | B_RW);
 2560              		.loc 1 706 0
 2561 0aac 0320     		movs	r0, #3
 2562 0aae FFF7FEFF 		bl	ascii_ctrl_bit_set
 707:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 708:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     data = ascii_read_controller();
 2563              		.loc 1 708 0
 2564 0ab2 FC1D     		adds	r4, r7, #7
 2565 0ab4 FFF7FEFF 		bl	ascii_read_controller
 2566 0ab8 0300     		movs	r3, r0
 2567 0aba 2370     		strb	r3, [r4]
 709:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 710:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     * ( (unsigned short *) (portModer + 0x2)) = 0x5555;
 2568              		.loc 1 710 0
 2569 0abc 044B     		ldr	r3, .L124
 2570 0abe 054A     		ldr	r2, .L124+4
 2571 0ac0 1A80     		strh	r2, [r3]
 711:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 712:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     return data;
 2572              		.loc 1 712 0
 2573 0ac2 FB1D     		adds	r3, r7, #7
 2574 0ac4 1B78     		ldrb	r3, [r3]
 713:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 2575              		.loc 1 713 0
 2576 0ac6 1800     		movs	r0, r3
 2577 0ac8 BD46     		mov	sp, r7
 2578 0aca 03B0     		add	sp, sp, #12
 2579              		@ sp needed
 2580 0acc 90BD     		pop	{r4, r7, pc}
 2581              	.L125:
 2582 0ace C046     		.align	2
 2583              	.L124:
 2584 0ad0 02100240 		.word	1073876994
 2585 0ad4 55550000 		.word	21845
 2586              		.cfi_endproc
 2587              	.LFE30:
 2589              		.align	1
 2590              		.global	ascii_init
 2591              		.syntax unified
 2592              		.code	16
 2593              		.thumb_func
 2594              		.fpu softvfp
 2596              	ascii_init:
 2597              	.LFB31:
 714:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 715:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void ascii_init(void)
 716:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 2598              		.loc 1 716 0
 2599              		.cfi_startproc
 2600              		@ args = 0, pretend = 0, frame = 0
 2601              		@ frame_needed = 1, uses_anonymous_args = 0
 2602 0ad8 80B5     		push	{r7, lr}
 2603              		.cfi_def_cfa_offset 8
 2604              		.cfi_offset 7, -8
 2605              		.cfi_offset 14, -4
 2606 0ada 00AF     		add	r7, sp, #0
 2607              		.cfi_def_cfa_register 7
 717:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_ctrl_bit_set(B_SELECT);
 2608              		.loc 1 717 0
 2609 0adc 0420     		movs	r0, #4
 2610 0ade FFF7FEFF 		bl	ascii_ctrl_bit_set
 718:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 719:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     while( (ascii_read_status() & 0x80) == 0x80);
 2611              		.loc 1 719 0
 2612 0ae2 C046     		nop
 2613              	.L127:
 2614              		.loc 1 719 0 is_stmt 0 discriminator 1
 2615 0ae4 FFF7FEFF 		bl	ascii_read_status
 2616 0ae8 0300     		movs	r3, r0
 2617 0aea 1A00     		movs	r2, r3
 2618 0aec 8023     		movs	r3, #128
 2619 0aee 1340     		ands	r3, r2
 2620 0af0 802B     		cmp	r3, #128
 2621 0af2 F7D0     		beq	.L127
 720:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 721:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     delay_mikro(8);
 2622              		.loc 1 721 0 is_stmt 1
 2623 0af4 0820     		movs	r0, #8
 2624 0af6 FFF7FEFF 		bl	delay_mikro
 722:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 723:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     // Set font size to 5x8 and set 2 rows
 724:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_write_cmd(0x3C);
 2625              		.loc 1 724 0
 2626 0afa 3C20     		movs	r0, #60
 2627 0afc FFF7FEFF 		bl	ascii_write_cmd
 725:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     delay_mikro(40);
 2628              		.loc 1 725 0
 2629 0b00 2820     		movs	r0, #40
 2630 0b02 FFF7FEFF 		bl	delay_mikro
 726:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 727:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     // Set display and marker on
 728:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_write_cmd(0x0E);
 2631              		.loc 1 728 0
 2632 0b06 0E20     		movs	r0, #14
 2633 0b08 FFF7FEFF 		bl	ascii_write_cmd
 729:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     delay_mikro(40);
 2634              		.loc 1 729 0
 2635 0b0c 2820     		movs	r0, #40
 2636 0b0e FFF7FEFF 		bl	delay_mikro
 730:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 731:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     // Clear Display
 732:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_write_cmd(0x01);
 2637              		.loc 1 732 0
 2638 0b12 0120     		movs	r0, #1
 2639 0b14 FFF7FEFF 		bl	ascii_write_cmd
 733:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     delay_mili(2);
 2640              		.loc 1 733 0
 2641 0b18 0220     		movs	r0, #2
 2642 0b1a FFF7FEFF 		bl	delay_mili
 734:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 735:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     // Set addressing mode to increment, no buffer shift
 736:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_write_cmd(0x06);
 2643              		.loc 1 736 0
 2644 0b1e 0620     		movs	r0, #6
 2645 0b20 FFF7FEFF 		bl	ascii_write_cmd
 737:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     delay_mikro(40);
 2646              		.loc 1 737 0
 2647 0b24 2820     		movs	r0, #40
 2648 0b26 FFF7FEFF 		bl	delay_mikro
 738:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 2649              		.loc 1 738 0
 2650 0b2a C046     		nop
 2651 0b2c BD46     		mov	sp, r7
 2652              		@ sp needed
 2653 0b2e 80BD     		pop	{r7, pc}
 2654              		.cfi_endproc
 2655              	.LFE31:
 2657              		.align	1
 2658              		.global	ascii_write_char
 2659              		.syntax unified
 2660              		.code	16
 2661              		.thumb_func
 2662              		.fpu softvfp
 2664              	ascii_write_char:
 2665              	.LFB32:
 739:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 740:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void ascii_write_char(char c)
 741:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 2666              		.loc 1 741 0
 2667              		.cfi_startproc
 2668              		@ args = 0, pretend = 0, frame = 8
 2669              		@ frame_needed = 1, uses_anonymous_args = 0
 2670 0b30 80B5     		push	{r7, lr}
 2671              		.cfi_def_cfa_offset 8
 2672              		.cfi_offset 7, -8
 2673              		.cfi_offset 14, -4
 2674 0b32 82B0     		sub	sp, sp, #8
 2675              		.cfi_def_cfa_offset 16
 2676 0b34 00AF     		add	r7, sp, #0
 2677              		.cfi_def_cfa_register 7
 2678 0b36 0200     		movs	r2, r0
 2679 0b38 FB1D     		adds	r3, r7, #7
 2680 0b3a 1A70     		strb	r2, [r3]
 742:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     while( (ascii_read_status() & 0x80) == 0x80);
 2681              		.loc 1 742 0
 2682 0b3c C046     		nop
 2683              	.L129:
 2684              		.loc 1 742 0 is_stmt 0 discriminator 1
 2685 0b3e FFF7FEFF 		bl	ascii_read_status
 2686 0b42 0300     		movs	r3, r0
 2687 0b44 1A00     		movs	r2, r3
 2688 0b46 8023     		movs	r3, #128
 2689 0b48 1340     		ands	r3, r2
 2690 0b4a 802B     		cmp	r3, #128
 2691 0b4c F7D0     		beq	.L129
 743:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 744:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     delay_mikro(8);
 2692              		.loc 1 744 0 is_stmt 1
 2693 0b4e 0820     		movs	r0, #8
 2694 0b50 FFF7FEFF 		bl	delay_mikro
 745:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 746:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_write_data(c);
 2695              		.loc 1 746 0
 2696 0b54 FB1D     		adds	r3, r7, #7
 2697 0b56 1B78     		ldrb	r3, [r3]
 2698 0b58 1800     		movs	r0, r3
 2699 0b5a FFF7FEFF 		bl	ascii_write_data
 747:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 748:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     delay_mikro(43);
 2700              		.loc 1 748 0
 2701 0b5e 2B20     		movs	r0, #43
 2702 0b60 FFF7FEFF 		bl	delay_mikro
 749:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 2703              		.loc 1 749 0
 2704 0b64 C046     		nop
 2705 0b66 BD46     		mov	sp, r7
 2706 0b68 02B0     		add	sp, sp, #8
 2707              		@ sp needed
 2708 0b6a 80BD     		pop	{r7, pc}
 2709              		.cfi_endproc
 2710              	.LFE32:
 2712              		.align	1
 2713              		.global	ascii_gotoxy
 2714              		.syntax unified
 2715              		.code	16
 2716              		.thumb_func
 2717              		.fpu softvfp
 2719              	ascii_gotoxy:
 2720              	.LFB33:
 750:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 751:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void ascii_gotoxy(int x, int y)
 752:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 2721              		.loc 1 752 0
 2722              		.cfi_startproc
 2723              		@ args = 0, pretend = 0, frame = 16
 2724              		@ frame_needed = 1, uses_anonymous_args = 0
 2725 0b6c 80B5     		push	{r7, lr}
 2726              		.cfi_def_cfa_offset 8
 2727              		.cfi_offset 7, -8
 2728              		.cfi_offset 14, -4
 2729 0b6e 84B0     		sub	sp, sp, #16
 2730              		.cfi_def_cfa_offset 24
 2731 0b70 00AF     		add	r7, sp, #0
 2732              		.cfi_def_cfa_register 7
 2733 0b72 7860     		str	r0, [r7, #4]
 2734 0b74 3960     		str	r1, [r7]
 753:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     char address = x - 1;
 2735              		.loc 1 753 0
 2736 0b76 7B68     		ldr	r3, [r7, #4]
 2737 0b78 DAB2     		uxtb	r2, r3
 2738 0b7a 0F23     		movs	r3, #15
 2739 0b7c FB18     		adds	r3, r7, r3
 2740 0b7e 013A     		subs	r2, r2, #1
 2741 0b80 1A70     		strb	r2, [r3]
 754:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 755:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     if (y == 2)
 2742              		.loc 1 755 0
 2743 0b82 3B68     		ldr	r3, [r7]
 2744 0b84 022B     		cmp	r3, #2
 2745 0b86 05D1     		bne	.L131
 756:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 757:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         address += 0x40;
 2746              		.loc 1 757 0
 2747 0b88 0F22     		movs	r2, #15
 2748 0b8a BB18     		adds	r3, r7, r2
 2749 0b8c BA18     		adds	r2, r7, r2
 2750 0b8e 1278     		ldrb	r2, [r2]
 2751 0b90 4032     		adds	r2, r2, #64
 2752 0b92 1A70     		strb	r2, [r3]
 2753              	.L131:
 758:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 759:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 760:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_write_cmd( 0x80 | address);
 2754              		.loc 1 760 0
 2755 0b94 0F23     		movs	r3, #15
 2756 0b96 FB18     		adds	r3, r7, r3
 2757 0b98 1B78     		ldrb	r3, [r3]
 2758 0b9a 8022     		movs	r2, #128
 2759 0b9c 5242     		rsbs	r2, r2, #0
 2760 0b9e 1343     		orrs	r3, r2
 2761 0ba0 DBB2     		uxtb	r3, r3
 2762 0ba2 1800     		movs	r0, r3
 2763 0ba4 FFF7FEFF 		bl	ascii_write_cmd
 761:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 2764              		.loc 1 761 0
 2765 0ba8 C046     		nop
 2766 0baa BD46     		mov	sp, r7
 2767 0bac 04B0     		add	sp, sp, #16
 2768              		@ sp needed
 2769 0bae 80BD     		pop	{r7, pc}
 2770              		.cfi_endproc
 2771              	.LFE33:
 2773              		.section	.rodata
 2774              		.align	2
 2775              	.LC8:
 2776 0040 504C4159 		.ascii	"PLAYER 1: \000"
 2776      45522031 
 2776      3A2000
 2777 004b 00       		.align	2
 2778              	.LC11:
 2779 004c 504C4159 		.ascii	"PLAYER 2: \000"
 2779      45522032 
 2779      3A2000
 2780              		.text
 2781              		.align	1
 2782              		.global	set_scoreboard
 2783              		.syntax unified
 2784              		.code	16
 2785              		.thumb_func
 2786              		.fpu softvfp
 2788              	set_scoreboard:
 2789              	.LFB34:
 762:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 763:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void set_scoreboard(void)
 764:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 2790              		.loc 1 764 0
 2791              		.cfi_startproc
 2792              		@ args = 0, pretend = 0, frame = 8
 2793              		@ frame_needed = 1, uses_anonymous_args = 0
 2794 0bb0 80B5     		push	{r7, lr}
 2795              		.cfi_def_cfa_offset 8
 2796              		.cfi_offset 7, -8
 2797              		.cfi_offset 14, -4
 2798 0bb2 82B0     		sub	sp, sp, #8
 2799              		.cfi_def_cfa_offset 16
 2800 0bb4 00AF     		add	r7, sp, #0
 2801              		.cfi_def_cfa_register 7
 765:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_ctrl_bit_set(B_SELECT);
 2802              		.loc 1 765 0
 2803 0bb6 0420     		movs	r0, #4
 2804 0bb8 FFF7FEFF 		bl	ascii_ctrl_bit_set
 766:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 767:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_clear_display();
 2805              		.loc 1 767 0
 2806 0bbc FFF7FEFF 		bl	ascii_clear_display
 768:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 769:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     char *str = PLAYER_1_STR;
 2807              		.loc 1 769 0
 2808 0bc0 1B4B     		ldr	r3, .L137
 2809 0bc2 7B60     		str	r3, [r7, #4]
 770:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 771:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     while(*str)
 2810              		.loc 1 771 0
 2811 0bc4 06E0     		b	.L133
 2812              	.L134:
 772:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 773:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         ascii_write_char(*str++);
 2813              		.loc 1 773 0
 2814 0bc6 7B68     		ldr	r3, [r7, #4]
 2815 0bc8 5A1C     		adds	r2, r3, #1
 2816 0bca 7A60     		str	r2, [r7, #4]
 2817 0bcc 1B78     		ldrb	r3, [r3]
 2818 0bce 1800     		movs	r0, r3
 2819 0bd0 FFF7FEFF 		bl	ascii_write_char
 2820              	.L133:
 771:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 2821              		.loc 1 771 0
 2822 0bd4 7B68     		ldr	r3, [r7, #4]
 2823 0bd6 1B78     		ldrb	r3, [r3]
 2824 0bd8 002B     		cmp	r3, #0
 2825 0bda F4D1     		bne	.L134
 774:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 775:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 776:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_write_char(left_point + 48);
 2826              		.loc 1 776 0
 2827 0bdc 154B     		ldr	r3, .L137+4
 2828 0bde 1B78     		ldrb	r3, [r3]
 2829 0be0 DBB2     		uxtb	r3, r3
 2830 0be2 3033     		adds	r3, r3, #48
 2831 0be4 DBB2     		uxtb	r3, r3
 2832 0be6 1800     		movs	r0, r3
 2833 0be8 FFF7FEFF 		bl	ascii_write_char
 777:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 778:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_gotoxy(1,2);
 2834              		.loc 1 778 0
 2835 0bec 0221     		movs	r1, #2
 2836 0bee 0120     		movs	r0, #1
 2837 0bf0 FFF7FEFF 		bl	ascii_gotoxy
 779:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 780:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     str = PLAYER_2_STR;
 2838              		.loc 1 780 0
 2839 0bf4 104B     		ldr	r3, .L137+8
 2840 0bf6 7B60     		str	r3, [r7, #4]
 781:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 782:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     while(*str)
 2841              		.loc 1 782 0
 2842 0bf8 06E0     		b	.L135
 2843              	.L136:
 783:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 784:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         ascii_write_char(*str++);
 2844              		.loc 1 784 0
 2845 0bfa 7B68     		ldr	r3, [r7, #4]
 2846 0bfc 5A1C     		adds	r2, r3, #1
 2847 0bfe 7A60     		str	r2, [r7, #4]
 2848 0c00 1B78     		ldrb	r3, [r3]
 2849 0c02 1800     		movs	r0, r3
 2850 0c04 FFF7FEFF 		bl	ascii_write_char
 2851              	.L135:
 782:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 2852              		.loc 1 782 0
 2853 0c08 7B68     		ldr	r3, [r7, #4]
 2854 0c0a 1B78     		ldrb	r3, [r3]
 2855 0c0c 002B     		cmp	r3, #0
 2856 0c0e F4D1     		bne	.L136
 785:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     }
 786:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 787:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_write_char(right_point + 48);
 2857              		.loc 1 787 0
 2858 0c10 0A4B     		ldr	r3, .L137+12
 2859 0c12 1B78     		ldrb	r3, [r3]
 2860 0c14 DBB2     		uxtb	r3, r3
 2861 0c16 3033     		adds	r3, r3, #48
 2862 0c18 DBB2     		uxtb	r3, r3
 2863 0c1a 1800     		movs	r0, r3
 2864 0c1c FFF7FEFF 		bl	ascii_write_char
 788:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 789:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_ctrl_bit_clear(B_SELECT);
 2865              		.loc 1 789 0
 2866 0c20 0420     		movs	r0, #4
 2867 0c22 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 790:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 2868              		.loc 1 790 0
 2869 0c26 C046     		nop
 2870 0c28 BD46     		mov	sp, r7
 2871 0c2a 02B0     		add	sp, sp, #8
 2872              		@ sp needed
 2873 0c2c 80BD     		pop	{r7, pc}
 2874              	.L138:
 2875 0c2e C046     		.align	2
 2876              	.L137:
 2877 0c30 40000000 		.word	.LC8
 2878 0c34 00000000 		.word	left_point
 2879 0c38 4C000000 		.word	.LC11
 2880 0c3c 01000000 		.word	right_point
 2881              		.cfi_endproc
 2882              	.LFE34:
 2884              		.align	1
 2885              		.global	ascii_clear_display
 2886              		.syntax unified
 2887              		.code	16
 2888              		.thumb_func
 2889              		.fpu softvfp
 2891              	ascii_clear_display:
 2892              	.LFB35:
 791:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 792:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void ascii_clear_display(void)
 793:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 2893              		.loc 1 793 0
 2894              		.cfi_startproc
 2895              		@ args = 0, pretend = 0, frame = 0
 2896              		@ frame_needed = 1, uses_anonymous_args = 0
 2897 0c40 80B5     		push	{r7, lr}
 2898              		.cfi_def_cfa_offset 8
 2899              		.cfi_offset 7, -8
 2900              		.cfi_offset 14, -4
 2901 0c42 00AF     		add	r7, sp, #0
 2902              		.cfi_def_cfa_register 7
 794:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_ctrl_bit_clear(B_RS);
 2903              		.loc 1 794 0
 2904 0c44 0120     		movs	r0, #1
 2905 0c46 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 795:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 796:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_ctrl_bit_clear(B_RW);
 2906              		.loc 1 796 0
 2907 0c4a 0220     		movs	r0, #2
 2908 0c4c FFF7FEFF 		bl	ascii_ctrl_bit_clear
 797:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 798:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_write_cmd(B_CLEAR);
 2909              		.loc 1 798 0
 2910 0c50 0120     		movs	r0, #1
 2911 0c52 FFF7FEFF 		bl	ascii_write_cmd
 799:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     delay_mili(2);
 2912              		.loc 1 799 0
 2913 0c56 0220     		movs	r0, #2
 2914 0c58 FFF7FEFF 		bl	delay_mili
 800:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 2915              		.loc 1 800 0
 2916 0c5c C046     		nop
 2917 0c5e BD46     		mov	sp, r7
 2918              		@ sp needed
 2919 0c60 80BD     		pop	{r7, pc}
 2920              		.cfi_endproc
 2921              	.LFE35:
 2923              		.align	1
 2924              		.global	app_init
 2925              		.syntax unified
 2926              		.code	16
 2927              		.thumb_func
 2928              		.fpu softvfp
 2930              	app_init:
 2931              	.LFB36:
 801:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 802:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void app_init(void)
 803:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {   
 2932              		.loc 1 803 0
 2933              		.cfi_startproc
 2934              		@ args = 0, pretend = 0, frame = 0
 2935              		@ frame_needed = 1, uses_anonymous_args = 0
 2936 0c62 80B5     		push	{r7, lr}
 2937              		.cfi_def_cfa_offset 8
 2938              		.cfi_offset 7, -8
 2939              		.cfi_offset 14, -4
 2940 0c64 00AF     		add	r7, sp, #0
 2941              		.cfi_def_cfa_register 7
 804:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     left_point = 0;
 2942              		.loc 1 804 0
 2943 0c66 0D4B     		ldr	r3, .L141
 2944 0c68 0022     		movs	r2, #0
 2945 0c6a 1A70     		strb	r2, [r3]
 805:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     right_point = 0;
 2946              		.loc 1 805 0
 2947 0c6c 0C4B     		ldr	r3, .L141+4
 2948 0c6e 0022     		movs	r2, #0
 2949 0c70 1A70     		strb	r2, [r3]
 806:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****    #ifdef USBDM
 807:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     *((unsigned long *) 0x40023830) = 0x18;
 2950              		.loc 1 807 0
 2951 0c72 0C4B     		ldr	r3, .L141+8
 2952 0c74 1822     		movs	r2, #24
 2953 0c76 1A60     		str	r2, [r3]
 808:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     __asm volatile ("LDR R0,=0x08000209\n BLX R0 \n");
 2954              		.loc 1 808 0
 2955              		.syntax divided
 2956              	@ 808 "Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong/startup.c" 1
 2957 0c78 5F48     		LDR R0,=0x08000209
 2958 0c7a 8047     	 BLX R0 
 2959              	
 2960              	@ 0 "" 2
 809:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     #endif
 810:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     *((unsigned long *) portModer) = 0x55555555;
 2961              		.loc 1 810 0
 2962              		.thumb
 2963              		.syntax unified
 2964 0c7c 0A4B     		ldr	r3, .L141+12
 2965 0c7e 0B4A     		ldr	r2, .L141+16
 2966 0c80 1A60     		str	r2, [r3]
 811:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     * ( (unsigned int *) 0x40020C00) = 0x55005555;      // Configure port D bit 15-12, 7-0 as outpu
 2967              		.loc 1 811 0
 2968 0c82 0B4B     		ldr	r3, .L141+20
 2969 0c84 0B4A     		ldr	r2, .L141+24
 2970 0c86 1A60     		str	r2, [r3]
 812:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     * ( (unsigned char *) 0x40020C05) = 0;              // Configure port D GPIO_OTYPER
 2971              		.loc 1 812 0
 2972 0c88 0B4B     		ldr	r3, .L141+28
 2973 0c8a 0022     		movs	r2, #0
 2974 0c8c 1A70     		strb	r2, [r3]
 813:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     * ( (unsigned short *) 0x40020C0E) = 0xAA;          // Configure port D GPIO_PUPDR
 2975              		.loc 1 813 0
 2976 0c8e 0B4B     		ldr	r3, .L141+32
 2977 0c90 AA22     		movs	r2, #170
 2978 0c92 1A80     		strh	r2, [r3]
 814:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** }
 2979              		.loc 1 814 0
 2980 0c94 C046     		nop
 2981 0c96 BD46     		mov	sp, r7
 2982              		@ sp needed
 2983 0c98 80BD     		pop	{r7, pc}
 2984              	.L142:
 2985 0c9a C046     		.align	2
 2986              	.L141:
 2987 0c9c 00000000 		.word	left_point
 2988 0ca0 01000000 		.word	right_point
 2989 0ca4 30380240 		.word	1073887280
 2990 0ca8 00100240 		.word	1073876992
 2991 0cac 55555555 		.word	1431655765
 2992 0cb0 000C0240 		.word	1073875968
 2993 0cb4 55550055 		.word	1426085205
 2994 0cb8 050C0240 		.word	1073875973
 2995 0cbc 0E0C0240 		.word	1073875982
 2996              		.cfi_endproc
 2997              	.LFE36:
 2999              		.align	1
 3000              		.global	main
 3001              		.syntax unified
 3002              		.code	16
 3003              		.thumb_func
 3004              		.fpu softvfp
 3006              	main:
 3007              	.LFB37:
 815:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 816:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** void main(void)
 817:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** {
 3008              		.loc 1 817 0
 3009              		.cfi_startproc
 3010              		@ args = 0, pretend = 0, frame = 16
 3011              		@ frame_needed = 1, uses_anonymous_args = 0
 3012 0cc0 90B5     		push	{r4, r7, lr}
 3013              		.cfi_def_cfa_offset 12
 3014              		.cfi_offset 4, -12
 3015              		.cfi_offset 7, -8
 3016              		.cfi_offset 14, -4
 3017 0cc2 85B0     		sub	sp, sp, #20
 3018              		.cfi_def_cfa_offset 32
 3019 0cc4 00AF     		add	r7, sp, #0
 3020              		.cfi_def_cfa_register 7
 818:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     POBJECT p = &ball;
 3021              		.loc 1 818 0
 3022 0cc6 494B     		ldr	r3, .L161
 3023 0cc8 FB60     		str	r3, [r7, #12]
 819:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     POBJECT lp = &left_paddle;
 3024              		.loc 1 819 0
 3025 0cca 494B     		ldr	r3, .L161+4
 3026 0ccc BB60     		str	r3, [r7, #8]
 820:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     POBJECT rp = &right_paddle;
 3027              		.loc 1 820 0
 3028 0cce 494B     		ldr	r3, .L161+8
 3029 0cd0 7B60     		str	r3, [r7, #4]
 821:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 822:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     app_init();
 3030              		.loc 1 822 0
 3031 0cd2 FFF7FEFF 		bl	app_init
 823:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 824:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_init();
 3032              		.loc 1 824 0
 3033 0cd6 FFF7FEFF 		bl	ascii_init
 825:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     ascii_gotoxy(1,1);
 3034              		.loc 1 825 0
 3035 0cda 0121     		movs	r1, #1
 3036 0cdc 0120     		movs	r0, #1
 3037 0cde FFF7FEFF 		bl	ascii_gotoxy
 826:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 827:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_initialize();
 3038              		.loc 1 827 0
 3039 0ce2 FFF7FEFF 		bl	graphic_initialize
 828:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** #ifndef SIMULATOR
 829:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     graphic_clear_screen();
 3040              		.loc 1 829 0
 3041 0ce6 FFF7FEFF 		bl	graphic_clear_screen
 3042              	.L158:
 830:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** #endif
 831:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 832:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     //set_scoreboard();
 833:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** 
 834:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     //p->set_speed(p,4,1);
 835:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 836:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     unsigned char c1, c2;
 837:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     
 838:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     while(1)
 839:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****     {
 840:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         set_scoreboard();
 3043              		.loc 1 840 0
 3044 0cea FFF7FEFF 		bl	set_scoreboard
 841:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         lp->move(lp);
 3045              		.loc 1 841 0
 3046 0cee BB68     		ldr	r3, [r7, #8]
 3047 0cf0 DB69     		ldr	r3, [r3, #28]
 3048 0cf2 BA68     		ldr	r2, [r7, #8]
 3049 0cf4 1000     		movs	r0, r2
 3050 0cf6 9847     		blx	r3
 3051              	.LVL0:
 842:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         rp->move(rp);
 3052              		.loc 1 842 0
 3053 0cf8 7B68     		ldr	r3, [r7, #4]
 3054 0cfa DB69     		ldr	r3, [r3, #28]
 3055 0cfc 7A68     		ldr	r2, [r7, #4]
 3056 0cfe 1000     		movs	r0, r2
 3057 0d00 9847     		blx	r3
 3058              	.LVL1:
 843:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         //delay_mili(40);
 844:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         c1 = keyb(1);
 3059              		.loc 1 844 0
 3060 0d02 FC1C     		adds	r4, r7, #3
 3061 0d04 0120     		movs	r0, #1
 3062 0d06 FFF7FEFF 		bl	keyb
 3063 0d0a 0300     		movs	r3, r0
 3064 0d0c 2370     		strb	r3, [r4]
 845:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         c2 = keyb(4);
 3065              		.loc 1 845 0
 3066 0d0e BC1C     		adds	r4, r7, #2
 3067 0d10 0420     		movs	r0, #4
 3068 0d12 FFF7FEFF 		bl	keyb
 3069 0d16 0300     		movs	r3, r0
 3070 0d18 2370     		strb	r3, [r4]
 846:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         switch (c1)
 3071              		.loc 1 846 0
 3072 0d1a FB1C     		adds	r3, r7, #3
 3073 0d1c 1B78     		ldrb	r3, [r3]
 3074 0d1e 012B     		cmp	r3, #1
 3075 0d20 02D0     		beq	.L145
 3076 0d22 0E2B     		cmp	r3, #14
 3077 0d24 13D0     		beq	.L146
 3078 0d26 28E0     		b	.L144
 3079              	.L145:
 847:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         {
 848:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             case 1: 
 849:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             if (lp->posy <= 0)
 3080              		.loc 1 849 0
 3081 0d28 BB68     		ldr	r3, [r7, #8]
 3082 0d2a 1B69     		ldr	r3, [r3, #16]
 3083 0d2c 002B     		cmp	r3, #0
 3084 0d2e 06DC     		bgt	.L147
 850:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             {
 851:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****                 lp->set_speed(lp, 0, 0);
 3085              		.loc 1 851 0
 3086 0d30 BB68     		ldr	r3, [r7, #8]
 3087 0d32 1B6A     		ldr	r3, [r3, #32]
 3088 0d34 B868     		ldr	r0, [r7, #8]
 3089 0d36 0022     		movs	r2, #0
 3090 0d38 0021     		movs	r1, #0
 3091 0d3a 9847     		blx	r3
 3092              	.LVL2:
 852:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             }
 853:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             else
 854:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             {
 855:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****                 lp->set_speed(lp, 0, -4);
 856:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             }
 857:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             break;
 3093              		.loc 1 857 0
 3094 0d3c 1DE0     		b	.L144
 3095              	.L147:
 855:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             }
 3096              		.loc 1 855 0
 3097 0d3e BB68     		ldr	r3, [r7, #8]
 3098 0d40 1B6A     		ldr	r3, [r3, #32]
 3099 0d42 0422     		movs	r2, #4
 3100 0d44 5242     		rsbs	r2, r2, #0
 3101 0d46 B868     		ldr	r0, [r7, #8]
 3102 0d48 0021     		movs	r1, #0
 3103 0d4a 9847     		blx	r3
 3104              	.LVL3:
 3105              		.loc 1 857 0
 3106 0d4c 15E0     		b	.L144
 3107              	.L146:
 858:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             case 14:
 859:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             if ((lp->posy + lp->geo->sizey) >= 64)
 3108              		.loc 1 859 0
 3109 0d4e BB68     		ldr	r3, [r7, #8]
 3110 0d50 1A69     		ldr	r2, [r3, #16]
 3111 0d52 BB68     		ldr	r3, [r7, #8]
 3112 0d54 1B68     		ldr	r3, [r3]
 3113 0d56 9B68     		ldr	r3, [r3, #8]
 3114 0d58 D318     		adds	r3, r2, r3
 3115 0d5a 3F2B     		cmp	r3, #63
 3116 0d5c 06DD     		ble	.L149
 860:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             {
 861:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****                 lp->set_speed(lp, 0, 0);
 3117              		.loc 1 861 0
 3118 0d5e BB68     		ldr	r3, [r7, #8]
 3119 0d60 1B6A     		ldr	r3, [r3, #32]
 3120 0d62 B868     		ldr	r0, [r7, #8]
 3121 0d64 0022     		movs	r2, #0
 3122 0d66 0021     		movs	r1, #0
 3123 0d68 9847     		blx	r3
 3124              	.LVL4:
 862:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             }
 863:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             else
 864:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             {
 865:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****                 lp->set_speed(lp, 0, 4);
 866:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             }
 867:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             break;
 3125              		.loc 1 867 0
 3126 0d6a 05E0     		b	.L159
 3127              	.L149:
 865:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             }
 3128              		.loc 1 865 0
 3129 0d6c BB68     		ldr	r3, [r7, #8]
 3130 0d6e 1B6A     		ldr	r3, [r3, #32]
 3131 0d70 B868     		ldr	r0, [r7, #8]
 3132 0d72 0422     		movs	r2, #4
 3133 0d74 0021     		movs	r1, #0
 3134 0d76 9847     		blx	r3
 3135              	.LVL5:
 3136              	.L159:
 3137              		.loc 1 867 0
 3138 0d78 C046     		nop
 3139              	.L144:
 868:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         }
 869:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          switch (c2)
 3140              		.loc 1 869 0
 3141 0d7a BB1C     		adds	r3, r7, #2
 3142 0d7c 1B78     		ldrb	r3, [r3]
 3143 0d7e 0A2B     		cmp	r3, #10
 3144 0d80 02D0     		beq	.L152
 3145 0d82 0D2B     		cmp	r3, #13
 3146 0d84 13D0     		beq	.L153
 3147 0d86 28E0     		b	.L151
 3148              	.L152:
 870:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         {
 871:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             case 0xA:
 872:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             if (rp->posy <= 0)
 3149              		.loc 1 872 0
 3150 0d88 7B68     		ldr	r3, [r7, #4]
 3151 0d8a 1B69     		ldr	r3, [r3, #16]
 3152 0d8c 002B     		cmp	r3, #0
 3153 0d8e 06DC     		bgt	.L154
 873:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             {
 874:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****                 rp->set_speed(rp, 0, 0);
 3154              		.loc 1 874 0
 3155 0d90 7B68     		ldr	r3, [r7, #4]
 3156 0d92 1B6A     		ldr	r3, [r3, #32]
 3157 0d94 7868     		ldr	r0, [r7, #4]
 3158 0d96 0022     		movs	r2, #0
 3159 0d98 0021     		movs	r1, #0
 3160 0d9a 9847     		blx	r3
 3161              	.LVL6:
 875:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             }
 876:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             else
 877:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             {
 878:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****                 rp->set_speed(rp, 0, -4);
 879:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             }
 880:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             break;
 3162              		.loc 1 880 0
 3163 0d9c 1DE0     		b	.L151
 3164              	.L154:
 878:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             }
 3165              		.loc 1 878 0
 3166 0d9e 7B68     		ldr	r3, [r7, #4]
 3167 0da0 1B6A     		ldr	r3, [r3, #32]
 3168 0da2 0422     		movs	r2, #4
 3169 0da4 5242     		rsbs	r2, r2, #0
 3170 0da6 7868     		ldr	r0, [r7, #4]
 3171 0da8 0021     		movs	r1, #0
 3172 0daa 9847     		blx	r3
 3173              	.LVL7:
 3174              		.loc 1 880 0
 3175 0dac 15E0     		b	.L151
 3176              	.L153:
 881:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             case 0xD: 
 882:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             if ((rp->posy + rp->geo->sizey) >= 64)
 3177              		.loc 1 882 0
 3178 0dae 7B68     		ldr	r3, [r7, #4]
 3179 0db0 1A69     		ldr	r2, [r3, #16]
 3180 0db2 7B68     		ldr	r3, [r7, #4]
 3181 0db4 1B68     		ldr	r3, [r3]
 3182 0db6 9B68     		ldr	r3, [r3, #8]
 3183 0db8 D318     		adds	r3, r2, r3
 3184 0dba 3F2B     		cmp	r3, #63
 3185 0dbc 06DD     		ble	.L156
 883:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             {
 884:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****                 rp->set_speed(rp, 0, 0);
 3186              		.loc 1 884 0
 3187 0dbe 7B68     		ldr	r3, [r7, #4]
 3188 0dc0 1B6A     		ldr	r3, [r3, #32]
 3189 0dc2 7868     		ldr	r0, [r7, #4]
 3190 0dc4 0022     		movs	r2, #0
 3191 0dc6 0021     		movs	r1, #0
 3192 0dc8 9847     		blx	r3
 3193              	.LVL8:
 885:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             }
 886:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             else
 887:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             {
 888:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****                 rp->set_speed(rp, 0, 4);
 889:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             }
 890:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             break;
 3194              		.loc 1 890 0
 3195 0dca 05E0     		b	.L160
 3196              	.L156:
 888:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****             }
 3197              		.loc 1 888 0
 3198 0dcc 7B68     		ldr	r3, [r7, #4]
 3199 0dce 1B6A     		ldr	r3, [r3, #32]
 3200 0dd0 7868     		ldr	r0, [r7, #4]
 3201 0dd2 0422     		movs	r2, #4
 3202 0dd4 0021     		movs	r1, #0
 3203 0dd6 9847     		blx	r3
 3204              	.LVL9:
 3205              	.L160:
 3206              		.loc 1 890 0
 3207 0dd8 C046     		nop
 3208              	.L151:
 891:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         }
 892:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****          p->move(p);
 3209              		.loc 1 892 0
 3210 0dda FB68     		ldr	r3, [r7, #12]
 3211 0ddc DB69     		ldr	r3, [r3, #28]
 3212 0dde FA68     		ldr	r2, [r7, #12]
 3213 0de0 1000     		movs	r0, r2
 3214 0de2 9847     		blx	r3
 3215              	.LVL10:
 893:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c **** #ifndef SIMULATOR
 894:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         delay_mili(30); // 25 bilder per sekund
 3216              		.loc 1 894 0
 3217 0de4 1E20     		movs	r0, #30
 3218 0de6 FFF7FEFF 		bl	delay_mili
 840:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/pong\startup.c ****         lp->move(lp);
 3219              		.loc 1 840 0
 3220 0dea 7EE7     		b	.L158
 3221              	.L162:
 3222              		.align	2
 3223              	.L161:
 3224 0dec B4010000 		.word	ball
 3225 0df0 D8010000 		.word	left_paddle
 3226 0df4 FC010000 		.word	right_paddle
 3227              		.cfi_endproc
 3228              	.LFE37:
 3230              	.Letext0:
