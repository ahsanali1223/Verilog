 module d_latch(input D, input En, output reg Q, output Qbar);
 
 assign Qbar = ~Q;
 
  always@(*) begin
    if (En == 1'b1) begin
	    if (D == 1'b0) 
	       Q = 1'b0;
	   else 
	       Q = 1'b1;		   
	end      	
  end
  
 endmodule