
# openlane_config.tcl - Custom configuration overrides for your design

# Set the design name
set ::env(DESIGN_NAME) alu

# Set the top module for synthesis
set ::env(SYNTH_TOP) alu

# Verilog source
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/alu.v]

# Clock configuration (note: ALU has no clock, but required to proceed in OpenLANE)
set ::env(CLOCK_PORT) clk
set ::env(CLOCK_PERIOD) 10.0

# Floorplanning
set ::env(FP_CORE_UTIL) 50
set ::env(FP_CORE_MARGIN) 2.0
set ::env(FP_ASPECT_RATIO) 1.0

# Placement
set ::env(PL_TARGET_DENSITY) 0.55

# Routing
set ::env(ROUTING_STRATEGY) 0

# Disable unnecessary checks for ALU
set ::env(RUN_CVC) 0
