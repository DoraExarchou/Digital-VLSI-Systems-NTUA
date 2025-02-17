# **README - Lab 1**  
## **Binary Decoders, Registers, and Counters in VHDL**  

The **Lab1** folder contains multiple exercises focusing on the design and simulation of **binary decoders, registers, and counters using VHDL**. The implementations include both **dataflow and behavioral architectures**, and all circuits are tested through simulation.  

### **Exercise 1: 3-to-8 Binary Decoder**  
In this exercise, we design a **3-to-8 binary decoder**, a combinational circuit that activates exactly one of its 8 outputs based on a 3-bit input. The decoder is implemented in two architectures:  
- **Dataflow** (using Boolean expressions)  
- **Behavioral** (using a `case` statement)  

The circuit is simulated in **Active-HDL**, and the synthesized design is verified using **Leonardo Spectrum**.  

### **Exercise 2: T Flip-Flop & 4-bit Register**  
- **T Flip-Flop**: Based on a given **D Flip-Flop**, we implement a **T Flip-Flop** with asynchronous **preset and clear** inputs. The output toggles on every clock cycle when `T = 1`.  
- **4-bit Register with Parallel Load**: A **4-bit register** is implemented using behavioral **VHDL**, allowing data to be loaded in parallel when a control signal is active.  

### **Exercise 3: 4-bit Shift Register with Left/Right Shift**  
A **4-bit shift register** is designed to allow shifting in both directions. The shift direction is controlled by an additional input:  
- **Right Shift**: Moves data toward the Least Significant Bit (LSB)  
- **Left Shift**: Moves data toward the Most Significant Bit (MSB)  

The implementation is tested and synthesized, ensuring correct functionality in **Active-HDL**.  

### **Exercise 4: 3-bit Counter (Up, Down, and Modulo)**  
- **Basic 3-bit Counter**: A **3-bit counter** that increments on every clock pulse when enabled.  
- **Up/Down Counter**: A **direction-controlled counter**, counting **up or down** based on an external input.  
- **Modulo Counter**: A counter with a user-defined maximum value (`modulo`), resetting when the count reaches the specified limit.  

Simulations are performed to validate the behavior of each counter, and the synthesized results are compared for optimization.  

### **Tools & Development Environment**  
- **VHDL** for circuit design  
- **Active-HDL** for simulation  
- **Leonardo Spectrum** for synthesis  



### **Further Reading**  
For more details on the implementations and test results, refer to **report lab1-team 19.pdf**.  
