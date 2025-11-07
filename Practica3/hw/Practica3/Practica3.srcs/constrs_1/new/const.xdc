##LEDs
#Primer LED
set_property PACKAGE_PIN P18 [get_ports {red_0}]
	set_property IOSTANDARD LVCMOS33 [get_ports {red_0}]
set_property PACKAGE_PIN A14 [get_ports {green_0}]
	set_property IOSTANDARD LVCMOS33 [get_ports {green_0}]
set_property PACKAGE_PIN R18 [get_ports {blue_0}]
	set_property IOSTANDARD LVCMOS33 [get_ports {blue_0}]

#Segundo LED
set_property PACKAGE_PIN J1 [get_ports {red_1}]
	set_property IOSTANDARD LVCMOS33 [get_ports {red_1}]
set_property PACKAGE_PIN L2 [get_ports {green_1}]
	set_property IOSTANDARD LVCMOS33 [get_ports {green_1}]
set_property PACKAGE_PIN H1 [get_ports {blue_1}]
	set_property IOSTANDARD LVCMOS33 [get_ports {blue_1}]
	
#Tercer LED
#set_property PACKAGE_PIN K2 [get_ports {red_2}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {red_2}]
set_property PACKAGE_PIN G3 [get_ports {green_2}]		
	set_property IOSTANDARD LVCMOS33 [get_ports {green_2}]
set_property PACKAGE_PIN M19 [get_ports {blue_2}]
	set_property IOSTANDARD LVCMOS33 [get_ports {blue_2}]

##Keypad
#Entradas -> Scan[3-0]
set_property PACKAGE_PIN K3 [get_ports {S_0[3]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {S_0[3]}]
set_property PACKAGE_PIN L3 [get_ports {S_0[2]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {S_0[2]}]
set_property PACKAGE_PIN M3 [get_ports {S_0[1]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {S_0[1]}]
set_property PACKAGE_PIN M2 [get_ports {S_0[0]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {S_0[0]}]

#Salidas -> Return[3-0]
set_property PACKAGE_PIN K2 [get_ports {R_0[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {R_0[3]}]
set_property PACKAGE_PIN J2 [get_ports {R_0[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {R_0[2]}]
set_property PACKAGE_PIN H2 [get_ports {R_0[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {R_0[1]}]
set_property PACKAGE_PIN G2 [get_ports {R_0[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {R_0[0]}]