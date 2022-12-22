`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:27:50 11/06/2022
// Design Name:   program_counter
// Module Name:   /home/nyati_pranav26/Pranav/SEM 5/COA_LAB/A5/KGP_miniRISC/program_counter_tb.v
// Project Name:  KGP_miniRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: program_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module program_counter_tb;

	// Inputs
	reg [31:0] next_addr;
	reg clk;
	reg rst;

	// Outputs
	wire [31:0] instr_addr;

	// Instantiate the Unit Under Test (UUT)
	program_counter uut (
		.next_addr(next_addr), 
		.clk(clk), 
		.rst(rst), 
		.instr_addr(instr_addr)
	);

	initial begin
		// Initialize Inputs
		next_addr = 32'b10011010101101011100010101011011;
		clk = 0;
		rst = 0;
        
		$monitor("time = %0d, rst = %b, expected instr addr = %d ,current instr addr = %d", $time, rst, next_addr, instr_addr);
		#2 rst = 1;
		#10 rst = 0; next_addr = 32'b00011010101101011100010101011011;
		#5 next_addr = 32'b10011010101101011100010101011011;
		#10 rst = 1;
		#10 $finish;
		

	end
	
	always begin
		#5 clk = ~clk;
	end
      
endmodule


