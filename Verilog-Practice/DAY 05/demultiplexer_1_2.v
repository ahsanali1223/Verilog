 module demux_1_2(input din, sel, output out1, out2);

    assign out1 = (sel)? 1'b0: din;
    assign out2 = (sel)? din : 1'b0;

 endmodule
