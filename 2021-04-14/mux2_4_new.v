module mux2_4_new(res, in0, in1, S);

    input [3:0] in0, in1;
    input S;
    output[3:0] res;

    mux2_1 m0(res[3], in0[3], in1[3], S);
    mux2_1 m1(res[2], in0[2], in1[2], S);
    mux2_1 m2(res[1], in0[1], in1[1], S);
    mux2_1 m3(res[0], in0[0], in1[0], S);

endmodule