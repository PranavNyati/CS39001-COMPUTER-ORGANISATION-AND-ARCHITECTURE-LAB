`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:38:38 10/21/2022 
// Design Name: 
// Module Name:    instruction_decoder 
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

module instruction_decoder (
    input [31:0] instr,
    output [5:0] opcode,
    output [5:0] func,
    output [25:0] jump_addr,
    output [4:0] rs,
    output [4:0] rt,    
	 output [15:0] imm
);

    assign opcode = instr[31:26];     // Opcode
    assign func = instr[5:0];         // Function code
    assign jump_addr = instr[25:0];       // Jump address for 26-bit addresses
    assign rs = instr[25:21];         // Register rs
    assign rt = instr[20:16];         // Register rt
    assign imm = instr[15:0];         // Immediate value (be it the PC relative jump address in case of branch or an immediate constant for ALU computation)
    
endmodule