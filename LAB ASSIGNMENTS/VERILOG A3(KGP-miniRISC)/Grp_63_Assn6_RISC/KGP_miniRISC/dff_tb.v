`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:07:16 11/06/2022
// Design Name:   dff
// Module Name:   /home/nyati_pranav26/Pranav/SEM 5/COA_LAB/A5/KGP_miniRISC/dff_tb.v
// Project Name:  KGP_miniRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module dff_tb;

	// Inputs
	reg clk;
	reg rst;
	reg d;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	dff uut (
		.clk(clk), 
		.rst(rst), 
		.d(d), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		
		// Monitor the changes
	   $monitor("time = %0d, rst = %b, input = %b, output = %b", $time, rst, d, q);
		clk = 0;
		rst = 1;
		d = 0;
        
		// Add stimulus here
		#10 d = 1;
		#10 rst = 0;
		#10 d = 1;
		#10 rst = 1; d = 0;
		#10 d = 1;

	end
	
	always begin
		#10 clk = ~clk;
	end
      
endmodule
