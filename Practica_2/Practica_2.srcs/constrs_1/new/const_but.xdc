##buttons_0
# UP
set_property PACKAGE_PIN T18 [get_ports buttons_0[1]]
    set_property IOSTANDARD LVCMOS33 [get_ports buttons_0[1]]

## left
set_property PACKAGE_PIN W19 [get_ports buttons_0[2]]
    set_property IOSTANDARD LVCMOS33 [get_ports buttons_0[2]]

## right
set_property PACKAGE_PIN T17 [get_ports buttons_0[3]]
    set_property IOSTANDARD LVCMOS33 [get_ports buttons_0[3]]

## down
set_property PACKAGE_PIN U17 [get_ports buttons_0[0]]
    set_property IOSTANDARD LVCMOS33 [get_ports buttons_0[0]]


#switches
set_property PACKAGE_PIN V17 [get_ports {switches_0[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switches_0[0]}]
set_property PACKAGE_PIN V16 [get_ports {switches_0[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switches_0[1]}]
set_property PACKAGE_PIN W16 [get_ports {switches_0[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switches_0[2]}]
set_property PACKAGE_PIN W17 [get_ports {switches_0[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switches_0[3]}]

#leds
set_property PACKAGE_PIN U16 [get_ports {leds_0[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_0[0]}]
set_property PACKAGE_PIN E19 [get_ports {leds_0[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_0[1]}]
set_property PACKAGE_PIN U19 [get_ports {leds_0[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_0[2]}]
set_property PACKAGE_PIN V19 [get_ports {leds_0[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_0[3]}]
set_property PACKAGE_PIN W18 [get_ports {leds_0[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_0[4]}]
set_property PACKAGE_PIN U15 [get_ports {leds_0[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_0[5]}]
set_property PACKAGE_PIN U14 [get_ports {leds_0[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_0[6]}]
set_property PACKAGE_PIN V14 [get_ports {leds_0[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_0[7]}]

##USB-RS232 Interface
#set_property PACKAGE_PIN B18 [get_ports usb_uart_rxd]						
	#set_property IOSTANDARD LVCMOS33 [get_ports usb_uart_rxd]
#set_property PACKAGE_PIN A18 [get_ports usb_uart_txd]						
	#set_property IOSTANDARD LVCMOS33 [get_ports usb_uart_txd]
	
## Clock signal
#set_property PACKAGE_PIN W5 [get_ports sys_clock]							
	#set_property IOSTANDARD LVCMOS33 [get_ports sys_clock]
	#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports sys_clock]
	
##Reset
#set_property PACKAGE_PIN U18 [get_ports reset]						
	#set_property IOSTANDARD LVCMOS33 [get_ports reset]