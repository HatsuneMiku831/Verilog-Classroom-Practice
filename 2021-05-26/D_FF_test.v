module D_FF_test;

    reg D, Clk, rst;
    wire Q;

    D_FF D_latch_1(Q, D, Clk, rst);

    initial begin

        Clk = 0;

        forever #5

        Clk =~ Clk;

    end

    initial begin

        #0

        D = 0;rst = 0;
        #4

        D = 1;rst = 1;
        #5

        D = 0;
        #10
    
        D = 1;
        #10
    
        rst = 0;
        #10

        $finish;

    end

endmodule