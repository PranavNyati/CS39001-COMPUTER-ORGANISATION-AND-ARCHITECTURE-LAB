`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:33:05 08/30/2022
// Design Name:   cla_adder_4bit
// Module Name:   /home/nyati_pranav26/Pranav/SEM 5/COA_LAB/CLA/cla_adder_4bit_tb.v
// Project Name:  CLA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cla_adder_4bit
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

// testbench for a single 4-bit carry look-ahead adder module
module cla_adder_4bit_tb;

    // Inputs
    reg [3:0] in1 = 4'b0000, in2 = 4'b0000;
    reg cin = 1'b0;

    // Outputs
    wire [3:0] sum;
    wire cout;

    // Instantiate the Unit Under Test (UUT)
    cla_adder_4bit cla_4bit_test(.in1(in1), .in2(in2), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        // Monitor the changes
        $monitor("in1 = %b, in2 = %b, cin = %b, sum = %b, cout = %b", in1, in2, cin, sum, cout);
        
        // Stimulus to verify the working of the 4-bit carry look-ahead adder
        #50 in1 = 4'b1010; in2 = 4'b0100; cin = 1'b0;
        #50 in1 = 4'b1110; in2 = 4'b1001; cin = 1'b0;
        #50 in1 = 4'b1111; in2 = 4'b1111; cin = 1'b1;
        #50 in1 = 4'b1101; in2 = 4'b1010; cin = 1'b1;
        #50 $finish;
    end

endmodule


