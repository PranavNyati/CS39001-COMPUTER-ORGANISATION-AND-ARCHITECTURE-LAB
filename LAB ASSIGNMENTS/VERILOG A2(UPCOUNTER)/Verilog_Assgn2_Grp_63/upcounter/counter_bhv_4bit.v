`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:01:47 09/14/2022 
// Design Name: 
// Module Name:    counter_bhv_4bit 
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
module counter_bhv_4bit(input clk, input rstn, output reg [3:0] counter);

wire slow_clk;
clock_divider clk_div(.clk(clk), .rstn(rstn), .out_clk(slow_clk));

always @ (posedge slow_clk or negedge rstn)
begin
	if (!rstn)
		counter <= 4'd0;
	else 
		counter <= counter + 4'd1;
end
endmodule 