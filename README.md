# VLSI ASIC Practice

This repository contains HDL design and synthesis practice projects for learning ASIC and FPGA design flows using open-source tools.

---

## Day 1: AND Gate RTL and Synthesis

- **Verilog Module:** Simple AND gate with two inputs and one output (`and_gate.v`).
- **Synthesis Script:** Yosys synthesis commands to convert RTL to gate-level netlist (`synth.ys`).
- **Generated Netlist:** Gate-level netlist output in JSON format (`and_gate.json`).

### Purpose

This project demonstrates the basic RTL to gate-level synthesis flow, a foundational step in ASIC/FPGA digital design. It helps understand how high-level hardware description is translated into physical logic gates.

---

## How to Run

1. Install Yosys synthesis tool.

2. Run synthesis script:

   ```bash
   yosys synth.ys
