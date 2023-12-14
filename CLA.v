`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:02:02 12/14/2023 
// Design Name: 
// Module Name:    CLA 
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
module CLA(input [3:0] a, input [3:0] b, input c_in, output c_out, output [3:0] sum
    );
wire p0, p1, p2, p3, g0, g1, g2, g3;
wire c1, c2, c3, c4, s0, s1, s2, s3;
//calculate the carry propogate
assign p0 = a[0] ^ b[0];
assign p1 = a[1] ^ b[1];
assign p2 = a[2] ^ b[2];
assign p3 = a[3] ^ b[3];
//calculate the carry generate
assign g0 = a[0] & b[0];
assign g1 = a[1] & b[1];
assign g2 = a[2] & b[2];
assign g3 = a[3] & b[3];
//calculate the carry at each stage
assign c1 = g0 | (p0 & c_in);
assign c2 = g1 | (p1 & g0) | (p1 & p0 & c_in) ;
assign c3 = g2 | (p2 & g1) | (p2 & p1 & g0) | (p2 & p1 & p0 & c_in);
assign c4 = g3 | (p3 & g2) | (p3 & p2 & g1) | (p3 & p2 & p1 & g0) | (p3 & p2 & p1 & p0 & c_in);
//calculate the sum
assign sum[0] = p0 ^ c_in;
assign sum[1] = p1 ^ c1;
assign sum[2] = p2 ^ c2;
assign sum[3] = p3 ^ c3;

assign c_out = c4;







endmodule
