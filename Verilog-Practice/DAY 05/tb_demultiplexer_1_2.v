 module tb_demux_1_2;

  reg din, sel;
  wire out1, out2;

   demux_1_2 uut (.din(din),
                  .sel(sel),
			      .out1(out1),
			      .out2(out2)
                 );

 initial begin
    din = 1'b0; 
	sel = 0;
    #10;
    din = 1'b1; 
	sel = 0;
    #10;
    din = 1'b1; 
	sel = 1;
    #10;
    din = 1'b0; 
	sel = 1;
    #10;
    $finish;
end
always @(sel, din) begin
    $display("sel = %b, din = %b, out1 = %b, out2 = %b", sel, din, out1, out2);
end


 endmodule