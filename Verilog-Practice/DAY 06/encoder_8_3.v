 module octal_to_binary_encoder(input [7:0] octal, 
                                output reg [2:0] binary);
	
  always@(*) begin
    case(octal)
	    8'b0000_0001 : binary = 3'b000; 
        8'b0000_0010 : binary = 3'b001;
        8'b0000_0100 : binary = 3'b010;
        8'b0000_1000 : binary = 3'b011;
        8'b0001_0000 : binary = 3'b100;
        8'b0010_0000 : binary = 3'b101;
        8'b0100_0000 : binary = 3'b110;
        8'b1000_0000 : binary = 3'b111;
        default: binary = 3'bxxx;
	
	endcase
  
  end


 endmodule