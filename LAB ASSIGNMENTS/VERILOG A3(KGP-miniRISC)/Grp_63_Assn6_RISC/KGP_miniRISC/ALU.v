`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:47:45 10/28/2022 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
	input signed [31:0] input1,
	input signed [31:0] input2,
	input [4:0] control_ALUop,
	output reg carry,
	output reg sign_bit,
	output reg zero_flag,
	output reg [31:0] result
    );
	
	wire cout_temp;
	// wire cin_temp;
	reg [31:0] in1_temp, in2_temp;
	wire [31:0] res_temp, res_temp1, diff_temp1, res_diff_1;
	reg [31:0] diff_temp, neg_1, res_diff_0;
	
	
	
	always @(*) begin 
	
		if(control_ALUop == 5'b10000 || control_ALUop == 5'b00010) begin     // comp or compi
			in1_temp = 32'b00000000000000000000000000000001;
		   in2_temp = ~input2;
		end
		
		else begin
			in1_temp = input1;
			in2_temp = input2;
		end
	
		diff_temp = input1 ^ input2;  // diff_temp = in1 XOR in2
		neg_1 = ~(32'b1);
		res_diff_0 = diff_temp & (~diff_temp1);
	
		
	end
	
	adder_32_bit adder_1(.in1_32bit(in1_temp), .in2_32bit(in2_temp), .cin(1'b0), .sum_32bit(res_temp), .cout(cout_temp));	
	shift_module shift_1(.in(input1), .shift_amt(input2), .control_ALUop(control_ALUop), .shifted_val(res_temp1));
	adder_32_bit adder_2(.in1_32bit(diff_temp), .in2_32bit(neg_1), .cin(1'b1), .sum_32bit(diff_temp1), .cout());
	diff_lookup diff_lookup_1(.diff_temp(res_diff_0), .diff_bit(res_diff_1));
	
	always @(*) begin
		
		if(control_ALUop == 5'b11111 || control_ALUop == 5'b00001 || control_ALUop == 5'b00010 
		|| control_ALUop == 5'b10000 || control_ALUop == 5'b00101 || control_ALUop == 5'b00110) begin   // add, addi, comp, compi, lw, sw
			result = res_temp;
			carry = cout_temp;
		end
		
		else if (control_ALUop == 5'b00011) begin   // Bitwise AND
			result = input1 & input2;
		end
		
		else if (control_ALUop == 5'b00100) begin   // Bitwise XOR
			result = input1 ^ input2;
		end
		
		else if (control_ALUop == 5'b10001 || control_ALUop == 5'b10010 || control_ALUop == 5'b10011 
		|| control_ALUop == 5'b10100 || control_ALUop == 5'b10101 || control_ALUop == 5'b10110) begin // different SHIFT operations
			 result = res_temp1;
	   end
	
		
		else if (control_ALUop == 5'b01000 || control_ALUop == 5'b01001 || control_ALUop == 5'b00111) begin // BRANCH ON FLAG EQUAL TO ZERO/ NOT EQUAL TO ZERO/ LESS THAN 0
			result = input1;
		end 
	
		else if (control_ALUop == 5'b01111) begin   // DIFF
			if(input1 == input2) begin   // both the inputs have all bits same
				result = 32'b00000000000000000000000000100000;
			end
			else begin 						  // if both inputs differ
				result = res_diff_1;
			end
		end
		
		else begin
			result = 32'b0;
		end
		
	end
	
	// the outputs zero_flag and sign_bit change when the result changes
	always @(result) begin
      if (!result) begin
			zero_flag = 1'b1;
/*			if(input1 == 32'b0 && input2 == 32'b0) begin
				carry = 1'b0;
			end*/
	   end 
		else begin
			zero_flag = 1'b0;
      end
      sign_bit = result[31];
   end

endmodule
