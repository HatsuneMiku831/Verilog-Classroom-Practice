module fulladd4bit2_test1;

    reg [3:0] a, b;
    reg Cin;

    wire Error, Gt, Ls;

    fulladd4bit2 fa4(Gt, Ls, Error, a, b, Cin);
    
    initial begin

        Cin = 1;

        a = 4'b1010;
        b = 4'b1010;
        #10

        a = 4'b0001;
        b = 4'b0100;
        #10

        a = 4'b0111;
        b = 4'b1010;
        #10

        a = 4'b1100;
        b = 4'b1001;
        #10

        $finish;

    end

endmodule
