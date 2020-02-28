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
  11              		.file	"delay.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.align	1
  16              		.global	delay_250ns
  17              		.syntax unified
  18              		.code	16
  19              		.thumb_func
  20              		.fpu softvfp
  22              	delay_250ns:
  23              	.LFB0:
  24              		.file 1 "D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong/delay.c"
   1:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****  #define SYSTICK_BASE_ADDRESS 0xE000E010
   2:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****  #define SYSTICK_CTRL ( (unsigned long *) (SYSTICK_BASE_ADDRESS + 0x0))
   3:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****  #define SYSTICK_LOAD ( (unsigned long *) (SYSTICK_BASE_ADDRESS + 0x4))
   4:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****  #define SYSTICK_VAL ( (unsigned long *) (SYSTICK_BASE_ADDRESS + 0x8))
   5:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****  
   6:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c **** void delay_250ns(void)
   7:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c **** {
  25              		.loc 1 7 1
  26              		.cfi_startproc
  27              		@ args = 0, pretend = 0, frame = 0
  28              		@ frame_needed = 1, uses_anonymous_args = 0
  29 0000 80B5     		push	{r7, lr}
  30              		.cfi_def_cfa_offset 8
  31              		.cfi_offset 7, -8
  32              		.cfi_offset 14, -4
  33 0002 00AF     		add	r7, sp, #0
  34              		.cfi_def_cfa_register 7
   8:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     *SYSTICK_CTRL = 0x0;
  35              		.loc 1 8 5
  36 0004 0D4B     		ldr	r3, .L3
  37              		.loc 1 8 19
  38 0006 0022     		movs	r2, #0
  39 0008 1A60     		str	r2, [r3]
   9:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     
  10:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     // Set STK_LOAD value (250 ns = 42 clock cycles = 0x2A)
  11:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     *SYSTICK_LOAD = 0x29;
  40              		.loc 1 11 5
  41 000a 0D4B     		ldr	r3, .L3+4
  42              		.loc 1 11 19
  43 000c 2922     		movs	r2, #41
  44 000e 1A60     		str	r2, [r3]
  12:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     
  13:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c **** #ifdef SIMULATOR
  14:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     *SYSTICK_LOAD = 1; // Decrease delay if we're simulating
  45              		.loc 1 14 5
  46 0010 0B4B     		ldr	r3, .L3+4
  47              		.loc 1 14 19
  48 0012 0122     		movs	r2, #1
  49 0014 1A60     		str	r2, [r3]
  15:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c **** #endif
  16:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     
  17:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     *SYSTICK_VAL = 0;
  50              		.loc 1 17 5
  51 0016 0B4B     		ldr	r3, .L3+8
  52              		.loc 1 17 18
  53 0018 0022     		movs	r2, #0
  54 001a 1A60     		str	r2, [r3]
  18:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     
  19:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     // Enable counter
  20:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     *SYSTICK_CTRL = 0x5;
  55              		.loc 1 20 5
  56 001c 074B     		ldr	r3, .L3
  57              		.loc 1 20 19
  58 001e 0522     		movs	r2, #5
  59 0020 1A60     		str	r2, [r3]
  21:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     
  22:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     // Wait until "COUNTFLAG" in STK_CTRL is 1
  23:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     while ( (*SYSTICK_CTRL & 0x10000) == 0);
  60              		.loc 1 23 11
  61 0022 C046     		nop
  62              	.L2:
  63              		.loc 1 23 14 discriminator 1
  64 0024 054B     		ldr	r3, .L3
  65 0026 1A68     		ldr	r2, [r3]
  66              		.loc 1 23 28 discriminator 1
  67 0028 8023     		movs	r3, #128
  68 002a 5B02     		lsls	r3, r3, #9
  69 002c 1340     		ands	r3, r2
  70              		.loc 1 23 11 discriminator 1
  71 002e F9D0     		beq	.L2
  24:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     
  25:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     *SYSTICK_CTRL = 0x0;
  72              		.loc 1 25 5
  73 0030 024B     		ldr	r3, .L3
  74              		.loc 1 25 19
  75 0032 0022     		movs	r2, #0
  76 0034 1A60     		str	r2, [r3]
  26:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c **** }
  77              		.loc 1 26 1
  78 0036 C046     		nop
  79 0038 BD46     		mov	sp, r7
  80              		@ sp needed
  81 003a 80BD     		pop	{r7, pc}
  82              	.L4:
  83              		.align	2
  84              	.L3:
  85 003c 10E000E0 		.word	-536813552
  86 0040 14E000E0 		.word	-536813548
  87 0044 18E000E0 		.word	-536813544
  88              		.cfi_endproc
  89              	.LFE0:
  91              		.align	1
  92              		.global	delay_500ns
  93              		.syntax unified
  94              		.code	16
  95              		.thumb_func
  96              		.fpu softvfp
  98              	delay_500ns:
  99              	.LFB1:
  27:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c **** 
  28:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c **** void delay_500ns(void)
  29:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c **** {
 100              		.loc 1 29 1
 101              		.cfi_startproc
 102              		@ args = 0, pretend = 0, frame = 0
 103              		@ frame_needed = 1, uses_anonymous_args = 0
 104 0048 80B5     		push	{r7, lr}
 105              		.cfi_def_cfa_offset 8
 106              		.cfi_offset 7, -8
 107              		.cfi_offset 14, -4
 108 004a 00AF     		add	r7, sp, #0
 109              		.cfi_def_cfa_register 7
  30:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     delay_250ns();
 110              		.loc 1 30 5
 111 004c FFF7FEFF 		bl	delay_250ns
  31:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     delay_250ns();
 112              		.loc 1 31 5
 113 0050 FFF7FEFF 		bl	delay_250ns
  32:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c **** }
 114              		.loc 1 32 1
 115 0054 C046     		nop
 116 0056 BD46     		mov	sp, r7
 117              		@ sp needed
 118 0058 80BD     		pop	{r7, pc}
 119              		.cfi_endproc
 120              	.LFE1:
 122              		.align	1
 123              		.global	delay_mikro
 124              		.syntax unified
 125              		.code	16
 126              		.thumb_func
 127              		.fpu softvfp
 129              	delay_mikro:
 130              	.LFB2:
  33:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c **** 
  34:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c **** void delay_mikro(unsigned int us)
  35:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c **** {
 131              		.loc 1 35 1
 132              		.cfi_startproc
 133              		@ args = 0, pretend = 0, frame = 16
 134              		@ frame_needed = 1, uses_anonymous_args = 0
 135 005a 80B5     		push	{r7, lr}
 136              		.cfi_def_cfa_offset 8
 137              		.cfi_offset 7, -8
 138              		.cfi_offset 14, -4
 139 005c 84B0     		sub	sp, sp, #16
 140              		.cfi_def_cfa_offset 24
 141 005e 00AF     		add	r7, sp, #0
 142              		.cfi_def_cfa_register 7
 143 0060 7860     		str	r0, [r7, #4]
  36:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     int i, limit = 4*us;
 144              		.loc 1 36 21
 145 0062 7B68     		ldr	r3, [r7, #4]
 146 0064 9B00     		lsls	r3, r3, #2
 147              		.loc 1 36 12
 148 0066 FB60     		str	r3, [r7, #12]
  37:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     
  38:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c **** #ifdef SIMULATOR    
  39:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     if(limit > 50)
 149              		.loc 1 39 7
 150 0068 FB68     		ldr	r3, [r7, #12]
 151 006a 322B     		cmp	r3, #50
 152 006c 01DD     		ble	.L7
  40:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     {
  41:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****         limit = 50;
 153              		.loc 1 41 15
 154 006e 3223     		movs	r3, #50
 155 0070 FB60     		str	r3, [r7, #12]
 156              	.L7:
 157              	.LBB2:
  42:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     }
  43:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c **** #endif
  44:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c **** 
  45:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     
  46:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     for (int i = 1; i <= limit; i++)
 158              		.loc 1 46 14
 159 0072 0123     		movs	r3, #1
 160 0074 BB60     		str	r3, [r7, #8]
 161              		.loc 1 46 5
 162 0076 04E0     		b	.L8
 163              	.L9:
  47:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     {
  48:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****         delay_250ns();
 164              		.loc 1 48 9 discriminator 3
 165 0078 FFF7FEFF 		bl	delay_250ns
  46:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     {
 166              		.loc 1 46 34 discriminator 3
 167 007c BB68     		ldr	r3, [r7, #8]
 168 007e 0133     		adds	r3, r3, #1
 169 0080 BB60     		str	r3, [r7, #8]
 170              	.L8:
  46:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     {
 171              		.loc 1 46 5 discriminator 1
 172 0082 BA68     		ldr	r2, [r7, #8]
 173 0084 FB68     		ldr	r3, [r7, #12]
 174 0086 9A42     		cmp	r2, r3
 175 0088 F6DD     		ble	.L9
 176              	.LBE2:
  49:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     }
  50:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c **** }
 177              		.loc 1 50 1
 178 008a C046     		nop
 179 008c C046     		nop
 180 008e BD46     		mov	sp, r7
 181 0090 04B0     		add	sp, sp, #16
 182              		@ sp needed
 183 0092 80BD     		pop	{r7, pc}
 184              		.cfi_endproc
 185              	.LFE2:
 187              		.align	1
 188              		.global	delay_mili
 189              		.syntax unified
 190              		.code	16
 191              		.thumb_func
 192              		.fpu softvfp
 194              	delay_mili:
 195              	.LFB3:
  51:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c **** 
  52:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c **** void delay_mili(unsigned int ms)
  53:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c **** {
 196              		.loc 1 53 1
 197              		.cfi_startproc
 198              		@ args = 0, pretend = 0, frame = 16
 199              		@ frame_needed = 1, uses_anonymous_args = 0
 200 0094 80B5     		push	{r7, lr}
 201              		.cfi_def_cfa_offset 8
 202              		.cfi_offset 7, -8
 203              		.cfi_offset 14, -4
 204 0096 84B0     		sub	sp, sp, #16
 205              		.cfi_def_cfa_offset 24
 206 0098 00AF     		add	r7, sp, #0
 207              		.cfi_def_cfa_register 7
 208 009a 7860     		str	r0, [r7, #4]
  54:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     int i, limit = 1000;
 209              		.loc 1 54 12
 210 009c FA23     		movs	r3, #250
 211 009e 9B00     		lsls	r3, r3, #2
 212 00a0 BB60     		str	r3, [r7, #8]
  55:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     
  56:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c **** #ifdef SIMULATOR
  57:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     limit = 10;
 213              		.loc 1 57 11
 214 00a2 0A23     		movs	r3, #10
 215 00a4 BB60     		str	r3, [r7, #8]
  58:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c **** #endif
  59:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     
  60:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     for (i = 1; i <= limit; i++)
 216              		.loc 1 60 12
 217 00a6 0123     		movs	r3, #1
 218 00a8 FB60     		str	r3, [r7, #12]
 219              		.loc 1 60 5
 220 00aa 06E0     		b	.L11
 221              	.L12:
  61:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     {
  62:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****         delay_mikro(ms);
 222              		.loc 1 62 9 discriminator 3
 223 00ac 7B68     		ldr	r3, [r7, #4]
 224 00ae 1800     		movs	r0, r3
 225 00b0 FFF7FEFF 		bl	delay_mikro
  60:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     {
 226              		.loc 1 60 30 discriminator 3
 227 00b4 FB68     		ldr	r3, [r7, #12]
 228 00b6 0133     		adds	r3, r3, #1
 229 00b8 FB60     		str	r3, [r7, #12]
 230              	.L11:
  60:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     {
 231              		.loc 1 60 5 discriminator 1
 232 00ba FA68     		ldr	r2, [r7, #12]
 233 00bc BB68     		ldr	r3, [r7, #8]
 234 00be 9A42     		cmp	r2, r3
 235 00c0 F4DD     		ble	.L12
  63:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c ****     }
  64:D:/GoogleDrive/Dokument/Skola/GU/DIT151/CodeLite/pong\delay.c **** }...
 236              		.loc 1 64 1
 237 00c2 C046     		nop
 238 00c4 C046     		nop
 239 00c6 BD46     		mov	sp, r7
 240 00c8 04B0     		add	sp, sp, #16
 241              		@ sp needed
 242 00ca 80BD     		pop	{r7, pc}
 243              		.cfi_endproc
 244              	.LFE3:
 246              	.Letext0:
