`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:24:05 08/25/2022 
// Design Name: 
// Module Name:    rca_8bit 
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

module rca_8bit(in1, in2, cin, sum, cout);

// Inputs

// in1 :- Stores the 1st 8-bit input no. to be added
// in2 :- Stores the 2nd 8-bit input no. to be added
// cin :- Passes the initial carry value to be used for bitwise addition at LSB position

input [7:0] in1, in2;
input cin;

// Outputs

// sum :- Stores the 8-bit no. containing sum values for each bitwise addition
// cout :- Returns the final carry value for 8-bit addition

output [7:0] sum;
output cout;

// Wire needed for intermediate steps
// carry :- stores the intermediate carry values for 8-bit addition

wire [6:0] carry;

// define the 8-bit ripple carry adder by cascading 8 full adders
full_adder fladd1(.in1(in1[0]), .in2(in2[0]), .cin(cin), .out(sum[0]), .cout(carry[0]));
full_adder fladd2(.in1(in1[1]), .in2(in2[1]), .cin(carry[0]), .out(sum[1]), .cout(carry[1]));
full_adder fladd3(.in1(in1[2]), .in2(in2[2]), .cin(carry[1]), .out(sum[2]), .cout(carry[2]));
full_adder fladd4(.in1(in1[3]), .in2(in2[3]), .cin(carry[2]), .out(sum[3]), .cout(carry[3]));
full_adder fladd5(.in1(in1[4]), .in2(in2[4]), .cin(carry[3]), .out(sum[4]), .cout(carry[4]));
full_adder fladd6(.in1(in1[5]), .in2(in2[5]), .cin(carry[4]), .out(sum[5]), .cout(carry[5]));
full_adder fladd7(.in1(in1[6]), .in2(in2[6]), .cin(carry[5]), .out(sum[6]), .cout(carry[6]));
full_adder fladd8(.in1(in1[7]), .in2(in2[7]), .cin(carry[6]), .out(sum[7]), .cout(cout));
    
endmodule
