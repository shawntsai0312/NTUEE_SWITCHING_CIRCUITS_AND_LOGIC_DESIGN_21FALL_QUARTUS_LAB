onerror {exit -code 1}
vlib work
vlog -work work SD.vo
vlog -work work Lab2_1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.SD_vlg_vec_tst -voptargs="+acc"
vcd file -direction SD.msim.vcd
vcd add -internal SD_vlg_vec_tst/*
vcd add -internal SD_vlg_vec_tst/i1/*
run -all
quit -f
