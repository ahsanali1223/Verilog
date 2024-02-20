 module tb_encoder_4_2;
 
  reg [3:0] in;
  wire [1:0] out;
  
  encoder_4_2 uut (.in(in),
                   .out(out)				   
                   );
 initial begin
  $monitor("in = %b, out = %b", in, out); 
  #10;
  in = 4'b0001;
  #10;
  in = 4'b0010;
  #10;
  in = 4'b0100;
  #10;
  in = 4'b1000;
  #10;
  in = 4'b1111;
  #10;
 end
  
 endmodule