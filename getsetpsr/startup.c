/*
 * 	startup.c
 *
 */
__attribute__((naked)) __attribute__((section (".start_section")) )
void startup ( void )
{
__asm__ volatile(" LDR R0,=0x2001C000\n");		/* set stack */
__asm__ volatile(" MOV SP,R0\n");
__asm__ volatile(" BL main\n");					/* call main */
__asm__ volatile(".L1: B .L1\n");				/* never return */
}

__attribute__ ( (naked) ) unsigned int getpsr(void)
{
    __asm__ volatile (
    "MRS R0,APSR\n"
    "BX LR\n"
    );
}

__attribute__ ( (naked) ) void setpsr(unsigned int apsr)
{
    __asm__ volatile (
    "MSR APSR,R0\n"
    "BX LR\n"
    );
}

void main(void)
{
    unsigned int psr;
    
    psr = getpsr();
    
    setpsr(0);
    
    psr  = getpsr();
}

