transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Homework 3/Question 1/mult_rep_add_nbit_fsm.vhdl}
vcom -2008 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Homework 3/Question 1/mult_rep_add_nbit_fsmd.vhdl}
vcom -2008 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Homework 3/Question 1/mult_rep_add_nbit_datapath.vhdl}

vcom -2008 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Homework 3/Question 1/mult_rep_add_nbit_tb.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  mult_rep_add_nbit_tb

add wave *
view structure
view signals
run 2000 ns
