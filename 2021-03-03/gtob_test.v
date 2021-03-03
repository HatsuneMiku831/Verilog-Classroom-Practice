module gtob_test;

    reg [3:0] g;
    wire [3:0] b;

    gtob g1(b, g);

    initial
    
        begin

            g = 4'b0001;
            #10

            g = 4'b0011;
            #10

            g = 4'b0010;
            #10

            g = 4'b0110;
            #10

            $finish;

        end

endmodule