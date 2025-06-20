//
// Included Files
//
#include "driverlib.h"
#include "device.h"
#include "board.h"

//
// Main
//
#define TAM_BUFFER_DAC 100
#define TAM_BUFFER_ADC 200
volatile uint16_t dac_buffer[TAM_BUFFER_DAC];
volatile uint16_t adc_buffer[TAM_BUFFER_ADC];

void main(void)
{
    // Device Initialization
    Device_init();
    //
    // Initializes PIE and clears PIE registers. Disables CPU interrupts.
    //
    Interrupt_initModule();
    //
    // Initializes the PIE vector table with pointers to the shell Interrupt
    // Service Routines (ISR).
    //
    Interrupt_initVectorTable();

    Board_init();

    //
    // Enable Global Interrupt (INTM) and realtime interrupt (DBGM)
    //
    EINT;
    ERTM;

    while(1)
    {
    }

}

__interrupt void INT_ADC0_1_ISR(void)
{
    static uint16_t cnt =0;
    cnt = (cnt+1)%TAM_BUFFER_ADC;
    ADC_clearInterruptStatus(ADC0_BASE, ADC_INT_NUMBER1);
    Interrupt_clearACKGroup(INT_ADC0_1_INTERRUPT_ACK_GROUP);

}

__interrupt void INT_myCPUTIMER1_ISR(void)
{
    static uint16_t cnt = 0;
    cnt = (cnt+1)%TAM_BUFFER_DAC;

}

//__interrupt void INT_myCPUTIMER0_ISR(void)
//{
//    Interrupt_clearACKGroup(INT_myCPUTIMER0_INTERRUPT_ACK_GROUP);
//}
