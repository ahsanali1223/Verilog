 module tb_sr_latch;
  reg S, R;
  wire Q, Qbar;
  
  sr_latch dut (.S(S),
                .R(R),
                .Q(Q),
                .Qbar(Qbar)				
                );
  
  initial begin
    S = 0;
    R = 0;
    $monitor("  %0d  S %b R %b Q %b Qbar %b", $time, S, R, Q, Qbar);
    S = 0;R = 0; #10;
    S = 1;R = 0; #10;
    S = 0;R = 1; #10;
    S = 0;R = 0; #10;
	 
  end
  
 endmodule