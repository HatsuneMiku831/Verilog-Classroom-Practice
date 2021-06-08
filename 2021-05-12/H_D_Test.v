module H_D_Test;

    reg [6:0]H;

    wire Err;
    wire [3:0]D;

    hamming_decode H_D(Err, D, H);

    initial begin
        
        H = 7'b1110101;
        #10

        H = 7'b0000111;
        #10

        H = 7'b0101101;
        #10

        H = 7'b1100000;
        #10

        H = 7'b1001011;
        #10

        $finish;

    end

endmodule