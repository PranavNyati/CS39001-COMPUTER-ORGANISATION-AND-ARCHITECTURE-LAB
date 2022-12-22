`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:32:12 09/14/2022 
// Design Name: 
// Module Name:    add_by_one 
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
module add_by_one(input [3:0] in, output [3:0] out);
 
	assign out[0] = ~in[0];
	assign out[1] = in[1] ^ in[0];
	assign out[2] = in[2] ^ (in[1] & in[0]);
	assign out[3] = in[3] ^ (in[2] & in[1] & in[0]);
endmodule
