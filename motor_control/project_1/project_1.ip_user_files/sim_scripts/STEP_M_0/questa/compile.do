vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../project_1.srcs/sources_1/ip/STEP_M_0/sim/STEP_M.v" \
"../../../../project_1.srcs/sources_1/ip/STEP_M_0/sim/STEP_M_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

