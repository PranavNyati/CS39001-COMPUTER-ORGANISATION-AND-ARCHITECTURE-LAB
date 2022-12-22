`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:49:56 08/26/2022
// Design Name:   rca_8bit
// Module Name:   /home/shreyas/Xilinx/14.7/ISE_DS/xilinx_progs/RCA/negative_tb.v
// Project Name:  RCA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rca_8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

/*
	Assignment 3, Group 63
	Team Members :-
	
	Pranav Nyati - 20CS30037
	Shreyas Jena - 20CS30049
	
*/

module negative_tb;

	// Inputs
	reg [7:0] IN1 = 8'd15;
	reg [7:0] IN2 = 8'd7;
	reg CIN = 1'b1;

	// Outputs
	wire [7:0] SUM;
	wire COUT;

	// Instantiate the Unit Under Test (UUT)
	rca_8bit rca8bit (
		.in1(IN1), 
		.in2(IN2), 
		.cin(CIN), 
		.sum(SUM), 
		.cout(COUT)
	);

	initial begin
	
		IN2 = ~IN2;
		
		// to display output
		$monitor("IN1 = %d, IN2 = %d, CIN = %b, sum = %d, carry = %b", IN1, IN2, CIN, SUM, COUT);

		// Initialize Inputs
		
		#2 IN1 = 8'd6; IN2 = 8'd3;
		IN2 = ~IN2;
		#2 IN1 = 8'd9; IN2 = 8'd5;
		IN2 = ~IN2;
		#2 IN1 = 8'd24; IN2 = 8'd11;
		IN2 = ~IN2;
		#2 $finish;
	end
      
endmodule

