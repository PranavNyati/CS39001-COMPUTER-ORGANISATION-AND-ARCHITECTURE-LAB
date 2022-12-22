`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:11:34 08/26/2022
// Design Name:   rca_8bit
// Module Name:   /home/shreyas/Xilinx/14.7/ISE_DS/xilinx_progs/RCA/rca_8bit_tb.v
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

module rca_8bit_tb;

    // Inputs
    reg [7:0] IN1 = 8'd0, IN2 = 8'd0;
    reg CIN = 1'b0;

    // Outputs
    wire [7:0] OUT;
    wire COUT;

    // instantiate rca 8-bit module for testing
    rca_8bit rca_8_bit(
        .in1(IN1),
        .in2(IN2),
        .cin(CIN),
        .sum(OUT),
        .cout(COUT)
    );

    initial begin

        // to display output
        $monitor("IN1 = %d, IN2 = %d, CIN = %b, sum = %d, carry = %b", IN1, IN2, CIN, OUT, COUT);

        // Test cases for 8-bit ripple carry adder
        #2 IN1 = 8'd27; IN2 = 8'd79; CIN = 1'b0;
        #2 IN1 = 8'd163; IN2 = 8'd224; CIN = 1'b0;
        #2 IN1 = 8'd39; IN2 = 8'd108; CIN = 1'b1;
        #2 IN1 = 8'd204; IN2 = 8'd192; CIN = 1'b1;
        #2 $finish;

    end
endmodule