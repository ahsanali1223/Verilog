module tb_Bin_to_Gray_4bit_converter;
 
 reg [3:0] Bin;
 wire [3:0] Gray;
 integer i;
 Bin_to_Gray_4bit_converter uut (.bin(Bin), .gray(Gray));

  initial begin
    Bin = 4'b0000;
    $display("Input (Binary) | Output (Gray)");
    for (i = 0; i < 16; i = i + 1) begin
    $display("%4b     | %4b", Bin, Gray);
    Bin = Bin + 1;
    #10;
    end
    $finish;
  end

endmodule
