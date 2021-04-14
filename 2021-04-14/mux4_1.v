module mux4_1(res,in0,in1,in2,in3,S);

    output res;
    input in0, in1, in2, in3;
    input [1:0]S;

    mux2_1 mux_2_1_g1(res0, in0, in1, S[0]);
    mux2_1 mux_2_1_g2(res1, in2, in3, S[0]);
    mux2_1 mux_2_1_g3(res, res0, res1,S[1]);
    
endmodule