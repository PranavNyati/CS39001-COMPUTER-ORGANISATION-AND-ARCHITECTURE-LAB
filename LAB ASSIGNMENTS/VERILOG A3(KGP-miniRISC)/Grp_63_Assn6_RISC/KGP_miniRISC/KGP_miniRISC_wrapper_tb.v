`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:05:12 11/09/2022
// Design Name:   KGP_miniRISC_wrapper
// Module Name:   D:/ISE Project/KGPminiRISC/KGP_miniRISC/KGP_miniRISC/KGP_miniRISC_wrapper_tb.v
// Project Name:  KGP_miniRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: KGP_miniRISC_wrapper
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module KGP_miniRISC_wrapper_tb;
/*
	// Inputs
	reg clk;
	reg rst;
	reg button;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	KGP_miniRISC_wrapper uut (
		.clk(clk), 
		.rst(rst), 
		.button(button), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		button = 0;
        
		// Add stimulus here

		#5 rst = 0;
		
		#30000;
		$monitor("%d", $signed(out));
		#50 button = 1;
		#50 button = 0;
		#50 button = 1;
		#50 button = 0;
		#50 button = 1;
		#50 button = 0;
		#50 button = 1;
		#50 button = 0;
		#50 button = 1;
		#50 button = 0;
		#50 button = 1;
		#50 button = 0;
		#50 button = 1;
		#50 button = 0;
		#50 button = 1;
		#50 button = 0;
		#50 button = 1;
		#50 button = 0;
		#50 button = 1;
		#50 button = 0;
		$finish;
	end
	
	always @(*) begin
		$monitor("%d", $signed(out));
	end
	
	always #10 clk = ~clk;
      
endmodule*/

// Inputs
reg clk;
reg rst;
reg button;

// Outputs
wire [31:0] out;

// Instantiate the Unit Under Test (UUT)
KGP_miniRISC_wrapper uut (
.clk(clk),
.rst(rst),
.button(button),
.out(out)
);

always #10 clk = ~clk;

initial begin
// Initialize Inputs
clk = 0;
rst = 1;
button = 0;

// Wait 100 ns for global reset to finish

#5
rst = 0;
#30000;

// $monitor("%d", $signed(out));

#100 button = 1;
#100 button = 0;
#100 button = 1;
#100 button = 0;
#100 button = 1;
#100 button = 0;
#100 button = 1;
#100 button = 0;
#100 button = 1;
#100 button = 0;
#100 button = 1;
#100 button = 0;
#100 button = 1;
#100 button = 0;
#100 button = 1;
#100 button = 0;
#100 button = 1;
#100 button = 0;
#100 button = 1;
#100 button = 0;


$finish;
       
// Add stimulus here

end

always @(button) begin
	$monitor("%d", $signed(out));
end
     
endmodule

