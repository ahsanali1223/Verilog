module adder4bit(a,b,c_in,s,c_out);

 input [3:0] x,b;
 input c_in;
 output [3:0] s;
 output c_out;
 wire temp_1,temp_2,temp_3;

adder fa1 (a,b,c_in,s[0],temp_1);
adder fa2 (a[1],b[1],temp_1,s[1],temp_2);
adder fa3 (a[2],b[2],temp_2,s[2],temp_3);
adder fa4 (a[3],b[3],temp_3,s[3],c_out);

endmodule
