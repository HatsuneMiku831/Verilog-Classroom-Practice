module and_4_bit(c, a, b);

    input [3:0] a, b;
    output [3:0] c;

    and and_g1(c[3], a[3], b[3]);
    and and_g2(c[2], a[2], b[2]);
    and and_g3(c[1], a[1], b[1]);
    and and_g4(c[0], a[0], b[0]);

endmodule