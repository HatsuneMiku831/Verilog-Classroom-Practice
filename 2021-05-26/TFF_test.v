module TFF_test;

    reg T, Clk, rst;
    wire Q;

    TFF D_latch_1(Q, T, Clk, rst);

    initial begin

        Clk = 1;
        forever #5 
        Clk = ~Clk;

    end

    initial begin

        T = 0;rst = 0;
        #9 T = 1;
        #1 rst = 1;
        #9 T = 0; 
        #10 T = 1;
        #10 T = 0;
        #10 T = 1;
        #11 rst = 0;
        #10 $finish;

    end

endmodule