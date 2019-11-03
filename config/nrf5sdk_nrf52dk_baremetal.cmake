set_cache(UBINOS__BSP__LINK_MEMMAP_RAM_ORIGIN 0x20003400 STRING)
set_cache(UBINOS__BSP__LINK_MEMMAP_RAM_LENGTH 0x0000CC00 STRING)
set_cache(UBINOS__BSP__STACK_SIZE 0x00002000 STRING)

include(${PROJECT_UBINOS_DIR}/config/ubinos_nrf52dk_softdevice_baremetal.cmake)

include(${CMAKE_CURRENT_LIST_DIR}/nrf5sdk.cmake)

####

string(TOLOWER ${UBINOS__BSP__NRF52_SOFTDEVICE_NAME} _temp_softdevice_name)
string(TOLOWER ${NRF5SDK__BOARD_NAME} _temp_board_name)

get_filename_component(_tmp_source_dir "${CMAKE_CURRENT_LIST_DIR}/../source/nRF5_SDK/examples/ble_central_and_peripheral/experimental/ble_app_att_mtu_throughput/" ABSOLUTE)

include_directories(${_tmp_source_dir}/${_temp_board_name}/${_temp_softdevice_name}/config)
include_directories(${_tmp_source_dir})
