module and_4_bit_test;

    reg [3:0] a, b;
    wire [3:0] c;

    and_4_bit and_4_bit_gate1(c, a, b);

    initial 

        begin

            a = 4'b0000;
            b = 4'b0011;
            #10

            a = 4'b1111;
            b = 4'b0011;
            #10

            a = 4'b1100;
            b = 4'b0011;
            #10

            a = 4'b0101;
            b = 4'b0000;
            #10

            $finish;

        end
        
endmodule

