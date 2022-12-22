`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:07:06 11/04/2022
// Design Name:   register_file
// Module Name:   /home/nyati_pranav26/Pranav/SEM 5/COA_LAB/A5/KGP_miniRISC/register_file_tb.v
// Project Name:  KGP_miniRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register_file
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module register_file_tb;

	// Inputs
	reg [4:0] readReg_1;
	reg [4:0] readReg_2;
	reg [4:0] writeReg;
	reg [31:0] writeData;
	reg control_RegWrite;
	reg clk;
	reg rst;

	// Outputs
	wire [31:0] readData1;
	wire [31:0] readData2;

	// Instantiate the Unit Under Test (UUT)
	register_file register_file_test (
		.readReg_1(readReg_1), 
		.readReg_2(readReg_2), 
		.writeReg(writeReg), 
		.writeData(writeData), 
		.control_RegWrite(control_RegWrite), 
		.clk(clk), 
		.rst(rst), 
		.readData1(readData1), 
		.readData2(readData2)
	);

	initial begin
	
        $monitor("time = %4d, readReg_1 = %4d, readReg_2 = %4d, writeReg = %4d, writeData = %8d, RegWrite = %b, readData1 = %8d, readData2 = %8d", $time, readReg_1, readReg_2, writeReg, writeData, control_RegWrite, readData1, readData2);
        
        // Stimulus to verify the working of the register file
		  readReg_1 = 5'b00000; readReg_2 = 5'b00000; writeReg = 5'b00000; writeData = 32'b0; control_RegWrite = 5'b0;
		  
		  clk = 1'b0;
		  #2 rst = 1'b1;
		  #10 rst = 1'b0;
		  #10 readReg_1 = 5'b00101; readReg_2 = 5'b01000; writeReg = 5'b01000; control_RegWrite = 1'b0; writeData = 32'd455;
		  #10 control_RegWrite = 1'b1; writeReg = 5'b01000; writeData = 32'd1298;
		  #10 control_RegWrite = 1'b1; writeReg = 5'b00101; writeData = 32'd5111;
		  #10 readReg_1 = 5'b01000; readReg_2 = 5'b10001; control_RegWrite = 1'b1; writeReg = 5'b10001; writeData = 32'd8649130; 
		  #10 readReg_1 = 5'b01000; readReg_2 = 5'b10001; control_RegWrite = 1'b1; writeReg = 5'b10001; writeData = 32'd45611;
		  #5  rst = 1'b1;
		  #10 control_RegWrite = 1'b1; writeReg = 5'b01000; writeData = 32'd1298;
		  #15 rst = 1'b0;
		  #2 control_RegWrite = 1'b1; writeReg = 5'b10001; writeData = 32'd9876;
		  // #10 control_RegWrite = 1'b1; writeReg = 5'b10001; writeData = 32'd9876
 
        #10 $finish;

	end
	
	always begin
        #5 clk = ~clk;
   end
      
endmodule

