`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:37:02 10/28/2022 
// Design Name: 
// Module Name:    shift_module 
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
module shift_module(
	input signed [31:0] in,
	input [31:0] shift_amt,
	input [4:0] control_ALUop,
	output reg [31:0] shifted_val
    );
	 
	 reg [4:0] shamt;
	//wire [4:0] shamt;
	//assign shamt = shift_amt[10:6];
	
	always@(*) begin
		if (control_ALUop == 5'b10001) begin    // SHIFT LEFT LOGICAL
			shamt = shift_amt[10:6];
			shifted_val = in << shamt;
		end
		else if (control_ALUop == 5'b10010) begin  // SHIFT RIGHT LOGICAL
			shamt = shift_amt[10:6];
			shifted_val = in >> shamt;
		end
		else if (control_ALUop == 5'b10011) begin   // SHIFT LEFT LOGICAL VARIABLE
			shifted_val = in << shift_amt;
		end
		else if (control_ALUop == 5'b10100) begin    // SHIFT RIGHT LOGICAL VARIABLE
			shifted_val = in >> shift_amt;
		end
		else if (control_ALUop == 5'b10101) begin    // SHIFT RIGHT ARITHMETIC
			shamt = shift_amt[10:6];
			shifted_val = in >>> shamt;
		end
		else if (control_ALUop == 5'b10110) begin     // SHIFT ARITHMETIC RIGHT VARIABLE
			shifted_val = in >>> shift_amt;
		end
	end
endmodule


