transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Lab\ 3/vga/db {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Lab 3/vga/db/pll_25mhz_altpll.v}
vcom -2008 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Lab 3/vga/rom_8bit.vhd}
vcom -2008 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Lab 3/vga/clk_1Hz.vhdl}
vcom -2008 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Lab 3/vga/counter.vhdl}
vcom -2008 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Lab 3/vga/counter_1sec.vhdl}
vcom -2008 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Lab 3/vga/vga_driver.vhdl}
vcom -2008 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Lab 3/vga/pll_25MHz.vhd}
vcom -2008 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Lab 3/vga/char_select_bit.vhdl}
vcom -2008 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Lab 3/vga/char_select_line.vhdl}
vcom -2008 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Lab 3/vga/char_grid_modifyable.vhdl}
vcom -2008 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Lab 3/vga/vga_char_companion.vhdl}
vcom -2008 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Lab 3/vga/vga_char_cycle.vhdl}

vcom -2008 -work work {C:/Users/hiemenzpe/Documents/GitHub/Digital-System-Design-Projects/Lab 3/vga/vga_char_cycle_tb.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  vga_char_cycle_tb

add wave *
view structure
view signals
run 5 sec
