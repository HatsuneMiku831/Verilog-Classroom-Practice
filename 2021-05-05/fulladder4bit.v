module fulladder4bit(A, B, Cin, SUM, Cout);

    input [3:0] A, B;
    input Cin;

    output [3:0] SUM;
    output Cout;

    assign {Cout,SUM} = A + B + Cin;

endmodule