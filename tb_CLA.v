`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:45:33 12/14/2023
// Design Name:   CLA
// Module Name:   C:/users/ahsanali/My Documents/Project/Xilinx/Custom_IP/tb_CLA.v
// Project Name:  Custom_IP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_CLA;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg c_in;

	// Outputs
	wire c_out;
	wire [3:0] sum;

	// Instantiate the Unit Under Test (UUT)
	CLA uut (
		.a(a), 
		.b(b), 
		.c_in(c_in), 
		.c_out(c_out), 
		.sum(sum)
	);

	initial begin
		// Initialize Inputs
		#10
		a = 4;
		b = 5;
		c_in = 1;
		#10
		a = 4;
		b = 3;
		c_in = 0;
   
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

