`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:29:36 10/26/2022 
// Design Name: 
// Module Name:    adder_32_bit 
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
module adder_32_bit(in1_32bit, in2_32bit, cin, sum_32bit, cout);
	
	input [31:0] in1_32bit, in2_32bit;
	input cin;
	output [31:0] sum_32bit;
	output cout;
	
	wire carry_16bit;
	
	cla_16bit_LCU cla_16bit_1(.in1_16bit(in1_32bit[15:0]), .in2_16bit(in2_32bit[15:0]), .cin(cin), .sum_16bit(sum_32bit[15:0]), .cout(carry_16bit), .P_16bit(), .G_16bit());
	
	cla_16bit_LCU cla_16bit_2(.in1_16bit(in1_32bit[31:16]), .in2_16bit(in2_32bit[31:16]), .cin(carry_16bit), .sum_16bit(sum_32bit[31:16]), .cout(cout), .P_16bit(), .G_16bit());
	

endmodule
