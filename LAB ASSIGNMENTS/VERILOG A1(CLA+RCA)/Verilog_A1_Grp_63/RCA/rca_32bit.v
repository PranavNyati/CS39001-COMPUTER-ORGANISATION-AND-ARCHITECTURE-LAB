`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:22:01 08/26/2022 
// Design Name: 
// Module Name:    rca_32bit 
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
//////////////////////////////////////////////////////////////////////////////////module rca_32bit(in1, in2, cin, sum, cout);

/*
	Assignment 3, Group 63
	Team Members :-
	
	Pranav Nyati - 20CS30037
	Shreyas Jena - 20CS30049
	
*/

module rca_32bit(in1, in2, cin, sum, cout);

// Inputs

// in1 :- Stores the 1st 32-bit input no. to be added
// in2 :- Stores the 2nd 32-bit input no. to be added
// cin :- Passes the initial carry value to be used for bitwise addition at LSB position (least significant 16 bits)

input [31:0] in1, in2;
input cin;

// Outputs

// sum :- Stores the 32-bit no. containing sum values for each bitwise addition
// cout :- Returns the final carry value after 32-bit addition of in1 and in2

output [31:0] sum;
output cout;

// wire carry_16bit stores the intermediate carry from 16-bit addition of the least significant 16 bits of in1 and in2
wire carry_16bit;


// define the 32-bit RCA in terms of 2 cascading 16 bit RCA (first one for the Least Significant 16 bits => 0:15 bits; and next for remaining 16 bits => 16:31 bits)
    rca_16bit rca_16bit_1(.in1(in1[15:0]), .in2(in2[15:0]), .cin(cin), .sum(sum[15:0]), .cout(carry_16bit));
    rca_16bit rca_16bit_2(.in1(in1[31:16]), .in2(in2[31:16]), .cin(carry_16bit), .sum(sum[31:16]), .cout(cout));

endmodule