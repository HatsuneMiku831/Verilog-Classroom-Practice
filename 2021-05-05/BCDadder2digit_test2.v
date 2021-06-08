module BCDadder2digit_test2;

    reg [7:0]A, B;
    reg Cin;

    wire Cout;
    wire [7:0]S;

    BCDadder2digit BCDadder1(Cout, S, A, B, Cin);

    initial 
    
        begin
        
            A[7:4] = 2;A[3:0] = 9;
            B[7:4] = 4;B[3:0] = 1;
            Cin = 1;
            #10

            A[7:4] = 7;A[3:0] = 0;
            B[7:4] = 9;B[3:0] = 3;
            Cin = 1;
            #10
            
            A[7:4] = 2;A[3:0] = 0;
            B[7:4] = 5;B[3:0] = 6;
            Cin = 1;
            #10
            
            A[7:4] = 7;A[3:0] = 9;
            B[7:4] = 0;B[3:0] = 9;
            Cin = 1;
            #10

            A[7:4] = 3;A[3:0] = 2;
            B[7:4] = 6;B[3:0] = 5;
            Cin = 1;
            #10

            $finish;

        end

endmodule