module gtob(b, g);

    input [3:0] g;
    output [3:0] b;

    buf buf_b3(b[3], g[3]);

    xor xor_b2(b[2], b[3], g[2]);
    xor xor_b1(b[1], b[2], g[1]);
    xor xor_b0(b[0], b[1], g[0]);

endmodule