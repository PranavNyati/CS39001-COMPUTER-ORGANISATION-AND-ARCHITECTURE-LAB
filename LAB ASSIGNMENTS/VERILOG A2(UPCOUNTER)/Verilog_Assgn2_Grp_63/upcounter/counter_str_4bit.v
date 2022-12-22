`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:35:47 09/14/2022 
// Design Name: 
// Module Name:    counter_str_4bit 
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
module counter_str_4bit(input clk, input rstn, output [3:0] counter);
	
	wire slow_clk;
	wire [3:0] upcounter;
	clock_divider clk_div(.clk(clk), .rstn(rstn), .out_clk(slow_clk));
	dff dff0(.clk(slow_clk), .rstn(rstn), .d(upcounter[0]), .out(counter[0]));
	dff dff1(.clk(slow_clk), .rstn(rstn), .d(upcounter[1]), .out(counter[1]));
	dff dff2(.clk(slow_clk), .rstn(rstn), .d(upcounter[2]), .out(counter[2]));
	dff dff3(.clk(slow_clk), .rstn(rstn), .d(upcounter[3]), .out(counter[3]));
	add_by_one add1(.in(counter), .out(upcounter));
endmodule
