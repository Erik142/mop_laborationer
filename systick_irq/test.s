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
  15              		.comm	delay_count,4,4
  16              		.comm	systick_flag,1,1
  17              		.section	.start_section,"ax",%progbits
  18              		.align	1
  19              		.global	startup
  20              		.syntax unified
  21              		.code	16
  22              		.thumb_func
  23              		.fpu softvfp
  25              	startup:
  26              	.LFB0:
  27              		.file 1 "Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq/startup.c"
   1:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** /*
   2:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****  * 	startup.c
   3:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****  *
   4:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****  */
   5:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****  #ifdef SIMULATOR
   6:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****  #define DELAY_COUNT 100
   7:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****  #else
   8:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****  #define DELAY_COUNT 1000000
   9:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****  #endif
  10:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****  #define GPIO_MODER ((unsigned short *) 0x40020C00)
  11:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****  #define GPIO_ODR_LOW ((unsigned char *) 0x40020C14)
  12:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****  #define STK_CTRL ((unsigned char *) 0xE000E010)
  13:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****  #define STK_LOAD ((unsigned int *) 0xE000E014)
  14:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****  #define SCB_VTOR ((volatile unsigned int *) 0xE000ED08)
  15:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****  
  16:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****  
  17:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****  unsigned int delay_count;
  18:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****  unsigned char systick_flag;
  19:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  20:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** 
  21:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** void startup ( void )
  22:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** {
  28              		.loc 1 22 0
  29              		.cfi_startproc
  30              		@ Naked Function: prologue and epilogue provided by programmer.
  31              		@ args = 0, pretend = 0, frame = 0
  32              		@ frame_needed = 1, uses_anonymous_args = 0
  23:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** __asm volatile(
  33              		.loc 1 23 0
  34              		.syntax divided
  35              	@ 23 "Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq/startup.c" 1
  36 0000 0248     		 LDR R0,=0x2001C000
  37 0002 8546     	 MOV SP,R0
  38 0004 FFF7FEFF 	 BL main
  39 0008 FEE7     	_exit: B .
  40              	
  41              	@ 0 "" 2
  24:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  25:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** 	" MOV SP,R0\n"
  26:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** 	" BL main\n"				/* call main */
  27:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** 	"_exit: B .\n"				/* never return */
  28:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** 	) ;
  29:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** }
  42              		.loc 1 29 0
  43              		.thumb
  44              		.syntax unified
  45 000a C046     		nop
  46              		.cfi_endproc
  47              	.LFE0:
  49              		.text
  50              		.align	1
  51              		.global	systick_irq_handler
  52              		.syntax unified
  53              		.code	16
  54              		.thumb_func
  55              		.fpu softvfp
  57              	systick_irq_handler:
  58              	.LFB1:
  30:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** 
  31:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** void systick_irq_handler (void)
  32:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** {
  59              		.loc 1 32 0
  60              		.cfi_startproc
  61              		@ args = 0, pretend = 0, frame = 0
  62              		@ frame_needed = 1, uses_anonymous_args = 0
  63 0000 80B5     		push	{r7, lr}
  64              		.cfi_def_cfa_offset 8
  65              		.cfi_offset 7, -8
  66              		.cfi_offset 14, -4
  67 0002 00AF     		add	r7, sp, #0
  68              		.cfi_def_cfa_register 7
  33:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     *STK_CTRL = 0;
  69              		.loc 1 33 0
  70 0004 0A4B     		ldr	r3, .L6
  71 0006 0022     		movs	r2, #0
  72 0008 1A70     		strb	r2, [r3]
  34:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     delay_count --;
  73              		.loc 1 34 0
  74 000a 0A4B     		ldr	r3, .L6+4
  75 000c 1B68     		ldr	r3, [r3]
  76 000e 5A1E     		subs	r2, r3, #1
  77 0010 084B     		ldr	r3, .L6+4
  78 0012 1A60     		str	r2, [r3]
  35:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     if (delay_count > 0)
  79              		.loc 1 35 0
  80 0014 074B     		ldr	r3, .L6+4
  81 0016 1B68     		ldr	r3, [r3]
  82 0018 002B     		cmp	r3, #0
  83 001a 02D0     		beq	.L3
  84              	.LBB2:
  36:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     {
  37:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****         delay_1mikro();
  85              		.loc 1 37 0
  86 001c FFF7FEFF 		bl	delay_1mikro
  87              	.LBE2:
  38:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     }
  39:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     else
  40:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     {
  41:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****         systick_flag = 1;
  42:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     }
  43:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** }
  88              		.loc 1 43 0
  89 0020 02E0     		b	.L5
  90              	.L3:
  41:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     }
  91              		.loc 1 41 0
  92 0022 054B     		ldr	r3, .L6+8
  93 0024 0122     		movs	r2, #1
  94 0026 1A70     		strb	r2, [r3]
  95              	.L5:
  96              		.loc 1 43 0
  97 0028 C046     		nop
  98 002a BD46     		mov	sp, r7
  99              		@ sp needed
 100 002c 80BD     		pop	{r7, pc}
 101              	.L7:
 102 002e C046     		.align	2
 103              	.L6:
 104 0030 10E000E0 		.word	-536813552
 105 0034 00000000 		.word	delay_count
 106 0038 00000000 		.word	systick_flag
 107              		.cfi_endproc
 108              	.LFE1:
 110              		.align	1
 111              		.global	delay_1mikro
 112              		.syntax unified
 113              		.code	16
 114              		.thumb_func
 115              		.fpu softvfp
 117              	delay_1mikro:
 118              	.LFB2:
  44:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** 
  45:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** void delay_1mikro (void)
  46:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** {
 119              		.loc 1 46 0
 120              		.cfi_startproc
 121              		@ args = 0, pretend = 0, frame = 0
 122              		@ frame_needed = 1, uses_anonymous_args = 0
 123 003c 80B5     		push	{r7, lr}
 124              		.cfi_def_cfa_offset 8
 125              		.cfi_offset 7, -8
 126              		.cfi_offset 14, -4
 127 003e 00AF     		add	r7, sp, #0
 128              		.cfi_def_cfa_register 7
  47:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     //systick_flag = 0;
  48:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     *STK_LOAD = 0xA7;
 129              		.loc 1 48 0
 130 0040 044B     		ldr	r3, .L9
 131 0042 A722     		movs	r2, #167
 132 0044 1A60     		str	r2, [r3]
  49:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     *STK_CTRL = 0x7;
 133              		.loc 1 49 0
 134 0046 044B     		ldr	r3, .L9+4
 135 0048 0722     		movs	r2, #7
 136 004a 1A70     		strb	r2, [r3]
  50:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** }
 137              		.loc 1 50 0
 138 004c C046     		nop
 139 004e BD46     		mov	sp, r7
 140              		@ sp needed
 141 0050 80BD     		pop	{r7, pc}
 142              	.L10:
 143 0052 C046     		.align	2
 144              	.L9:
 145 0054 14E000E0 		.word	-536813548
 146 0058 10E000E0 		.word	-536813552
 147              		.cfi_endproc
 148              	.LFE2:
 150              		.align	1
 151              		.global	delay
 152              		.syntax unified
 153              		.code	16
 154              		.thumb_func
 155              		.fpu softvfp
 157              	delay:
 158              	.LFB3:
  51:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** 
  52:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** void delay (unsigned int count)
  53:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** {
 159              		.loc 1 53 0
 160              		.cfi_startproc
 161              		@ args = 0, pretend = 0, frame = 8
 162              		@ frame_needed = 1, uses_anonymous_args = 0
 163 005c 80B5     		push	{r7, lr}
 164              		.cfi_def_cfa_offset 8
 165              		.cfi_offset 7, -8
 166              		.cfi_offset 14, -4
 167 005e 82B0     		sub	sp, sp, #8
 168              		.cfi_def_cfa_offset 16
 169 0060 00AF     		add	r7, sp, #0
 170              		.cfi_def_cfa_register 7
 171 0062 7860     		str	r0, [r7, #4]
  54:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     delay_count = count;
 172              		.loc 1 54 0
 173 0064 044B     		ldr	r3, .L12
 174 0066 7A68     		ldr	r2, [r7, #4]
 175 0068 1A60     		str	r2, [r3]
  55:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     delay_1mikro();
 176              		.loc 1 55 0
 177 006a FFF7FEFF 		bl	delay_1mikro
  56:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** }
 178              		.loc 1 56 0
 179 006e C046     		nop
 180 0070 BD46     		mov	sp, r7
 181 0072 02B0     		add	sp, sp, #8
 182              		@ sp needed
 183 0074 80BD     		pop	{r7, pc}
 184              	.L13:
 185 0076 C046     		.align	2
 186              	.L12:
 187 0078 00000000 		.word	delay_count
 188              		.cfi_endproc
 189              	.LFE3:
 191              		.align	1
 192              		.global	init_app
 193              		.syntax unified
 194              		.code	16
 195              		.thumb_func
 196              		.fpu softvfp
 198              	init_app:
 199              	.LFB4:
  57:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** 
  58:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** void init_app (void)
  59:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** {
 200              		.loc 1 59 0
 201              		.cfi_startproc
 202              		@ args = 0, pretend = 0, frame = 0
 203              		@ frame_needed = 1, uses_anonymous_args = 0
 204 007c 80B5     		push	{r7, lr}
 205              		.cfi_def_cfa_offset 8
 206              		.cfi_offset 7, -8
 207              		.cfi_offset 14, -4
 208 007e 00AF     		add	r7, sp, #0
 209              		.cfi_def_cfa_register 7
  60:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     *GPIO_MODER = 0x5555;
 210              		.loc 1 60 0
 211 0080 074B     		ldr	r3, .L15
 212 0082 084A     		ldr	r2, .L15+4
 213 0084 1A80     		strh	r2, [r3]
  61:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     *SCB_VTOR = 0x2001C000;
 214              		.loc 1 61 0
 215 0086 084B     		ldr	r3, .L15+8
 216 0088 084A     		ldr	r2, .L15+12
 217 008a 1A60     		str	r2, [r3]
  62:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     *((void (**) (void)) 0x2001C03C) = systick_irq_handler;
 218              		.loc 1 62 0
 219 008c 084B     		ldr	r3, .L15+16
 220 008e 094A     		ldr	r2, .L15+20
 221 0090 1A60     		str	r2, [r3]
  63:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     systick_flag = 0;
 222              		.loc 1 63 0
 223 0092 094B     		ldr	r3, .L15+24
 224 0094 0022     		movs	r2, #0
 225 0096 1A70     		strb	r2, [r3]
  64:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** }
 226              		.loc 1 64 0
 227 0098 C046     		nop
 228 009a BD46     		mov	sp, r7
 229              		@ sp needed
 230 009c 80BD     		pop	{r7, pc}
 231              	.L16:
 232 009e C046     		.align	2
 233              	.L15:
 234 00a0 000C0240 		.word	1073875968
 235 00a4 55550000 		.word	21845
 236 00a8 08ED00E0 		.word	-536810232
 237 00ac 00C00120 		.word	536985600
 238 00b0 3CC00120 		.word	536985660
 239 00b4 00000000 		.word	systick_irq_handler
 240 00b8 00000000 		.word	systick_flag
 241              		.cfi_endproc
 242              	.LFE4:
 244              		.align	1
 245              		.global	main
 246              		.syntax unified
 247              		.code	16
 248              		.thumb_func
 249              		.fpu softvfp
 251              	main:
 252              	.LFB5:
  65:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** 
  66:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** void main(void)
  67:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** {
 253              		.loc 1 67 0
 254              		.cfi_startproc
 255              		@ args = 0, pretend = 0, frame = 0
 256              		@ frame_needed = 1, uses_anonymous_args = 0
 257 00bc 80B5     		push	{r7, lr}
 258              		.cfi_def_cfa_offset 8
 259              		.cfi_offset 7, -8
 260              		.cfi_offset 14, -4
 261 00be 00AF     		add	r7, sp, #0
 262              		.cfi_def_cfa_register 7
  68:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     init_app();
 263              		.loc 1 68 0
 264 00c0 FFF7FEFF 		bl	init_app
  69:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     *GPIO_ODR_LOW = 0;
 265              		.loc 1 69 0
 266 00c4 0A4B     		ldr	r3, .L23
 267 00c6 0022     		movs	r2, #0
 268 00c8 1A70     		strb	r2, [r3]
  70:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     delay (DELAY_COUNT);
 269              		.loc 1 70 0
 270 00ca 6420     		movs	r0, #100
 271 00cc FFF7FEFF 		bl	delay
  71:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     *GPIO_ODR_LOW = 0xFF;
 272              		.loc 1 71 0
 273 00d0 074B     		ldr	r3, .L23
 274 00d2 FF22     		movs	r2, #255
 275 00d4 1A70     		strb	r2, [r3]
 276              	.L20:
  72:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     while (1)
  73:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     {
  74:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****         if (systick_flag) break;
 277              		.loc 1 74 0
 278 00d6 074B     		ldr	r3, .L23+4
 279 00d8 1B78     		ldrb	r3, [r3]
 280 00da 002B     		cmp	r3, #0
 281 00dc 00D1     		bne	.L22
 282 00de FAE7     		b	.L20
 283              	.L22:
 284 00e0 C046     		nop
  75:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     }
  76:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c ****     *GPIO_ODR_LOW = 0;
 285              		.loc 1 76 0
 286 00e2 034B     		ldr	r3, .L23
 287 00e4 0022     		movs	r2, #0
 288 00e6 1A70     		strb	r2, [r3]
  77:Z:/GU/DIT151 - Maskinorienterad Programmering/CodeLite/systick_irq\startup.c **** }
 289              		.loc 1 77 0
 290 00e8 C046     		nop
 291 00ea BD46     		mov	sp, r7
 292              		@ sp needed
 293 00ec 80BD     		pop	{r7, pc}
 294              	.L24:
 295 00ee C046     		.align	2
 296              	.L23:
 297 00f0 140C0240 		.word	1073875988
 298 00f4 00000000 		.word	systick_flag
 299              		.cfi_endproc
 300              	.LFE5:
 302              	.Letext0:
