`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:06:17 11/06/2022 
// Design Name: 
// Module Name:    immediate_sign_extend 
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

module immediate_sign_extend (     
    input [15:0] instr,
    output reg [31:0] extendImm
);
    always @(*) begin
      extendImm = {{16{instr[15]}}, instr};
    end
endmodule