`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:39:20 08/26/2022
// Design Name:   rca_16bit
// Module Name:   /home/shreyas/Xilinx/14.7/ISE_DS/xilinx_progs/RCA/rca_16bit_tb.v
// Project Name:  RCA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rca_16bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////module rca_16bit_tb;

/*
	Assignment 3, Group 63
	Team Members :-
	
	Pranav Nyati - 20CS30037
	Shreyas Jena - 20CS30049
	
*/

module rca_16bit_tb;

    // Inputs
    reg [15:0] IN1 = 16'd0, IN2 = 16'd0;
    reg CIN = 1'b0;

    // Outputs
    wire [15:0] OUT;
    wire COUT;

    // instantiate rca 16-bit module for testing
    rca_16bit rca_16_bit(
        .in1(IN1),
        .in2(IN2),
        .cin(CIN),
        .sum(OUT),
        .cout(COUT)
    );


    initial begin

        // to display output
        $monitor("IN1 = %d, IN2 = %d, CIN = %b, sum = %d, carry = %b", IN1, IN2, CIN, OUT, COUT);

        // Test cases for 16-bit ripple carry adder
        #2 IN1 = 16'd4036; IN2 = 16'd2917; CIN = 1'b0;
        #2 IN1 = 16'd51304; IN2 = 16'd27042; CIN = 1'b1;
        #2 IN1 = 16'd32305; IN2 = 16'd49324; CIN = 1'b0;
        #2 IN1 = 16'd65535; IN2 = 16'd65535; CIN = 1'b1;
        #2 $finish;

    end
endmodule