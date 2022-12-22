`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:17:52 10/26/2022 
// Design Name: 
// Module Name:    cla_16_bit_LCU 
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

module cla_16bit_LCU(in1_16bit, in2_16bit, cin, sum_16bit, cout, P_16bit, G_16bit);

            /* 
    Inputs: 
        in1_16bit: first 16-bit input, in2_16bit: second 16-bit input, cin: the initial carry-in bit
    Outputs:
        sum_16bit: 16-bit output to store the sum, cout: the final carry-out bit of the addition
        P_16bit: the block propagate bit of this entire 16-bit CLA adder block (may be used if we want to create a 32-bit or 64-bit CLA adder)
        G_16bit: the block generate bit of this entire 16-bit CLA adder block (may be used if we want to create a 32-bit or 64-bit CLA adder)
    */

    input [15:0] in1_16bit, in2_16bit;
    input cin;
    output [15:0] sum_16bit;
    output cout, P_16bit, G_16bit;

    // wires P_array and G_array store the intermediate propagate and generate bits of each of the four 4-bit CLA blocks 
    // carry wire is used for computing and storing intermediate carry-out bits of each of the four 4-bit CLA blocks
    wire [3:0] P_array, G_array, carry; 

    // computing sum of 16-bits inputs in1 and in2 using 4-bit CLA units in a sequential maneer and using Lookahead Carry Unit

    // initialise the augmented 4-bit CLA units
    cla_4_bit cla_1(.in1_4bit(in1_16bit[3:0]), .in2_4bit(in2_16bit[3:0]), .cin(cin), .sum_4bit(sum_16bit[3:0]), .P_4bit_block(P_array[0]), .G_4bit_block(G_array[0]));
    cla_4_bit cla_2(.in1_4bit(in1_16bit[7:4]), .in2_4bit(in2_16bit[7:4]), .cin(carry[1]), .sum_4bit(sum_16bit[7:4]), .P_4bit_block(P_array[1]), .G_4bit_block(G_array[1]));
    cla_4_bit cla_3(.in1_4bit(in1_16bit[11:8]), .in2_4bit(in2_16bit[11:8]), .cin(carry[2]), .sum_4bit(sum_16bit[11:8]), .P_4bit_block(P_array[2]), .G_4bit_block(G_array[2]));
    cla_4_bit cla_4(.in1_4bit(in1_16bit[15:12]), .in2_4bit(in2_16bit[15:12]), .cin(carry[3]), .sum_4bit(sum_16bit[15:12]), .P_4bit_block(P_array[3]), .G_4bit_block(G_array[3]));

    // initialise the Lookahead Carry Unit
    lookahead_carry_unit lcu_1(.P_4bit_array(P_array), .G_4bit_array(G_array), .cin(cin), .c_array(carry), .cout_16bit(cout), .P_16bit_block(P_16bit), .G_16bit_block(G_16bit));
    
endmodule