onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib STEP_M_0_opt

do {wave.do}

view wave
view structure
view signals

do {STEP_M_0.udo}

run -all

quit -force
