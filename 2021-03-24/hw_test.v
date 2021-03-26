module hw_test;

    reg [3:0] a, b;
    reg Cin;

    integer i, j;

    wire [3:0] s;
    wire cout;

    fulladd4 fa4(s, cout, a, b, Cin);
    
    initial begin

        a = 11;
        b = 0;
        Cin = 1;

        for(i = 11; i <= 11; i = i + 1)
        begin

            a = i;

                for(j = 0; j <= 16; j = j + 1)
                begin
                
                    #10
                    b = j;
                
                end

        end

        $finish;

    end

endmodule