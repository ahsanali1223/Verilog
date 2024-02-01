module mux_2_1(input [3:0] in1, in2, input sel, output reg [3:0] out);

 always@(*) begin
 if(sel)
    out = in2; 
 else
    out = in1;
 
 end

endmodule

