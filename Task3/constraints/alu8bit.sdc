create_clock -name VCLK -period 10.0

set_input_delay 0.0 -clock VCLK [all_inputs]
set_output_delay 0.0 -clock VCLK [all_outputs]

set_clock_uncertainty 0.1 [get_clocks VCLK]
