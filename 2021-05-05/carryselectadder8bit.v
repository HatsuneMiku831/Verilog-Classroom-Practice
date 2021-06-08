module carryselectadder8bit(A, B, Cin, Sum, Cout);

    input [7:0]A, B;
    input Cin;

    output [7:0]Sum;
    output Cout;

    wire SE, FA1Cout, FA2Cout;
    wire [3:0]FA1Sum, FA2Sum;

    fulladder4bit MainFA(A[3:0], B[3:0], Cin, Sum[3:0], SE);

    fulladder4bit FA1(A[7:4], B[7:4], 1'b0, FA1Sum[3:0], FA1Cout);
    fulladder4bit FA2(A[7:4], B[7:4], 1'b1, FA2Sum[3:0], FA2Cout);

    mux2_4 SumMUX(Sum[7:4], FA1Sum[3:0], FA2Sum[3:0], SE);
    mux2_1 CoutMUX(Cout, FA1Cout, FA2Cout, SE);

endmodule