vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../project_1.srcs/sources_1/ip/STEP_M_0/sim/STEP_M.v" \
"../../../../project_1.srcs/sources_1/ip/STEP_M_0/sim/STEP_M_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

