`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:14:29 11/06/2022
// Design Name:   immediate_sign_extend
// Module Name:   /home/nyati_pranav26/Pranav/SEM 5/COA_LAB/A5/KGP_miniRISC/immediate_sign_extend_tb.v
// Project Name:  KGP_miniRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: immediate_sign_extend
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module immediate_sign_extend_tb;

	// Inputs
	reg [15:0] instr;

	// Outputs
	wire [31:0] extendImm;

	// Instantiate the Unit Under Test (UUT)
	immediate_sign_extend uut (
		.instr(instr), 
		.extendImm(extendImm)
	);

	initial begin
		// Initialize Inputs
		instr = 16'b0000000000000000;

		// Wait 100 ns for global reset to finish
		$monitor("instr = %b extendImm = %b", instr, extendImm);
      
		#10 instr = 16'b0000000000000001; 
		#20 instr = 16'b1000000000000001; 
		#20 $finish;
		// Add stimulus here

	end
      
endmodule


