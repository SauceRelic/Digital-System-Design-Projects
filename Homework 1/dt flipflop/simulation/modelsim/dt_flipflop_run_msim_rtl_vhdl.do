transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Homework 1/dt flipflop/dt_flipflop.vhdl}

vcom -2008 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Homework 1/dt flipflop/dt_flipflop_tb.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  dt_flipflop_tb

add wave *
view structure
view signals
run 500 ns
