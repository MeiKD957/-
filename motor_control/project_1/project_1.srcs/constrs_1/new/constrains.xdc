set_property -dict { PACKAGE_PIN H4  IOSTANDARD LVCMOS33 } [get_ports { clk_sys }]; #IO_L13P_T2_MRCC_35 Sch=sysclk
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { clk_sys }];
#UART0
set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS33} [get_ports UART0_Rx];
set_property -dict {PACKAGE_PIN B13 IOSTANDARD LVCMOS33} [get_ports UART0_Tx];
set_property PACKAGE_PIN C3 [get_ports {key}]
set_property PACKAGE_PIN N14 [get_ports {pwm[0]}]
set_property PACKAGE_PIN M14 [get_ports {pwm[1]}]
set_property PACKAGE_PIN C4 [get_ports {pwm[2]}]
set_property PACKAGE_PIN B13 [get_ports {pwm[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key}]
set_property IOSTANDARD LVCMOS33 [get_ports {pwm[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pwm[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pwm[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pwm[3]}]