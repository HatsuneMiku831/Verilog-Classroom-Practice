module BCDadder_test;

    reg [3:0]A, B;
    reg Cin;

    wire Cout;
    wire [3:0]S;

    BCDadder BCDadder1(Cout, S, A, B, Cin);

    initial 
    
        begin
        
            A = 9;
            B = 9;
            Cin = 0;
            #10

            A = 5;
            B = 5;
            Cin = 0;
            #10

            A = 3;
            B = 1;
            Cin = 0;
            #10

            A = 7;
            B = 5;
            Cin = 1;
            #10

            A = 1;
            B = 3;
            Cin = 1;
            #10

            $finish;

        end

endmodule