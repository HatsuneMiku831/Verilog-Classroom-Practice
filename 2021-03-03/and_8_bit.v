module and_8_bit(c, a, b);

    input [7:0] a, b;
    output [7:0] c;

    and_4_bit and_g1(c[3:0], a[3:0], b[3:0]);
    and_4_bit and_g2(c[7:4], a[7:4], b[7:4]);

endmodule