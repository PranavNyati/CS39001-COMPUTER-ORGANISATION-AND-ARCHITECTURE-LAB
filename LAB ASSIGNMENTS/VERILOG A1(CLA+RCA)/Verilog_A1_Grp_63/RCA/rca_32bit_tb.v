`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:25:50 08/26/2022
// Design Name:   rca_32bit
// Module Name:   /home/shreyas/Xilinx/14.7/ISE_DS/xilinx_progs/RCA/rca_32bit_tb.v
// Project Name:  RCA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rca_32bit
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

module rca_32bit_tb;

    // Inputs
    reg [31:0] IN1 = 32'd0, IN2 = 32'd0;
    reg CIN = 1'b0;

    // Outputs
    wire [31:0] OUT;
    wire COUT;

    // instantiate rca 32-bit module for testing
    rca_32bit rca_32_bit(
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
        #2 IN1 = 32'd4036; IN2 = 32'd2917; CIN = 1'b0;
        #2 IN1 = 32'd51304235; IN2 = 32'd27042297; CIN = 1'b1;
        #2 IN1 = 32'd323052082; IN2 = 32'd493245026; CIN = 1'b0;
        #2 IN1 = 32'd4294967295; IN2 = 32'd4294967295; CIN = 1'b1;
        #2 $finish;

    end
endmodule