`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:47:36 08/30/2022 
// Design Name: 
// Module Name:    cla_adder_4bit 
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
COA LAB (SEM 5) : Assignment 3 - Part 2
Group 63:
    Pranav Nyati (20CS30037)
    Shreyas Jena (20CS30049)

*/

module cla_adder_4bit(in1, in2, cin, sum, cout);
    /* 
    Inputs: 
        in1: first 4-bit input, in2: second 4-bit input, cin: carry-in bit
    Outputs:
        sum: 4-bit output to store the sum, cout: the final carry-out bit
    */

    input [3:0] in1, in2;
    input cin;

    output [3:0] sum;
    output cout;

    /*
    Wires needed for intermediate calculations
    g: 4-bit sequence to store the intermediate bitwise carry generator bits
    p: 4-bit sequence to store the intermediate bitwise carry propagator bits
    c: 4-bit sequence to store the intermediate carry bits
    */
    wire  [3:0] g, p, carry;

    assign g = in1 & in2;     // g_i = in1_i & in2_i for i = 0 to 3
    assign p = in1 ^ in2;     // p_i = in1_i XOR in2_i for i = 0 to 3

    assign carry[0] = cin;    // carry_0 = cin
    assign carry[1] = g[0] | (carry[0] & p[0]); 
    assign carry[2] = g[1] | (p[1] & g[0]) | (carry[0] & p[0] & p[1]);
    assign carry[3] = g[2] | (p[2] & g[1]) | (g[0] & p[1] & p[2]) | (carry[0] & p[0] & p[1] & p[2]);
    assign cout = g[3] | (p[3] & g[2]) | (g[1] & p[2] & p[3]) | (g[0] & p[1] & p[2] & p[3]) | (carry[0] & p[0] & p[1] & p[2] & p[3]);

    assign sum = p ^ carry;   // sum_i = p_i XOR carry_i for i = 0 to 3

endmodule
