 module tb_demux_1_4;
    reg [3:0] din;
    reg [1:0] sel; 
    wire [3:0] dout1, dout2, dout3, dout4;
	
	
	demux_1x4 uut(.din(din),
                  .sel(sel),
			      .dout1(dout1),
			      .dout2(dout2),
				  .dout3(dout3),
				  .dout4(dout4)
                  );
	
 initial begin
  #10;
  din = 4'b0001;
  sel = 2'b00;
  #10;
  din = 4'b0011;
  sel = 2'b01;
  #10;
  din = 4'b0111;
  sel = 2'b10;
  #10;
  din = 4'b1111;
  sel = 2'b11;
   
 end
		
 endmodule
 