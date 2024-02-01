module tb_mux_8_1;
 reg [2:0] sel;
 reg [7:0] data_in;
 wire data_out;
 
 mux_8_1 uut( 
             .data_in(data_in),
			 .sel(sel),
			 .data_out(data_out)
			);
			
   initial begin
     #10;
      data_in = 8'b11010001;
      sel = 3'b000;
      #10;
      sel = 3'b001;
      #10;
	  sel = 3'b010;
	  #10;
	  sel = 3'b011;
	  #10;
	  sel = 3'b100;
	  #10;
	  sel = 3'b101;
	  #10;
	  sel = 3'b110;
	  #10;
	  sel = 3'b111;
	  #100;
      $finish;
 
   end
 
 endmodule



