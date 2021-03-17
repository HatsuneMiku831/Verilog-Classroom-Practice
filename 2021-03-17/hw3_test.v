module hw3_test;

    reg [3:0] abcd;
    wire f1out, notf1out;

    hw3_f1 f1(f1out, abcd[3], abcd[2], abcd[1], abcd[0]);
    hw3_notf1 notf1(notf1out, abcd[3], abcd[2], abcd[1], abcd[0]);

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
