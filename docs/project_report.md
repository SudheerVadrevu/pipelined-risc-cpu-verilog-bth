# Pipelined RISC CPU – Project Report

This project demonstrates a simplified RISC processor with pipelining, developed for ASIC synthesis.

## Architecture Overview
- 5-stage pipeline: IF, ID, EX, MEM, WB
- ALU with basic arithmetic operations
- Control unit supports R-type, load, and store instructions
- Hazard detection for load-use cases

## Simulation
Waveforms observed using GTKWave based on ModelSim `.vcd` output.

## Tools Used
- Verilog
- ModelSim
- GTKWave
- Synopsys DC

## Outcome
The CPU synthesizes with good timing and realistic area for small ASIC prototypes.
