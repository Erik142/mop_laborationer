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
 
 #define EXTI2_IRQ_BPOS (1 << 2)
 #define EXTI1_IRQ_BPOS (1 << 1)
 #define EXTI0_IRQ_BPOS (1 << 0)
 
 #define EXTI2_IRQ_OFFSET 0x60
 #define EXTI1_IRQ_OFFSET 0x5C
 #define EXTI0_IRQ_OFFSET 0x58
 
 #define NVIC_BASE 0xE000E100
 
 #define NVIC_ISER0 ((unsigned short *) NVIC_BASE)
 
 #define NVIC_EXTI2_IRQ_BPOS (1 << 8)
 #define NVIC_EXTI1_IRQ_BPOS (1 << 7)
 #define NVIC_EXTI0_IRQ_BPOS (1 << 6)
 
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

void EXTI2_IRQHandler(void)
{
    if((*SCB_ICSR & (1 << EXTI2_IRQ_BPOS)) != 0)
    {
        reset_irq(EXTI2_IRQ_BPOS);
        
        bargraph_val = ~bargraph_val;
        *PORT_D_ODR_HIGH = bargraph_val;
    }
}

void EXTI1_IRQHandler(void)
{
    if((*SCB_ICSR & (1 << EXTI1_IRQ_BPOS)) != 0)
    {
        reset_irq(EXTI1_IRQ_BPOS);
        
        count = 0;
    }
}

void EXTI0_IRQHandler(void)
{
    if((*SCB_ICSR & (1 << EXTI0_IRQ_BPOS)) != 0)
    {
        reset_irq(EXTI0_IRQ_BPOS);
        
        count += 1;
    }
}

void reset_irq(int irq_bpos)
{  
    *EXTI_PR |= (1 << irq_bpos);
    
    *PORT_E_ODR |= (1 << (4 + (irq_bpos >> 1)));
    *PORT_E_ODR &= ~(1 << (4 + (irq_bpos >> 1)));
}

void app_init(void)
{
    count = 0;
    bargraph_val = 0;
    
    #ifdef USBDM
    *((unsigned long *) 0x40023830) = 0x18;
    __asm volatile("LDR R0,=0x08000209\n BLX R0 \n");
    *((unsigned long *) 0x40023844) |= 0x4000;
    *((unsigned long *) 0xE000ED08) = 0x2001C000;
    #endif
    
    *PORT_D_MODER = 0x55555555;
    *PORT_E_MODER = 0x00005500;
    
    *SYSCFG_EXTICR1 &= ~0xFFF;
    *SYSCFG_EXTICR1 |= 0x444;
    
    *EXTI_IMR |= EXTI2_IRQ_BPOS | EXTI1_IRQ_BPOS | EXTI0_IRQ_BPOS;
    *EXTI_RTSR |= EXTI2_IRQ_BPOS | EXTI1_IRQ_BPOS | EXTI0_IRQ_BPOS;
    *EXTI_FTSR &= ~(EXTI2_IRQ_BPOS | EXTI1_IRQ_BPOS | EXTI0_IRQ_BPOS);
    
    *SCB_VTOR = INTERRUPT_VECTOR;
    *((void (**) (void)) (INTERRUPT_VECTOR + EXTI2_IRQ_OFFSET)) = EXTI2_IRQHandler;
    *((void (**) (void)) (INTERRUPT_VECTOR + EXTI1_IRQ_OFFSET)) = EXTI1_IRQHandler;
    *((void (**) (void)) (INTERRUPT_VECTOR + EXTI0_IRQ_OFFSET)) = EXTI0_IRQHandler;
    
    *NVIC_ISER0 |= NVIC_EXTI2_IRQ_BPOS | NVIC_EXTI1_IRQ_BPOS | NVIC_EXTI0_IRQ_BPOS;
}

void main(void)
{
    app_init();
    
    while(1)
    {
        *PORT_D_ODR_LOW = count;
    }
}