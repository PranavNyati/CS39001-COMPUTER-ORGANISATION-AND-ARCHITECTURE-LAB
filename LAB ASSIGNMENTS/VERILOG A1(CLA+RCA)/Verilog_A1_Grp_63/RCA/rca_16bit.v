`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:34:29 08/26/2022 
// Design Name: 
// Module Name:    rca_16bit 
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

module rca_16bit(in1, in2, cin, sum, cout);

// Inputs

// in1 :- Stores the 1st 16-bit input no. to be added
// in2 :- Stores the 2nd 16-bit input no. to be added
// cin :- Passes the initial carry value to be used for bitwise addition at LSB position

input [15:0] in1, in2;
input cin;

// Outputs

// sum :- Stores the 16-bit no. containing sum values for each bitwise addition
// cout :- Returns the final carry value after 16-bit addition of in1 and in2

output [15:0] sum;
output cout;

// wire carry_8bit stores the intermediate carry from 8-bit addition of the least significant 8 bits of in1 and in2
wire carry_8bit;

// define the 16-bit RCA in terms of 2 cascading 8 bit RCA (first one for the Least Significant 8 bits => 0:7 bits; and next for remaining eight bits => 8:15 bits)
    rca_8bit rca_8bit_1(.in1(in1[7:0]), .in2(in2[7:0]), .cin(cin), .sum(sum[7:0]), .cout(carry_8bit));
    rca_8bit rca_8bit_2(.in1(in1[15:8]), .in2(in2[15:8]), .cin(carry_8bit), .sum(sum[15:8]), .cout(cout));

endmodule
