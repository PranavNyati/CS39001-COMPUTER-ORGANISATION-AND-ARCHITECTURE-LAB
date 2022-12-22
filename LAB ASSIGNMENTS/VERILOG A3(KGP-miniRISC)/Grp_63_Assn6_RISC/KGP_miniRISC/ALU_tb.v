`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:17:57 10/28/2022
// Design Name:   ALU
// Module Name:   /home/nyati_pranav26/Pranav/SEM 5/COA_LAB/A5/KGP_miniRISC/ALU_tb.v
// Project Name:  KGP_miniRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_tb;

	// Inputs
	reg [31:0] input1 = 32'd0;
	reg [31:0] input2 = 32'd0;
	reg [4:0] control_ALUop = 4'b0;

	// Outputs
	wire carry, sign_bit, zero_flag;
	wire [31:0] result;


	// Instantiate the Unit Under Test (UUT)
	ALU ALU_test(
		.input1(input1), 
		.input2(input2), 
		.control_ALUop(control_ALUop), 
		.carry(carry), 
		.sign_bit(sign_bit), 
		.zero_flag(zero_flag), 
		.result(result)
	);

   initial begin
	  // Monitor the changes
	  $monitor("time = %0d, opcode = %b, input1 = %b, input2 = %b, result = %b, carry = %b, zero_flag = %b, sign_bit = %b", $time, control_ALUop, input1, input2, result, carry, zero_flag, sign_bit);
	  
	  // Stimulus to verify the working of the ALU
	  #10  control_ALUop = 5'b11111 ;input1 = 32'd30037; input2 = 32'd30049; // test add 1
	  #10  control_ALUop = 5'b11111; input1 = 32'b11110000001111111111000011111011; // test add 2
	        input2 = 32'b10101111110000000000111100000101;    
	  
	   // test comp
	  #10 control_ALUop = 5'b10000;
	  input1 = 32'b11111111111111000001111111111111;
	  input2 = 32'b00000000000000000000000000000111;
	   											 
	  #10 control_ALUop = 5'b00001; 	  // test addi
	  #10 control_ALUop = 5'b00010;		  // test compi
	  #10 control_ALUop = 5'b00011 ;	  // AND
	  #10 control_ALUop = 5'b00100 ;	  // XOR
	  // testing of different shift operations
	  
	  #10 control_ALUop = 5'b10001;  // test shift left logical
	  input1 = 32'b11111111111100000000111111111111;
	  input2 = 32'b00000000000000000000001001000000;
	 
     #10 control_ALUop = 5'b10010; // test right shift logical
	  
	  // test left shift logical variable
	  #10 control_ALUop = 5'b10011 ;
	  input1 = 32'b11110011111100000000111111001111;
	  input2 = 32'b00000000000000000000000000000011;
     
	  #10 control_ALUop = 5'b10011 ;
	  input1 = 32'b11110011111100000000111111001111;
	  input2 = 32'b00000000000000000000000000000100;
     
	  #10 control_ALUop = 5'b10011 ;
	  input1 = 32'b11110011111100000000111111001111;
	  input2 = 32'b00000000000000000000000000000101;
     
	  #10 control_ALUop = 5'b10011 ;
	  input1 = 32'b11110011111100000000111111001111;
	  input2 = 32'b00000000000000000000000000000111;
   
	  // test right shift logical
	  #10 control_ALUop = 5'b10100 ;
	  input1 = 32'b11110011111100000000111111001111;
	  input2 = 32'b00000000000000000000000000000011;
   
	  #10 control_ALUop = 5'b10100;
	  input2 = 32'b00000000000000000000000000000100;
   
	  #10 control_ALUop = 5'b10100;
	  input2 = 32'b00000000000000000000000000000101;
      
	  #10 control_ALUop = 5'b10100;	
	  input2 = 32'b00000000000000000000000000000111;
    
	  // shift right arithmetic
	  #10 control_ALUop = 5'b10101;
	  input2 = 32'b00000000000000000000001001000000;
	 
	  #10 control_ALUop = 5'b10101;
	  input2 = 32'b00000000000000000000000101000000;
	 
	  // shift right arithmtic variable
	  #10 control_ALUop = 5'b10110;
	  input2 = 32'b00000000000000000000000000000101;
	  
	  #10 control_ALUop = 5'b10110;
	  input2 = 32'b00000000000000000000000000010011;
	  
	  // different types of branches
	  #10 control_ALUop = 5'b01000;
	  input1 = 32'b11010010001000010000010000100010;
	 
	  #10 control_ALUop = 5'b01001;
	  #10 control_ALUop = 5'b00111;
	  
	  // diff operation
	  #10 control_ALUop = 5'b01111 ;
	  input1 = 32'b00111010101000000100001001000100;
	  input2 = 32'b00111010101000000100001101000100;
	
	  #10 control_ALUop = 5'b01111 ;
	  input1 = 32'b10111010101000000100001101000100;
	  input2 = 32'b00111010101000000100001101000100;
	  
	  #10 $finish;
end
	 
endmodule

