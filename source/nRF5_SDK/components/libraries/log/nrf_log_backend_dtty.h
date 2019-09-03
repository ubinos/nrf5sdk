#ifndef NRF_LOG_BACKEND_DTTY_H
#define NRF_LOG_BACKEND_DTTY_H

#include "nrf_log_backend_interface.h"

#ifdef __cplusplus
extern "C" {
#endif

extern const nrf_log_backend_api_t nrf_log_backend_dtty_api;

typedef struct {
	nrf_log_backend_t backend;
} nrf_log_backend_dtty_t;

#define NRF_LOG_BACKEND_DTTY_DEF(_name)                         \
    NRF_LOG_BACKEND_DEF(_name, nrf_log_backend_dtty_api, NULL)

void nrf_log_backend_dtty_init(void);

#ifdef __cplusplus
}
#endif

#endif //NRF_LOG_BACKEND_DTTY_H

