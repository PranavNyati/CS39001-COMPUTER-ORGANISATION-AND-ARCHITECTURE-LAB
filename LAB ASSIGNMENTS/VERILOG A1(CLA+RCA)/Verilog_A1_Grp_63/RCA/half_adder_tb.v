`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:01:31 08/25/2022
// Design Name:   half_adder
// Module Name:   /home/shreyas/Xilinx/14.7/ISE_DS/xilinx_progs/RCA/half_adder_tb.v
// Project Name:  RCA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: half_adder
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

module half_adder_tb;

    // Inputs
    reg IN1 = 1'b0;
    reg IN2 = 1'b0;

    // Output wires
    wire OUT, COUT;

    // Instantiate a half adder module for testing
    half_adder hfadd(
        .in1(IN1),
        .in2(IN2),
        .out(OUT),
        .cout(COUT)
    );

    initial begin

        // To display output
        $monitor("IN1 = %b, IN2 = %b, sum = %b, carry = %b", IN1, IN2, OUT, COUT);

        // Test cases for half adder ckt
        #2  IN1 = 1'b0; IN2 = 1'b1;
        #2  IN1 = 1'b1; IN2 = 1'b0;
        #2  IN1 = 1'b1; IN2 = 1'b1;
        #2 $finish;

    end
endmodule