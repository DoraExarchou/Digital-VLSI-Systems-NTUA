# **Lab 3: Design of Hardware Units using Pipelining Technique**  

The **Lab3** folder contains exercises focusing on the **pipelining technique** for designing modern computational circuits. The objective is to demonstrate how different subsystems of a circuit can process different subsets of data in parallel using pipelining.  

### **Exercise 1: Full Adder (FA) - Behavioral Description**  
- Implement a **Full Adder (FA)** using **Behavioral VHDL description**.  
- **Tasks:**  
  a) Present the **RTL schematic** of the Full Adder.  
  b) Create a **testbench** to verify the correct functionality of the circuit.  
  c) Identify and report the **critical path** and its **timing delay**.  

### **Exercise 2: 4-bit Carry Propagate Adder using Pipelining**  
- Implement a **4-bit Carry Propagate Adder** using **Pipelining technique**.  
- The circuit should be designed to receive a new pair of inputs every clock cycle and produce a correct result with an initial delay **Tlatency**.  
- **Tasks:**  
  a) Present the **RTL schematic** of the Parallel Adder. Explain where additional registers were added and why.  
  b) Create a **testbench** to verify the correct functionality of the circuit.  
  c) Identify and report the **critical path** and its **timing delay**.  
  d) Compare the **timing delays and resource consumption** with the Parallel Adder from **Lab 2** and explain the observed differences.  

### **Exercise 3: 4-bit Carry Propagate Multiplication using Systolic Pipeline**  
- Implement a **4-bit Carry Propagate Multiplier** using a **systolic pipeline architecture** with **Full Adders**.  
- The circuit should receive new input pairs every clock cycle and produce a correct output after an initial delay **Tlatency**.  
- **Tasks:**  
  a) Present the **RTL schematic** of the Multiplier.  
  b) Create a **testbench** to verify the correct functionality of the circuit.  
  c) Identify and report the **critical path** and its **timing delay**.  

### **Development Tools & Environment**  
- **VHDL** for hardware description.  
- **Vivado** for synthesis, simulation, and analysis.  



### **Further Reading**  
For additional details on implementations and experimental results, refer to **report lab3-team19.pdf**.  
