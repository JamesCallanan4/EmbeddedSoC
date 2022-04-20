# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {Common-41} -limit 4294967295
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -id {Synth 8-312}  -suppress 
set_msg_config  -id {IP_Flow 19-3664}  -suppress 
create_project -in_memory -part xc7a100tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/DemoSystem.cache/wt [current_project]
set_property parent.project_path C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/DemoSystem.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
add_files C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/Design/ROMcode4.coe
add_files -quiet C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/DemoSystem.runs/CORTEXM0DS_synth_1/CORTEXM0DS.dcp
set_property used_in_implementation false [get_files C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/DemoSystem.runs/CORTEXM0DS_synth_1/CORTEXM0DS.dcp]
add_files -quiet C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/DemoSystem.runs/blk_mem_4Kword_synth_1/blk_mem_4Kword.dcp
set_property used_in_implementation false [get_files C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/DemoSystem.runs/blk_mem_4Kword_synth_1/blk_mem_4Kword.dcp]
add_files -quiet C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/DemoSystem.runs/blk_mem_8Kword_synth_1/blk_mem_8Kword.dcp
set_property used_in_implementation false [get_files C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/DemoSystem.runs/blk_mem_8Kword_synth_1/blk_mem_8Kword.dcp]
read_verilog -library xil_defaultlib {
  C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/Design/uart_RXonly.v
  C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/Design/ram_loader.v
  C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/Design/AHBrom.v
  C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/Design/AHBram.v
  C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/Design/status_ind.v
  C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/Design/reset_gen.v
  C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/Design/clock_gen.v
  C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/Design/AHBMUX.v
  C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/Design/AHBDCD.v
  C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/Design/AHBliteTop.v
  C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/Design/AHBuart.v
  C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/Design/fifo.v
  C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/Design/uart.v
  C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/Design/AHBgpio.v
  C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/Design/hex2seg.v
  C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/Design/AHBdisplay.v
  C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/Design/AHBspi_master.v
}
read_xdc C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/Constraint/Nexys4_SoC.xdc
set_property used_in_implementation false [get_files C:/Users/lab/Documents/EmbeddedSystems/Wednesday/DES_SoC/DES_SoC/Hardware/Constraint/Nexys4_SoC.xdc]

synth_design -top AHBliteTop -part xc7a100tcsg324-1
write_checkpoint -noxdef AHBliteTop.dcp
catch { report_utilization -file AHBliteTop_utilization_synth.rpt -pb AHBliteTop_utilization_synth.pb }
