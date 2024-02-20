 module testbench;

  reg [7:0] octal;  
  wire [2:0] binary;

 octal_to_binary_encoder dut ( .octal(octal), .binary(binary) );

  initial begin
   $monitor("octal = %b, binary = %b", octal, binary);
     octal = 8'b0000_0001; #10;
     octal = 8'b0000_0010; #10;
     octal = 8'b0000_0100; #10;
     octal = 8'b0000_1000; #10;
     octal = 8'b0001_0000; #10;
     octal = 8'b0010_0000; #10;  
     octal = 8'b0100_0000; #10;
     octal = 8'b1000_0000; #10;
     octal = 8'bXXXX_XXXX; #10;
  end
      
 endmodule