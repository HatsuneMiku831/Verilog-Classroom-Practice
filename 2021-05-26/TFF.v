module TFF(Q, T, Clk, rst);

    output Q;

    input T, Clk, rst;

    wire DT;

    assign DT = Q ^ T;
    
    D_FF TF1(Q, DT, Clk, rst);

endmodule