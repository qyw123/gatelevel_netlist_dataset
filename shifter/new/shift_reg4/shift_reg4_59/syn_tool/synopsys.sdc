# set dont use
set_dont_use {gtech/GTECH_MAJ23 gtech/GTECH_MUXI2  gtech/GTECH_ZERO gtech/GTECH_OA21 gtech/GTECH_FJK2S}

#set_units -time ns -resistance kohm -capacitance pF -voltage V -current mA
#set_units -time ns  -capacitance pF -voltage V -current mA
create_clock -name "clk"     -period 50.000 -waveform {0.0 25} [get_ports clk]
 set_dont_touch_network [get_clocks {clk}]
 set_clock_transition 0.2 [get_clocks {clk}]
 set_clock_uncertainty 0.4 -hold [get_clocks {clk}]
# related of setup time   clock_unceritainty=clock_skew+clock_jitter
set_load 0.1 [all_inputs]

set_input_delay 2 -clock clk [all_inputs]
set_output_delay 2 -clock clk [all_outputs]
#set_switching_activity -static_probability 0.5 -toggle_rate 0.01
