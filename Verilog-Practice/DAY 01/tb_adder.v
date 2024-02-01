module tb_adder4bit();
reg [3:0] a,b;
reg c_in;
wire [3:0] s;
wire c_out;

adder4bit dut (a,b,c_in,s,c_out);

initial 
begin
#100
a=9;b=8;c_in=1;
#100
a=2;b=7;c_in=0;
#100
a=1;b=4;c_in=0;
#100
a=1;b=1;c_in=1;
end
//display results on console

endmodule
