`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:41:36 11/04/2022 
// Design Name: 
// Module Name:    diff_lookup 
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
module diff_lookup(
	input [31:0] diff_temp,
	output [31:0] diff_bit
    );
	 
	 reg [31:0] res_diff;
	 
	 always @(diff_temp) begin       
			
			if (diff_temp == 32'b00000000000000000000000000000001) begin         // 0th position
				res_diff = 32'b00000000000000000000000000000000;
			end
			
			else if(diff_temp == 32'b00000000000000000000000000000010) begin     // 1st position
				res_diff = 32'b00000000000000000000000000000001;
			end
			
			else if(diff_temp == 32'b00000000000000000000000000000100) begin    // 2nd position
				res_diff = 32'b00000000000000000000000000000010;
			end
			
			else if(diff_temp == 32'b00000000000000000000000000001000) begin    // 3rd position
				res_diff = 32'b00000000000000000000000000000011;
			end
			
			else if(diff_temp == 32'b00000000000000000000000000010000) begin    // 4th position
				res_diff = 32'b00000000000000000000000000000100;
			end

			else if(diff_temp == 32'b00000000000000000000000000100000) begin    // 5th position
				res_diff = 32'b00000000000000000000000000000101;
			end
 
			else if(diff_temp == 32'b00000000000000000000000001000000) begin    // 6th position
				res_diff = 32'b00000000000000000000000000000110;
			end

			else if(diff_temp == 32'b00000000000000000000000010000000) begin    // 7th position
				res_diff = 32'b00000000000000000000000000000111;
			end
			
			else if(diff_temp == 32'b00000000000000000000000100000000) begin    // 8th position
				res_diff = 32'b00000000000000000000000000001000;
			end
			
			else if(diff_temp == 32'b00000000000000000000001000000000) begin    // 9th position
				res_diff = 32'b00000000000000000000000000001001;
			end
			
			else if(diff_temp == 32'b00000000000000000000010000000000) begin    // 10th position
				res_diff = 32'b00000000000000000000000000001010;
			end
			
			else if(diff_temp == 32'b00000000000000000000100000000000) begin    // 11th position
				res_diff = 32'b00000000000000000000000000001011;
			end
			
			else if(diff_temp == 32'b00000000000000000001000000000000)begin    // 12th position
				res_diff = 32'b00000000000000000000000000001100;
			end
			
			else if(diff_temp == 32'b00000000000000000010000000000000)begin     // 13th position
				res_diff = 32'b00000000000000000000000000001101;
			end
			
			else if(diff_temp == 32'b00000000000000000100000000000000)begin     // 14th position
				res_diff = 32'b00000000000000000000000000001110;
			end

			else if(diff_temp == 32'b00000000000000001000000000000000)begin    // 15th position
				res_diff = 32'b00000000000000000000000000001111;
			end
			
			else if(diff_temp == 32'b00000000000000010000000000000000)begin    // 16th position
				res_diff = 32'b00000000000000000000000000010000;
			end
			
		   else if(diff_temp == 32'b00000000000000100000000000000000)begin   // 17th position
				res_diff = 32'b00000000000000000000000000010001;
			end
			
		   else if(diff_temp == 32'b00000000000001000000000000000000)begin     // 18th position
				res_diff = 32'b00000000000000000000000000010010;
			end
			
			else if(diff_temp == 32'b00000000000010000000000000000000)begin    // 19th position
				res_diff = 32'b00000000000000000000000000010011;
			end
			
			else if(diff_temp == 32'b00000000000100000000000000000000)begin    // 20th position
				res_diff = 32'b00000000000000000000000000010100;
			end
			
			else if(diff_temp == 32'b00000000001000000000000000000000)begin    // 21th position
				res_diff = 32'b00000000000000000000000000010101;
			end
			
			else if(diff_temp == 32'b00000000010000000000000000000000)begin    // 22th position
				res_diff = 32'b00000000000000000000000000010110;
			end
			
			else if(diff_temp == 32'b00000000100000000000000000000000)begin    // 23th position
				res_diff = 32'b00000000000000000000000000010111;
			end
			
			else if(diff_temp == 32'b00000001000000000000000000000000)begin    // 24th position
				res_diff = 32'b00000000000000000000000000011000;
			end
		
			else if(diff_temp == 32'b00000010000000000000000000000000)begin   // 25th position
				res_diff = 32'b00000000000000000000000000011001;
			end
			
			else if(diff_temp == 32'b00000100000000000000000000000000)begin   // 26th position
				res_diff = 32'b00000000000000000000000000011010;
			end
			
			else if(diff_temp == 32'b00001000000000000000000000000000)begin    // 27th position
				res_diff = 32'b00000000000000000000000000011011;
			end
			
			else if(diff_temp == 32'b00010000000000000000000000000000)begin    // 28th position
				res_diff = 32'b00000000000000000000000000011100;
			end
			
			else if(diff_temp == 32'b00100000000000000000000000000000)begin    // 29th position
				res_diff = 32'b00000000000000000000000000011101;
			end
			
			else if(diff_temp == 32'b01000000000000000000000000000000)begin    // 30th position
				res_diff = 32'b00000000000000000000000000011110;
			end
			
			else if(diff_temp == 32'b10000000000000000000000000000000)begin    // 31th position
				res_diff = 32'b00000000000000000000000000011111;
			end			
			
	 end
	assign diff_bit = res_diff;
	
endmodule
