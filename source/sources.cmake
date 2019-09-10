if(INCLUDE__NRF5SDK)

    get_filename_component(_tmp_source_dir "${CMAKE_CURRENT_LIST_DIR}" ABSOLUTE)
    
    include_directories(${_tmp_source_dir}/nRF5_SDK/components)
    
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/boards)
    
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/drivers_nrf/radio_config)
    
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/atomic)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/atomic_fifo)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/atomic_flags)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/balloc)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/bootloader/ble_dfu)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/bsp)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/button)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/cli)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/cli/cdc_acm)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/cli/rtt)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/cli/uart)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/cli/dtty)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/crc16)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/crc32)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/crypto)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/csense)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/csense_drv)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/delay)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/ecc)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/experimental_section_vars)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/experimental_task_manager)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/fds)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/fifo)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/fstorage)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/gfx)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/gpiote)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/hardfault)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/hardfault/nrf52)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/hci)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/led_softblink)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/log)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/log/src)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/low_power_pwm)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/mem_manager)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/memobj)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/mpu)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/mutex)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/pwm)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/pwr_mgmt)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/queue)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/ringbuf)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/scheduler)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/sdcard)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/slip)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/sortlist)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/spi_mngr)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/stack_guard)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/strerror)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/svc)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/timer)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/timer/experimental)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/twi_mngr)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/twi_sensor)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/uart)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/usbd)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/usbd/class/audio)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/usbd/class/cdc)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/usbd/class/cdc/acm)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/usbd/class/hid)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/usbd/class/hid/generic)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/usbd/class/hid/kbd)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/usbd/class/hid/mouse)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/usbd/class/msc)
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/libraries/util)
    
    include_directories(${_tmp_source_dir}/nRF5_SDK/components/toolchain/cmsis/include)

    include_directories(${_tmp_source_dir}/nRF5_SDK/external/fnmatch)
    include_directories(${_tmp_source_dir}/nRF5_SDK/external/fprintf)
    include_directories(${_tmp_source_dir}/nRF5_SDK/external/segger_rtt)
    include_directories(${_tmp_source_dir}/nRF5_SDK/external/utf_converter)

    include_directories(${_tmp_source_dir}/nRF5_SDK/integration/nrfx)
    include_directories(${_tmp_source_dir}/nRF5_SDK/integration/nrfx/legacy)

    include_directories(${_tmp_source_dir}/nRF5_SDK/modules/nrfx)
    include_directories(${_tmp_source_dir}/nRF5_SDK/modules/nrfx/drivers/include)
    include_directories(${_tmp_source_dir}/nRF5_SDK/modules/nrfx/hal)
    include_directories(${_tmp_source_dir}/nRF5_SDK/modules/nrfx/mdk)

    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/boards/boards.c)
    
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/drivers_nrf/radio_config/radio_config.c)

    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/atomic/nrf_atomic.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/atomic_fifo/nrf_atfifo.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/atomic_flags/nrf_atflags.c)
    
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/balloc/nrf_balloc.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/button/app_button.c)
    
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/crc16/crc16.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/crc32/crc32.c)
    
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/cli/nrf_cli.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/cli/cdc_acm/nrf_cli_cdc_acm.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/cli/rtt/nrf_cli_rtt.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/cli/uart/nrf_cli_uart.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/cli/dtty/nrf_cli_dtty.c)

    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/experimental_section_vars/nrf_section_iter.c)
    
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/fds/fds.c)

    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/fifo/app_fifo.c)

    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/fstorage/nrf_fstorage.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/fstorage/nrf_fstorage_nvmc.c)
    
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/hardfault/hardfault_implementation.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/hardfault/nrf52/handler/hardfault_handler_gcc.c)
    
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/log/src/nrf_log_frontend.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/log/src/nrf_log_str_formatter.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/log/src/nrf_log_backend_serial.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/log/src/nrf_log_backend_uart.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/log/src/nrf_log_backend_rtt.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/log/src/nrf_log_backend_flash.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/log/src/nrf_log_backend_dtty.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/log/src/nrf_log_default_backends.c)
  
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/memobj/nrf_memobj.c)
    
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/mpu/nrf_mpu_lib.c)

    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/pwr_mgmt/nrf_pwr_mgmt.c)

    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/queue/nrf_queue.c)

    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/ringbuf/nrf_ringbuf.c)
    
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/scheduler/app_scheduler.c)

    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/sortlist/nrf_sortlist.c)

    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/stack_guard/nrf_stack_guard.c)

    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/strerror/nrf_strerror.c)
    
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/timer/app_timer.c)

    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/util/app_error.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/util/app_error_handler_gcc.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/util/app_error_weak.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/util/app_util_platform.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/util/nrf_assert.c)
    
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/external/fnmatch/fnmatch.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/external/fprintf/nrf_fprintf.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/external/fprintf/nrf_fprintf_format.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/external/utf_converter/utf.c)

    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/integration/nrfx/legacy/nrf_drv_clock.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/integration/nrfx/legacy/nrf_drv_power.c)

    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/modules/nrfx/drivers/src/nrfx_clock.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/modules/nrfx/drivers/src/nrfx_gpiote.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/modules/nrfx/drivers/src/nrfx_systick.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/modules/nrfx/drivers/src/nrfx_clock.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/modules/nrfx/drivers/src/nrfx_power.c)    
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/modules/nrfx/drivers/src/nrfx_rtc.c)    
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/modules/nrfx/drivers/src/prs/nrfx_prs.c)
    
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/modules/nrfx/hal/nrf_nvmc.c)

    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/modules/nrfx/soc/nrfx_atomic.c)
    
    if(NRF5SDK__UART_ENABLED)
    
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/uart/app_uart_fifo.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/uart/retarget.c)
        
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/integration/nrfx/legacy/nrf_drv_uart.c)
        
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/modules/nrfx/drivers/src/nrfx_uart.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/modules/nrfx/drivers/src/nrfx_uarte.c)
    
    endif(NRF5SDK__UART_ENABLED)
    
    
    if(NRF5SDK__APP_TIMER_V2)
    
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/timer/experimental/app_timer2.c)

        if(NRF5SDK__APP_TIMER_V2_RTC1_ENABLED)
        
            set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/timer/experimental/drv_rtc.c)
        
        endif(NRF5SDK__APP_TIMER_V2_RTC1_ENABLED)
    
    endif(NRF5SDK__APP_TIMER_V2)
    
    if(NRF5SDK__FREERTOS)
    
        include_directories(${_tmp_source_dir}/nRF5_SDK/external/freertos/portable/CMSIS/nrf52)
        include_directories(${_tmp_source_dir}/nRF5_SDK/external/freertos/portable/GCC/nrf52)
        include_directories(${_tmp_source_dir}/nRF5_SDK/external/freertos/source/include)
        
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/timer/app_timer_freertos.c)
        
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/external/freertos/portable/CMSIS/nrf52/port_cmsis.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/external/freertos/portable/CMSIS/nrf52/port_cmsis_systick.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/external/freertos/portable/GCC/nrf52/port.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/external/freertos/source/croutine.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/external/freertos/source/event_groups.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/external/freertos/source/list.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/external/freertos/source/portable/MemMang/heap_1.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/external/freertos/source/queue.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/external/freertos/source/stream_buffer.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/external/freertos/source/tasks.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/external/freertos/source/timers.c)
    
    endif(NRF5SDK__FREERTOS)

    if(NOT NRF5SDK__BSP_DEFINES_ONLY)

        include_directories(${_tmp_source_dir}/nRF5_SDK/external/segger_rtt)
    
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/libraries/bsp/bsp.c)
        
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/external/segger_rtt/SEGGER_RTT.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/external/segger_rtt/SEGGER_RTT_printf.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/external/segger_rtt/SEGGER_RTT_Syscalls_GCC.c)

    endif(NOT NRF5SDK__BSP_DEFINES_ONLY)

    if(UBINOS__BSP__NRF52_SOFTDEVICE_PRESENT)
    
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_advertising)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_db_discovery)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_dtm)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_racp)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_ancs_c)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_ans_c)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_bas)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_bas_c)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_cscs)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_cts_c)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_dfu)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_dis)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_gls)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_hids)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_hrs)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_hrs_c)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_hts)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_ias)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_ias_c)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_lbs)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_lbs_c)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_lls)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_nus)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_nus_c)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_rscs)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_rscs_c)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_tps)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/common)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/nrf_ble_scan)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/nrf_ble_gatt)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/nrf_ble_qwr)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/ble/peer_manager)
    
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/ndef/conn_hand_parser)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/ndef/conn_hand_parser/ac_rec_parser)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/ndef/conn_hand_parser/ble_oob_advdata_parser)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/ndef/conn_hand_parser/le_oob_rec_parser)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/ndef/connection_handover/ac_rec)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/ndef/connection_handover/ble_oob_advdata)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/ndef/connection_handover/ble_pair_lib)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/ndef/connection_handover/ble_pair_msg)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/ndef/connection_handover/common)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/ndef/connection_handover/ep_oob_rec)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/ndef/connection_handover/hs_rec)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/ndef/connection_handover/le_oob_rec)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/ndef/generic/message)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/ndef/generic/record)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/ndef/launchapp)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/ndef/parser/message)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/ndef/parser/record)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/ndef/text)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/ndef/uri)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/t2t_lib)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/t2t_parser)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/t4t_lib)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/t4t_parser/apdu)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/t4t_parser/cc_file)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/t4t_parser/hl_detection_procedure)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/nfc/t4t_parser/tlv)
    
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/softdevice/common)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/softdevice/s132/headers)
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/softdevice/s132/headers/nrf52)

        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/ble/ble_advertising/ble_advertising.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/ble/ble_db_discovery/ble_db_discovery.c)

        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_lbs/ble_lbs.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/ble/ble_services/ble_lbs_c/ble_lbs_c.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/ble/common/ble_advdata.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/ble/common/ble_conn_params.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/ble/common/ble_conn_state.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/ble/common/ble_srv_common.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/ble/nrf_ble_gatt/nrf_ble_gatt.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/ble/nrf_ble_qwr/nrf_ble_qwr.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/ble/nrf_ble_scan/nrf_ble_scan.c)

        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/softdevice/common/nrf_sdh_ble.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/softdevice/common/nrf_sdh_soc.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/softdevice/common/nrf_sdh.c)

    else()
    
        include_directories(${_tmp_source_dir}/nRF5_SDK/components/drivers_nrf/nrf_soc_nosd)
    
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/drivers_nrf/nrf_soc_nosd/nrf_nvic.c)
        set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/nRF5_SDK/components/drivers_nrf/nrf_soc_nosd/nrf_soc.c)

    endif(UBINOS__BSP__NRF52_SOFTDEVICE_PRESENT)

endif(INCLUDE__NRF5SDK)


