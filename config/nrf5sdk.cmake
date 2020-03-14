set(INCLUDE__NRF5SDK TRUE)

if(UBINOS__BSP__BOARD_MODEL STREQUAL "NRF52DK")
    set_cache(NRF5SDK__BOARD_NAME "PCA10040" STRING)
elseif(UBINOS__BSP__BOARD_MODEL STREQUAL "NRF52840DK")
    set_cache(NRF5SDK__BOARD_NAME "PCA10056" STRING)
else()
    message(FATAL_ERROR "Unsupported UBINOS__BSP__BOARD_MODEL")
endif()

set_cache_default(NRF5SDK__BOARD_NAME                                           "" STRING "[PCA10040 | PCA10056]")

set_cache_default(NRF5SDK__ENABLE_APP_UART_FIFO                                 TRUE    BOOL "")

set_cache_default(NRF5SDK__USE_ALT_TRACE_PIN                                    FALSE   BOOL "")

set_cache_default(NRF5SDK__BSP_DEFINES_ONLY                                     FALSE   BOOL "")
set_cache_default(NRF5SDK__SYSTICK_ENABLED                                      FALSE   BOOL "")
set_cache_default(NRF5SDK__UART_ENABLED                                         FALSE   BOOL "")
set_cache_default(NRF5SDK__RTT_ENABLED                                          FALSE   BOOL "")
set_cache_default(NRF5SDK__CLI_ENABLED                                          FALSE   BOOL "")
set_cache_default(NRF5SDK__FREERTOS                                             FALSE   BOOL "Include freertos component")
set_cache_default(NRF5SDK__CRYPTO_ENABLED                                       FALSE   BOOL "")
set_cache_default(NRF5SDK__CRYPTO_MBEDTLS_ENABLED                               FALSE   BOOL "")
set_cache_default(NRF5SDK__USBD_ENABLED                                         FALSE   BOOL "")
set_cache_default(NRF5SDK__IOT_ENABLED                                          FALSE   BOOL "")
set_cache_default(NRF5SDK__LWIP_ENABLED                                         FALSE   BOOL "")
set_cache_default(NRF5SDK__LWIP_DEBUG_ENABLED                                   FALSE   BOOL "")
set_cache_default(NRF5SDK__MQTT_ENABLED                                         FALSE   BOOL "")

set_cache_default(NRF5SDK__SWI_DISABLE0                                         FALSE   BOOL "Exclude SWI0 from being utilized by the driver")
set_cache_default(NRF5SDK__APP_TIMER_V2                                         FALSE   BOOL "")
set_cache_default(NRF5SDK__APP_TIMER_V2_RTC1_ENABLED                            FALSE   BOOL "")
set_cache_default(NRF5SDK__DEBUG                                                FALSE   BOOL "")
set_cache_default(NRF5SDK__DEBUG_NRF                                            FALSE   BOOL "")
set_cache_default(NRF5SDK__BLE_STACK_SUPPORT_REQD                               FALSE   BOOL "")

set_cache_default(NRF5SDK__LWIP_DONT_PROVIDE_BYTEORDER_FUNCTIONS                FALSE   BOOL "")
set_cache_default(NRF5SDK__SDK_MUTEX_ENABLE                                     FALSE   BOOL "")


if(NRF5SDK__IOT_ENABLED)

set_cache_default(NRF5SDK__BLE_IPSP_RX_BUFFER_COUNT 2 STRING "")

set_cache_default(NRF5SDK__IOT_TIMER_ENABLED TRUE BOOL "")
set_cache_default(NRF5SDK__IOT_SOCKET_ENABLED FALSE BOOL "")

endif()


####
set(_tmp_all_flags "")

if(NOT NRF5SDK__BOARD_NAME STREQUAL "")
    set(_tmp_all_flags "${_tmp_all_flags} -DBOARD_${NRF5SDK__BOARD_NAME}")
else()
    message(FATAL_ERROR "Unsupported NRF5SDK__BOARD_NAME")
endif()

if(UBINOS__BSP__USE_DTTY)

    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_LOG_BACKEND_DTTY_ENABLED=1")
    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_LOG_BACKEND_DTTY_TEMP_BUFFER_SIZE=64")
    
	if(NRF5SDK__CLI_ENABLED)
	    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_CLI_DTTY_ENABLED=1")
	    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_CLI_CMD_BUFF_SIZE=384")
	    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_CLI_PRINTF_BUFF_SIZE=23")
	    set(_tmp_all_flags "${_tmp_all_flags} -DAPP_TIMER_CONFIG_RTC_FREQUENCY=0")
	else()
	    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_CLI_DTTY_ENABLED=0")
	endif()

	if(NRF5SDK__UART_ENABLED)
	    message(FATAL_ERROR "If UBINOS__BSP__USE_DTTY is TRUE, then NRF5SDK__UART_ENABLED must be FALSE")
	endif()
	if(NRF5SDK__RTT_ENABLED)
	    message(FATAL_ERROR "If UBINOS__BSP__USE_DTTY is TRUE, then NRF5SDK__RTT_ENABLED must be FALSE")
	endif()

else()

    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_LOG_BACKEND_DTTY_ENABLED=0")
    
    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_CLI_DTTY_ENABLED=0")

endif()

if(NRF5SDK__USE_ALT_TRACE_PIN)
    set(_tmp_all_flags "${_tmp_all_flags} -DUSE_ALT_TRACE_PIN")
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
    set(_tmp_all_flags "${_tmp_all_flags} -DUART_ENABLED=1")
    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_LOG_BACKEND_UART_ENABLED=1")
    
	if(NRF5SDK__CLI_ENABLED)
	    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_CLI_UART_ENABLED=1")
	    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_CLI_CMD_BUFF_SIZE=384")
	    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_CLI_PRINTF_BUFF_SIZE=23")
	    set(_tmp_all_flags "${_tmp_all_flags} -DAPP_TIMER_CONFIG_RTC_FREQUENCY=0")
	else()
	    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_CLI_UART_ENABLED=0")
	endif()

else()
    set(_tmp_all_flags "${_tmp_all_flags} -DUART_ENABLED=0")
    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_LOG_BACKEND_UART_ENABLED=0")
    
    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_CLI_UART_ENABLED=0")
endif()

if(NRF5SDK__RTT_ENABLED)
    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_LOG_BACKEND_RTT_ENABLED=1")
    
	if(NRF5SDK__CLI_ENABLED)
	    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_CLI_RTT_ENABLED=1")
	    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_CLI_CMD_BUFF_SIZE=384")
	    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_CLI_PRINTF_BUFF_SIZE=23")
	    set(_tmp_all_flags "${_tmp_all_flags} -DAPP_TIMER_CONFIG_RTC_FREQUENCY=0")
	else()
	    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_CLI_RTT_ENABLED=0")
	endif()

else()
    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_LOG_BACKEND_RTT_ENABLED=0")
    
    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_CLI_RTT_ENABLED=0")
endif()

if(NRF5SDK__USBD_ENABLED)
    set(_tmp_all_flags "${_tmp_all_flags} -DUSBD_ENABLED=1")
else()
    set(_tmp_all_flags "${_tmp_all_flags} -DUSBD_ENABLED=0 -DAPP_USBD_ENABLED=0")
endif()

if(NRF5SDK__IOT_ENABLED)
    set(_tmp_all_flags "${_tmp_all_flags} -DBLE_IPSP_RX_BUFFER_COUNT=${NRF5SDK__BLE_IPSP_RX_BUFFER_COUNT}")
endif()

if(NRF5SDK__LWIP_ENABLED AND NRF5SDK__LWIP_DEBUG_ENABLED)
    set(_tmp_all_flags "${_tmp_all_flags} -DLWIP_DEBUG_ENABLED=1")
endif()

if(NRF5SDK__CRYPTO_ENABLED)

    if(NRF5SDK__CRYPTO_MBEDTLS_ENABLED)

set_cache_default(NRF5SDK__MBEDTLS_CONFIG_DIR "${CMAKE_CURRENT_LIST_DIR}/../source/nRF5_SDK/external/nrf_tls/mbedtls/tls/config" STRING "")
set_cache_default(NRF5SDK__MBEDTLS_CONFIG_FILE "\\\\\"nrf_tls_config.h\\\\\"" STRING "")

set_cache_default(NRF5SDK__NRF_TLS_MAX_INSTANCE_COUNT 1 STRING "")

	    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_TLS_MAX_INSTANCE_COUNT=${NRF5SDK__NRF_TLS_MAX_INSTANCE_COUNT}")

    else()
    
set_cache_default(NRF5SDK__MBEDTLS_CONFIG_DIR "${CMAKE_CURRENT_LIST_DIR}/../source/nRF5_SDK/external/nrf_tls/mbedtls/nrf_crypto/config" STRING "")
set_cache_default(NRF5SDK__MBEDTLS_CONFIG_FILE "\\\\\"nrf_crypto_mbedtls_config.h\\\\\"" STRING "")

set_cache_default(NRF5SDK__NRF_CRYPTO_MAX_INSTANCE_COUNT 1 STRING "")

set_cache_default(NRF5SDK__LIB_FILE_CC310 "${CMAKE_CURRENT_LIST_DIR}/../source/nRF5_SDK/external/nrf_cc310/lib/cortex-m4/hard-float/libnrf_cc310_0.9.12.a" STRING "")
set_cache_default(NRF5SDK__LIB_FILE_OBERON "${CMAKE_CURRENT_LIST_DIR}/../source/nRF5_SDK/external/nrf_oberon/lib/cortex-m4/hard-float/liboberon_2.0.7.a" STRING "")

	    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_CRYPTO_MAX_INSTANCE_COUNT=${NRF5SDK__NRF_CRYPTO_MAX_INSTANCE_COUNT}")
	
	    set(PROJECT_LIBRARIES ${PROJECT_LIBRARIES} ${NRF5SDK__LIB_FILE_CC310})
	    set(PROJECT_LIBRARIES ${PROJECT_LIBRARIES} ${NRF5SDK__LIB_FILE_OBERON})

		set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -u cc310_backend")
		set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -u cc310_bl_backend")
		
	endif(NRF5SDK__CRYPTO_MBEDTLS_ENABLED)

	include_directories(${NRF5SDK__MBEDTLS_CONFIG_DIR})

	set(_tmp_all_flags "${_tmp_all_flags} -DNRF_CRYPTO_ENABLED=1")
	set(_tmp_all_flags "${_tmp_all_flags} -DMBEDTLS_CONFIG_FILE=${NRF5SDK__MBEDTLS_CONFIG_FILE}")
	
	set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -u nrf_hw_backend")
	set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -u optiga_backend")
	set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -u mbedtls_backend")

else()

    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_CRYPTO_ENABLED=0")

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

if(NRF5SDK__BLE_STACK_SUPPORT_REQD)
    set(_tmp_all_flags "${_tmp_all_flags} -DBLE_STACK_SUPPORT_REQD")
endif()

if(NRF5SDK__LWIP_DONT_PROVIDE_BYTEORDER_FUNCTIONS)
    set(_tmp_all_flags "${_tmp_all_flags} -DLWIP_DONT_PROVIDE_BYTEORDER_FUNCTIONS")
endif()

if(NRF5SDK__SDK_MUTEX_ENABLE)
    set(_tmp_all_flags "${_tmp_all_flags} -DSDK_MUTEX_ENABLE")
endif()

if(UBINOS__BSP__NRF52_SOFTDEVICE_PRESENT)
    set(_tmp_all_flags "${_tmp_all_flags} -D${UBINOS__BSP__NRF52_SOFTDEVICE_NAME} -DNRF_SD_BLE_API_VERSION=${UBINOS__BSP__NRF52_SOFTDEVICE_BLE_API_VERSION}")
endif()

set(CMAKE_ASM_FLAGS "${_tmp_all_flags} ${CMAKE_ASM_FLAGS}")
set(CMAKE_C_FLAGS   "${_tmp_all_flags} ${CMAKE_C_FLAGS}")
set(CMAKE_CXX_FLAGS "${_tmp_all_flags} ${CMAKE_CXX_FLAGS}")

if(NRF5SDK__UART_ENABLED OR NRF5SDK__RTT_ENABLED)

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -u _write")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -u _read")

endif(NRF5SDK__UART_ENABLED OR NRF5SDK__RTT_ENABLED)
