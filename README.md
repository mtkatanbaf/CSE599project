# Vanilla Tensor Accelerator Lab (75 pts)

In this lab you'll complete a simple HLS-based deep learning accelerator, which is a simplified educational version of a deep learning accelerator design currently in development in at UW by the SAML group.

As part of this lab you'll learn how to:
* Design and improve the performance of a programmable network accelerator in HLS.
* Generate a micro-coded program that implements 2D convolution on your accelerator.
* Produce a bitstream that you can then test on your Pynq FPGA development boad.

### Deliverables:
* vta.cc
* test_lib.cc
* build/hls/vta/solution0/syn/report/vta_csynth.rpt
* vta.bit
* output.txt

output.txt should include the output of the hardware test:
```
=====================================================================================
INFO - Load/Store test: batch=128, out_channels=128
INFO - Synchronization time: XXXms
INFO - Throughput: XXXGbs/s
INFO - Load/Store test successful!
=====================================================================================
INFO - Reset test: batch=128, out_channels=128
INFO - Synchronization time: XXXms
INFO - Reset test successful!
=====================================================================================
INFO - FC test: batch=64, in_channels=128, out_channels=128
INFO - Synchronization time: XXXms
INFO - Throughput: XXXGOPs/s
INFO - FC test successful!
=====================================================================================
INFO - 2D Convolution test: batch=1, height=9, width=9
                            kheight=3, kwidth=3
                            in_channels=32, out_channels=64
INFO - Synchronization time: XXXms
INFO - Throughput: XXXGOPs/s
INFO - 2D Convolution test successful!
```

## Pre-requisites

Let's go ahead and go over the pre-requisites for this lab first.

### Xilinx Software Toolchains

Follow the [HLS tutorial](https://gitlab.cs.washington.edu/cse599s/hls-tutorials) instructions in order to get the Xilinx Toolchains installed on your work machine.

In addition this will get you familiarized with the process of using Vivado HLS to design and optimize hardware.

### Pynq board FPGA Dev Kit

*It's essential that you return your FPGA kit the same way you found it. Do not discard packaging items as it helps keep fragile electronics safely packaged*

The CSE599s development kit consists of:
* A translucent plastic tool box.
* A Pynq board with its original box and foam packaging.
* An 8/16GB micro-SD card and a micro-SD to SD card adapter.
* A 12V, 3A power supply.
* A 3ft ethernet cable.
* An ethernet to USB3.0 adapter.

The PYNQ board website is available [here](http://www.pynq.io/).
Follow the **Getting Started** tutorial to get your Pynq board set up (please read the notes below first).

**SD card flashing notes:**
* We've flashed the SD cards with fresh Linux-based images.
* If you need to re-flash your SD card for some reason, we recommend using [Etcher](https://etcher.io/) for one-step SD-card flashing. You can download the image for the SD card on the PYNQ board [website](http://www.pynq.io/).

**Board setup notes:**
* Your boot jumper should be set to SD position.
* Your power jumper should be set to the REG position.
* No need to connect a USB cable.
* Connect your 12V adapter to power on the board.

**Ethernet connection notes:**
* Instead of connecting to a network, you will connect the board directly to an Ethernet port on your computer.
* Note that it'll be easier easier to connect to the board via your primary OS rather than your VM (if you are using one).

**Connecting to Jupyter notes:**
* It seems like you won’t be able to connect to the board successfully using either Firefox or Safari. We recommend using [Chrome](https://www.google.com/chrome/) instead.

*Try one of the iPython notebook examples available out-of-the-box on your PYNQ board to make sure that it works as intended!*

## Repository Overview

We provide an overview of the repository structure below.
```
.
|-- driver
    |-- pynq_driver.cc     # Pynq board FPGA device drivers source file
    |-- pynq_driver.h      # Pynq board FPGA device drivers header file
|-- scripts
    |-- hls.tcl            # HLS tcl script: runs simulation, synthesis and ip generation
    |-- hsi.tcl            # HSI tcl script: generates ARM device drivers 
    |-- vivado.tcl         # Vivado tcl script: runs logic synthesis, place & route and bitstream generation
|-- src
    |-- hw_spec.h          # VTA hardware spec
    |-- test_lib.cc        # Test library source file (for both simulation and hardware)
    |-- test_lib.h         # Test library header file (for both simulation and hardware)
    |-- vta.cc             # VTA HLS-based hardware source file
    |-- vta.h              # VTA HLS-based hardware header file
    |-- vta_test.cc        # Test harness for simulation and hardware
|-- Makefile               # Makefile for simulation, hardware compilation and device tests
```

## VTA Design Overview

The VTA design is a simple accelerator that can accelerate dense linear algebra operators commonly found in conventional deep learning architectures, including 2D convolutions, and fully connected layers (matrix multiplication).

The VTA design can execute one of three commands:
* **Load commands**: bring data from DRAM into the local SRAMs.
* **Store commands**: push data from the local SRAMs into DRAM.
* **GEMM commands**: execute a micro-coded kernel that performs dense linear algebra over locally stored data.

VTA is centered around a *GEMM core*, or matrix multiplication core, that can perform one matrix-matrix multiplication per cycle. In this lab, you will implement this core in HLS.

The VTA design presents the following local SRAM buffers to the GEMM core:
* `inp_mem` Read-only input storage. Should provide 1 `(VTA_BATCH, VTA_BLOCK_IN)` input matrix read per cycle.
* `wgt_mem` Read-only weight storage. Should provide 1 `(VTA_BLOCK_OUT, VTA_BLOCK_IN)` weight matrix read per cycle.
* `acc_mem` Read/write accumulator storage. Should provide 1 `(VTA_BATCH, VTA_BLOCK_OUT)` accumulator matrix read per cycle.
* `uop_mem` Read-only micro-code instruction storage.

Every cycle, a micro-op is read from the micro-op memory `uop_mem`.
The GEMM micro-op is composed of three fields:
* `dst_idx` which is the index to the accumulator memory `acc_mem`,
* `src_idx` which is the index to the input memory `inp_mem`,
* `wgt_idx` which is the index to the weight memory `wgt_mem`.

The matrix multiplication operation specified by the micro-op performs the following operation:
```
acc_mem[dst_idx] += GEMM(inp_mem[src_idx], wgt_mem[wgt_idx])
```


## Part 1: VTA Hardware Design & Optimization (40 pts)

You are tasked to implement VTA's GEMM core that performs multiplication between a `(VTA_BATCH, VTA_BLOCK_IN)` input matrix and a `(VTA_BLOCK_OUT, VTA_BLOCK_IN)` weight matrix (the latter is stored transposed) at a rate of one matrix-matrix multiplication per cycle.

### Part 1.a GEMM Core Implementation (20 pts)
In this part you will complete `vta.cc` HLS source file to implement the matrix multiply core of the VTA accelerator.
The part of the file you are expected to edit is marked with `TODO Part 1.1a` comment.

In order to check for correctness of your implementation, the simulation tests should all pass.
You can launch simulation with `make sim`.

> **HINTS**
> 1. In total you should include around 20 lines of code.
> 2. We leverage the HLS-specific `ap_int` arbitrary precision integer data type across the VTA design. This allows us to perform data packing/unpacking tricks using the range selection operator into vector-like data types `inp_vec_T`, `out_vec_T`, `acc_vec_T`. More info on how the range selection operator works is on page 633 of the [Vivado HLS manual](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2017_1/ug902-vivado-high-level-synthesis.pdf).
> 3. When the `reset_acc` flag is `true`, the accumulator memory at index `dst_idx` (specified by the GEMM micro op) should be set to 0.


### Part 1.a GEMM Core Optimization (20 pts)
In this part you will insert HLS `pragmas` in `vta.cc` HLS source file to achieve an II of 1 on the loop labeled `READ_GEMM_UOP`.
The parts of the file you are expected to edit are marked with `TODO Part 1.1b` comments.

To check that you've achieved an II of 1, launch HLS synthesis with `make rpt`. You can then access the synthesis report under `build/hls/vta/solution0/syn/report/vta_csynth.rpt`.
Success is determined if:
* The estimated clock period is under 10ns (we've set an aggressive 7ns target to close timing later during place and route).
* The `READ_GEMM_UOP` initiation interval should be equal to 1.
* BRAM, DSP, FF, and LUT utilization should all be under 80%.

> **HINTS**
> 1. In total you should include 5 pragmas (4 of those have been covered in the HLS tutorials and will get you to an II of 2). 
> 2. In order to achieve an II of 1, you will have to tell the compiler to ignore false dependences on `acc_mem`. **Explanation**: FPGA SRAMs require at least two cycle between when a value is written at address A, and when that new value will appear at address A. Consequently if a read at address A is performed one cycle after after it is written, the update won't be visible. The compiler assumes that this pattern may occur, and therefore conservatively will reduce the II of the `READ_GEMM_UOP` loop to 2. More details on *Removing False Dependencies to Improve Loop Pipelining* on page 150 of the [Vivado HLS manual](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2017_1/ug902-vivado-high-level-synthesis.pdf).

## Part 2: 2D Convolution Micro-Kernel (20 pts)

In this part you will generate a VTA micro-op program that implements 2D convolution.
You will need to complete the `getConv2dUops()` function that populates a micro-coded 2D convolution kernel.
We've provided the scaffolding for you, all you need to do is compute the indices of the `dst_idx`, `src_idx`, `wgt_idx` of each micro-op from your kernel.

To check for correctness of implementation, you'll need to run the simulation tests again with `make sim`. So far, we've commented the 2D convolution unit test out of the `vta_test.cc` file. **To make sure that your implementation is correct, you'll need to comment the test back in.**

> **HINTS**
> 1. The input feature map has a shape of (b, h, w, ic), the output feature map has a shape of (b, h, w, oc), and the kernel has a shape of (oc, kh, kw, ic) where b, h, w, kh, kw, ic, oc denote batch size, feature map spatial height, feature map spatial width, kernel spatial height, kernel spatial width, input channel depth, and output channel depth respectively.

## Part 3: Hardware Testing and Characterization (15 pts)

In this part you will push your design through place and route to obtain a bit-stream that you will test on your Pynq dev kit. You should by the end successfully run the VTA test harness in hardware, and report performance metrics.

1. To compile your design, type `make`. This will run your design through synthesis, placement, routing and bitstream generation. The process will take about 20-40 mins depending on how powerful your machine is.
   1. Once the process completes, there should be a `build/vivado/export/vta.bit` file. This is the bitstream file that will implement your design on the FPGA.
   2. You can also view the post-place-and-route timing summary under `build/vivado/vta.runs/impl_1/vta_wrapper_timing_summary_routed.rpt`. You should hopefully see a positive `WNS` under the Design Timing Summary table.
   3. In addition if you're curious about design resource utilization, you can find a detailed report under `build/vivado/vta.runs/impl_1/vta_wrapper_utilization_placed.rpt`.
2. Setup your Pynq Board, and make sure that you can ssh into it: `ssh xilinx@192.168.2.99`. The username and password are the same.
3. In a separate terminal window on your host machine, use [sshfs](https://linux.die.net/man/1/sshfs) to map the Pynq's file system onto your machine: `sshfs xilinx@pynq:/home/xilinx/ <pynq_fs_dir>`.
   1. Now clone this repository on the mapped drive: `cd  <pynq_fs_dir>; git clone git@gitlab.cs.washington.edu:cse599s/lab0.git`.
   2. Copy the bitstream you generated into `cp <root>/build/vivado/export/vta.bit <pynq_fs_dir>/lab1/`.
   3. You must also copy your modified test files with `cp <root>/src/vta_test.cc <pynq_fs_dir>/lab1/src/.` and `cp <root>/src/test_lib.cc <pynq_fs_dir>/lab1/src/.`
4. Back on the ssh session on the Pynq board, start a [su](http://linuxcommand.org/lc3_man_pages/su1.html) shell with `su`. The password is `xilinx`.
   1. Compile the ARM binary that will program the FPGA and test your VTA design on the same test fixture we used for simulation tests with the `make exe` command.
   2. Now execute the generated binary with `./vta`. This will launch the binary that programs your FPGA and runs the test harness on your design.
   3. If the convolution unit test fails, don't panic, this is expected and the hint below will tell you how to fix it.

> **HINTS**
> 1. Simulation is supposed to faithfully reflect hardware behavior. In other words, if a bug were to be introduced in hardware, it should have been caught in simulation. However you probably ran into a bug in hardware that *wasn't* caught by our simulation tests. This can be explained by the false dependence elimination optimization introduced in Part 2: we told the compiler that we wouldn't perform worst-case consecutive write and read on the same address of `acc_mem`. If however that doesn't hold true, HLS simulation has no way to know we violated this promise dynamically (the simulation doesn't contain dynamic checks on array access patterns). It's likely that the micro-op kernel generated in Part 2 is at fault. Find a way to change `getConv2dUops()` to fix the error you see in hardware. Don't forget to copy the modified `vta_test.cc` on the Pynq `<pynq_fs_dir>` if you are not editing on the Pynq directly. In addition, don't forget to recompile your test binary with `make exe`. Note: None of this requires you to recompile the bitstream!

