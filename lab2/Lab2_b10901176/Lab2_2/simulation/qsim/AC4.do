onerror {exit -code 1}
vlib work
vlog -work work AC4.vo
vlog -work work Lab2_2.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.AC4_vlg_vec_tst -voptargs="+acc"
vcd file -direction AC4.msim.vcd
vcd add -internal AC4_vlg_vec_tst/*
vcd add -internal AC4_vlg_vec_tst/i1/*
run -all
quit -f
