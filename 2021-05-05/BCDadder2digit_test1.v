module BCDadder2digit_test1;

    reg [7:0]A, B;
    reg Cin;

    wire Cout;
    wire [7:0]S;

    BCDadder2digit BCDadder1(Cout, S, A, B, Cin);

    initial 
    
        begin
        
            A[3:0] = 9;
            A[7:4] = 9;
            B[3:0] = 9;
            B[7:4] = 9;
            Cin = 0;
            #10

            A[3:0] = 2;
            A[7:4] = 1;
            B[3:0] = 2;
            B[7:4] = 1;
            Cin = 0;
            #10

            A[3:0] = 5;
            A[7:4] = 5;
            B[3:0] = 5;
            B[7:4] = 5;
            Cin = 0;
            #10

            A[3:0] = 3;
            A[7:4] = 1;
            B[3:0] = 4;
            B[7:4] = 5;
            Cin = 0;
            #10

            A[3:0] = 9;
            A[7:4] = 1;
            B[3:0] = 1;
            B[7:4] = 9;
            Cin = 0;
            #10

            $finish;

        end

endmodule