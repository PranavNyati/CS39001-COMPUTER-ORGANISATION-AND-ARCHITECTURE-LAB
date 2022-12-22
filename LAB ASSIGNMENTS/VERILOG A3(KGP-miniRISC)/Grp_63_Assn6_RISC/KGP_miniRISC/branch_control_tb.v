`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:43:07 11/06/2022
// Design Name:   branch_control
// Module Name:   /home/nyati_pranav26/Pranav/SEM 5/COA_LAB/A5/KGP_miniRISC/branch_control_tb.v
// Project Name:  KGP_miniRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: branch_control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module branch_control_tb;

	// Inputs
	reg [5:0] opcode;
	reg sign;
	reg zero_flag;
	reg carry;

	// Outputs
	wire branch_valid;

	// Instantiate the Unit Under Test (UUT)
	branch_control uut (
		.opcode(opcode), 
		.sign(sign), 
		.zero_flag(zero_flag), 
		.carry(carry), 
		.branch_valid(branch_valid)
	);

	initial begin
		// Initialize Inputs
		opcode = 0;
		sign = 0;
		zero_flag = 0;
		carry = 0;

		// Wait 100 ns for global reset to finish
		$monitor("op = %d sign = %b zero_flag = %b carry = %b branch_valid = %b", opcode, sign, zero_flag, carry, branch_valid);
      
		// test bcy
		opcode = 6'b001101; carry = 1'b1;
		#20 opcode = 6'b001101; carry = 1'b0;
		
		// test bncy
		#20 opcode = 6'b001110; carry = 1'b0;
		#20 opcode = 6'b001110; carry = 1'b1;
		
		// test bltz
		#20 opcode = 6'b000111; sign = 1'b1;
		#20 opcode = 6'b000111; zero_flag = 1'b1; carry = 1'b1; sign = 1'b0;
		
		// test bz 
		#20 opcode = 6'b001000; zero_flag = 1'b1;
		#20 opcode = 6'b001000; zero_flag = 1'b0;
		
		// test bnz
		#20 opcode = 6'b001001; zero_flag = 1'b0;
		#20 opcode = 6'b001001; zero_flag = 1'b1;
		
		// tes 
		#20 opcode = 6'b001010; carry = 1'b0; sign = 1'b1;
		#20 opcode = 6'b001010; carry = 1'b1; zero_flag = 1'b0;
		#20 opcode = 6'b001011; zero_flag = 1'b1; sign = 1'b1;
		#20 opcode = 6'b001100; sign = 1'b0; 
		#20 $finish;
		// Add stimulus here

	end
      
endmodule

