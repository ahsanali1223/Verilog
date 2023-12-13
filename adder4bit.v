`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:55:07 12/13/2023 
// Design Name: 
// Module Name:    adder4bit 
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
module full_adder_4bit(input [3:0] a, input [3:0] b, input c_in, output c_out, output [3:0] sum);
  
assign {c_out, sum} = a + b + c_in;

endmodule


