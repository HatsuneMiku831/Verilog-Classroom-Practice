module MyTest1;

    reg [7:0] B, A;
    reg Cin;
  
    wire [7:0] SUM;
    wire Cout;

    binary_adder adder1(A, B, Cin, SUM, Cout);

    initial

        begin

                A = 8'b00000001;
                B = 8'b00000001;
                Cin = 1'b0;

            #100

                A = 8'b11111111;
                B = 8'b00000000;
                Cin = 1'b1;

            #100
    
            $finish;

        end

endmodule
