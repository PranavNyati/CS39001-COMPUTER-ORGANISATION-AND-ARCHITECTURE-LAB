`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:54:51 11/06/2022 
// Design Name: 
// Module Name:    mux_32b_2_1 
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
module mux_32b_2_1(a0, a1, sel, out);

	input[31:0] a0;
	input[31:0] a1;
	input sel;
	output reg [31:0] out;
	
	always@(*) begin
		case(sel)
			1'b0: out = a0;
			1'b1: out = a1;
			default: out = a0;			
		endcase
	end

endmodule
