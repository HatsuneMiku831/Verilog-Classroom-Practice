module mux2_4(res, in0, in1, S);

    input [3:0] in0, in1;
    input S;
    output[3:0] res;

    not(si,S);

    and and1(si01, si, in0[3]);
    and and2(si02, si, in0[2]);
    and and3(si03, si, in0[1]);
    and and4(si04, si, in0[0]);
    and and5(s11, S, in1[3]);
    and and6(s12, S, in1[2]);
    and and7(s13, S, in1[1]);
    and and8(s14, S, in1[0]);

    or or1(res[3], si01, s11);
    or or2(res[2], si02, s12);
    or or3(res[1], si03, s13);
    or or4(res[0], si04, s14);

endmodule