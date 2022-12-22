`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:57:31 08/26/2022 
// Design Name: 
// Module Name:    rca_64bit 
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

/*
	Assignment 3, Group 63
	Team Members :-
	
	Pranav Nyati - 20CS30037
	Shreyas Jena - 20CS30049
	
*/

module rca_64bit(in1, in2, cin, sum, cout);

// Inputs

// in1 :- Stores the 1st 64-bit input no. to be added
// in2 :- Stores the 2nd 64-bit input no. to be added
// cin :- Passes the initial carry value to be used for bitwise addition at LSB position (least significant 32 bits)

input [63:0] in1, in2;
input cin;

// Outputs

// sum :- Stores the 64-bit no. containing sum values for each bitwise addition
// cout :- Returns the final carry value after 64-bit addition of in1 and in2

output [63:0] sum;
output cout;

// wire carry_32bit stores the intermediate carry from 32-bit addition of the least significant 32 bits of in1 and in2
wire carry_32bit;

// define the 64-bit RCA in terms of 2 cascading 32 bit RCA (first one for the Least Significant 32 bits => 0:31 bits; and next for remaining 32 bits => 32:63 bits)
    rca_32bit rca_32bit_1(.in1(in1[31:0]), .in2(in2[31:0]), .cin(cin), .sum(sum[31:0]), .cout(carry_32bit));
    rca_32bit rca_32bit_2(.in1(in1[63:32]), .in2(in2[63:32]), .cin(carry_32bit), .sum(sum[63:32]), .cout(cout));
	 
endmodule
