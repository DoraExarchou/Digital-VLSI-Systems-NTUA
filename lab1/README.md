# **Lab 1 Binary Decoders, Registers, and Counters in VHDL**  
The **Lab1** folder contains multiple exercises focusing on the design and simulation of **binary decoders, registers, and counters using VHDL**. The implementations include both **dataflow and behavioral architectures**, and all circuits are tested through simulation.  
### **Exercise A.2: 3-to-8 Binary Decoder**  
This exercise involves designing a **3-to-8 binary decoder**, a combinational circuit that activates exactly one of its 8 outputs based on a 3-bit input. The decoder is implemented using two architectures:  
- **Dataflow** (Boolean expressions)  
- **Behavioral** (`case` statement)  

The circuit is simulated using **Active-HDL**, and synthesis is performed using **Leonardo Spectrum** to verify the hardware implementation.  

### **Exercise B.2: 4-bit Shift Register with Parallel Load**  
A **4-bit shift register** is designed to support shifting in both directions. The shift direction is determined by an additional control input:  
- **Right Shift**: Moves data towards the Least Significant Bit (LSB)  
- **Left Shift**: Moves data towards the Most Significant Bit (MSB)  

The design is implemented in **behavioral VHDL**, tested, and synthesized to analyze its performance in a hardware environment.  

### **Exercise B.3: 3-bit Counter with Up/Down and Modulo Operation**  
This exercise includes designing a **3-bit counter** with various functionalities:  
- **Basic Counter**: Increments on every clock cycle when enabled.  
- **Up/Down Counter**: Uses a control input to determine whether it counts up or down.  
- **Modulo Counter**: Resets when it reaches a user-defined maximum value.  

The implementation is validated through simulation, and synthesis is performed to optimize the circuit.  

### **Development Tools & Environment**  
- **VHDL** for hardware description  
- **Active-HDL** for simulation and verification  
- **Leonardo Spectrum** for hardware synthesis  

### **Further Reading**  
For more details on the implementations and test results, refer to **report lab1-team 19.pdf**.  
