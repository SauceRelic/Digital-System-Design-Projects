transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Lab 2/gcd/gcd_fsmd.vhdl}
vcom -2008 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Lab 2/gcd/gcd_datapath.vhdl}
vcom -2008 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Lab 2/gcd/gcd_fsm.vhdl}

vcom -2008 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Lab 2/gcd/gcd_fsmd_tb.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  gcd_fsmd_tb

add wave *
view structure
view signals
run 1000 ns
