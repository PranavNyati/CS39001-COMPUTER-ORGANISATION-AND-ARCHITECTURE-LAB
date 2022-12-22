`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:51:32 08/25/2022 
// Design Name: 
// Module Name:    full_adder 
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

module full_adder(input in1,input in2,input cin,output out,output cout);
wire g2_out,g3_out,g4_out;
xor g1(out,in1,in2,cin);
and g2(g2_out,in1,in2);
xor g3(g3_out,in1,in2);
and g4(g4_out,g3_out,cin);
or  g5(cout,g2_out,g4_out);
endmodule