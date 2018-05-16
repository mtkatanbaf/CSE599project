# VTA Driver
CC ?= g++
CFLAGS = -Wall -O3 -std=c++11 -I/usr/include -DNO_SIM
LDFLAGS = -L/usr/lib -L/opt/python3.6/lib/python3.6/site-packages/pynq/lib/
LIBS = -l:libsds_lib.so -l:libdma.so -lstdc++
SRC_DIR = src/
DRIVER_DIR = driver/
VPATH = $(SRC_DIR) $(DRIVER_DIR)
SOURCES = pynq_driver.cc test_lib.cc
OBJECTS = pynq_driver.o test_lib.o vta_test.o
EXECUTABLE = vta

# Directories
ROOTDIR = $(CURDIR)
BUILD_DIR = $(ROOTDIR)/build
SCRIPT_DIR = $(ROOTDIR)/scripts
SRC_DIR = $(ROOTDIR)/src

# Executables
VIVADO_HLS = vivado_hls
VIVADO = vivado
HSI = hsi

# Derive config name
IP_BUILD_PATH = $(BUILD_DIR)/hls
HW_BUILD_PATH = $(BUILD_DIR)/vivado

# HLS report path
RPT_PATH = $(IP_BUILD_PATH)/vta/solution0/syn/report/vta_csynth.rpt

# IP file path
IP_PATH = $(IP_BUILD_PATH)/vta/solution0/impl/ip/xilinx_com_hls_vta_1_0.zip

# Bitstream file path
BIT_PATH = $(BUILD_DIR)/vta/export/vta.bit

.PHONY: all sim rpt ip bit bsp exe

all: bsp

# Generate HLS report only
rpt: $(RPT_PATH)

# Build IP only
ip: $(IP_PATH)

# Build bitstream only
bit: $(BIT_PATH)

# Build the Pynq executable
exe: $(EXECUTABLE)

sim: $(SRC_DIR)/*
	mkdir -p $(IP_BUILD_PATH)
	cd $(IP_BUILD_PATH) && \
		$(VIVADO_HLS) -f $(SCRIPT_DIR)/hls.tcl

$(RPT_PATH): $(SRC_DIR)/*
	mkdir -p $(IP_BUILD_PATH)
	cd $(IP_BUILD_PATH) && \
		$(VIVADO_HLS) -f $(SCRIPT_DIR)/hls.tcl -tclargs "rpt"

$(IP_PATH): $(SRC_DIR)/*
	mkdir -p $(IP_BUILD_PATH)
	cd $(IP_BUILD_PATH) && \
		$(VIVADO_HLS) -f $(SCRIPT_DIR)/hls.tcl -tclargs "ip"

$(BIT_PATH): $(IP_PATH)
	mkdir -p $(HW_BUILD_PATH)
	cd $(HW_BUILD_PATH) && \
		$(VIVADO) -mode tcl -source $(SCRIPT_DIR)/vivado.tcl

bsp: $(BIT_PATH)
	cd $(HW_BUILD_PATH) && $(HSI) -mode tcl -source $(SCRIPT_DIR)/hsi.tcl -nojournal -nolog
	cd $(HW_BUILD_PATH)/bsp && make

%.o: %.cc $(SOURCES)
	$(CC) -c -o $@ $< $(CFLAGS)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@ $(LIBS)

clean:
	rm -rf $(BUILD_DIR) $(EXECUTABLE) *.log *.o
