read_liberty /mnt/c/Users/Prsashant/Documents/RISC-Datapath/Task3/nangate45/NangateOpenCellLibrary_typical.lib
read_verilog /mnt/c/Users/Prsashant/Documents/RISC-Datapath/Task3/netlist/alu8bit_nangate45.v
link_design alu8bit
read_sdc /mnt/c/Users/Prsashant/Documents/RISC-Datapath/Task3/constraints/alu8bit.sdc

report_units
report_checks -path_delay max -fields {capacitance fanout slew input_pins} -digits 4
report_checks -path_delay min -fields {capacitance fanout slew input_pins} -digits 4
