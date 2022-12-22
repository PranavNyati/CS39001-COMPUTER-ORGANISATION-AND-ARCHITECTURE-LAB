`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:02:54 11/09/2022 
// Design Name: 
// Module Name:    KGP_miniRISC_wrapper 
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
// module KGP_miniRISC_wrapper(clk, rst, button, out);
module KGP_miniRISC_wrapper(clk, rst, out);
	
	input clk, rst;
	// input button;
	output [15:0] out;
	
	// wire[15:0] out_temp;
	/*wire button_temp;*/
	/*assign button_temp = button;
	*/

	
	// KGPminiRISC my_miniRISC(.clk(clk), .rst(rst), .button(button), .out(out));
	KGPminiRISC my_miniRISC(.clk(clk), .rst(rst), .out(out));

endmodule
