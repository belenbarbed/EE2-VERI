add wave data_in
add wave load
add wave sysclk
add wave dac_sdi
add wave dac_cs
add wave dac_sck
add wave dac_ld
force sysclk 0 0, 1 10ns -repeat 20ns
force load 0
force data_in 001000111011
run 45us
force load 1
run 15us
force data_in 0
run 1us
force load 0
run 20us