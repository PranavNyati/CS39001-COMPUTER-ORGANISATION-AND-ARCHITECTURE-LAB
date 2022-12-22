`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:04:45 10/21/2022 
// Design Name: 
// Module Name:    register_file 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

// implementation of the register file with 32 registers of 32 bits
module register_file(
	input [4:0] readReg_1,
	input [4:0] readReg_2,
	input [4:0] writeReg,
	input [31:0] writeData,
	input control_RegWrite,
	input clk,
	input rst,
	output reg [31:0] readData1,
	output reg [31:0] readData2
    );
	 
	// declaring the array of registers
	
	reg signed [31:0] registers[31:0];
	integer i;
	
	always @(posedge clk or posedge rst) begin
	
		// if the system is reset, reset all registers to the value 0
		if (rst) begin
            registers[0] <= 0;
            registers[1] <= 0;
            registers[2] <= 0;
            registers[3] <= 0;
            registers[4] <= 0;
            registers[5] <= 0;
            registers[6] <= 0;
            registers[7] <= 0;
            registers[8] <= 0;
            registers[9] <= 0;
            registers[10] <= 0;
            registers[11] <= 0;
            registers[12] <= 0;
            registers[13] <= 0;
            registers[14] <= 0;
            registers[15] <= 0;
            registers[16] <= 0;
            registers[17] <= 0;
            registers[18] <= 0;
            registers[19] <= 0;
            registers[20] <= 0;
            registers[21] <= 0;
            registers[22] <= 0;
            registers[23] <= 0;
            registers[24] <= 0;
            registers[25] <= 0;
            registers[26] <= 0;
            registers[27] <= 0;
            registers[28] <= 0;
            registers[29] <= 0;
            registers[30] <= 0;
            registers[31] <= 0;
		end
		// if the Regwrite control line is 1, then write data to the register specified by writeReg
		else if (control_RegWrite) begin
			registers[writeReg] <= writeData;
		end
	end
	
	// this always block changes the readData1 and readData2 datapaths when the register code from which data has to be read changes
	always @(*) begin
		 readData1 = registers[readReg_1];
       readData2 = registers[readReg_2];
	end
	
endmodule
