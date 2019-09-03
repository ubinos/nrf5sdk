set_cache(NRF5SDK__BOARD_NAME                                                   "PCA10040"  STRING)
set_cache(NRF5SDK__BOARD_CONFIG_NAME                                            "BLINKY"    STRING)

set_cache_default(NRF5SDK__BSP_DEFINES_ONLY                                     TRUE   BOOL "")

include(${PROJECT_UBINOS_DIR}/config/ubinos_nrf52dk_baremetal.cmake)

include(${CMAKE_CURRENT_LIST_DIR}/nrf5sdk.cmake)


