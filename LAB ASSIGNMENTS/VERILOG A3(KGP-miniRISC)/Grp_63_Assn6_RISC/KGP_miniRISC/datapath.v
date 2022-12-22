`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:37:03 10/26/2022 
// Design Name: 
// Module Name:    datapath 
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
// The datapath module
module datapath (
    input [1:0] reg_dst,
    input reg_write,
    input mem_read,
    input mem_write,
    input [1:0] mem_to_reg,
    input ALUsrc,
    input [4:0] ALUop,
    input branch,
    input [1:0] jump,
    input clk,
    input rst,
	 input button,
    output [5:0] opcode,
    output [5:0] func,
	 output reg [31:0] final_result
/*	 output [31:0] instr_addr_out,
	 output [31:0] instr_out,
	 output [31:0] next_instr_addr_out*/
);
    parameter ra = 5'b11111;    // Register ra

    wire enable;
    wire carry, zero_flag, sign, branch_valid, prev_carry;
    wire [31:0] next_instr_addr, instr, write_data, read_data1, instr_addr, result, nextPC, read_data2, SE_out, ALU_in2, mem_read_data, mux_in, mux_out;
    wire [25:0] jump_addr;
    wire [15:0] imm;
    wire [4:0] rs, rt, write_reg;
	 
	 reg signed [9:0] counter;
    
    assign enable = mem_read | mem_write;         // Enable signal for the data memory module
	 // assign final_result = result;
	 // assign final_result = write_data;
	 wire [9:0] addr_to_mem = button ? counter: result[9:0];
	
	always@ (posedge button or posedge rst) begin
		if (rst) begin 
			counter <= -10'd1;
			final_result <= 32'd0;
		end
		else
			begin
			counter <= counter + 10'd1;
			final_result <= mem_read_data;
			end
	end
    
    // Instantiating a DFF to store the carry flag value (basic)
    dff DFF (
        .clk(clk),
        .rst(rst),
        .d(carry),
        .q(prev_carry)
    );

    // Instantiating the program counter module (works)
    program_counter PC (
        .next_addr(next_instr_addr),
        .clk(clk),
        .rst(rst),
        .instr_addr(instr_addr)
    );
	 
/*	 assign instr_addr_out = instr_addr;
	 assign instr_out = instr;
	 assign next_instr_addr_out = next_instr_addr;*/
	 
	 // Instantiating the instruction memory module
    bram_instr_memory instruction_memory (
        .clka(clk),
        .ena(1'b1),
        .addra(next_instr_addr[9:0]),
        .douta(instr)
    );
	 
	 // module to decode instructions (works)
	 instruction_decoder instr_decode(
		 .instr(instr),
		 .opcode(opcode),
		 .func(func),
		 .jump_addr(jump_addr),
		 .rs(rs),
		 .rt(rt),
		 .imm(imm)
	 );
	 
	// Mux to select the write register
	mux_5b_3_1 MUX5_3(
			.a0(rs), 
			.a1(rt), 
			.a2(ra), 
			.sel(reg_dst), 
			.out(write_reg)
	);
	 
	// module for register file
	register_file reg_file(
			.readReg_1(rs),
			.readReg_2(rt),
			.writeReg(write_reg),
			.writeData(write_data),
			.control_RegWrite(reg_write),
			.clk(clk),
			.rst(rst),
			.readData1(read_data1),
			.readData2(read_data2)
   );
	 
	 
	// module for sign extension from 16-bit to 32-bit
	immediate_sign_extend SE1 (
        .instr(imm),
        .extendImm(SE_out)
   );
	
	// Mux to choose thw 2nd ALU input (register value or sign-extended immediate value)
	mux_32b_2_1 MUX32_2_1 (
			.a0(read_data2),
			.a1(SE_out),
			.sel(ALUsrc),
			.out(ALU_in2)
	);
	
	 // module for ALU
	 ALU alu(
		.input1(read_data1),
		.input2(ALU_in2),
		.control_ALUop(ALUop),
		.carry(carry),
		.sign_bit(sign),
		.zero_flag(zero_flag),
		.result(result)

	);
	
	// module to manage branch control (works)
   branch_control BC (
        .opcode(opcode),
        .sign(sign),
        .zero_flag(zero_flag),
        .carry(prev_carry),
        .branch_valid(branch_valid)
    );
	 
	 // module to increment program counter
	 pc_increment PC_incrementer(
		.instr_addr(instr_addr),
		.nextPC(nextPC)
	 );
	 	
    	 
	// module to manage jump control
	jump_control JC(	
		.rst(rst),
		.jump_val(jump_addr),
		.nextPC(nextPC),
		.SE_out(SE_out),
		.branch(branch),
		.branch_valid(branch_valid),
		.jump(jump),
		.read_data1(read_data1),
		.next_addr(next_instr_addr)
	);
		
	
	// Instantiating the data memory module
	bram_data_memory data_memory (
			.clka(~clk),
			.ena(enable),
			.wea(mem_write), 
			.addra(addr_to_mem),
			.dina(read_data2), 
			.douta(mem_read_data)
	);
	
	// Mux to select the data to be written to the data memory
   mux_32b_3_1 MUX32_3_1 (
        .a0(nextPC),
        .a1(mem_read_data),
        .a2(result),
        .sel(mem_to_reg),
        .out(write_data)
   );
	 
endmodule