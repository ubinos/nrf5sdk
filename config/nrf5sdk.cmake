set(INCLUDE__NRF5SDK                                                            TRUE)

set_cache_default(NRF5SDK__BOARD_NAME                                           "" STRING "[PCA10040]")

set_cache_default(NRF5SDK__ENABLE_APP_UART_FIFO                                 TRUE    BOOL "")

set_cache_default(NRF5SDK__BSP_DEFINES_ONLY                                     FALSE   BOOL "")
set_cache_default(NRF5SDK__SYSTICK_ENABLED                                      FALSE   BOOL "")
set_cache_default(NRF5SDK__UART_ENABLED                                         FALSE   BOOL "")
set_cache_default(NRF5SDK__FREERTOS                                             FALSE   BOOL "Include freertos component")

set_cache_default(NRF5SDK__SWI_DISABLE0                                         FALSE   BOOL "Exclude SWI0 from being utilized by the driver")
set_cache_default(NRF5SDK__APP_TIMER_V2                                         FALSE   BOOL "")
set_cache_default(NRF5SDK__APP_TIMER_V2_RTC1_ENABLED                            FALSE   BOOL "")
set_cache_default(NRF5SDK__DEBUG                                                FALSE   BOOL "")
set_cache_default(NRF5SDK__DEBUG_NRF                                            FALSE   BOOL "")


####
set(_tmp_all_flags "")

if(UBINOS__BSP__USE_DTTY)
    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_LOG_BACKEND_DTTY_ENABLED=1 -DNRF_LOG_BACKEND_DTTY_TEMP_BUFFER_SIZE=64")
    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_CLI_DTTY_ENABLED=1 -DNRF_CLI_CMD_BUFF_SIZE=384 -DNRF_CLI_PRINTF_BUFF_SIZE=23 -DAPP_TIMER_CONFIG_RTC_FREQUENCY=0")
    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_LOG_BACKEND_UART_ENABLED=0")
    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_CLI_UART_ENABLED=0")
else()
    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_LOG_BACKEND_DTTY_ENABLED=0")
    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_CLI_DTTY_ENABLED=0")
endif()

if(UBINOS__BSP__NRF52_SOFTDEVICE_PRESENT)
    if(NOT UBINOS__BSP__NRF52_SOFTDEVICE_NAME STREQUAL "")
        string(TOLOWER ${UBINOS__BSP__NRF52_SOFTDEVICE_NAME} _temp_softdevice_name)
    else()
        message(FATAL_ERROR "Unsupported UBINOS__BSP__NRF52_SOFTDEVICE_NAME")
    endif()
endif()

if(NOT NRF5SDK__BOARD_NAME STREQUAL "")
    set(_tmp_all_flags "${_tmp_all_flags} -DBOARD_${NRF5SDK__BOARD_NAME}")
    string(TOLOWER ${NRF5SDK__BOARD_NAME} _temp_board_name)
else()
    message(FATAL_ERROR "Unsupported NRF5SDK__BOARD_NAME")
endif()

if(NRF5SDK__BSP_DEFINES_ONLY)
    set(_tmp_all_flags "${_tmp_all_flags} -DBSP_DEFINES_ONLY")
endif()

if(NRF5SDK__SYSTICK_ENABLED)
    set(_tmp_all_flags "${_tmp_all_flags} -DSYSTICK_ENABLED=1")
else()
    set(_tmp_all_flags "${_tmp_all_flags} -DSYSTICK_ENABLED=0")
endif()

if(NRF5SDK__UART_ENABLED)
    set(_tmp_all_flags "${_tmp_all_flags} -DUART_ENABLED=1 -DNRF_LOG_BACKEND_UART_ENABLED=1")
else()
    set(_tmp_all_flags "${_tmp_all_flags} -DUART_ENABLED=0 -DNRF_LOG_BACKEND_UART_ENABLED=0")
endif()

if(NRF5SDK__FREERTOS)
    set(_tmp_all_flags "${_tmp_all_flags} -DFREERTOS")
endif()

if(NRF5SDK__SWI_DISABLE0)
    set(_tmp_all_flags "${_tmp_all_flags} -DSWI_DISABLE0")
endif()

if(NRF5SDK__APP_TIMER_V2)
    set(_tmp_all_flags "${_tmp_all_flags} -DAPP_TIMER_V2")
endif()

if(NRF5SDK__APP_TIMER_V2_RTC1_ENABLED)
    set(_tmp_all_flags "${_tmp_all_flags} -DAPP_TIMER_V2_RTC1_ENABLED")
endif()

if(NRF5SDK__DEBUG)
    set(_tmp_all_flags "${_tmp_all_flags} -DDEBUG")
endif()

if(NRF5SDK__DEBUG_NRF)
    set(_tmp_all_flags "${_tmp_all_flags} -DDEBUG_NRF")
endif()

if(UBINOS__BSP__NRF52_SOFTDEVICE_PRESENT)
    set(_tmp_all_flags "${_tmp_all_flags} -D${UBINOS__BSP__NRF52_SOFTDEVICE_NAME} -DNRF_SD_BLE_API_VERSION=${UBINOS__BSP__NRF52_SOFTDEVICE_BLE_API_VERSION}")
endif(UBINOS__BSP__NRF52_SOFTDEVICE_PRESENT)

set(CMAKE_ASM_FLAGS "${_tmp_all_flags} ${CMAKE_ASM_FLAGS}")
set(CMAKE_C_FLAGS   "${_tmp_all_flags} ${CMAKE_C_FLAGS}")
set(CMAKE_CXX_FLAGS "${_tmp_all_flags} ${CMAKE_CXX_FLAGS}")

if(NRF5SDK__UART_ENABLED)

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -u _write")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -u _read")

endif(NRF5SDK__UART_ENABLED)
