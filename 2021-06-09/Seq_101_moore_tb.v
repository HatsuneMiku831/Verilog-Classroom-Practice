module Seq_101_moore_tb;

    reg w, Reset, Clk; 
    wire z;

    Seq_101_moore Seq_101_moore(z, w, Reset, Clk);

    initial begin

        Reset = 0;
        Clk = 0;
        w = 1;
        #2

        Reset = 1; #20
        
        w = 0; #10
        w = 1; #20
        w = 0; #10
        w = 1; #10
        w = 0; #10
        w = 1; #20

        $finish;

    end

    always #5 begin

        Clk = ~Clk;

    end

endmodule