`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:57:37 11/06/2022 
// Design Name: 
// Module Name:    mux_32b_3_1 
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

module mux_32b_3_1(a0, a1, a2, sel, out);

	input[31:0] a0;
	input[31:0] a1;
	input[31:0] a2;
	input[1:0] sel;
	output reg [31:0] out;
	
	always@(*) begin
		case(sel)
			2'b00: out = a0;
			2'b01: out = a1;
			2'b10: out = a2;
			default: out = a2;			
		endcase
	end

endmodule
