module mux_4_1(input [3:0] in1, in2, in3, in4, input [1:0] sel, output [3:0] out);


 assign out = (sel == 2'b00)? in1:
              (sel == 2'b01)? in2:
	          (sel == 2'b10)? in3: in4;
             
endmodule


