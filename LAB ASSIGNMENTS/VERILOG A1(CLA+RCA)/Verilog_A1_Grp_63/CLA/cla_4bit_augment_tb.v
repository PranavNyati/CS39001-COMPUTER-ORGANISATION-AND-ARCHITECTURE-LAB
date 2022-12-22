`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:22:12 08/30/2022
// Design Name:   cla_4bit_augment
// Module Name:   /home/nyati_pranav26/Pranav/SEM 5/COA_LAB/CLA/cla_4bit_augment_tb.v
// Project Name:  CLA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cla_4bit_augment
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

/*
COA LAB (SEM 5) : Assignment 3 - Part 2
Group 63:
    Pranav Nyati (20CS30037)
    Shreyas Jena (20CS30049)

*/

// testbench for a single 4-bit carry look-ahead adder module which is augmented to compute next level block generate and propagate signals
module cla_4bit_augment_tb;

    // Inputs
    reg [3:0] in1 = 4'b0000, in2 = 4'b0000;
    reg cin = 1'b0;

    // Outputs
    wire [3:0] sum;
    wire P_4bit_block, G_4bit_block;

    // Instantiate the Unit Under Test (UUT)
    cla_4bit_augment cla_aug_test(.in1_4bit(in1), .in2_4bit(in2), .cin(cin), .sum_4bit(sum), .P_4bit_block(P_4bit_block), .G_4bit_block(G_4bit_block));

    initial begin
        // Monitor the changes
        $monitor("in1 = %b, in2 = %b, cin = %b, sum = %b, P_4bit_block = %b, G_4bit_block = %b", in1, in2, cin, sum, P_4bit_block, G_4bit_block);
        
        // Stimulus to verify the working of the 4-bit carry look-ahead adder
        #50 in1 = 4'b1010; in2 = 4'b0100; cin = 1'b0;
        #50 in1 = 4'b1110; in2 = 4'b1001; cin = 1'b0;
        #50 in1 = 4'b1111; in2 = 4'b1111; cin = 1'b1;
        #50 in1 = 4'b1101; in2 = 4'b0010; cin = 1'b1;
        #50 in1 = 4'b1000; in2 = 4'b1001; cin = 1'b1;
        #50 $finish;
    end

endmodule
