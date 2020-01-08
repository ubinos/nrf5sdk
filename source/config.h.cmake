////////


#cmakedefine01 INCLUDE__NRF5SDK

#if (INCLUDE__NRF5SDK == 1)

#define NRF5SDK__BOARD_NAME "@NRF5SDK__BOARD_NAME@"

#cmakedefine01 NRF5SDK__ENABLE_APP_UART_FIFO

#cmakedefine01 NRF5SDK__BSP_DEFINES_ONLY
#cmakedefine01 NRF5SDK__SYSTICK_ENABLED
#cmakedefine01 NRF5SDK__UART_ENABLED
#cmakedefine01 NRF5SDK__FREERTOS

#cmakedefine01 NRF5SDK__SWI_DISABLE0
#cmakedefine01 NRF5SDK__APP_TIMER_V2
#cmakedefine01 NRF5SDK__APP_TIMER_V2_RTC1_ENABLED
#cmakedefine01 NRF5SDK__DEBUG
#cmakedefine01 NRF5SDK__DEBUG_NRF


#endif /* (INCLUDE__NRF5SDK == 1) */


