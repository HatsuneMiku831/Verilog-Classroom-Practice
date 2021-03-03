module and_8_bit_test;

    reg [7:0] a, b;
    wire [7:0] c;

    and_8_bit and_8_gate1(c, a, b);

    initial
    
        begin

            a = 8'b11110000;
            b = 8'b11111111;
            #10

            a = 8'b11110011;
            b = 8'b00000101;
            #10

            $finish;

        end

endmodule