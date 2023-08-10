vlog -f filelist.f
vsim tb_top
add wave -position insertpoint sim:/tb_top/counter_intf/*
run -all
