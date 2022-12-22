`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:20:51 08/31/2022
// Design Name:   cla_16bit_LCU
// Module Name:   /home/nyati_pranav26/Pranav/SEM 5/COA_LAB/CLA/cla_16bit_LCU_tb.v
// Project Name:  CLA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cla_16bit_LCU
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
module cla_16bit_LCU_tb;

    // Inputs
    reg [15:0] in1 = 16'd0, in2 = 16'd0;
    reg cin = 1'b0;

    // Outputs
    wire [15:0] sum;
    wire cout, P_16bit_block, G_16bit_block;

    // Instantiate the Unit Under Test (UUT)
    cla_16bit_LCU cla_LCU_test(.in1_16bit(in1), .in2_16bit(in2), .cin(cin), .sum_16bit(sum), .cout(cout), .P_16bit(P_16bit_block), .G_16bit(G_16bit_block));

    initial begin
        // Monitor the changes
        $monitor("in1 = %d, in2 = %d, cin = %b, sum = %d, cout = %b, P_16bit_block = %b, G_16bit_block = %b", in1, in2, cin, sum, cout, P_16bit_block, G_16bit_block);
        
        // Stimulus to verify the working of the 16-bit carry look-ahead adder implemented with lookahead carry unit

        #50 in1 = 16'd30037; in2 = 16'd30049; cin = 1'b0;
        #50 in1 = 16'd1024; in2 = 16'd2048; cin = 1'b0;
        #50 in1 = 16'd32768; in2 = 16'd65535; cin = 1'b0;
        #50 in1 = 16'd65535; in2 = 16'd65535; cin = 1'b0;
        #50 in1 = 16'd462; in2 = 16'd391; cin = 1'b0;
        #50 in1 = 16'd462; in2 = 16'd391; cin = 1'b1;
        #50 $finish;
    end

endmodule
