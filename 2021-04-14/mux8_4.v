module mux8_4(res,in0,in1,in2,in3,in4,in5,in6,in7,S);

    input in0, in1, in2, in3, in4, in5, in6, in7;
    input [2:0] S;
    output res;

    mux4_1 mux4_1_g1(res0, in0, in1, in2, in3, S[1:0]);
    mux4_1 mux4_1_g2(res1, in4, in5, in6, in7, S[1:0]);
    mux2_1 mux2_1_g3(res, res0, res1, S[2]);

endmodule