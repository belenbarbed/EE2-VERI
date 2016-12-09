transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+H:/Year\ 2/VERI/part_4/ex19 {H:/Year 2/VERI/part_4/ex19/counter_13.v}
vlog -vlog01compat -work work +incdir+H:/Year\ 2/VERI/part_4/ex19 {H:/Year 2/VERI/part_4/ex19/spi2dac.v}
vlog -vlog01compat -work work +incdir+H:/Year\ 2/VERI/part_4/ex19 {H:/Year 2/VERI/part_4/ex19/spi2adc.v}
vlog -vlog01compat -work work +incdir+H:/Year\ 2/VERI/part_4/ex19 {H:/Year 2/VERI/part_4/ex19/pwm.v}
vlog -vlog01compat -work work +incdir+H:/Year\ 2/VERI/part_4/ex19 {H:/Year 2/VERI/part_4/ex19/pulse_gen.v}
vlog -vlog01compat -work work +incdir+H:/Year\ 2/VERI/part_4/ex19 {H:/Year 2/VERI/part_4/ex19/hex_to_7seg.v}
vlog -vlog01compat -work work +incdir+H:/Year\ 2/VERI/part_4/ex19 {H:/Year 2/VERI/part_4/ex19/ex19_top.v}
vlog -vlog01compat -work work +incdir+H:/Year\ 2/VERI/part_4/ex19 {H:/Year 2/VERI/part_4/ex19/echo.v}
vlog -vlog01compat -work work +incdir+H:/Year\ 2/VERI/part_4/ex19 {H:/Year 2/VERI/part_4/ex19/delay_ram.v}
vlog -vlog01compat -work work +incdir+H:/Year\ 2/VERI/part_4/ex19 {H:/Year 2/VERI/part_4/ex19/clktick_16.v}
vlog -vlog01compat -work work +incdir+H:/Year\ 2/VERI/part_4/ex19 {H:/Year 2/VERI/part_4/ex19/bin2bcd_16.v}
vlog -vlog01compat -work work +incdir+H:/Year\ 2/VERI/part_4/ex19 {H:/Year 2/VERI/part_4/ex19/add3_ge5.v}

