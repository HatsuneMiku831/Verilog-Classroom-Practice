module carryselectadder8bit_test2;

    reg [7:0]A, B;
    reg Cin;

    wire Cout;
    wire [7:0]S;

    carryselectadder8bit CSA8bit(A, B, Cin, S, Cout);

    initial

        begin
        
            A = 8'b11111111;
            B = 8'b11111111;
            Cin = 1;
            #10

            A = 8'b00111110;
            B = 8'b01111111;
            Cin = 1;
            #10

            A = 8'b10101101;
            B = 8'b11010101;
            Cin = 1;
            #10

            A = 8'b00100101;
            B = 8'b11000001;
            Cin = 1;
            #10

            A = 8'b00001100;
            B = 8'b11101010;
            Cin = 1;
            #10

            $finish;

        end

endmodule