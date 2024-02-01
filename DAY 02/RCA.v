module RCA_4bit(input [3:0] A, input [3:0] B, input Cin, output [3:0] S, output C_out);

wire c1,c2,c3,c4;
full_adder a1(.a(A[0]), .b(B[0]), .carry(cin), .sum(S[0]), .cout(c1));
full_adder a2(.a(A[1]), .b(B[1]), .carry(c1), .sum(S[1]), .cout(c2));
full_adder a3(.a(A[2]), .b(B[2]), .carry(c2), .sum(S[2]), .cout(c3));
full_adder a4(.a(A[3]), .b(B[3]), .carry(c3), .sum(S[3]), .cout(C_out)); 

endmodule

module full_adder(input a, input b, input carry, output sum, output cout);

assign {cout, sum} = a + b + carry;

endmodule 