`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:35:26 08/31/2022
// Design Name:   rca_4bit
// Module Name:   /home/shreyas/Xilinx/14.7/ISE_DS/xilinx_progs/RCA/rca_4bit_tb.v
// Project Name:  RCA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rca_4bit
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

module rca_4bit_tb;

    // Inputs
    reg [3:0] IN1 = 4'd0, IN2 = 4'd0;
    reg CIN = 1'b0;

    // Outputs
    wire [3:0] OUT;
    wire COUT;

    // instantiate rca 4-bit module for testing
    rca_4bit rca_4_bit(
        .in1(IN1),
        .in2(IN2),
        .cin(CIN),
        .sum(OUT),
        .cout(COUT)
    );

    initial begin

        // to display output
        $monitor("IN1 = %d, IN2 = %d, CIN = %b, sum = %d, carry = %b", IN1, IN2, CIN, OUT, COUT);

        // Test cases for 4-bit ripple carry adder
        #2 IN1 = 4'd5; IN2 = 4'd6; CIN = 1'b0;
        #2 IN1 = 4'd12; IN2 = 4'd14; CIN = 1'b0;
        #2 IN1 = 4'd13; IN2 = 4'd2; CIN = 1'b1;
        #2 IN1 = 4'd15; IN2 = 4'd15; CIN = 1'b1;
        #2 $finish;

    end
endmodule