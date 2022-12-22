`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:04:00 08/25/2022
// Design Name:   full_adder
// Module Name:   /home/shreyas/Xilinx/14.7/ISE_DS/xilinx_progs/RCA/full_adder_tb.v
// Project Name:  RCA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder
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

module full_adder_tb;

    // Inputs
    reg IN1 = 1'b0;
    reg IN2 = 1'b0;
    reg CIN = 1'b0;

    // Output wires
    wire OUT, COUT;

    // Instantiate full adder module for testing
    full_adder fladd(
        .in1(IN1),
        .in2(IN2),
        .cin(CIN),
        .out(OUT),
        .cout(COUT)
    );


    initial begin

        // to display output
        $monitor("IN1 = %b, IN2 = %b, CIN = %b, sum = %b, carry = %b", IN1, IN2, CIN, OUT, COUT);

        // Test cases for full adder
        #2 IN1 = 1'b0; IN2 = 1'b1; CIN = 1'b0;
        #2 IN1 = 1'b1; IN2 = 1'b0; CIN = 1'b0;
        #2 IN1 = 1'b1; IN2 = 1'b1; CIN = 1'b0;
        #2 IN1 = 1'b0; IN2 = 1'b0; CIN = 1'b1;
        #2 IN1 = 1'b0; IN2 = 1'b1; CIN = 1'b1;
        #2 IN1 = 1'b1; IN2 = 1'b0; CIN = 1'b1;
        #2 IN1 = 1'b1; IN2 = 1'b1; CIN = 1'b1;
        #2 $finish;

    end
endmodule
