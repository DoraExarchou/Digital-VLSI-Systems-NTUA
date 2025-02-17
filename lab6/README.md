# **Lab 6: Implementation of Debayering Filter with AXI Interface on Zynq SoC FPGA**  

The **Lab6** folder contains exercises focusing on the **implementation of a Debayering filter** on a **Zynq SoC FPGA** using the **AXI4-Lite interface**. The goal is to convert **Bayer pattern images** into **RGB images** by computing the missing color components through **neighbor averaging** in a 3x3 neighborhood.

## **Background**  
A **Color Filter Array (CFA)** is a mosaic of tiny filters placed over camera sensor pixels to capture color information. The **Bayer filter** is one of the most widely used CFAs, containing **50% green, 25% red, and 25% blue pixels** arranged in a specific pattern.

To convert a **Bayer image** into an **RGB image**, the missing color components for each pixel must be interpolated using neighboring pixels. This process is known as **Debayering (Demosaicing)**.

## **Implementation Requirements**  
The Debayering filter will be implemented using **VHDL** and executed on the **ZYBO development board**. The design will use:

- **Serial-to-Parallel Converter** for **3x3 neighborhood extraction**.
- **Finite State Machine (FSM)** to control pixel processing.
- **AXI4-Lite interface** for communication between the FPGA and the ARM processor.
- **Parameterized VHDL design** to support variable image sizes (e.g., N=32, 64, 128).

## **Filter Operation**  
1. The **input image is streamed** into the FPGA pixel-by-pixel in a **raster scan** order.
2. The **Debayering filter calculates missing color components** for each pixel based on its neighborhood (3x3 kernel).
3. The output **RGB values** are sent via the **AXI4-Lite interface** to the processing system (PS).

## **Input and Output Signals**  
- **clk**: System clock.
- **rst_n**: Asynchronous reset (active low).
- **pixel[7:0]**: 8-bit Bayer pixel input.
- **valid_in**: Indicates valid pixel data input.
- **new_image**: Signals the start of a new image.
- **R[7:0], G[7:0], B[7:0]**: 8-bit output color channels.
- **valid_out**: Indicates valid RGB output.
- **image_finished**: Signals that the entire image processing is complete.

## **Implementation Steps**  
1. **Serial-to-Parallel Converter:** 
   - Uses FIFO buffers and registers to store pixel values in a 3x3 neighborhood.
   - Converts the **sequential input stream** into a **parallel 3x3 pixel block**.

2. **Pixel Type Detection:** 
   - Uses counters to identify **Bayer pattern type** (GBRG) and determine pixel color.

3. **Debayering Algorithm:** 
   - If **Green**: Compute Red/Blue as the average of two adjacent pixels.
   - If **Red/Blue**: Compute missing colors as the average of four neighboring pixels.

4. **Finite State Machine (FSM):** 
   - Controls the overall operation and synchronization of the filter.

5. **AXI4-Lite Integration:** 
   - Connects the Debayering filter to the **Zynq PS via AXI4-Lite**.

## **Validation & Testing**  
1. **Software-Based Validation:** 
   - Implement a **MATLAB/C/Python** script to compute the expected RGB values.
   - Compare FPGA output with the software-generated reference values.

2. **VHDL Testbench:** 
   - Uses the **TextIO library** to read test images and verify outputs.

## **Development Tools & Environment**  
- **VHDL** for hardware description.  
- **Vivado** for synthesis, simulation, and implementation.  
- **Vitis/Xilinx SDK** for software development.  

## **Further Reading**  
For additional details on implementation and experimental results, refer to **report lab6-team19.pdf**.  
