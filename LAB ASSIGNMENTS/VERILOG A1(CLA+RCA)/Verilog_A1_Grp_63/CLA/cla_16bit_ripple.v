`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:34:58 08/30/2022 
// Design Name: 
// Module Name:    cla_16bit_ripple 
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

module cla_16bit_ripple(in1, in2, cin, sum, cout);

        /* 
    Inputs: 
        in1: first 16-bit input, in2: second 16-bit input, cin: the initial carry-in bit
    Outputs:
        sum: 16-bit output to store the sum, cout: the final carry-out bit of the addition
    */
    
    input [15:0] in1, in2;
    input cin;
    output [15:0] sum;
    output cout;

    wire [2:0] carry;     // wire for storing intermediate carry values from a 4-bit CLA unit for inputting them to the next 4-bit CLA unit in the hiearchy

    // computing sum of 16-bits inputs in1 and in2 using 4-bit CLA units in a cascading/hierarchical fashion
    cla_adder_4bit cla_4bit_1(.in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .sum(sum[3:0]), .cout(carry[0]));
    cla_adder_4bit cla_4bit_2(.in1(in1[7:4]), .in2(in2[7:4]), .cin(carry[0]), .sum(sum[7:4]), .cout(carry[1]));
    cla_adder_4bit cla_4bit_3(.in1(in1[11:8]), .in2(in2[11:8]), .cin(carry[1]), .sum(sum[11:8]), .cout(carry[2]));
    cla_adder_4bit cla_4bit_4(.in1(in1[15:12]), .in2(in2[15:12]), .cin(carry[2]), .sum(sum[15:12]), .cout(cout));
    
endmodule
