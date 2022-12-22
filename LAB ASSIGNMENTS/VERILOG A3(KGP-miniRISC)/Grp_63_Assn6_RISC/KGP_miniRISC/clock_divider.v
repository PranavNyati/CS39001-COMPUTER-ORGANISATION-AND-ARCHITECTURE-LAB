`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:16:00 11/09/2022 
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

module clock_divider(clk, rst, out_clk);

input wire clk;
input wire rst;
output reg out_clk;
reg [27:0] counter;

always @ (posedge clk or posedge rst)
	if (rst)
		counter <= 0;
	else begin
		counter <= counter + 1;
		out_clk <= counter[27];
	end
endmodule