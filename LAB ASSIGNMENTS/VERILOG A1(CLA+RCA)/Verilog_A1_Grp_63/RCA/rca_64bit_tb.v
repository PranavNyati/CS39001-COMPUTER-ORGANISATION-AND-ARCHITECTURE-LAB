`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:05:21 08/26/2022
// Design Name:   rca_64bit
// Module Name:   /home/shreyas/Xilinx/14.7/ISE_DS/xilinx_progs/RCA/rca_64bit_tb.v
// Project Name:  RCA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rca_64bit
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

module rca_64bit_tb;

    // Inputs
    reg [63:0] IN1 = 64'd0, IN2 = 64'd0;
    reg CIN = 1'b0;

    // Outputs
    wire [63:0] OUT;
    wire COUT;

    // instantiate rca 64-bit module for testing
    rca_64bit rca_64_bit(
        .in1(IN1),
        .in2(IN2),
        .cin(CIN),
        .sum(OUT),
        .cout(COUT)
    );


    initial begin

        // to display output
        $monitor("IN1 = %d, IN2 = %d, CIN = %b, sum = %d, carry = %b", IN1, IN2, CIN, OUT, COUT);

        // Test cases for 32-bit ripple carry adder
        #4 IN1 = 64'd4036; IN2 = 64'd2917; CIN = 1'b0;
        #4 IN1 = 64'd4294967295; IN2 = 64'd4294967295; CIN = 1'b1;
        #4 IN1 = 64'd10000000000000000000; IN2 = 64'd7500000000000000000; CIN = 1'b0;
        #4 IN1 = 64'd10000000000000000000; IN2 = 64'd10000000000000000000; CIN = 1'b1;
        #4 $finish;

    end
endmodule