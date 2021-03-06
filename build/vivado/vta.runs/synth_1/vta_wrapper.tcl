# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.cache/wt [current_project]
set_property parent.project_path /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths /home/mohamad/Documents/CSE599/lab1/build/vivado/ip_repo [current_project]
set_property ip_output_repo /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/hdl/vta_wrapper.v
add_files /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/vta.bd
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_vta_0_0/constraints/vta_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_10/bd_ee49_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_19/bd_ee49_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_28/bd_ee49_s02a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_37/bd_ee49_s03a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_43/bd_ee49_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_44/bd_ee49_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_45/bd_ee49_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_46/bd_ee49_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_47/bd_ee49_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_48/bd_ee49_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_38/bd_ee49_sarn_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_39/bd_ee49_srn_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_40/bd_ee49_sawn_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_41/bd_ee49_swn_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_42/bd_ee49_sbn_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_29/bd_ee49_sarn_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_30/bd_ee49_srn_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_31/bd_ee49_sawn_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_32/bd_ee49_swn_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_33/bd_ee49_sbn_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_20/bd_ee49_sarn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_21/bd_ee49_srn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_22/bd_ee49_sawn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_23/bd_ee49_swn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_24/bd_ee49_sbn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_11/bd_ee49_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_12/bd_ee49_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_13/bd_ee49_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_14/bd_ee49_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_15/bd_ee49_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_2/bd_ee49_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_3/bd_ee49_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_4/bd_ee49_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_5/bd_ee49_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_6/bd_ee49_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_1/bd_ee49_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/bd_0/ip/ip_1/bd_ee49_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_smc_0/ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_timer_1_0/vta_axi_timer_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_axi_timer_1_0/vta_axi_timer_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_proc_sys_reset_0/vta_proc_sys_reset_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_proc_sys_reset_0/vta_proc_sys_reset_0.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_proc_sys_reset_0/vta_proc_sys_reset_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_processing_system7_1_0/vta_processing_system7_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_xbar_0/vta_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/ip/vta_auto_pc_0/vta_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/vta_ooc.xdc]
set_property is_locked true [get_files /home/mohamad/Documents/CSE599/lab1/build/vivado/vta.srcs/sources_1/bd/vta/vta.bd]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top vta_wrapper -part xc7z020clg484-1


write_checkpoint -force -noxdef vta_wrapper.dcp

catch { report_utilization -file vta_wrapper_utilization_synth.rpt -pb vta_wrapper_utilization_synth.pb }
