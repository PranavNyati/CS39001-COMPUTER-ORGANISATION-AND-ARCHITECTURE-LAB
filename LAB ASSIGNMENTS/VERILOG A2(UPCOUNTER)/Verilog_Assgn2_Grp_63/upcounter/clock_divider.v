`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:47:04 09/14/2022 
// Design Name: 
// Module Name:    clock_divider 
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
module clock_divider(clk, rstn, out_clk);

input wire clk;
input wire rstn;
output reg out_clk;
reg [25:0] counter;

always @ (posedge clk or negedge rstn)
	if (!rstn)
		counter <= 0;
	else begin
		counter <= counter + 1;
		out_clk <= counter[25];
	end
endmodule
