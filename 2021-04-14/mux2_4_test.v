module mux2_4_test;

    reg [3:0] in0, in1;
    reg S;

    wire [3:0] res;

    mux2_4 mux_g1(res,in0,in1,S);

    initial

        begin

            in0=8;in1=4;S=0;#10

            in0=7;in1=3;#10

            in0=6;in1=2;S=1;#10

            in0=5;in1=1;#10

            in0 = 4;in1 = 5;S = 1;#10

            in0 = 3;in1 = 6;S = 0;#10

            in0 = 2;in1 = 7;S = 1;#10

            in0 = 1;in1 = 8;S = 0;#10

            $finish;
        end 
endmodule