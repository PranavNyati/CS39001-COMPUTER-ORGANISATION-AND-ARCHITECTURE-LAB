`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:53:15 08/30/2022 
// Design Name: 
// Module Name:    cla_4bit_augment 
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

module cla_4bit_augment(in1_4bit, in2_4bit, cin, sum_4bit, P_4bit_block, G_4bit_block);
    /* 
    Inputs: 
        in1_4bit: first 4-bit input, in2_4bit: second 4-bit input, cin: carry-in bit
    Outputs:
        sum_4bit: 4-bit output to store the sum, P_4bit_block: bit to store the block propagate signal for next level of 4-bit cla adder, 
        G_4bit_block: bit to store the block generate signal for next level of 4-bit cla adder,
      
    */

    input [3:0] in1_4bit, in2_4bit;
    input cin;

    output [3:0] sum_4bit;
    output P_4bit_block, G_4bit_block;

    /*
    Wires needed for intermediate calculations
    g: 4-bit sequence to store the intermediate bitwise carry generator bits
    p: 4-bit sequence to store the intermediate bitwise carry propagator bits
    c: 4-bit sequence to store the intermediate carry bits
    */
    wire  [3:0] g, p, carry;

    assign g = in1_4bit & in2_4bit;     // g_i = in1_4bit_i & in2_4bit_i for i = 0 to 3
    assign p = in1_4bit ^ in2_4bit;     // p_i = in1__4bit_i XOR in2_4bit_i for i = 0 to 3

    assign carry[0] = cin;    // carry_0 = cin
    assign carry[1] = g[0] | (carry[0] & p[0]); 
    assign carry[2] = g[1] | (p[1] & g[0]) | (carry[0] & p[0] & p[1]);
    assign carry[3] = g[2] | (p[2] & g[1]) | (g[0] & p[1] & p[2]) | (carry[0] & p[0] & p[1] & p[2]);

    assign sum_4bit = p ^ carry;   // sum_i = p_i XOR carry_i for i = 0 to 3

    // calculate the block propagate and block generate signalsn to be used in next cla_adder_4bit block
    assign P_4bit_block = p[0] & p[1] & p[2] & p[3];
    assign G_4bit_block = g[3] | (p[3] & g[2]) | (g[1] & p[2] & p[3]) | (g[0] & p[1] & p[2] & p[3]);

endmodule