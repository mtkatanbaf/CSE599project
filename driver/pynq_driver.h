/*!
 *  Copyright (c) 2018 by Contributors
 * \file pynq_driver.h
 * \brief Driver for Pynq board.
 */

#ifndef PYNQ_DRIVER_H_
#define PYNQ_DRIVER_H_

#ifdef __cplusplus
extern "C" {
#endif
#include <assert.h>
#include <fcntl.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>

#ifdef __arm__
#include <libxlnk_cma.h>
#else
void* cma_alloc(size_t size, int cached);
void cma_free(void* buf);
uint32_t cma_get_phy_addr(void* buf);
void xlnkFlushCache(void* buf, int size);
void xlnkInvalidateCache(void* buf, int size);
#endif

void Program(const char* bitstream);
void *MapRegister(uint32_t addr, size_t length);
void UnmapRegister(void *vta, size_t length);
void WriteMappedReg(void* base_addr, uint32_t offset, uint32_t val);
uint32_t ReadMappedReg(void* base_addr, uint32_t offset);

/*! \brief Device resource context  */
typedef void * DeviceHandle;

/*! \brief Physical address */
typedef uint32_t phy_addr_t;

/*! \brief Memory management constants for cached memory */
#define CACHED 1
/*! \brief Memory management constants for non-cached memory */
#define NOT_CACHED 0

/*! \brief Physically contiguous buffer size limit */
#ifndef MAX_XFER
#define MAX_XFER (1<<22)
#endif

/*! \brief Partial bitstream status file path */
#define PYNQ_BS_IS_PARTIAL "/sys/devices/soc0/amba/f8007000.devcfg/is_partial_bitstream"
/*! \brief Bitstream destination file path */
#define PYNQ_BS_XDEVCFG "/dev/xdevcfg"

/*! \brief Path to /dev/mem */
#define PYNQ_DEV_MEM_PATH "/dev/mem"
/*! \brief MMIO driver constant */
#define PYNQ_MMIO_WORD_LENGTH 4
/*! \brief MMIO driver constant */
#define PYNQ_MMIO_WORD_MASK (~(MMIO_WORD_LENGTH - 1))

/*! \brief Configuration register address range */
#define RANGE 0x100
/*! \brief Configuration register start value */
#define START 0x1
/*! \brief Configuration register auto-restart value */
#define AUTORESTART 0x81
/*! \brief Configuration register done value */
#define DONE 0x2

#define HLS_IP_ADDR 0x43C00000

#ifdef __cplusplus
}
#endif
#endif  // PYNQ_DRIVER_H_
