module mux2_1_new(res, in0, in1, S);

    output res;
    input in0, in1;
    input S;

    wire S_n;

    assign res = S ? in1:in0;

endmodule