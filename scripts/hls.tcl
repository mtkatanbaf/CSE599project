#
#  Copyright (c) 2018 by Contributors
#  file: hls.tcl
#  brief: HLS generation script.
#

# Argument: mode {"ip", "sim"}
# Set to "ip" if you wish to produce the Vivado IP
if { [llength $argv] eq 3 } {
	set mode [lindex $argv 2]
} else {
	set mode "sim"
}

open_project vta
set_top vta
add_files ../../src/vta.cc
add_files -tb ../../src/vta_test.cc
add_files -tb ../../src/test_lib.cc
open_solution "solution0"
set_part {xc7z020clg484-1}
create_clock -period 7 -name default
csim_design -clean
if {$mode=="rpt" || $mode=="ip"} {
	csynth_design
}
if {$mode=="ip"} {
	export_design -format ip_catalog
}
close_project

exit
