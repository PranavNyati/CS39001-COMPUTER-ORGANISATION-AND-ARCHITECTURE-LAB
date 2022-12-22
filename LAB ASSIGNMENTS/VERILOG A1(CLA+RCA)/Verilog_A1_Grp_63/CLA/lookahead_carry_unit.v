`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:56:57 08/30/2022 
// Design Name: 
// Module Name:    lookahead_carry_unit 
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

module lookahead_carry_unit(P_4bit_array, G_4bit_array, cin, c_array, cout_16bit, P_16bit_block, G_16bit_block);
    /* 
    Inputs: 
        P_4bit_array: 4-bit input containing P_0, P_1, P_2, P_3 (the block propagate bits of each of the four 4-bit CLA blocks)
        G_4bit_array: 4-bit input containing G_0, G_1, G_2, G_3 (the bloack generate bits of each of the four 4-bit CLA blocks)
        cin: the intial carry in-bit for the 16-bit addition
    Outputs:
        c_array: array to store the intermediate carry bits 
        cout_16bit: bit to store the final carry out-bit of the 16-bit addition of in1 and in2 (two 16 bit numbers)
        P_16bit_block: the block propagate bit of this entire 16-bit CLA adder block (may be used if we want to create a 32-bit or 64-bit CLA adder)
        G_16bit_block: the block generate bit of this entire 16-bit CLA adder block (may be used if we want to create a 32-bit or 64-bit CLA adder)
    */

    input [3:0] P_4bit_array, G_4bit_array;
    input cin;
    output [3:0] c_array;
    output cout_16bit, P_16bit_block, G_16bit_block;

    // computing the intermediate carry bits and the final c-out for the 16-bit addition
    assign c_array[0] = cin;    
    assign c_array[1] = G_4bit_array[0] | (c_array[0] & P_4bit_array[0]); 
    assign c_array[2] = G_4bit_array[1] | (G_4bit_array[0] & P_4bit_array[1]) | (c_array[0] & P_4bit_array[0] & P_4bit_array[1]);
    assign c_array[3] = G_4bit_array[2] | (G_4bit_array[1] & P_4bit_array[2]) | (G_4bit_array[0] & P_4bit_array[1] & P_4bit_array[2]) | (c_array[0] & P_4bit_array[0] & P_4bit_array[1] & P_4bit_array[2]);
    assign cout_16bit = G_4bit_array[3] | (G_4bit_array[2] & P_4bit_array[3]) | (G_4bit_array[1] & P_4bit_array[2] & P_4bit_array[3]) | (G_4bit_array[0] & P_4bit_array[1] & P_4bit_array[2] & P_4bit_array[3]) | (c_array[0] & P_4bit_array[0] & P_4bit_array[1] & P_4bit_array[2] & P_4bit_array[3]);
    
    // calculate the block propagate and block generate signals for next level of hierarchy (if we wish to use this 16-bit CLA as building blocks for a 32-bit or 64-bit CLA)
    assign P_16bit_block = P_4bit_array[0] & P_4bit_array[1] & P_4bit_array[2] & P_4bit_array[3];
    assign G_16bit_block = G_4bit_array[3] | ( G_4bit_array[2] & P_4bit_array[3]) | (G_4bit_array[1] & P_4bit_array[2] & P_4bit_array[3]) | (G_4bit_array[0] & P_4bit_array[1] & P_4bit_array[2] & P_4bit_array[3]);

endmodule
