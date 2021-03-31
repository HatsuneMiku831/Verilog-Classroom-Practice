module fulladd4bit_test3;

    reg [3:0] a, b;
    reg Cin;

    wire [3:0] s;
    wire overflow;

    fulladd4bit fa4(s, overflow, a, b, Cin);
    
    initial begin

        a = 4'b0110;
        b = 4'b1001;
        Cin = 1;
        #10

        a = 4'b1000;
        b = 4'b0111;
        Cin = 1;
        #10

        a = 4'b0000;
        b = 4'b1111;
        Cin = 0;
        #10

        a = 4'b1111;
        b = 4'b0100;
        Cin = 0;
        #10

        $finish;

    end

endmodule