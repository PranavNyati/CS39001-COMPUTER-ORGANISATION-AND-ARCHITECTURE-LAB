`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:36:24 11/06/2022 
// Design Name: 
// Module Name:    branch_control 
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

module branch_control(
	 input [5:0] opcode,
    input sign,
	 input zero_flag,
	 input carry,
	 output reg branch_valid);

always @(*) begin

		if (opcode == 6'b001101) begin											// bcy
			if (carry == 1'b1) begin
				branch_valid = 1'b1;
			end
			else begin
				branch_valid = 1'b0;
			end
		end	
	
		else if (opcode == 6'b001110)  begin									// bncy
			if (carry == 1'b0) begin
				branch_valid = 1'b1;
			end
			else begin
				branch_valid = 1'b0;
			end	
		end
	
		else if (opcode == 6'b000111) begin										// bltz
			if (sign == 1'b1) begin
				branch_valid = 1'b1;
			end
			else begin
				branch_valid = 1'b0;
			end	
		end
	
		else if (opcode == 6'b001000) begin										// bz
			if (zero_flag == 1'b1) begin
				branch_valid = 1'b1;
			end
			else begin
				branch_valid = 1'b0;
			end	
		end
	
		else if (opcode == 6'b001001) begin										// bnz
			if (zero_flag == 1'b0) begin
				branch_valid = 1'b1;
			end
			else begin
				branch_valid = 1'b0;
			end	
		end
		
		// I doubt if this should be made 1 
		else if (opcode == 6'b001010 || opcode == 6'b001011 || opcode == 6'b001100) begin	// br, b, bl
			branch_valid = 1'b1;
		end
		
		else begin      // in case there is a instruction other than branch
			branch_valid = 1'b0;
		end
	end
endmodule