### 8-Bit ALU with Flags  

This project implements an **8-bit Arithmetic Logic Unit (ALU)** capable of performing a wide variety of operations on two 8-bit inputs `A` and `B`. The ALU operations are selected using a 5-bit `choice` input and include:  

- **Arithmetic operations:** Addition, Subtraction, Multiplication, Increment, Decrement, Absolute value.  
- **Logical operations:** AND, OR, XOR, NOT.  
- **Shift and Rotate operations:** Logical shift left/right, Circular rotate left/right.  
- **Comparison operations:** Signed and unsigned less than, Equality, Inequality.  
- **Pass-through operations:** Output A or B directly.  

#### Modules Included

- **`alu_core.v`** : The core ALU module that performs the selected operation and outputs the 8-bit `result` along with `carry_out` and `borrow_out` signals.  
- **`flag.v`** : Module to generate status flags based on the ALU result:  
  - **Zero (Z):** Set when the result is 0.  
  - **Negative (N):** Set when the result is negative (signed).  
  - **Overflow (V):** Set when arithmetic overflow occurs for ADD, SUB, MUL, INC, DEC.  
- **`alutop.v`** : Top-level ALU module that connects `alu_core` and `flag` modules and provides a single interface for inputs, outputs, and flags.  
- **`alutb.v`** : Testbench module that simulates various test cases for all ALU operations, printing results and flag status to verify correct functionality.  

#### Usage

1. Compile all Verilog files in a simulator (ModelSim, Vivado, or EDA Playground).  
2. Run the `alutb` testbench.  
3. Observe the simulation outputs which display the ALU `result` and the corresponding status flags (`carry_out`, `borrow_out`, `zero`, `negative`, `overflow`) for each operation.  

This ALU design is suitable for educational purposes, demonstrating a wide range of arithmetic, logical, and comparison operations with real-time flag generation.  
