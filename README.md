# FPGA HDMI Example for SEA FPGA board

As a school project I deceided to use the Spartan Edge Accelerator Board to learn about FPGAs. I liked the hardwer because it gives so many opportunities for beginners, 
and the idea behind FPGAs to configure hardware on field was exciting.

I started to search examples how to use the FPGA's mini HDMI port and generate video data. 

This is how I found the [fpga4fun.com](https://www.fpga4fun.com/) website and [Dominic's](https://github.com/dominic-meads/HDMI_FPGA) code. 

I'm not a lawyer, I never had any licensed work. I'm even a newbie on Github but I wanted to share my xdc file with everyone who use SEA board. That's why i have forked Dominc's repo. All rights reserved to him.

## What is SEA FPGA Board?

SEA is the Spartan Edge Accelerator Board made by [SeeedStudio](https://www.seeedstudio.com/)

They have a nice [wiki page](https://wiki.seeedstudio.com/Spartan-Edge-Accelerator-Board/) about the hardware with some minor deficiency if you want to learn more about it. This repo is for those who has SEA Board and want search for a Verilog example to be able to use the HDMI interface.

I didn't change anything in the original code only added the constraints to be able to generate bitstream in Vivado.

Last but not least here is a table about which FPGA pins are assigned to the mini HDMI connector.

| SEA board FPGA pins | Mini HDMI pins | Name in design source |
|:-------------------:|:--------------:|:---------------------:|
| D1		      | HDMI_TD2+      | TMDSp[2]	       |
| C1		      | HDMI_TD2-      | TMDSn[2]	       |
| E2 		      | HDMI_TD1+      | TMDSp[1] 	       |
| D2 		      | HDMI_TD1-      | TMDSn[1]	       |
| G1                  | HDMI_TD0+      | TMDSp[0]	       |
| F1		      | HDMI_TD0-      | TMDSn[0]	       |
| G4		      | HDMI_TCK+      | TMDSp_clock	       |
| F4                  | HDMI_TCK-      | TMDSn_clock	       |
| H4	              | CLK_100MHZ     | clk		       |

## How to use?
Create a Vivado project. Add the HDMI_test.v and TMDS_encoder.v files to your Design sources. 
Same with the constraints.xdc file. 

After adding the required files, simply run synthesis and implementation. After finis start generate bitstream. 
Upload configuration to FPGA by following the guide at the wiki page.
