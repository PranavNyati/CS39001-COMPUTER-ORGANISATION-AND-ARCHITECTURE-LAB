`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:01:30 11/06/2022 
// Design Name: 
// Module Name:    pc_increment 
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

module pc_increment(
    input[31:0] instr_addr,
	 output [31:0] nextPC);
	 
assign nextPC = instr_addr + 32'b00000000000000000000000000000001;
endmodule
