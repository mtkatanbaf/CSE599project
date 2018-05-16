
################################################################
# This is a generated script based on design: vta
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source vta_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-1
}


# CHANGE DESIGN NAME HERE
set design_name vta

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  # Create ports

  # Create instance: axi_interconnect_1, and set properties
  set axi_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_1 ]
  set_property -dict [ list \
CONFIG.NUM_MI {2} \
 ] $axi_interconnect_1

  # Create instance: axi_smc, and set properties
  set axi_smc [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smc ]
  set_property -dict [ list \
CONFIG.NUM_SI {4} \
 ] $axi_smc

  # Create instance: axi_timer_1, and set properties
  set axi_timer_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_1 ]

  # Create instance: proc_sys_reset, and set properties
  set proc_sys_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset ]

  # Create instance: processing_system7_1, and set properties
  set processing_system7_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_1 ]
  set_property -dict [ list \
CONFIG.PCW_CAN0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_EN_CLK0_PORT {1} \
CONFIG.PCW_EN_CLK1_PORT {1} \
CONFIG.PCW_EN_CLK2_PORT {1} \
CONFIG.PCW_EN_CLK3_PORT {1} \
CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {142.86} \
CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {167} \
CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {0} \
CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_IMPORT_BOARD_PRESET {None} \
CONFIG.PCW_IRQ_F2P_INTR {1} \
CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {0} \
CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_SD0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_USB0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_USE_DEFAULT_ACP_USER_VAL {1} \
CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
CONFIG.PCW_USE_HIGH_OCM {1} \
CONFIG.PCW_USE_S_AXI_ACP {1} \
CONFIG.PCW_USE_S_AXI_HP0 {0} \
CONFIG.PCW_USE_S_AXI_HP1 {0} \
CONFIG.PCW_USE_S_AXI_HP2 {0} \
CONFIG.PCW_USE_S_AXI_HP3 {0} \
CONFIG.preset {ZC702} \
 ] $processing_system7_1

  # Create instance: vta_0, and set properties
  set vta_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:vta:1.0 vta_0 ]
  set_property -dict [ list \
CONFIG.C_M_AXI_INS_PORT_CACHE_VALUE {"1111"} \
CONFIG.C_M_AXI_NARROW_PORT_CACHE_VALUE {"1111"} \
CONFIG.C_M_AXI_UOP_PORT_CACHE_VALUE {"1111"} \
CONFIG.C_M_AXI_WIDE_PORT_CACHE_VALUE {"1111"} \
 ] $vta_0

  set_property -dict [ list \
CONFIG.NUM_READ_OUTSTANDING {1} \
CONFIG.NUM_WRITE_OUTSTANDING {1} \
 ] [get_bd_intf_pins /vta_0/s_axi_CONTROL_BUS]

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]
  set_property -dict [ list \
CONFIG.NUM_PORTS {2} \
 ] $xlconcat_1

  # Create interface connections
  connect_bd_intf_net -intf_net axi_interconnect_1_M01_AXI [get_bd_intf_pins axi_interconnect_1/M01_AXI] [get_bd_intf_pins vta_0/s_axi_CONTROL_BUS]
  connect_bd_intf_net -intf_net axi_smc_M00_AXI [get_bd_intf_pins axi_smc/M00_AXI] [get_bd_intf_pins processing_system7_1/S_AXI_ACP]
  connect_bd_intf_net -intf_net processing_system7_1_axi_periph_m00_axi [get_bd_intf_pins axi_interconnect_1/M00_AXI] [get_bd_intf_pins axi_timer_1/S_AXI]
  connect_bd_intf_net -intf_net processing_system7_1_ddr [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_1/DDR]
  connect_bd_intf_net -intf_net processing_system7_1_fixed_io [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_1/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_1_m_axi_gp0 [get_bd_intf_pins axi_interconnect_1/S00_AXI] [get_bd_intf_pins processing_system7_1/M_AXI_GP0]
  connect_bd_intf_net -intf_net vta_0_m_axi_ins_port [get_bd_intf_pins axi_smc/S00_AXI] [get_bd_intf_pins vta_0/m_axi_ins_port]
  connect_bd_intf_net -intf_net vta_0_m_axi_narrow_port [get_bd_intf_pins axi_smc/S02_AXI] [get_bd_intf_pins vta_0/m_axi_narrow_port]
  connect_bd_intf_net -intf_net vta_0_m_axi_uop_port [get_bd_intf_pins axi_smc/S01_AXI] [get_bd_intf_pins vta_0/m_axi_uop_port]
  connect_bd_intf_net -intf_net vta_0_m_axi_wide_port [get_bd_intf_pins axi_smc/S03_AXI] [get_bd_intf_pins vta_0/m_axi_wide_port]

  # Create port connections
  connect_bd_net -net axi_timer_1_interrupt [get_bd_pins axi_timer_1/interrupt] [get_bd_pins xlconcat_1/In0]
  connect_bd_net -net proc_sys_reset_interconnect_aresetn [get_bd_pins axi_interconnect_1/ARESETN] [get_bd_pins proc_sys_reset/interconnect_aresetn]
  connect_bd_net -net proc_sys_reset_peripheral_aresetn [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins axi_interconnect_1/M01_ARESETN] [get_bd_pins axi_interconnect_1/S00_ARESETN] [get_bd_pins axi_smc/aresetn] [get_bd_pins axi_timer_1/s_axi_aresetn] [get_bd_pins proc_sys_reset/peripheral_aresetn] [get_bd_pins vta_0/ap_rst_n]
  connect_bd_net -net processing_system7_1_FCLK_CLK [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins axi_interconnect_1/M01_ACLK] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins axi_smc/aclk] [get_bd_pins axi_timer_1/s_axi_aclk] [get_bd_pins proc_sys_reset/slowest_sync_clk] [get_bd_pins processing_system7_1/FCLK_CLK0] [get_bd_pins processing_system7_1/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_1/S_AXI_ACP_ACLK] [get_bd_pins vta_0/ap_clk]
  connect_bd_net -net processing_system7_1_fclk_reset0_n [get_bd_pins proc_sys_reset/ext_reset_in] [get_bd_pins processing_system7_1/FCLK_RESET0_N]
  connect_bd_net -net vta_0_interrupt [get_bd_pins vta_0/interrupt] [get_bd_pins xlconcat_1/In1]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins processing_system7_1/IRQ_F2P] [get_bd_pins xlconcat_1/dout]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x42800000 [get_bd_addr_spaces processing_system7_1/Data] [get_bd_addr_segs axi_timer_1/S_AXI/Reg] SEG_axi_timer_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C00000 [get_bd_addr_spaces processing_system7_1/Data] [get_bd_addr_segs vta_0/s_axi_CONTROL_BUS/Reg] SEG_vta_0_Reg
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces vta_0/Data_m_axi_ins_port] [get_bd_addr_segs processing_system7_1/S_AXI_ACP/ACP_DDR_LOWOCM] SEG_processing_system7_1_ACP_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces vta_0/Data_m_axi_uop_port] [get_bd_addr_segs processing_system7_1/S_AXI_ACP/ACP_DDR_LOWOCM] SEG_processing_system7_1_ACP_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces vta_0/Data_m_axi_narrow_port] [get_bd_addr_segs processing_system7_1/S_AXI_ACP/ACP_DDR_LOWOCM] SEG_processing_system7_1_ACP_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces vta_0/Data_m_axi_wide_port] [get_bd_addr_segs processing_system7_1/S_AXI_ACP/ACP_DDR_LOWOCM] SEG_processing_system7_1_ACP_DDR_LOWOCM
  create_bd_addr_seg -range 0x00040000 -offset 0xFFFC0000 [get_bd_addr_spaces vta_0/Data_m_axi_ins_port] [get_bd_addr_segs processing_system7_1/S_AXI_ACP/ACP_HIGH_OCM] SEG_processing_system7_1_ACP_HIGH_OCM
  create_bd_addr_seg -range 0x00040000 -offset 0xFFFC0000 [get_bd_addr_spaces vta_0/Data_m_axi_uop_port] [get_bd_addr_segs processing_system7_1/S_AXI_ACP/ACP_HIGH_OCM] SEG_processing_system7_1_ACP_HIGH_OCM
  create_bd_addr_seg -range 0x00040000 -offset 0xFFFC0000 [get_bd_addr_spaces vta_0/Data_m_axi_narrow_port] [get_bd_addr_segs processing_system7_1/S_AXI_ACP/ACP_HIGH_OCM] SEG_processing_system7_1_ACP_HIGH_OCM
  create_bd_addr_seg -range 0x00040000 -offset 0xFFFC0000 [get_bd_addr_spaces vta_0/Data_m_axi_wide_port] [get_bd_addr_segs processing_system7_1/S_AXI_ACP/ACP_HIGH_OCM] SEG_processing_system7_1_ACP_HIGH_OCM
  create_bd_addr_seg -range 0x00400000 -offset 0xE0000000 [get_bd_addr_spaces vta_0/Data_m_axi_ins_port] [get_bd_addr_segs processing_system7_1/S_AXI_ACP/ACP_IOP] SEG_processing_system7_1_ACP_IOP
  create_bd_addr_seg -range 0x00400000 -offset 0xE0000000 [get_bd_addr_spaces vta_0/Data_m_axi_uop_port] [get_bd_addr_segs processing_system7_1/S_AXI_ACP/ACP_IOP] SEG_processing_system7_1_ACP_IOP
  create_bd_addr_seg -range 0x00400000 -offset 0xE0000000 [get_bd_addr_spaces vta_0/Data_m_axi_narrow_port] [get_bd_addr_segs processing_system7_1/S_AXI_ACP/ACP_IOP] SEG_processing_system7_1_ACP_IOP
  create_bd_addr_seg -range 0x00400000 -offset 0xE0000000 [get_bd_addr_spaces vta_0/Data_m_axi_wide_port] [get_bd_addr_segs processing_system7_1/S_AXI_ACP/ACP_IOP] SEG_processing_system7_1_ACP_IOP
  create_bd_addr_seg -range 0x40000000 -offset 0x40000000 [get_bd_addr_spaces vta_0/Data_m_axi_ins_port] [get_bd_addr_segs processing_system7_1/S_AXI_ACP/ACP_M_AXI_GP0] SEG_processing_system7_1_ACP_M_AXI_GP0
  create_bd_addr_seg -range 0x40000000 -offset 0x40000000 [get_bd_addr_spaces vta_0/Data_m_axi_uop_port] [get_bd_addr_segs processing_system7_1/S_AXI_ACP/ACP_M_AXI_GP0] SEG_processing_system7_1_ACP_M_AXI_GP0
  create_bd_addr_seg -range 0x40000000 -offset 0x40000000 [get_bd_addr_spaces vta_0/Data_m_axi_narrow_port] [get_bd_addr_segs processing_system7_1/S_AXI_ACP/ACP_M_AXI_GP0] SEG_processing_system7_1_ACP_M_AXI_GP0
  create_bd_addr_seg -range 0x40000000 -offset 0x40000000 [get_bd_addr_spaces vta_0/Data_m_axi_wide_port] [get_bd_addr_segs processing_system7_1/S_AXI_ACP/ACP_M_AXI_GP0] SEG_processing_system7_1_ACP_M_AXI_GP0


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


