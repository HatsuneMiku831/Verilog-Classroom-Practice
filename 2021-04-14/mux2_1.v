module mux2_1(res, in0, in1, S);

    output res;
    input in0, in1;
    input S;

    wire S_n;

    not not_1(S_n, S);

    and and_1(S_n_in0, S_n,in0);
    and and_2(S_in1, S, in1);
    
    or or_1(res, S_n_in0, S_in1);

endmodule