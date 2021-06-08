module BCDadder(Cout, F, A, B, Cin);

    output Cout;
    output [3:0]F;

    input Cin;
    input [3:0]A, B;

    wire [3:0]S, P;
    wire FA1Cout;

    fulladder4bit FA1(A, B, Cin, S, FA1Cout);

    and(S3AndS1, S[3], S[1]);
    and(S3AndS2, S[3], S[2]);

    or (Cout, FA1Cout, S3AndS1, S3AndS2);

    assign P = {1'b0, Cout, Cout, 1'b0};

    fulladder4bit FA2(P, S, 1'b0, F, NotCout);

endmodule