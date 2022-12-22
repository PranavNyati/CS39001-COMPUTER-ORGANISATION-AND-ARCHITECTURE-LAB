`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:26:03 08/31/2022 
// Design Name: 
// Module Name:    wrapper_cla_16bit_LCU 
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
module wrapper_cla_16bit_LCU(input clk, input rst, input [15:0] in1_16bit, input [15:0] in2_16bit, input cin, output reg [15:0] sum_16bit, output reg cout, output reg P_16bit, output reg G_16bit);

	reg [15:0] in1_16bit_reg;
	reg [15:0] in2_16bit_reg;
	reg cin_reg;
	wire [15:0] sum_16bit_net;
	wire cout_net;
	wire P_16bit_net;
	wire G_16bit_net;
	
	always @(posedge clk)
		begin
			if (rst)
				begin
					in1_16bit_reg<=16'd0;
					in2_16bit_reg<=16'd0;
					cin_reg<=1'd0;
					sum_16bit<=16'd0;
					cout<=1'd0;
					P_16bit<=1'd0;
					G_16bit<=1'd0;
				end
			else
				begin
					in1_16bit_reg<=in1_16bit;
					in2_16bit_reg<=in2_16bit;
					cin_reg<=cin;
					sum_16bit<=sum_16bit_net;
					cout<=cout_net;
					P_16bit<=P_16bit_net;
					G_16bit<=G_16bit_net;
				end							
		end

cla_16bit_LCU cla_16_bit(in1_16bit_reg, in2_16bit_reg, cin_reg, sum_16bit_net, cout_net, P_16bit_net, G_16bit_net);

endmodule

