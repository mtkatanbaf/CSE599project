/*!
 *  Copyright (c) 2018 by Contributors
 * \file pynq_driver.c
 * \brief Driver for Pynq board.
 */

#include "./pynq_driver.h"


void* MemAlloc(size_t size, int cached) {
  return cma_alloc(size, cached);
}

void MemFree(void* buf) {
  cma_free(buf);
}

phy_addr_t GetMemPhysAddr(void* buf) {
  return cma_get_phy_addr(buf);
}

void FlushCache(phy_addr_t buf, int size) {
  xlnkFlushCache(reinterpret_cast<void*>(buf), size);
}

void InvalidateCache(phy_addr_t buf, int size) {
  xlnkInvalidateCache(reinterpret_cast<void*>(buf), size);
}

void *MapRegister(uint32_t addr, size_t length) {
  // Align the base address with the pages
  uint32_t virt_base = addr & ~(getpagesize() - 1);
  // Calculate base address offset w.r.t the base address
  uint32_t virt_offset = addr - virt_base;
  // Open file and mmap
  uint32_t mmap_file = open(PYNQ_DEV_MEM_PATH, O_RDWR|O_SYNC);
  return mmap(NULL,
              (length+virt_offset),
              PROT_READ|PROT_WRITE,
              MAP_SHARED,
              mmap_file,
              virt_base);
}

void UnmapRegister(void *vta, size_t length) {
  // Unmap memory
  int status = munmap(vta, length);
  assert(status == 0);
}

void WriteMappedReg(void* base_addr, uint32_t offset, uint32_t val) {
  *((volatile uint32_t *) (reinterpret_cast<char *>(base_addr) + offset)) = val;
}

uint32_t ReadMappedReg(void* base_addr, uint32_t offset) {
  return *((volatile uint32_t *) (reinterpret_cast<char *>(base_addr) + offset));
}

void Program(const char* bitstream) {
  int elem;
  FILE *src, *dst, *partial;
  partial = fopen(PYNQ_BS_IS_PARTIAL, "w");
  if (partial == NULL) {
    printf("Cannot open partial config file %s\n", PYNQ_BS_IS_PARTIAL);
        fclose(partial);
        exit(1);
  }
  fputc('0', partial);
  fclose(partial);
  src = fopen(bitstream, "rb");
  if (src == NULL) {
    printf("Cannot open bitstream %s\n", bitstream);
    exit(1);
  }
  dst = fopen(PYNQ_BS_XDEVCFG, "wb");
  if (dst == NULL) {
    printf("Cannot open device file %s\n", PYNQ_BS_XDEVCFG);
    fclose(dst);
    exit(1);
  }
  elem = fgetc(src);
  while (elem != EOF) {
    fputc(elem, dst);
    elem = fgetc(src);
  }
  fclose(src);
  fclose(dst);
}
