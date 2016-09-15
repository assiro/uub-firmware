proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  debug::add_scope template.lib 1
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir C:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.cache/wt [current_project]
  set_property parent.project_path C:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.xpr [current_project]
  set_property ip_repo_paths {
  c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.cache/ip
  c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/ip_repo
} [current_project]
  set_property ip_output_repo c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.cache/ip [current_project]
  add_files -quiet C:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.runs/synth_1/uub_proto2_wrapper.dcp
  add_files C:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/uub_proto2.bmm
  set_property SCOPED_TO_REF uub_proto2 [get_files -all C:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/uub_proto2.bmm]
  set_property SCOPED_TO_CELLS {} [get_files -all C:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/uub_proto2.bmm]
  read_xdc -prop_thru_buffers -ref uub_proto2_axi_uartlite_0_0 -cells U0 c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_axi_uartlite_0_0/uub_proto2_axi_uartlite_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_axi_uartlite_0_0/uub_proto2_axi_uartlite_0_0_board.xdc]
  read_xdc -ref uub_proto2_axi_uartlite_0_0 -cells U0 c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_axi_uartlite_0_0/uub_proto2_axi_uartlite_0_0.xdc
  set_property processing_order EARLY [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_axi_uartlite_0_0/uub_proto2_axi_uartlite_0_0.xdc]
  read_xdc -prop_thru_buffers -ref uub_proto2_proc_sys_reset_0_0 c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_proc_sys_reset_0_0/uub_proto2_proc_sys_reset_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_proc_sys_reset_0_0/uub_proto2_proc_sys_reset_0_0_board.xdc]
  read_xdc -ref uub_proto2_proc_sys_reset_0_0 c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_proc_sys_reset_0_0/uub_proto2_proc_sys_reset_0_0.xdc
  set_property processing_order EARLY [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_proc_sys_reset_0_0/uub_proto2_proc_sys_reset_0_0.xdc]
  read_xdc -ref uub_proto2_processing_system7_0_0 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_processing_system7_0_0/uub_proto2_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_processing_system7_0_0/uub_proto2_processing_system7_0_0.xdc]
  read_xdc -ref uub_proto2_axi_cdma_0_0 -cells U0 c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_axi_cdma_0_0/uub_proto2_axi_cdma_0_0.xdc
  set_property processing_order EARLY [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_axi_cdma_0_0/uub_proto2_axi_cdma_0_0.xdc]
  read_xdc -prop_thru_buffers -ref uub_proto2_axi_gpio_0_0 -cells U0 c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_axi_gpio_0_0/uub_proto2_axi_gpio_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_axi_gpio_0_0/uub_proto2_axi_gpio_0_0_board.xdc]
  read_xdc -ref uub_proto2_axi_gpio_0_0 -cells U0 c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_axi_gpio_0_0/uub_proto2_axi_gpio_0_0.xdc
  set_property processing_order EARLY [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_axi_gpio_0_0/uub_proto2_axi_gpio_0_0.xdc]
  read_xdc -prop_thru_buffers -ref uub_proto2_axi_gpio_1_0 -cells U0 c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_axi_gpio_1_0/uub_proto2_axi_gpio_1_0_board.xdc
  set_property processing_order EARLY [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_axi_gpio_1_0/uub_proto2_axi_gpio_1_0_board.xdc]
  read_xdc -ref uub_proto2_axi_gpio_1_0 -cells U0 c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_axi_gpio_1_0/uub_proto2_axi_gpio_1_0.xdc
  set_property processing_order EARLY [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_axi_gpio_1_0/uub_proto2_axi_gpio_1_0.xdc]
  read_xdc -prop_thru_buffers -ref uub_proto2_axi_gpio_2_0 -cells U0 c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_axi_gpio_2_0/uub_proto2_axi_gpio_2_0_board.xdc
  set_property processing_order EARLY [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_axi_gpio_2_0/uub_proto2_axi_gpio_2_0_board.xdc]
  read_xdc -ref uub_proto2_axi_gpio_2_0 -cells U0 c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_axi_gpio_2_0/uub_proto2_axi_gpio_2_0.xdc
  set_property processing_order EARLY [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_axi_gpio_2_0/uub_proto2_axi_gpio_2_0.xdc]
  read_xdc -prop_thru_buffers -ref uub_proto2_axi_gpio_3_0 -cells U0 c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_axi_gpio_3_0/uub_proto2_axi_gpio_3_0_board.xdc
  set_property processing_order EARLY [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_axi_gpio_3_0/uub_proto2_axi_gpio_3_0_board.xdc]
  read_xdc -ref uub_proto2_axi_gpio_3_0 -cells U0 c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_axi_gpio_3_0/uub_proto2_axi_gpio_3_0.xdc
  set_property processing_order EARLY [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_axi_gpio_3_0/uub_proto2_axi_gpio_3_0.xdc]
  read_xdc C:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/constrs_1/imports/constraints/uub_proto_wrapper.xdc
  read_xdc C:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/constrs_1/imports/constraints/vivado_uub.xdc
  read_xdc C:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/constrs_1/imports/constraints/Timing_contraints_uub.xdc
  read_xdc -ref uub_proto2_auto_ds_0 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_0/uub_proto2_auto_ds_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_0/uub_proto2_auto_ds_0_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_1 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_1/uub_proto2_auto_ds_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_1/uub_proto2_auto_ds_1_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_2 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_2/uub_proto2_auto_ds_2_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_2/uub_proto2_auto_ds_2_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_3 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_3/uub_proto2_auto_ds_3_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_3/uub_proto2_auto_ds_3_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_4 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_4/uub_proto2_auto_ds_4_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_4/uub_proto2_auto_ds_4_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_5 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_5/uub_proto2_auto_ds_5_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_5/uub_proto2_auto_ds_5_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_6 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_6/uub_proto2_auto_ds_6_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_6/uub_proto2_auto_ds_6_clocks.xdc]
  read_xdc -ref uub_proto2_auto_us_0 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_us_0_1/uub_proto2_auto_us_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_us_0_1/uub_proto2_auto_us_0_clocks.xdc]
  read_xdc -ref uub_proto2_auto_us_1 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_us_1/uub_proto2_auto_us_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_us_1/uub_proto2_auto_us_1_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_7 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_7/uub_proto2_auto_ds_7_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_7/uub_proto2_auto_ds_7_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_8 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_8/uub_proto2_auto_ds_8_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_8/uub_proto2_auto_ds_8_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_9 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_9/uub_proto2_auto_ds_9_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_9/uub_proto2_auto_ds_9_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_10 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_10/uub_proto2_auto_ds_10_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_10/uub_proto2_auto_ds_10_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_11 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_11/uub_proto2_auto_ds_11_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_11/uub_proto2_auto_ds_11_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_12 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_12/uub_proto2_auto_ds_12_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_12/uub_proto2_auto_ds_12_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_13 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_13/uub_proto2_auto_ds_13_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_13/uub_proto2_auto_ds_13_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_14 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_14/uub_proto2_auto_ds_14_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_14/uub_proto2_auto_ds_14_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_15 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_15/uub_proto2_auto_ds_15_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_15/uub_proto2_auto_ds_15_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_16 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_16/uub_proto2_auto_ds_16_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_16/uub_proto2_auto_ds_16_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_17 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_17/uub_proto2_auto_ds_17_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_17/uub_proto2_auto_ds_17_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_18 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_18/uub_proto2_auto_ds_18_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_18/uub_proto2_auto_ds_18_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_19 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_19/uub_proto2_auto_ds_19_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_19/uub_proto2_auto_ds_19_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_20 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_20/uub_proto2_auto_ds_20_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_20/uub_proto2_auto_ds_20_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_21 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_21/uub_proto2_auto_ds_21_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_21/uub_proto2_auto_ds_21_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_22 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_22/uub_proto2_auto_ds_22_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_22/uub_proto2_auto_ds_22_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_23 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_23/uub_proto2_auto_ds_23_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_23/uub_proto2_auto_ds_23_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_24 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_24/uub_proto2_auto_ds_24_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_24/uub_proto2_auto_ds_24_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_25 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_25/uub_proto2_auto_ds_25_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_25/uub_proto2_auto_ds_25_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_26 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_26/uub_proto2_auto_ds_26_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_26/uub_proto2_auto_ds_26_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_27 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_27/uub_proto2_auto_ds_27_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_27/uub_proto2_auto_ds_27_clocks.xdc]
  read_xdc -ref uub_proto2_auto_ds_28 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_28/uub_proto2_auto_ds_28_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_ds_28/uub_proto2_auto_ds_28_clocks.xdc]
  read_xdc -ref uub_proto2_auto_us_2 -cells inst c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_us_2/uub_proto2_auto_us_2_clocks.xdc
  set_property processing_order LATE [get_files c:/Xilinx/Vivado/2015.2/progetti/uub_nitz_assiro/uub_proto2.srcs/sources_1/bd/uub_proto2/ip/uub_proto2_auto_us_2/uub_proto2_auto_us_2_clocks.xdc]
  link_design -top uub_proto2_wrapper -part xc7z020clg484-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force uub_proto2_wrapper_opt.dcp
  catch {report_drc -file uub_proto2_wrapper_drc_opted.rpt}
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file uub_proto2_wrapper.hwdef}
  place_design 
  write_checkpoint -force uub_proto2_wrapper_placed.dcp
  catch { report_io -file uub_proto2_wrapper_io_placed.rpt }
  catch { report_utilization -file uub_proto2_wrapper_utilization_placed.rpt -pb uub_proto2_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file uub_proto2_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force uub_proto2_wrapper_routed.dcp
  catch { report_drc -file uub_proto2_wrapper_drc_routed.rpt -pb uub_proto2_wrapper_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file uub_proto2_wrapper_timing_summary_routed.rpt -rpx uub_proto2_wrapper_timing_summary_routed.rpx }
  catch { report_power -file uub_proto2_wrapper_power_routed.rpt -pb uub_proto2_wrapper_power_summary_routed.pb }
  catch { report_route_status -file uub_proto2_wrapper_route_status.rpt -pb uub_proto2_wrapper_route_status.pb }
  catch { report_clock_utilization -file uub_proto2_wrapper_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force uub_proto2_wrapper.mmi }
  catch { write_bmm -force uub_proto2_wrapper_bd.bmm }
  write_bitstream -force uub_proto2_wrapper.bit 
  catch { write_sysdef -hwdef uub_proto2_wrapper.hwdef -bitfile uub_proto2_wrapper.bit -meminfo uub_proto2_wrapper.mmi -ltxfile debug_nets.ltx -file uub_proto2_wrapper.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

