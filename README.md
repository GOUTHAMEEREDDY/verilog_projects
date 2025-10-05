# Verilog Basics

This repository contains simple Verilog modules with their corresponding testbenches for learning and simulation.

## Contents

### 8 bit ALU with 20 operations
- **alu_core.v** : Implements an 8-bit ALU performing arithmetic, logical, shift, and comparison operations based on a 5-bit choice input.  
- **flag.v** : Generates zero, negative, and overflow flags for ALU operations.  
- **alutop.v** : Top-level ALU module connecting `alu_core` and `flag` modules.  
- **alutb.v** : Testbench to simulate and verify all ALU operations and flags.
  
### Multiplexer
- **mux4x1.v**: 4-to-1 multiplexer
- **mux4x1_tb.v**: Testbench for mux

### Decoders
- **decoder3x8.v**: 3-to-8 decoder with enable
- **decoder3x8_tb.v**: Testbench for decoder

### Half Adder  
- **Halfadder.v** :It can add 2 bits and produces carry and sum
- **Halfadder_tb.v**: Testbench for Fulladder
  
### Full Adder
- **Fulladder.v** :It can add 3 bits and produces carry and sum
- **Fulladder_tb.v**: Testbench for Fulladder

### Carry Look-Ahead Adder  
- **CLA.v** : It performs fast binary addition using carry look-ahead logic 
- **CLA testbench.v** : Testbench for Carry Look-Ahead Adder  

### 4 bit comparator
- **4 bit comparator.v** :It can compare two 4 bit numbers 
- **4 bit comparator testbench.v**: Testbench for 4 bit comparator

## How to Simulate

You can simulate using:
- **ModelSim**
