module tb_mux_4_1;
 reg [1:0] sel;
 reg [3:0] in1, in2, in3, in4;
 wire [3:0] out;
 
 mux_4_1 uut( 
             .in1(in1),
			 .in2(in2),
			 .in3(in3),
			 .in4(in4),
			 .sel(sel),
			 .out(out)
			);
			
   initial begin
     #10;
      in1 = 4'b0000;
      in2 = 4'b0001;
	  in3 = 4'b0010;
      in4 = 4'b0011;
      sel = 2'b00;
      $display("in1 = %d, in2 = %d, sel = %b, out = %d", in1, in2, sel, out);
      #10;
      sel = 2'b01;
      $display("in1 = %d, in2 = %d, sel = %b, out = %d", in1, in2, sel, out);
      #10;
	  sel = 2'b10;
      $display("in1 = %d, in2 = %d, sel = %b, out = %d", in1, in2, sel, out);
	  #10;
	  sel = 2'b11;
      $display("in1 = %d, in2 = %d, sel = %b, out = %d", in1, in2, sel, out);
	  #100;
      $finish;
 
   end
 
 endmodule


