module fulladd4bit_test1;

    reg [3:0] a, b;
    reg Cin;

    wire [3:0] s;
    wire overflow;

    fulladd4bit fa4(s, overflow, a, b, Cin);
    
    initial begin

        a = 4'b1010;
        b = 4'b1010;
        Cin = 1;
        #10

        a = 4'b0000;
        b = 4'b0000;
        Cin = 0;
        #10

        a = 4'b0111;
        b = 4'b1010;
        Cin = 1;
        #10

        $finish;

    end

endmodule