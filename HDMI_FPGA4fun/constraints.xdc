set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

# TD0-, TD0+
set_property IOSTANDARD TMDS_33 [get_ports {TMDSp[0]}]
set_property IOSTANDARD TMDS_33 [get_ports {TMDSn[0]}]
set_property PACKAGE_PIN G1 [get_ports {TMDSp[0]}]
set_property PACKAGE_PIN F1 [get_ports {TMDSn[0]}]

# TD1-, TD1+
set_property IOSTANDARD TMDS_33 [get_ports {TMDSp[1]}]
set_property IOSTANDARD TMDS_33 [get_ports {TMDSn[1]}]
set_property PACKAGE_PIN E2 [get_ports {TMDSp[1]}]
set_property PACKAGE_PIN D2 [get_ports {TMDSn[1]}]

# TD2-, TD2+
set_property IOSTANDARD TMDS_33 [get_ports {TMDSp[2]}]
set_property IOSTANDARD TMDS_33 [get_ports {TMDSn[2]}]
set_property PACKAGE_PIN D1 [get_ports {TMDSp[2]}]
set_property PACKAGE_PIN C1 [get_ports {TMDSn[2]}]

# TCK-, TCK+
set_property IOSTANDARD TMDS_33 [get_ports TMDSn_clock]
set_property IOSTANDARD TMDS_33 [get_ports TMDSp_clock]
set_property PACKAGE_PIN G4 [get_ports TMDSp_clock]
set_property PACKAGE_PIN F4 [get_ports TMDSn_clock]

# CEC, SDA, SCL, DPD_DET
#set_property IOSTANDARD LVCMOS33 [get_ports HDMI_CEC]
#set_property IOSTANDARD LVCMOS33 [get_ports HDMI_SDA]
#set_property IOSTANDARD LVCMOS33 [get_ports HDMI_SCL]
#set_property IOSTANDARD LVCMOS33 [get_ports HDMI_HPD]





create_clock -period 10.000 -name CLK_100MHZ -waveform {0.000 5.000} -add [get_ports clk]

#create_generated_clock -name CLK_25MHZ #                      -source CLK_100MHZ #                     -devide_by 4 #                      clk


set_property PACKAGE_PIN H4 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
