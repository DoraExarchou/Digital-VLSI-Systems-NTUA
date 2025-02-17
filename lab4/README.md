# **Lab 4: Implementation of FIR Filter**  

The **Lab4** folder contains exercises focusing on the **design and implementation of an 8-tap FIR filter**. The objective is to implement a **Finite Impulse Response (FIR) filter** using VHDL while ensuring proper synchronization between its components.  

### **Filter Description**  
In general, the input-output relationship of an FIR filter is given by:  

- **M**: Filter order  
- **y[n]**: Filter output at discrete time n  
- **h[k]**: k-th filter coefficient, with k = 0, 1, 2, ..., M  
- **x[n]**: Input signal value at discrete time n  

For this exercise, an **8-tap FIR filter** will be implemented with **8-bit input data width (N=8)**.  

### **Filter Architecture Modules**  
1. **MAC (Multiplier Accumulator Unit)**  
   - Computes the output **y** using the formula: `a <- a + b * c`  
   - Inputs: **Filter coefficients (ROM output), signal values (RAM output), and initialization signal (mac_init)**  
   - Implemented in **Behavioral VHDL** using the operators `+` and `*` from `std_logic_unsigned`  

2. **ROM (Read-Only Memory)**  
   - Stores the **fixed filter coefficients h[k]**.  
   - Receives an **address input (rom_address)** and outputs the corresponding coefficient (**rom_out**).  
   - A **pre-initialized** ROM module is provided and must be integrated properly.  

3. **RAM (Random-Access Memory)**  
   - Stores the **current and past 7 input signal values** needed for output computation.  
   - Receives an **address input (ram_address)** and outputs the stored value (**ram_out**).  
   - Implements a **write-first memory** approach, where newly written values are immediately available at the output.  
   - The memory values shift by **one position** on each new input, with the oldest value being discarded.  

4. **Control Unit**  
   - Controls the overall **operation of the filter**.  
   - Generates the **initialization signal (mac_init)** for the MAC unit.  
   - **Addresses ROM and RAM** during read operations using `rom_address` and `ram_address`.  
   - Implements an **up-counter** for memory addressing, using `std_logic_unsigned` operations.  

### **Filter Operation**  
- The filter receives a **new unsigned input value (x)** every **8 clock cycles**.  
- Each **output value (y)** is generated **8 clock cycles** after the previous one.  
- The filter uses a **valid_in signal** to indicate valid input values.  
- A **valid_out signal** is activated for each valid output value.  
- The system includes an **asynchronous reset**, initializing the **Control Unit, RAM, and valid_out signal** to zero.  

### **Implementation Requirements**  
1. Implement the **8-tap FIR filter** following the given specifications.  
2. Create a **testbench** to validate the correct operation of the filter for **N=8**.  
   - Ensure all filter functions are tested.  
3. Document the **resource utilization** and **FPGA operating frequency** by analyzing the **critical path**.  

### **Development Tools & Environment**  
- **VHDL** for hardware description  
- **Vivado** for synthesis, simulation, and analysis  

### **Further Reading**  
For additional details on implementations and experimental results, refer to **report lab4-team19.pdf**.  
