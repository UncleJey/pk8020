onerror {quit -f}
vlib work
vlog -work work Scheme.vo
vlog -work work Scheme.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Scheme_vlg_vec_tst
vcd file -direction Scheme.msim.vcd
vcd add -internal Scheme_vlg_vec_tst/*
vcd add -internal Scheme_vlg_vec_tst/i1/*
add wave /*
run -all
