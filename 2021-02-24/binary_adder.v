module binary_adder(A, B, Cin, SUM, Cout);

    input [7:0] A, B;
    input Cin;

    output [7:0] SUM;
    output Cout;

    assign {Cout,SUM} = A + B + Cin;

endmodule
