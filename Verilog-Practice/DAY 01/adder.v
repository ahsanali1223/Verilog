module adder(a,b,c_in,s,c_out);

 input a;
 input b;
 input c_in;
 output s;
 output c_out;

 assign {c_out,s} = a+b+c_in;

endmodule
