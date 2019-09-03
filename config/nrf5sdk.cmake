set(INCLUDE__NRF5SDK                                                            TRUE)

set_cache_default(NRF5SDK__BOARD_NAME                                           "" STRING "[PCA10040]")

set_cache_default(NRF5SDK__BOARD_CONFIG_NAME                                    "" STRING "[BLINKY | BLINKY_SYSTICK | BLINKY_FREERTOS | UART | BSP | RTC]")

set_cache_default(NRF5SDK__BSP_DEFINES_ONLY                                     FALSE   BOOL "")
set_cache_default(NRF5SDK__SYSTICK_ENABLED                                      FALSE   BOOL "")
set_cache_default(NRF5SDK__UART_ENABLED                                         FALSE   BOOL "")
set_cache_default(NRF5SDK__FREERTOS                                             FALSE   BOOL "Include freertos component")
set_cache_default(NRF5SDK__SWI_DISABLE0                                         FALSE   BOOL "Exclude SWI0 from being utilized by the driver")

####
set(_tmp_all_flags "")

if(UBINOS__BSP__USE_DTTY)
    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_LOG_BACKEND_DTTY_ENABLED=1 -DNRF_LOG_BACKEND_DTTY_TEMP_BUFFER_SIZE=64")
else()
    set(_tmp_all_flags "${_tmp_all_flags} -DNRF_LOG_BACKEND_DTTY_ENABLED=0")
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

get_filename_component(_tmp_source_dir "${CMAKE_CURRENT_LIST_DIR}/../source/" ABSOLUTE)

if(NRF5SDK__BOARD_CONFIG_NAME STREQUAL "BLINKY")

include_directories(${_tmp_source_dir}/nRF5_SDK/examples/peripheral/blinky/${_temp_board_name}/blank/config)
include_directories(${_tmp_source_dir}/nRF5_SDK/examples/peripheral/blinky)

elseif(NRF5SDK__BOARD_CONFIG_NAME STREQUAL "BLINKY_SYSTICK")

include_directories(${_tmp_source_dir}/nRF5_SDK/examples/peripheral/blinky_systick/${_temp_board_name}/blank/config)
include_directories(${_tmp_source_dir}/nRF5_SDK/examples/peripheral/blinky_systick)

elseif(NRF5SDK__BOARD_CONFIG_NAME STREQUAL "BLINKY_FREERTOS")

include_directories(${_tmp_source_dir}/nRF5_SDK/examples/peripheral/blinky_freertos/${_temp_board_name}/blank/config)
include_directories(${_tmp_source_dir}/nRF5_SDK/examples/peripheral/blinky_freertos/config)
include_directories(${_tmp_source_dir}/nRF5_SDK/examples/peripheral/blinky_freertos)

elseif(NRF5SDK__BOARD_CONFIG_NAME STREQUAL "UART")

include_directories(${_tmp_source_dir}/nRF5_SDK/examples/peripheral/uart/${_temp_board_name}/blank/config)
include_directories(${_tmp_source_dir}/nRF5_SDK/examples/peripheral/uart)

elseif(NRF5SDK__BOARD_CONFIG_NAME STREQUAL "BSP")

include_directories(${_tmp_source_dir}/nRF5_SDK/examples/peripheral/bsp/${_temp_board_name}/blank/config)
include_directories(${_tmp_source_dir}/nRF5_SDK/examples/peripheral/bsp)

elseif(NRF5SDK__BOARD_CONFIG_NAME STREQUAL "RTC")

include_directories(${_tmp_source_dir}/nRF5_SDK/examples/peripheral/rtc/${_temp_board_name}/blank/config)
include_directories(${_tmp_source_dir}/nRF5_SDK/examples/peripheral/rtc)

elseif(NRF5SDK__BOARD_CONFIG_NAME STREQUAL "RADIO_RECEIVER")

include_directories(${_tmp_source_dir}/nRF5_SDK/examples/peripheral/radio/receiver/${_temp_board_name}/blank/config)
include_directories(${_tmp_source_dir}/nRF5_SDK/examples/peripheral/radio/receiver)

elseif(NRF5SDK__BOARD_CONFIG_NAME STREQUAL "RADIO_TRANSMITTER")

include_directories(${_tmp_source_dir}/nRF5_SDK/examples/peripheral/radio/transmitter/${_temp_board_name}/blank/config)
include_directories(${_tmp_source_dir}/nRF5_SDK/examples/peripheral/radio/transmitter)

elseif(NRF5SDK__BOARD_CONFIG_NAME STREQUAL "BLE_APP_BLINKY")

include_directories(${_tmp_source_dir}/nRF5_SDK/examples/ble_peripheral/ble_app_blinky/${_temp_board_name}/s132/config)
include_directories(${_tmp_source_dir}/nRF5_SDK/examples/ble_peripheral/ble_app_blinky)

elseif(NRF5SDK__BOARD_CONFIG_NAME STREQUAL "BLE_APP_BLINKY_C")

include_directories(${_tmp_source_dir}/nRF5_SDK/examples/ble_central/ble_app_blinky_c/${_temp_board_name}/s132/config)
include_directories(${_tmp_source_dir}/nRF5_SDK/examples/ble_central/ble_app_blinky_c)

elseif(NRF5SDK__BOARD_CONFIG_NAME STREQUAL "BLE_APP_MULTILINK_CENTRAL")

include_directories(${_tmp_source_dir}/nRF5_SDK/examples/ble_central/ble_app_multilink_central/${_temp_board_name}/s132/config)
include_directories(${_tmp_source_dir}/nRF5_SDK/examples/ble_central/ble_app_multilink_central)

else()

    message(FATAL_ERROR "Unsupported NRF5SDK__BOARD_CONFIG_NAME")

endif()


