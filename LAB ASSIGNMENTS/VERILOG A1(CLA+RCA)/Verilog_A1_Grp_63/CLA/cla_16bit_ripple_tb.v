`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:54:31 08/30/2022
// Design Name:   cla_16bit_ripple
// Module Name:   /home/nyati_pranav26/Pranav/SEM 5/COA_LAB/CLA/cla_16bit_ripple_tb.v
// Project Name:  CLA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cla_16bit_ripple
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

// Testbench for a 16-bit carry look-ahead adder module implemented based on ripple carry mechanism using four 4-bit cla adders
module cla_16bit_ripple_tb;

    // Inputs
    reg [15:0] in1 = 16'd0, in2 = 16'd0;
    reg cin = 1'b0;

    // Outputs
    wire [15:0] sum;
    wire cout;

    // Instantiate the Unit Under Test (UUT)
    cla_16bit_ripple cla_ripple_test(.in1(in1), .in2(in2), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        // Monitor the changes
        $monitor("in1 = %d, in2 = %d, cin = %b, sum = %d, cout = %b", in1, in2, cin, sum, cout);
        
        // Stimulus to verify the working of the 16-bit carry look-ahead adder with ripple carry

        #50 in1 = 16'd30037; in2 = 16'd30049; cin = 1'b0;
        #50 in1 = 16'd1024; in2 = 16'd2048; cin = 1'b0;
        #50 in1 = 16'd32768; in2 = 16'd65535; cin = 1'b0;
        #50 in1 = 16'd65535; in2 = 16'd65535; cin = 1'b0;
        #50 in1 = 16'd462; in2 = 16'd391; cin = 1'b0;
        #50 in1 = 16'd462; in2 = 16'd391; cin = 1'b1;
        #50 $finish;
    end
endmodule
