`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:31:30 08/31/2022 
// Design Name: 
// Module Name:    rca_4bit 
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

module rca_4bit(in1, in2, cin, sum, cout);

// Inputs

// in1 :- Stores the 1st 4-bit input no. to be added
// in2 :- Stores the 2nd 4-bit input no. to be added
// cin :- Passes the initial carry value to be used for bitwise addition at LSB position

input [3:0] in1, in2;
input cin;

// Outputs

// sum :- Stores the 4-bit no. containing sum values for each bitwise addition
// cout :- Returns the final carry value for 4-bit addition

output [3:0] sum;
output cout;

// Wire needed for intermediate steps
// carry :- stores the intermediate carry values for 4-bit addition

wire [2:0] carry;

// define the 4-bit ripple carry adder by cascading 4 full adders
full_adder fladd1(.in1(in1[0]), .in2(in2[0]), .cin(cin), .out(sum[0]), .cout(carry[0]));
full_adder fladd2(.in1(in1[1]), .in2(in2[1]), .cin(carry[0]), .out(sum[1]), .cout(carry[1]));
full_adder fladd3(.in1(in1[2]), .in2(in2[2]), .cin(carry[1]), .out(sum[2]), .cout(carry[2]));
full_adder fladd4(.in1(in1[3]), .in2(in2[3]), .cin(carry[2]), .out(sum[3]), .cout(cout));
    
endmodule
