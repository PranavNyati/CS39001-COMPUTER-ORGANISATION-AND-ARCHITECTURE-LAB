`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:51:30 11/06/2022 
// Design Name: 
// Module Name:    jump_control 
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

module jump_control(
	input rst,
	input[25:0] jump_val,
	input[31:0] nextPC,
	input[31:0] SE_out,
	input branch,
	input branch_valid,
	input[1:0] jump,
	input[31:0] read_data1,
	output reg[31:0] next_addr);

// wire [27:0] sll_1;
wire [31:0] jumpAddr, sll_2, mux_in, mux_out, next_addr_temp;
wire branch_ctrl;

// assign sll1 = {jump_val, {2{0}}};
// assign sll_1 = {jump_val[25:0], 2'b00};

assign jumpAddr = {6'b000000, jump_val[25:0]};
//assign sll_2 = SE_out << 2;

assign sll_2 = SE_out;

assign mux_in = nextPC + sll_2;
assign branch_ctrl = branch & branch_valid;

mux_32b_2_1 MUX_32_2_2(
	.a0(nextPC),
	.a1(mux_in),
	.sel(branch_ctrl),
	.out(mux_out)
	);
	
mux_32b_3_1 MUX_32_3_2(
	.a0(jumpAddr),
	.a1(mux_out),
	.a2(read_data1),
	.sel(jump),
	.out(next_addr_temp)
	);

always@(*) begin
	if(rst)
		next_addr = 32'd0;
		
	else
		next_addr = next_addr_temp;
end

endmodule