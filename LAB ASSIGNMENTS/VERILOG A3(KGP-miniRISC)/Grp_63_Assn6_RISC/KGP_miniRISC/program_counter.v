`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:59:47 11/06/2022 
// Design Name: 
// Module Name:    program_counter 
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

module program_counter (
    input [31:0] next_addr,
    input clk, 
    input rst,
    output reg [31:0] instr_addr
);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            instr_addr <= -32'd1;  // start at the 1st address at instruction memory location 0
        end else begin
            instr_addr <= next_addr;     // Update the program counter with new address (may be PC + 1 or address computed by branch
        end
    end

endmodule