`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:00:23 12/13/2023
// Design Name:   full_adder_4bit
// Module Name:   C:/users/ahsanali/My Documents/Project/Xilinx/Custom_IP/tb_full_adder_4bit.v
// Project Name:  Custom_IP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_full_adder_4bit;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg c_in;

	// Outputs
	wire c_out;
	wire [3:0] sum;

	// Instantiate the Unit Under Test (UUT)
	full_adder_4bit uut (
		.a(a), 
		.b(b), 
		.c_in(c_in), 
		.sum(sum), 
		.c_out(c_out)
	);

	initial begin
		// Initialize Inputs
		a = 3;
		b = 4;
		c_in = 1;
       #20
		 a = 6;
		 b = 9;
		 c_in = 1;
		 
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

