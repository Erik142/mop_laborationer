#define PORT_D_E_CLOCKS ((unsigned long *) 0x40023830)

void init_usbdm(void)
{
    *PORT_D_E_CLOCKS = 0x18;
    __asm volatile ("LDR R0,=0x08000209\n BLX R0 \n");
}