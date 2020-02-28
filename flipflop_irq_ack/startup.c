/*
 * 	startup.c
 *
 */
 
 #define PORT_D_BASE 0x40020C00
 
 #define PORT_D_MODER ((volatile unsigned int *) (PORT_D_BASE + 0x0))
 #define PORT_D_ODR_LOW ((unsigned char *) (PORT_D_BASE + 0x14))
 #define PORT_D_ODR_HIGH ((unsigned char *) (PORT_D_BASE + 0x15))
 
 #define PORT_E_BASE 0x40021000
 
 #define PORT_E_MODER ((volatile unsigned int *) (PORT_E_BASE + 0x0))
 #define PORT_E_IDR ((unsigned char *) (PORT_E_BASE + 0x10))
 #define PORT_E_ODR ((unsigned char *) (PORT_E_BASE + 0x14))
 
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
 
 #define EXTI3_IRQ_BPOS (1 << 3)
 
 #define NVIC_BASE 0xE000E100
 
 #define NVIC_ISER0 ((unsigned short *) NVIC_BASE)
 
 #define NVIC_EXTI3_IRQ_BPOS (1 << 9)
 
 #define IRQ2_BPOS (1 << 2)
 #define IRQ1_BPOS (1 << 1)
 #define IRQ0_BPOS (1 << 0)
 
 #define RST0_BPOS (1 << 4)
 #define RST1_BPOS (1 << 5)
 #define RST2_BPOS (1 << 6)
 
__attribute__((naked)) __attribute__((section (".start_section")) )
void startup ( void )
{
__asm__ volatile(" LDR R0,=0x2001C000\n");		/* set stack */
__asm__ volatile(" MOV SP,R0\n");
__asm__ volatile(" BL main\n");					/* call main */
__asm__ volatile(".L1: B .L1\n");				/* never return */
}

unsigned char count;
unsigned char bargraph_val;

void irq_handler(void)
{
    if((*SCB_ICSR & EXTI3_IRQ_BPOS) != 0)
    {
        unsigned char flipflop_val = *PORT_E_IDR;
        
        *EXTI_PR |= EXTI3_IRQ_BPOS;
        
        if((flipflop_val & IRQ0_BPOS) != 0)
        {
            *PORT_E_ODR |= RST0_BPOS;
            *PORT_E_ODR &= ~RST0_BPOS;
            
            count += 1;
        }
        
        if((flipflop_val & IRQ1_BPOS) != 0)
        {
            *PORT_E_ODR |= RST1_BPOS;
            *PORT_E_ODR &= ~RST1_BPOS;
            
            count = 0;
        }
        
        if((flipflop_val & IRQ2_BPOS) != 0)
        {
            *PORT_E_ODR |= RST2_BPOS;
            *PORT_E_ODR &= ~RST2_BPOS;
            
            bargraph_val = ~bargraph_val;
            *PORT_D_ODR_HIGH = bargraph_val;
        }
        
    }
}

void app_init(void)
{
    count = 0xA;
    bargraph_val = 0;
    
    *PORT_D_MODER = 0x55555555;
    *PORT_E_MODER = 0x00005500;
    
    *SYSCFG_EXTICR1 &= ~0xF000;
    *SYSCFG_EXTICR1 |= 0x4000;
    
    *EXTI_IMR |= EXTI3_IRQ_BPOS;
    *EXTI_RTSR |= EXTI3_IRQ_BPOS;
    *EXTI_FTSR &= ~EXTI3_IRQ_BPOS;
    
    *SCB_VTOR = INTERRUPT_VECTOR;
    *((void (**) (void)) (INTERRUPT_VECTOR + 0x64)) = irq_handler;
    
    *NVIC_ISER0 |= NVIC_EXTI3_IRQ_BPOS;
}

void main(void)
{
    app_init();
    
    while(1)
    {
        *PORT_D_ODR_LOW = count;
    }
}