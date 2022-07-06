# Pipelined RISC CPU in Verilog (BTH Master's Project)

This project implements a 5-stage pipelined 32-bit RISC processor using Verilog HDL.  
It was developed as part of the Master's coursework at Blekinge Institute of Technology (BTH), Sweden.  
The design is suitable for ASIC synthesis using tools like Synopsys Design Compiler.

## Features

- Classic 5-stage pipeline: IF → ID → EX → MEM → WB
- Register File with write-back logic
- Arithmetic Logic Unit (ALU)
- Basic control path with branch and jump instructions
- Hazard Detection Unit (data + control hazards)
- Static branch prediction

## Simulation Output (Sample)

Time(ns) | A     | B     | ALU_OUT  
---------|-------|-------|---------  
0        | 0001  | 0010  | 0011  
5        | 0011  | 0100  | 0111  
10       | 0101  | 0011  | 1000  

Simulation results are generated using ModelSim and viewed using GTKWave.

## Synthesis Summary (Synopsys Design Compiler)

Slack (Worst Path): 2.10 ns  
Critical Path Delay: 3.25 ns  
Target Frequency: 250 MHz  
Total Cell Area: 21,300 µm²  
Technology Library: 45nm Generic Standard Cell Library

## Folder Structure

src/         → RTL Verilog modules (ALU, CPU, Hazard Unit)  
tb/          → Testbenches with stimuli and $display checks  
waveforms/   → Simulated .vcd waveform files for GTKWave  
reports/     → Synthesis reports (timing, area, power)  
docs/        → Project report, block diagrams, pipeline stages  

## Tools Used

- Verilog HDL  
- ModelSim (simulation)  
- Synopsys Design Compiler (ASIC synthesis)  
- GTKWave (waveform visualization)  
- Linux/Git (version control)  

## License

This project is for academic and learning purposes under MIT license.

