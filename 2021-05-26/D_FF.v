module D_FF(Q, D, Clk, rst);

    output Q;
    input D, Clk, rst;

    reg Q;

    always @(posedge Clk or negedge rst)

        if(~rst) Q <= 1'b0;
        else Q<=D;

endmodule