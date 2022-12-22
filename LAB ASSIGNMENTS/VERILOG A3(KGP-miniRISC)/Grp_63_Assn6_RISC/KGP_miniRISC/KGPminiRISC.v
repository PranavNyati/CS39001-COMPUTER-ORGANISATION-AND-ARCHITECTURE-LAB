`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:08:36 11/06/2022 
// Design Name: 
// Module Name:    KGPminiRISC 
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

/*module KGPminiRISC(input clk, input rst, output [31:0] out, output [1:0]ctrl_mem_to_reg,
output [31:0] instr_addr_out, output [31:0] instr_out, output [31:0] next_instr_addr_out);*/
 module KGPminiRISC(input clk, input rst, input button, output [15:0] out);
//module KGPminiRISC(input clk, input rst, output [15:0] out);

wire [5:0] opcode, func;
wire [4:0] ALUop;
wire [1:0] reg_dst, mem_to_reg, jump;
wire reg_write, mem_read, mem_write, ALUsrc, branch;
wire [31:0] out_32_bit;

assign out = out_32_bit[15:0];

// wire slow_clk; // For dumping
//wire [31:0] out_temp;
		
	/*assign ctrl_mem_to_reg = mem_to_reg;*/
	//assign slow_clk_out = slow_clk;
	
	// clock_divider clk_div1(.clk(clk), .rst(rst), .out_clk(slow_clk));     // For dumping
	
	control_unit controlUnit(
		.opcode(opcode),
		.func(func),
		.rst(rst),
		.control_RegDst(reg_dst),
		.control_RegWrite(reg_write),
		.control_MemWrite(mem_write),
		.control_MemRead(mem_read),
		.control_MemToReg(mem_to_reg),
		.control_ALUsrc(ALUsrc),
		.control_ALUop(ALUop),
		.control_Jump(jump),
		.control_Branch(branch)
	);
	
/*	datapath dataPath(
	   .reg_dst(reg_dst),
		.reg_write(reg_write),
		.mem_read(mem_read),
		.mem_write(mem_write),
		.mem_to_reg(mem_to_reg),
		.ALUsrc(ALUsrc),
		.ALUop(ALUop),
		.branch(branch),
		.jump(jump),
		.clk(clk),
		.rst(rst),
		.opcode(opcode),
		.func(func),
		.final_result(out),
		.instr_addr_out(instr_addr_out),
		.instr_out(instr_out),
		.next_instr_addr_out(next_instr_addr_out)
	);*/
	
		datapath dataPath(
	   .reg_dst(reg_dst),
		.reg_write(reg_write),
		.mem_read(mem_read),
		.mem_write(mem_write),
		.mem_to_reg(mem_to_reg),
		.ALUsrc(ALUsrc),
		.ALUop(ALUop),
		.branch(branch),
		.jump(jump),
		//.clk(slow_clk),  // For dumping
		.clk(clk),
		.rst(rst),
		.button(button),
		.opcode(opcode),
		.func(func),
		.final_result(out_32_bit)
	);
	
	
endmodule