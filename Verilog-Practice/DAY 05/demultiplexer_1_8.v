 module demux_1x8(input [3:0] din,
                  input [2:0] sel, 
				  output reg [3:0] dout0, dout1, dout2, dout3, dout4, dout5, dout6, dout7
				  );

 always@(*) begin
   case(sel) 
       3'b000: dout0 = din;
	   3'b001: dout1 = din;
	   3'b010: dout2 = din;
	   3'b011: dout3 = din;
	   3'b100: dout4 = din;
	   3'b101: dout5 = din;
	   3'b110: dout6 = din;
	default:
	       dout7 = din;
		   
   endcase 
 end
   

 endmodule