onerror {exit -code 1}
vlib work
vlog -work work WSC.vo
vlog -work work WSC.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.WSC_vlg_vec_tst -voptargs="+acc"
vcd file -direction WSC.msim.vcd
vcd add -internal WSC_vlg_vec_tst/*
vcd add -internal WSC_vlg_vec_tst/i1/*
run -all
quit -f
