module JKFF_test;

    reg J, K, Clk, rst;

    wire Q;

    JKFF D_latch_1(Q, J, K, Clk, rst);

    initial begin

        Clk = 0;

        forever #5

        Clk = ~Clk;

    end

    initial begin

        J = 0;K = 0;rst = 0;
        #9 J = 1;
        #1 rst = 1;
        #9 J = 0;
        #10 J = 1;K = 1;
        #20 J = 0;
        #10 K = 0;
        #10 rst = 0;
        #10 K = 1;
        #10 J = 1;
        #10 J = 0;
        #10 $finish;

    end

endmodule