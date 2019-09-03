////////


#cmakedefine01 INCLUDE__NRF5SDK

#if (INCLUDE__NRF5SDK == 1)

#define NRF5SDK__BOARD_NAME__PCA10040                                   1
#define NRF5SDK__BOARD_NAME                                             NRF5SDK__BOARD_NAME__@NRF5SDK__BOARD_NAME@

#define NRF5SDK__BOARD_CONFIG_NAME__BLINKY                              1
#define NRF5SDK__BOARD_CONFIG_NAME__BLINKY_SYSTICK                      2
#define NRF5SDK__BOARD_CONFIG_NAME__BLINKY_FREERTOS                     3
#define NRF5SDK__BOARD_CONFIG_NAME__UART                                10
#define NRF5SDK__BOARD_CONFIG_NAME__BSP                                 11
#define NRF5SDK__BOARD_CONFIG_NAME__RTC                                 13
#define NRF5SDK__BOARD_CONFIG_NAME__RADIO_RECEIVER                      20
#define NRF5SDK__BOARD_CONFIG_NAME__RADIO_TRANSMITTER                   21
#define NRF5SDK__BOARD_CONFIG_NAME__BLE_APP_BLINKY                      30
#define NRF5SDK__BOARD_CONFIG_NAME__BLE_APP_BLINKY_C                    31
#define NRF5SDK__BOARD_CONFIG_NAME__BLE_APP_MULTILINK_CENTRAL           32
#define NRF5SDK__BOARD_CONFIG_NAME                                      NRF5SDK__BOARD_CONFIG_NAME__@NRF5SDK__BOARD_CONFIG_NAME@

#cmakedefine01 NRF5SDK__BSP_DEFINES_ONLY
#cmakedefine01 NRF5SDK__SYSTICK_ENABLED
#cmakedefine01 NRF5SDK__UART_ENABLED
#cmakedefine01 NRF5SDK__FREERTOS

#cmakedefine01 NRF5SDK__SWI_DISABLE0


#endif /* (INCLUDE__NRF5SDK == 1) */


