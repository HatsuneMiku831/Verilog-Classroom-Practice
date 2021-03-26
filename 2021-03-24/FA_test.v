module FA_test;

    reg [3:0] a, b;
    reg Cin;

    integer i, j;

    wire [3:0] s;
    wire cout;

    fulladd4 fa4(s, cout, a, b, Cin);
    
    initial begin

        a = 0;
        b = 0;
        Cin = 0;

        for(i = 0; i <= 0; i = i + 1)
        begin

            #10
            a = i;

                for(j = 0; j <= 15; j = j + 1)
                begin
                
                    #10
                    b = j;
                
                end

        end

        #10

        $finish;

    end

endmodule