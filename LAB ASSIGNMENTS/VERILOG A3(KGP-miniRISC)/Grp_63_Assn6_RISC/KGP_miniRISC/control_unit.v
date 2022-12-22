`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:40:59 10/26/2022 
// Design Name: 
// Module Name:    control_unit 
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
module control_unit(
	input [5:0] opcode,
	input [5:0] func,
	input rst,
	output reg [1:0] control_RegDst,
	output reg control_RegWrite,
	output reg control_MemWrite,
	output reg control_MemRead,
	output reg [1:0] control_MemToReg,
	output reg control_ALUsrc,
	output reg [4:0] control_ALUop,
	output reg [1:0] control_Jump,
	output reg control_Branch
);
	
	always @(opcode or func or rst) begin
/*		if (rst) begin
			control_RegDst = 2'b00;
			control_RegWrite = 1'b0;
			control_MemWrite = 1'b0;
			control_MemRead = 1'b0;
			control_MemToReg = 2'b00;
			control_ALUsrc = 1'b0;
			control_ALUop = 5'b00000;
			control_Jump = 2'b00;
			control_Branch = 1'b0;
			
		end*/
		
	
		case(opcode)
			6'b000000 : begin
				case (func)   
				 6'b000000 : begin     // add
						control_RegDst = 2'b00;
						control_RegWrite = 1'b1;
						control_MemWrite = 1'b0;
						control_MemRead = 1'b0;
						control_MemToReg = 2'b10;
						control_ALUsrc = 1'b0;
						control_ALUop = 5'b11111;
						control_Jump = 2'b01;
						control_Branch = 1'b0;
				 end
				 
				 6'b000001 : begin     // comp
						control_RegDst = 2'b00;
						control_RegWrite = 1'b1;
						control_MemWrite = 1'b0;
						control_MemRead = 1'b0;
						control_MemToReg = 2'b10;
						control_ALUsrc = 1'b0;
						control_ALUop = 5'b10000;
						control_Jump = 2'b01;
						control_Branch = 1'b0;
				 end
				 
				 default: begin          // to prevent latch
						control_RegDst = 2'b00;
						control_RegWrite = 1'b0;
						control_MemWrite = 1'b0;
						control_MemRead = 1'b0;
						control_MemToReg = 2'b00;
						control_ALUsrc = 1'b0;
						control_ALUop = 5'b00000;
						control_Jump = 2'b00;
						control_Branch = 1'b0;
				 end
				 
				endcase
			end
			
			6'b000001 : begin          //addi
				control_RegDst = 2'b00;
				control_RegWrite = 1'b1;
				control_MemWrite = 1'b0;
				control_MemRead = 1'b0;
				control_MemToReg = 2'b10;
				control_ALUsrc = 1'b1;
				control_ALUop = 5'b00001;
				control_Jump = 2'b01;
				control_Branch = 1'b0;
				
			end
			
			6'b000010 : begin          //compi
				control_RegDst = 2'b00;
				control_RegWrite = 1'b1;
				control_MemWrite = 1'b0;
				control_MemRead = 1'b0;
				control_MemToReg = 2'b10;
				control_ALUsrc = 1'b1;
				control_ALUop = 5'b00010;
				control_Jump = 2'b01;
				control_Branch = 1'b0;
				
			end
			
			6'b000011 : begin
				case (func)   
				 6'b000000 : begin     // AND 
						control_RegDst = 2'b00;
						control_RegWrite = 1'b1;
						control_MemWrite = 1'b0;
						control_MemRead = 1'b0;
						control_MemToReg = 2'b10;
						control_ALUsrc = 1'b0;
						control_ALUop = 5'b00011;
						control_Jump = 2'b01;
						control_Branch = 1'b0;
				 end
				 
				 6'b000001 : begin     // XOR
						control_RegDst = 2'b00;
						control_RegWrite = 1'b1;
						control_MemWrite = 1'b0;
						control_MemRead = 1'b0;
						control_MemToReg = 2'b10;
						control_ALUsrc = 1'b0;
						control_ALUop = 5'b00100;
						control_Jump = 2'b01;
						control_Branch = 1'b0;
				 end
				 
				 default: begin          // to prevent latch
						control_RegDst = 2'b00;
						control_RegWrite = 1'b0;
						control_MemWrite = 1'b0;
						control_MemRead = 1'b0;
						control_MemToReg = 2'b00;
						control_ALUsrc = 1'b0;
						control_ALUop = 5'b00000;
						control_Jump = 2'b00;
						control_Branch = 1'b0;
				 end
				 
				endcase
			
			end
			
			// different kinds of SHIFT operations
			6'b000100 : begin
				
				control_RegDst = 2'b00;
				control_RegWrite = 1'b1;
				control_MemWrite = 1'b0;
				control_MemRead = 1'b0;
				control_MemToReg = 2'b10;
				control_ALUsrc = 1'b0;
				control_Jump = 2'b01;
				control_Branch = 1'b0;
				
				case (func)   
				 6'b000000 : begin     // SHIFT LEFT LOGICAL
						control_ALUop = 5'b10001;
				 end
				 
				 6'b000001 : begin     // SHIFT RIGHT LOGICAL
						control_ALUop = 5'b10010;
				 end

				 6'b000010 : begin     // SHIFT LEFT LOGICAL VARIABLE
						control_ALUop = 5'b10011;
				 end
				 
				 6'b000011 : begin     // SHIFT RIGHT LOGICAL VARIABLE
						control_ALUop = 5'b10100;
				 end
								 
				6'b000100 : begin     // SHIFT RIGHT ARITHMETIC
						control_ALUop = 5'b10101;
				 end
				 
				 6'b000101 : begin     // SHIFT RIGHT ARITHMETIC VARIABLE
						control_ALUop = 5'b10110;
				 end
				 
				 default: begin          // to prevent latch
						control_RegDst = 2'b00;
						control_RegWrite = 1'b0;
						control_MemWrite = 1'b0;
						control_MemRead = 1'b0;
						control_MemToReg = 2'b00;
						control_ALUsrc = 1'b0;
						control_ALUop = 5'b00000;
						control_Jump = 2'b00;
						control_Branch = 1'b0;
				 end
				 
				endcase
			end
			
			6'b000101 : begin          // LOAD WORD
				control_RegDst = 2'b01;
				control_RegWrite = 1'b1;
				control_MemWrite = 1'b0;
				control_MemRead = 1'b1;
				control_MemToReg = 2'b01;
				control_ALUsrc = 1'b1;
				control_ALUop = 5'b00101;
				control_Jump = 2'b01;
				control_Branch = 1'b0;
				
			end
			
			6'b000110 : begin          //STORE WORD
				control_RegDst = 2'b11;
				control_RegWrite = 1'b0;
				control_MemWrite = 1'b1;
				control_MemRead = 1'b0;
				control_MemToReg = 2'b11;
				control_ALUsrc = 1'b1;
				control_ALUop = 5'b00110;
				control_Jump = 2'b01;
				control_Branch = 1'b0;
				
			end
			
			// different kinds of BRANCH instructions
			
			6'b000111 : begin          // BRANCH ON LESS THAN 0
				control_RegDst = 2'b11;  // value 3 for RegDst corresponds to no input to MUX
				control_RegWrite = 1'b0;
				control_MemWrite = 1'b0;
				control_MemRead = 1'b0;
				control_MemToReg = 2'b11; // value 3 doesnt correspond to any input to MUX
				control_ALUsrc = 1'b0;
				control_ALUop = 5'b00111;
				control_Jump = 2'b01;
				control_Branch = 1'b1;
				
			end
			
			6'b001000 : begin          // BRANCH ON FLAG 0
				control_RegDst = 2'b11;
				control_RegWrite = 1'b0;
				control_MemWrite = 1'b0;
				control_MemRead = 1'b0; 
				control_MemToReg = 2'b11; // value 3 doesnt correspond to any input to MUX
				control_ALUsrc = 1'b0;
				control_ALUop = 5'b01000;
				control_Jump = 2'b01;
				control_Branch = 1'b1;
				
			end

			6'b001001 : begin          // BRANCH ON FLAG NOT 0
				control_RegDst = 2'b11;
				control_RegWrite = 1'b0;
				control_MemWrite = 1'b0;
				control_MemRead = 1'b0;
				control_MemToReg = 2'b11;
				control_ALUsrc = 1'b0;
				control_ALUop = 5'b01001;
				control_Jump = 2'b01;
				control_Branch = 1'b1;
				
			end
			
			6'b001010 : begin          // BRANCH REGISTER
				control_RegDst = 2'b11;
				control_RegWrite = 1'b0;
				control_MemWrite = 1'b0;
				control_MemRead = 1'b0;
				control_MemToReg = 2'b11;
				control_ALUsrc = 1'b0;
				control_ALUop = 5'b01010;
				control_Jump = 2'b10;
				control_Branch = 1'b1;
				
			end

			6'b001011 : begin          // UNCONDITIONAL BRANCH
				control_RegDst = 2'b11;
				control_RegWrite = 1'b0;
				control_MemWrite = 1'b0;
				control_MemRead = 1'b0;
				control_MemToReg = 2'b11;
				control_ALUsrc = 1'b0;
				control_ALUop = 5'b01011;
				control_Jump = 2'b00;
				control_Branch = 1'b1;
				
			end

			6'b001100 : begin          // BRANCH AND LINK
				control_RegDst = 2'b10;
				control_RegWrite = 1'b1;
				control_MemWrite = 1'b0;
				control_MemRead = 1'b0;
				control_MemToReg = 2'b00;
				control_ALUsrc = 1'b0;
				control_ALUop = 5'b01100;
				control_Jump = 2'b00;
				control_Branch = 1'b1;
				
			end

			6'b001101 : begin          // BRANCH ON CARRY
				control_RegDst = 2'b11;
				control_RegWrite = 1'b0;
				control_MemWrite = 1'b0;
				control_MemRead = 1'b0;
				control_MemToReg = 2'b11;
				control_ALUsrc = 1'b0;
				control_ALUop = 5'b01101;
				control_Jump = 2'b01;
				control_Branch = 1'b1;
				
			end

			6'b001110 : begin          // BRANCH ON NO CARRY
				control_RegDst = 2'b11;
				control_RegWrite = 1'b0;
				control_MemWrite = 1'b0;
				control_MemRead = 1'b0;
				control_MemToReg = 2'b11;
				control_ALUsrc = 1'b0;
				control_ALUop = 5'b01110;
				control_Jump = 2'b01;
				control_Branch = 1'b1;
				
			end

			6'b001111 : begin          // DIFF
				control_RegDst = 2'b00;
				control_RegWrite = 1'b1;
				control_MemWrite = 1'b0;
				control_MemRead = 1'b0;
				control_MemToReg = 2'b10;
				control_ALUsrc = 1'b0;
				control_ALUop = 5'b01111;
				control_Jump = 2'b01;
				control_Branch = 1'b0;
				
			end
			
			default: begin          // to prevent latch
				control_RegDst = 2'b00;
				control_RegWrite = 1'b0;
				control_MemWrite = 1'b0;
				control_MemRead = 1'b0;
				control_MemToReg = 2'b00;
				control_ALUsrc = 1'b0;
				control_ALUop = 5'b00000;
				control_Jump = 2'b00;
				control_Branch = 1'b0;
			end
			
		endcase
		
		
	end
endmodule
