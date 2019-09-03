#include "sdk_common.h"
#if NRF_MODULE_ENABLED(NRF_LOG) && NRF_MODULE_ENABLED(NRF_LOG_BACKEND_DTTY)
#include "nrf_log_backend_dtty.h"
#include "nrf_log_backend_serial.h"
#include "nrf_log_internal.h"
#include "app_error.h"
#include <ubinos.h>

static uint8_t m_string_buff[NRF_LOG_BACKEND_DTTY_TEMP_BUFFER_SIZE];

void nrf_log_backend_dtty_init(void) {
}

static void dtty_tx(void const *p_context, char const *p_buffer, size_t len) {
	dtty_putn(p_buffer, len);
}

static void nrf_log_backend_dtty_put(nrf_log_backend_t const *p_backend, nrf_log_entry_t *p_msg) {
	nrf_log_backend_serial_put(p_backend, p_msg, m_string_buff, NRF_LOG_BACKEND_DTTY_TEMP_BUFFER_SIZE, dtty_tx);
}

static void nrf_log_backend_dtty_flush(nrf_log_backend_t const *p_backend) {
}

static void nrf_log_backend_dtty_panic_set(nrf_log_backend_t const *p_backend) {
}

const nrf_log_backend_api_t nrf_log_backend_dtty_api = {
		.put = nrf_log_backend_dtty_put,
		.flush = nrf_log_backend_dtty_flush,
		.panic_set = nrf_log_backend_dtty_panic_set,
};
#endif //NRF_MODULE_ENABLED(NRF_LOG) && NRF_MODULE_ENABLED(NRF_LOG_BACKEND_DTTY)

