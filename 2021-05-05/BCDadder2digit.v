module BCDadder2digit(Cout, F, A, B, Cin);

    output Cout;
    output [7:0]F;

    input Cin;
    input [7:0]A, B;

    wire [7:0]S, P;
    wire FA1Cout, FA2Cout, FA3Cout, Cout1, NotCout;

    fulladder4bit FA1(A[3:0], B[3:0], Cin, S[3:0], FA1Cout);

    and(S3AndS1, S[3], S[1]);
    and(S3AndS2, S[3], S[2]);

    or (Cout1, FA1Cout, S3AndS1, S3AndS2);

    assign P[3:0] = {1'b0, Cout1, Cout1, 1'b0};

    fulladder4bit FA2(P[3:0], S[3:0], 1'b0, F[3:0], FA2Cout);

    

    fulladder4bit FA3(A[7:4], B[7:4], Cout1, S[7:4], FA3Cout);

    and(S7AndS5, S[7], S[5]);
    and(S7AndS6, S[7], S[6]);

    or (Cout, FA3Cout, S7AndS5, S7AndS6);

    assign P[7:4] = {1'b0, Cout, Cout, 1'b0};

    fulladder4bit FA4(P[7:4], S[7:4], 1'b0, F[7:4], NotCout);

endmodule