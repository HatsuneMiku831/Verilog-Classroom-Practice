module carryselectadder8bit_test1;

    reg [7:0]A, B;
    reg Cin;

    wire Cout;
    wire [7:0]S;

    carryselectadder8bit CSA8bit(A, B, Cin, S, Cout);

    initial

        begin
        
            A = 8'b11111111;
            B = 8'b11111111;
            Cin = 0;
            #10

            A = 8'b01110111;
            B = 8'b00110101;
            Cin = 0;
            #10

            A = 8'b11111111;
            B = 8'b11000001;
            Cin = 0;
            #10

            A = 8'b10100101;
            B = 8'b11010010;
            Cin = 0;
            #10

            A = 8'b11011100;
            B = 8'b01101010;
            Cin = 0;
            #10

            $finish;

        end

endmodule