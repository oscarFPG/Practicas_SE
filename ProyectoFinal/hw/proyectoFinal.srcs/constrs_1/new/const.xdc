# Solo podemos incluir a este modelo:
## Motor
## Zumbador
## Altavoz

# Matriz de puntos
set_property PACKAGE_PIN P18 [get_ports {col_serial_out_0}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {col_serial_out_0}]
set_property PACKAGE_PIN R18 [get_ports {col_clk_0}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {col_clk_0}]
set_property PACKAGE_PIN A14 [get_ports {reset_out_0}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {reset_out_0}]
set_property PACKAGE_PIN A15 [get_ports {row_serial_out_0}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {row_serial_out_0}]
set_property PACKAGE_PIN A16 [get_ports {row_clk_0}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {row_clk_0}]
set_property PACKAGE_PIN A17 [get_ports {reset2_out_0}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {reset2_out_0}]

# VGA
set_property PACKAGE_PIN G19 [get_ports {blue_0[0]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {blue_0[0]}]
set_property PACKAGE_PIN H19 [get_ports {blue_0[1]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {blue_0[1]}]
set_property PACKAGE_PIN J19 [get_ports {blue_0[2]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {blue_0[2]}]
set_property PACKAGE_PIN N19 [get_ports {blue_0[3]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {blue_0[3]}]
set_property PACKAGE_PIN N18 [get_ports {red_0[0]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {red_0[0]}]
set_property PACKAGE_PIN L18 [get_ports {red_0[1]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {red_0[1]}]
set_property PACKAGE_PIN K18 [get_ports {red_0[2]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {red_0[2]}]
set_property PACKAGE_PIN J18 [get_ports {red_0[3]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {red_0[3]}]
set_property PACKAGE_PIN J17 [get_ports {green_0[0]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {green_0[0]}]
set_property PACKAGE_PIN H17 [get_ports {green_0[1]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {green_0[1]}]
set_property PACKAGE_PIN G17 [get_ports {green_0[2]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {green_0[2]}]
set_property PACKAGE_PIN D17 [get_ports {green_0[3]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {green_0[3]}]
set_property PACKAGE_PIN P19 [get_ports hsyncb_0]						
	set_property IOSTANDARD LVCMOS33 [get_ports hsyncb_0]
set_property PACKAGE_PIN R19 [get_ports vsyncb_0]						
	set_property IOSTANDARD LVCMOS33 [get_ports vsyncb_0]

	
# LEDs
## Segundo LED(Resto tiene colisiones)
set_property PACKAGE_PIN J1 [get_ports {red_1}]
	set_property IOSTANDARD LVCMOS33 [get_ports {red_1}]
set_property PACKAGE_PIN L2 [get_ports {green_1}]
	set_property IOSTANDARD LVCMOS33 [get_ports {green_1}]
set_property PACKAGE_PIN H1 [get_ports {blue_1}]
	set_property IOSTANDARD LVCMOS33 [get_ports {blue_1}]


# Keypad
## Entradas -> Scan[3-0]
set_property PACKAGE_PIN K3 [get_ports {S_0[3]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {S_0[3]}]
set_property PACKAGE_PIN L3 [get_ports {S_0[2]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {S_0[2]}]
set_property PACKAGE_PIN M3 [get_ports {S_0[1]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {S_0[1]}]
set_property PACKAGE_PIN M2 [get_ports {S_0[0]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {S_0[0]}]
## Salidas -> Return[3-0]
set_property PACKAGE_PIN K2 [get_ports {R_0[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {R_0[3]}]
set_property PACKAGE_PIN J2 [get_ports {R_0[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {R_0[2]}]
set_property PACKAGE_PIN H2 [get_ports {R_0[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {R_0[1]}]
set_property PACKAGE_PIN G2 [get_ports {R_0[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {R_0[0]}]
	
###### Motor
#
#NET control_motor<0> LOC=L15;
#NET control_motor<1> LOC=L5;
#NET control_motor<2> LOC=N2;
#NET control_motor<3> LOC=M3;

##Pmod Header JC
##Sch name = JC1
set_property PACKAGE_PIN K17 [get_ports {control_motor_0[0]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {control_motor_0[0]}]
##Sch name = JC2
set_property PACKAGE_PIN M18 [get_ports {control_motor_0[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {control_motor_0[2]}]
##Sch name = JC3
#set_property PACKAGE_PIN N17 [get_ports {JC[2]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[2]}]
##Sch name = JC4
#set_property PACKAGE_PIN P18 [get_ports {JC[3]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[3]}]
##Sch name = JC7
set_property PACKAGE_PIN L17 [get_ports {control_motor_0[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {control_motor_0[1]}]
##Sch name = JC8
set_property PACKAGE_PIN M19 [get_ports {control_motor_0[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {control_motor_0[3]}]
##Sch name = JC9
#set_property PACKAGE_PIN P17 [get_ports {JC[6]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[6]}]
##Sch name = JC10
#set_property PACKAGE_PIN R18 [get_ports {JC[7]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[7]}]
