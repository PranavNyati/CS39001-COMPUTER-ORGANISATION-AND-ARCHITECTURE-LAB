`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:03:38 11/02/2022
// Design Name:   control_unit
// Module Name:   /home/nyati_pranav26/Pranav/SEM 5/COA_LAB/A5/KGP_miniRISC/control_unit_tb.v
// Project Name:  KGP_miniRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: control_unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module control_unit_tb;

	// Inputs
	reg [5:0] opcode;
	reg [5:0] func;
	reg rst;

	// Outputs
	wire [1:0] control_RegDst;
	wire control_RegWrite;
	wire control_MemWrite;
	wire control_MemRead;
	wire [1:0] control_MemToReg;
	wire control_ALUsrc;
	wire [4:0] control_ALUop;
	wire [1:0] control_Jump;
	wire control_Branch;

	// Instantiate the Unit Under Test (UUT)
	control_unit control_unit_test (
		.opcode(opcode), 
		.func(func), 
		.rst(rst), 
		.control_RegDst(control_RegDst), 
		.control_RegWrite(control_RegWrite), 
		.control_MemWrite(control_MemWrite), 
		.control_MemRead(control_MemRead), 
		.control_MemToReg(control_MemToReg), 
		.control_ALUsrc(control_ALUsrc), 
		.control_ALUop(control_ALUop), 
		.control_Jump(control_Jump), 
		.control_Branch(control_Branch)
	);

	initial begin
        // Monitor the changes
        $monitor("time = %4d, opcode = %d, func = %d, RegDst = %b, RegWrite = %b, MemWrite = %b, MemRead = %b, MemToReg = %b, ALUsrc = %b, ALUop = %b, Jump = %b, Branch = %b",
                $time, opcode, func, control_RegDst, control_RegWrite, control_MemWrite , control_MemRead, 
					 control_MemToReg, control_ALUsrc, control_ALUop, control_Jump, control_Branch);  
			
        // Stimulus to verify the working of the Control Unit
		  
        opcode = 6'b000000; func = 6'b000000;     // add
        #5 opcode = 6'b000000; func = 6'b000001;  // comp
		  
        #5 opcode = 6'b000001;    // addi
        #5 opcode = 6'b000010;    // compi
        #5 opcode = 6'b000011; func = 6'b000000;   // AND
        #5 opcode = 6'b000011; func = 6'b000001;    // XOR
		  
		  // testing shift operators
		  #5 opcode = 	6'b000100; func = 6'b000000; // SHIFT LEFT LOGICAL
		  #5 opcode = 	6'b000100; func = 6'b000001; // SHIFT RIGHT LOGICAL
		  #5 opcode = 	6'b000100; func = 6'b000010; // SHIFT LEFT LOGICAL VARIABLE
		  #5 opcode = 	6'b000100; func = 6'b000011; // SHIFT RIGHT LOGICAL VARIABLE
		  #5 opcode = 	6'b000100; func = 6'b000100; // SHIFT RIGHT ARITHMETIC
		  #5 opcode = 	6'b000100; func = 6'b000101;// SHIFT RIGHT ARITHMETIC VARIABLE
		  
		  #5 opcode =  6'b000101;     // LOAD WORD
		  #5 opcode =  6'b000110;     //STORE WORD
		  
		  // testing branch instructions
		  #5 opcode =  6'b000111;     // BRANCH ON LESS THAN 0
		  #5 opcode =  6'b001000;     // BRANCH ON FLAG 0
		  #5 opcode =  6'b001001;     // BRANCH ON FLAG NOT 0
		  #5 opcode =  6'b001010;     // BRANCH REGISTER
		  #5 opcode =  6'b001011;     // UNCONDITIONAL BRANCH
		  #5 opcode =  6'b001100;     // BRANCH AND LINK
		  #5 opcode =  6'b001101;     // BRANCH ON CARRY
		  #5 opcode =  6'b001110;     // BRANCH ON NO CARRY
		  
		  // diff
		  #5 opcode =  6'b001111;
		  

        #5 $finish;
	end
      
endmodule

