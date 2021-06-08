module D_latch_test;

    reg D, enable;

    wire Q;

    D_latch D_latch_1(Q, D, enable);

    initial begin
        
        #0

        D = 1;
        enable = 0;
        #5

        enable = 1;
        #10

        D = 0;
        #10

        enable = 0;
        #10

        $finish;

    end

endmodule