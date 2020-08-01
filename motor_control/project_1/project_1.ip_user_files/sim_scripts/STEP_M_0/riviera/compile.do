vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../project_1.srcs/sources_1/ip/STEP_M_0/sim/STEP_M.v" \
"../../../../project_1.srcs/sources_1/ip/STEP_M_0/sim/STEP_M_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

