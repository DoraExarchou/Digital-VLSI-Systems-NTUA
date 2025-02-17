# **Lab 2: Design of Arithmetic Units with Hierarchical Design**  

The **Lab2** folder contains exercises focusing on the **structural design methodology** for arithmetic units. The objective is to familiarize students with **hierarchical design** by implementing complex computational circuits using previously designed hardware modules.  

### **Exercise 1: Half Adder (HA)**  
- Implement a **Half Adder (HA)** using **Dataflow description**.  

### **Exercise 2: Full Adder (FA)**  
- Implement a **Full Adder (FA)** using **Structural description**, utilizing the Half Adder module from Exercise 1.  

### **Exercise 3: 4-bit Parallel Adder (4-bit PA)**  
- Implement a **4-bit Parallel Adder (4-bit PA)** using **Structural description**, based on the Full Adder module from Exercise 2.  

### **Exercise 4: BCD Full Adder (BCD FA)**  
- Implement a **BCD Full Adder (BCD FA)** using **Structural description**.  
- Use the **4-bit Parallel Adder (4-bit PA)** module from Exercise 3, previous modules, and any additional logic as required.  

### **Exercise 5: 4-BCD Parallel Adder (4-BCD PA)**  
- Implement a **4-BCD Parallel Adder** using **Structural description**, utilizing the BCD Full Adder from Exercise 4.  

### **Requirements for Each Exercise**  
For each task, the following are required:  
1. **RTL schematic** of the circuit architecture.  
2. **Testbench** to verify the correctness of the circuit.  
3. **Critical path analysis**: Identify the **critical path** and determine its **timing delay**.  
   - Refer to the **Vivado usage guide** available on the course page (xilinx_vivado_tutorial.pdf) for relevant details.  

### **Development Tools & Environment**  
- **VHDL** for hardware description.  
- **Vivado** for synthesis, simulation, and analysis.  


### **Further Reading**  
For additional details on implementations and experimental results, refer to **report lab2-team19.pdf**.  
