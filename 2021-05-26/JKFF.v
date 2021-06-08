module JKFF(Q, J, K, Clk, rst);

    output Q;

    input J, K, Clk, rst;

    wire JK;

    assign JK = (J & ~Q) | (~K & Q);

    D_FF JK1(Q, JK, Clk, rst);

endmodule