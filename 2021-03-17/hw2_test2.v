module hw3_test2;

    reg [3:0] abcd;
    wire f2out;

    hw3_f2 f2(f2out, abcd[3], abcd[2], abcd[1], abcd[0]);

    initial begin
        
        abcd = 0;
        #80

        $finish;

    end

    always begin
        
        #5

        abcd = abcd + 1;

    end
    
endmodule