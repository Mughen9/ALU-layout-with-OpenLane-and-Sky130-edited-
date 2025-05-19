# 8-Bit ALU Physical Design using OpenROAD & Sky130
# ALU Layout with OpenLane and Sky130

This project demonstrates a complete RTL-to-GDSII physical design flow for an 8-bit Arithmetic Logic Unit (ALU) using the OpenLane toolchain and Sky130 process design kit (PDK).

##  Project Overview

- **Design**: 8-bit ALU with basic operations (`+`, `-`, `AND`, `OR`, etc.)
- **Tools Used**:
  - [OpenLane](https://github.com/The-OpenROAD-Project/OpenLane)
  - [Sky130 PDK](https://github.com/google/skywater-pdk)
  - [KLayout](https://www.klayout.de/)
  - [Magic VLSI](http://opencircuitdesign.com/magic/)
- **Flow**: Synthesis → Floorplan → Placement → Routing → GDS Export

##  Directory Structure

```
├── src/                    # Verilog RTL files (alu.v, alu_tb.v)
├── config.json            # OpenLane design configuration
├── openlane/              # Optional OpenLane-specific settings
├── Images/                # Layout screenshots (GDS, DRC, LEF views)
├── results/ or runs/      # Full flow outputs: GDS, DEF, reports
├── scripts/               # Flow or helper scripts (optional)
├── LICENSE
└── README.md
```

##  Reproduce the Flow

Make sure you have OpenLane + Sky130 PDK installed, then run:

```bash
cd OpenLane
./flow.tcl -design alu
```

You can also export GDS manually with:

```bash
./flow.tcl -design alu -from floorplan -to write_gds
```

##  Layout Screenshots

| Magic View | KLayout GDS | LEF View | DEF Output |
|------------|-------------|----------|------------|
| ![](Images/alu%20mag.png) | ![](Images/alu%20gds.png) | ![](Images/alu%20lef.png) | ![](Images/alu%20k%20layout.png) |

##  Author

- **Name**:  Sai 
- **Email**: arthurkishi9@gmail.com
- **GitHub**: [Mughen9](https://github.com/Mughen9)

---

> Designed with open-source VLSI tools.
This repository contains the full flow from RTL to GDSII of an 8-bit ALU.# ALU-layout-with-OpenLane-and-Sky130-edited-
