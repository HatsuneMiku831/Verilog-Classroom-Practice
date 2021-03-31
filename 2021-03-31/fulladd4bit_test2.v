module fulladd4bit_test2;

    reg [3:0] a, b;
    reg Cin;

    wire [3:0] s;
    wire overflow;

    fulladd4bit fa4(s, overflow, a, b, Cin);
    
    initial begin

        a = 4'b1001;
        b = 4'b1100;
        Cin = 0;
        #10

        a = 4'b1100;
        b = 4'b1001;
        Cin = 1;
        #10

        a = 4'b1000;
        b = 4'b1000;
        Cin = 1;
        #10

        $finish;

    end

endmodule