 module demux_1x4(input [3:0] din,
                  input [1:0] sel, 
				  output [3:0] dout1, dout2, dout3, dout4
				  );

   assign dout1 = (sel == 2'b00)? din: 4'b0000;
   assign dout2 = (sel == 2'b01)? din: 4'b0000;
   assign dout3 = (sel == 2'b10)? din: 4'b0000;
   assign dout4 = (sel == 2'b11)? din: 4'b0000;

   

 endmodule