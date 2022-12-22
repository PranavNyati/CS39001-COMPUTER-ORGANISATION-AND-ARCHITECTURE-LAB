`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:33 08/31/2022 
// Design Name: 
// Module Name:    wrapper_cla_16bit_ripple 
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
module wrapper_cla_16bit_ripple(input clk, input rst, input [15:0] in1, input [15:0] in2, input cin, output reg [15:0] sum, output reg cout);

	reg [15:0] in1_reg;
	reg [15:0] in2_reg;
	reg cin_reg;
	wire [15:0] sum_net;
	wire cout_net;
	
	always @(posedge clk)
		begin
			if (rst)
				begin
					in1_reg<=16'd0;
					in2_reg<=16'd0;
					cin_reg<=1'd0;
					sum<=16'd0;
					cout<=1'd0;
				end
			else
				begin
					in1_reg<=in1;
					in2_reg<=in2;
					cin_reg<=cin;
					sum<=sum_net;
					cout<=cout_net;
				end							
		end

cla_16bit_ripple cla_16_bit_ripple(in1_reg, in2_reg, cin_reg, sum_net, cout_net);

endmodule

