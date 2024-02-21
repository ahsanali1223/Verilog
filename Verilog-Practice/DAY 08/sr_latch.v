 module sr_latch(input S, R, output reg Q, Qbar);
 
  always@(*) begin
    if(S == 1'b1) begin
	    Q = 1'b1;
		Qbar = 1'b0;
	end
	else if (R == 1'b1) begin
		Q = 1'b0;
		Qbar = 1'b1;  	
	end 
  end
 
 endmodule
