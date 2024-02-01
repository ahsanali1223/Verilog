module tb_Gray_to_Bin_4bit_converter;

 reg [3:0] gray;
 wire [3:0] bin;
 integer i;

  Gray_to_Bin_4bit_converter uut(.gray(gray), .bin(bin));
 
 initial begin
 gray = 4'b0000;
 $display("Input (Gray)   |  Output (Binary)");
 for ( i = 0; i <= 16; i = i+1) begin
 $display("%4b     | %4b", gray, bin);
 gray = gray + 1;
 #10;
 end
 $finish;
 end


endmodule
