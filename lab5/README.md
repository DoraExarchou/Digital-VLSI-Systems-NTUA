# **Lab 5: Implementation of FIR Filter with AXI Interface on Zynq SoC FPGA**  

The **Lab5** folder contains exercises focusing on the **implementation of an FIR filter with an AXI4-Lite interface on a Zynq SoC FPGA**. The objective is to integrate an **8-tap FIR filter** into the **ZYBO development board**, where data is transferred between the **ARM processor (PS) and the FPGA (PL)** using the **AXI4-Lite protocol**.  

### **System Implementation Steps**  
1. **Integrate the ZYNQ Processing System (PS).**  
2. **Add an AXI4-Lite interface** to the FPGA (PL) to facilitate **ARM-FPGA communication**.  
3. **Connect the PS and PL components** within the system.  
4. **Synthesize and implement the system, generating the bitstream file.**  
5. **Export the hardware description** and develop the **software application**.  
6. **Program the ZYNQ SoC FPGA and execute the application.**  

### **FIR Filter Description**  
The **8-tap FIR filter (M=7)** follows the standard FIR equation:

\[ y[n] = \sum_{k=0}^{M} h[k] \cdot x[n - k] \]

where:  
- **M**: Filter order (M=7 for 8-tap FIR).  
- **y[n]**: Filter output at discrete time **n**.  
- **h[k]**: k-th filter coefficient.  
- **x[n]**: Input signal at discrete time **n**.  

### **Filter Architecture Modules**  
1. **MAC (Multiplier Accumulator Unit)**  
   - Performs the multiply-accumulate operation: `a <- a + b * c`.  
2. **ROM (Read-Only Memory)**  
   - Stores **filter coefficients h[k]**.  
3. **RAM (Random-Access Memory)**  
   - Stores **current and previous 7 input values** for computation.  
4. **Control Unit**  
   - Manages **timing and data flow** between memory and computation units.  

### **Integration with AXI4-Lite Interface**  
- The FIR filter connects to **AXI4-Lite** as a **Slave Interface**, mapping input and output signals as follows:  

  **Input Data Mapping (A - 32 bits)**  
  - `A[7:0]` = x (input signal)  
  - `A[8]` = valid_in  
  - `A[9]` = rst (reset)  
  - `A[31:10]` = not used  

  **Output Data Mapping (B - 32 bits)**  
  - `B[N-1:0]` = y (filter output)  
  - `B[N]` = valid_out  
  - `B[31:N+1]` = not used  

### **Software Application Development**  
- A software application is developed to:  
  1. **Send input data signals** from the ARM processor to the FPGA.  
  2. **Receive the output results** from the FIR filter.  
  3. **Validate the received data** before processing the next input.  
  4. **Print valid output values** to the serial terminal.  

### **Implementation Requirements**  
1. **Implement the FIR filter with AXI4-Lite and deploy it on the ZYBO board.**  
2. **Ensure correct operation of communication between PS and PL.**  
3. **Verify system functionality through software-hardware integration.**  

### **Development Tools & Environment**  
- **VHDL** for hardware description  
- **Vivado** for FPGA synthesis and implementation  
- **Vitis/Xilinx SDK** for software development  

### **Further Reading**  
For additional details on implementations and experimental results, refer to **report lab5-team19.pdf**.  
