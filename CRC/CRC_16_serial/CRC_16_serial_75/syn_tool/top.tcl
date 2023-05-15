#
# NOTE: cHANGE DESIGN NAME TO YOUR OWN
set Design CRC_16_serial
################################################################

set num 75

set verilogout_no_tri true
set verilogout_single_bit false
set verilogout_show_unconnected_pins true
set fsm_auto_inferring true
set gen_show_created_symbols true

source -echo "./synopsys_dc.setup"

source -echo "./filelist.tcl"
elaborate  $Design

################################################################
  set_wire_load_mode segmented


  link
  check_design > ./check_design/${dc_date}.txt

  current_design  $Design

  source -echo "./synopsys.sdc"
 

  current_design  $Design
  #set_dw_prefer_mc_inside true
  #set_compile_seqmap_propagate_constants true

# set_max_area 0.0
# set_max_dynamic_power_ topword 500.0
  dc_allocate_budgets -levels 1 -mode rtl -write_script -no_interblock_logic -file_format_spec design_budget%D.rtl.step${dc_date}.con
  set compile_auto_ungroup_delay_num_cells 99999999
  set compile_auto_ungroup_count_leaf_cells true
  set compile_auto_ungroup_overwrite_wlm true
  set verilogout_no_tri true
#################################################################

#  set_dont_touch U_multiply_0
  current_design  $Design
# set_dont_touch U_power_ topword_0 
 #set_dont_touch enc_1 
  ungroup -flatten -all -force 
 # ungroup -start_level 2 -all
  #set_cost_prioritty -delay
  set_critical_range 0.1  $Design
  remove_unconnected_ports [get_cells -hier * ] -blast

  compile -ungroup_all -exact_map
 # compile_ultra -no_autoungroup -timing_high_effort_script
  
  set compile_seqmap_propagate_high_effort true
  set compile_seqmap_propagate_constants_size_only true
  set_fix_multiple_port_nets -all -buffer_constants -feedthroughs
  change_names -rule verilog -hierarchy
  set verilogout_show_unconnected_pins false
  check_design
 
  
################################################################

# write_report
  write -format verilog -hierarchy $Design -output ../result/${Design}_aftercom_${num}.v

exit

 

  
 
  

