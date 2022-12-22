`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:29:25 11/07/2022
// Design Name:   KGPminiRISC
// Module Name:   /home/nyati_pranav26/Pranav/SEM 5/COA_LAB/A5/KGP_miniRISC/KGPminiRISC_tb.v
// Project Name:  KGP_miniRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: KGPminiRISC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module KGPminiRISC_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [15:0] out;
//	wire [1:0] ctrl_mem_to_reg;	
//	wire [31:0] instr_addr_out, instr_out, next_instr_addr_out;
//	wire slow_clk_out;

	// Instantiate the Unit Under Test (UUT)
	
//	KGPminiRISC uut (
//		.clk(clk), 
//		.rst(rst), 
//		.out(out),
//		.ctrl_mem_to_reg(ctrl_mem_to_reg),
//		.instr_addr_out(instr_addr_out),
//		.instr_out(instr_out),
//		.next_instr_addr_out(next_instr_addr_out)
//	);

		KGPminiRISC uut (
		.clk(clk), 
	   .rst(rst), 
		.out(out)
	);

//	initial begin
//		// Initialize Inputs
//		clk = 0;
//		rst = 1;
//		
//
//		$monitor("time = %0d, out = %d, ctrl_mem_to_reg = %d, instr_addr_out = %d, next_instr_addr_out = %d, instr_out = %b, reg_val = %d", $time, out, ctrl_mem_to_reg, instr_addr_out, next_instr_addr_out, instr_out, uut.dataPath.reg_file.registers[1]);
//		
//		// $monitor("time = %0d, out = %d", $time, out, uut.dataPath.reg_file.registers[1]);
//		
//		#20 rst = 0;
//		#3000 $finish; 
//       
//	end
//
//	 always @ (*) begin
//		if (uut.dataPath.reg_file.registers[16] == 1) begin 
//			$finish;
//      end
//    end

//	always begin
//		#10 clk = ~clk;
//	end
//
//      
//endmodule


	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
      $monitor("time = %0d, out = %d, reg_val = %d", $time, out, uut.dataPath.reg_file.registers[13]);
		#5 rst = 0;
		
   
	   #28000
//	  $display ("Content in register 19: %d", uut.dataPath.reg_file.registers[19]);
//	  if (uut.dataPath.reg_file.registers[19] == -1) begin
//			$display("Element not found.");
//	  end else begin
//			$display("Element found at index: %d", uut.dataPath.reg_file.registers[19]);
//	  end
	  $finish;
   
    end
   
    always @ (*) begin
            if (uut.dataPath.reg_file.registers[16] == 1) begin 
                $finish;
            end
    end
   
    always begin
        #10 clk = ~clk;
    end
      
endmodule
