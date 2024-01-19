##Temperature Sensor
set_property -dict { PACKAGE_PIN C14   IOSTANDARD LVCMOS33 } [get_ports { scl }]; #IO_L1N_T0_AD0N_15 Sch=tmp_scl
set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports { sda }]; #IO_L12N_T1_MRCC_15 Sch=tmp_sda

##Pmod Header JC

# Logic analyser signals
# These signals must always be connected in order to use the logic analyser to check the I2C bus 
set_property -dict {PACKAGE_PIN K1 IOSTANDARD LVCMOS33} [get_ports iic_scl_out] ; # JC[1]
set_property -dict {PACKAGE_PIN F6 IOSTANDARD LVCMOS33} [get_ports iic_sda_out] ; # JC[2]
