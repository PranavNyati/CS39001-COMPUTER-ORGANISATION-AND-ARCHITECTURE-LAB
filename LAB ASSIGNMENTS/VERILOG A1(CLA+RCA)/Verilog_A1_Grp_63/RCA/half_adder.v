`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:02:28 08/25/2022 
// Design Name: 
// Module Name:    half_adder 
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

module half_adder(input in1,input in2,output out,output cout);
xor g1(out,in1,in2);
and g2(cout,in1,in2);
endmodule
