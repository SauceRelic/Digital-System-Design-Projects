transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Homework 1/4bit barrel shifter/barrel.vhdl}

vcom -93 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Homework 1/4bit barrel shifter/barrel_tb.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  barrel_tb

add wave *
view structure
view signals
run 300 ns
