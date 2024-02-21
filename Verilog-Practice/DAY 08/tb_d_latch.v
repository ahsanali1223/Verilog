 module tb_d_latch;
  reg D, En;
  wire Q, Qbar;
  
   d_latch dut (.D(D), .En(En), .Q(Q), .Qbar(Qbar));
   
 initial begin
  D = 1'b0;
  En = 1'b0;
  #10;
  D = 1'b1;
  En = 1'b1;
  #10;
  D = 1'b0;
  En = 1'b1;
  #10;
  D = 1'b1;
  En = 1'b0;  
  
  $display("Time D En Q Qbar");
  $monitor("%d %b %b %b %b", $time, D, En, Q, Qbar);
 
 end
 
 endmodule