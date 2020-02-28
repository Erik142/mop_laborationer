/*
 * 	startup.c
 *
 */
 
 #define PORT_D_BASE 0x40020C00
 
 #define PORT_D_MODER ((unsigned short *) (PORT_D_BASE + 0x0))
 #define PORT_D_ODR ((unsigned char *) (PORT_D_BASE + 0x14))
 
 #define PORT_E_BASE 0x40021000
 
 #define PORT_E_IDR ((unsigned char *) (PORT_E_BASE + 0x10))
 
 #define SYSCFG_BASE 0x40013800
 
 #define SYSCFG_EXTICR1 ((unsigned int *) (SYSCFG_BASE + 0x8))
 
 #define SCB_BASE 0xE000ED00
 
 #define SCB_VTOR ((unsigned long *) (SCB_BASE + 0x8))
 #define SCB_ICSR ((unsigned char *) (SCB_BASE + 0x4))
 
 #define INTERRUPT_VECTOR 0x2001C000
 
 #define EXTI_BASE 0x40013C00
 
 #define EXTI_IMR ((unsigned long *) EXTI_BASE)
 #define EXTI_RTSR ((unsigned long *) (EXTI_BASE + 0x8))
 #define EXTI_FTSR ((unsigned long *) (EXTI_BASE + 0xC))
 #define EXTI_PR ((unsigned long *) (EXTI_BASE + 0x14))
 
 #define NVIC_BASE 0xE000E100
 
 #define NVIC_ISER0 ((unsigned short *) NVIC_BASE)
 #define NVIC_IABR0 ((unsigned short *) (NVIC_BASE + 0x200))
 
__attribute__((naked)) __attribute__((section (".start_section")) )
void startup ( void )
{
__asm__ volatile(" LDR R0,=0x2001C000\n");		/* set stack */
__asm__ volatile(" MOV SP,R0\n");
__asm__ volatile(" BL main\n");					/* call main */
__asm__ volatile(".L1: B .L1\n");				/* never return */
}

unsigned int count;

void irq_handler(void)
{
    if((*SCB_ICSR & (1 << 3)) != 0)
    {
        count += 1;
        
        *EXTI_PR |= (1 << 3);
    }
}

void app_init(void)
{
    count = 0;
    
    *PORT_D_MODER = 0x5555;
    
    *SYSCFG_EXTICR1 &= ~0xF000;
    *SYSCFG_EXTICR1 |= 0x4000;
    
    *EXTI_IMR |= (1 << 3);
    *EXTI_RTSR |= (1 << 3);
    *EXTI_FTSR &= ~(1 << 3);
    
    *SCB_VTOR = INTERRUPT_VECTOR;
    *((void (**) (void)) (INTERRUPT_VECTOR + 0x64)) = irq_handler;
    
    *NVIC_ISER0 |= (1 << 9);
}

void main(void)
{
    int flipflop = 0;
    
    app_init();
    
    while(1)
    {
        flipflop = *PORT_E_IDR;
        *PORT_D_ODR = count;
    }
}

