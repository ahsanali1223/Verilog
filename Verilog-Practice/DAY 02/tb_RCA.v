`timescale 1ns / 1ps

module tb_ripple_carry_adder_4bit();

reg [3:0] A, B;
reg Cin;
wire [3:0] S;
wire C_out;

RCA_4bit dut(
    .A(A), 
    .B(B),
    .Cin(Cin), 
    .S(S),
    .C_out(C_out)
);

initial begin
    Cin = 0;
    A = 4'b0000; B = 4'b0000;
    #10;
    A = 4'b0001; B = 4'b0001; 
    #10;
    A = 4'b0010; B = 4'b0011;
    #10;
    A = 4'b0001; B = 4'b0110;
    #10;
    
    $display("SUM = %b, COUT = %b", S, C_out);
    $finish;
end
      
endmodule