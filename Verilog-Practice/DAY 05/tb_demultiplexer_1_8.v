 module tb_demux_1x8;
 
 reg [3:0] din;
 reg [2:0] sel;
 wire [3:0] out0, out1, out2, out3, out4, out5, out6, out7;
 
 demux_1x8 uut (.din(din),
                .sel(sel),
				.dout0(out0),
				.dout1(out1),
				.dout2(out2),
				.dout3(out3),
				.dout4(out4),
				.dout5(out5),
				.dout6(out6),
				.dout7(out7)
                );
	
    initial begin
      #10;
      din = 4'b0000;
      sel = 3'b000;
	  #10;
	  din = 4'b0001;
	  sel = 3'b001;
	  #10;
	  din = 4'b0010;
	  sel = 3'b010;
	  #10;
	  din = 4'b0011;
	  sel = 3'b011;
	  #10;
	  din = 4'b0100;
	  sel = 3'b100;
	  #10;
	  din = 4'b0101;
	  sel = 3'b101;
	  #10;
	  din = 4'b0110;
	  sel = 3'b110;
	  #10;
	  din = 4'b0111;
	  sel = 3'b111; 
	  #100;
	  $finish;
 
 
 end

 endmodule