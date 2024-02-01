module tb_mux_2_1;
 reg sel;
 reg [3:0] in1, in2;
 wire [3:0] out;
 
 mux_2_1 uut( 
             .in1(in1),
			 .in2(in2),
			 .sel(sel),
			 .out(out)
			);
			
   initial begin
     #10;
      in1 = 4'b0110;
      in2 = 4'b1111;
      sel = 0;
      $display("in1 = %d, in2 = %d, sel = %b, out = %d", in1, in2, sel, out);
      #10;
      sel = 1;
      $display("in1 = %d, in2 = %d, sel = %b, out = %d", in1, in2, sel, out);
 
      $finish;
 
   end
 
 endmodule

