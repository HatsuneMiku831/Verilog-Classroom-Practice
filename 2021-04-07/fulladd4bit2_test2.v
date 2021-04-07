module fulladd4bit2_test2;

    reg [3:0] a, b;
    reg Cin;

    wire Error, Gt, Ls;

    fulladd4bit2 fa4(Gt, Ls, Error, a, b, Cin);
    
    initial begin

        Cin = 1;

        a = 4'b0000;
        b = 4'b0000;
        #10

        a = 4'b0110;
        b = 4'b1000;
        #10

        a = 4'b1000;
        b = 4'b0101;
        #10

        a = 4'b0000;
        b = 4'b1111;
        #10

        $finish;

    end

endmodule
