module mux4_1_test;

    reg in0,in1,in2,in3;
    reg [1:0]S;
    wire res;

    mux4_1 mux4_1_g1(res,in0,in1,in2,in3,S);

    initial

        begin

            in0=0;in1=1;in2=1;in3=1;
            
            S=0;
            #10

            in0=1;in1=0;in2=0;in3=0;#10

            in0=1;in1=0;in2=1;in3=1;

            S=1;
            #10

            in0=0;in1=1;in2=0;in3=0;#10

            in0=1;in1=1;in2=0;in3=1;
            
            S=2;
            #10

            in0=0;in1=0;in2=1;in3=0;#10

            in0=1;in1=1;in2=1;in3=0;
            
            S=3;
            #10 

            in0=0;in1=0;in2=0;in3=1;#10

            S = 0;

            in0 = 1;in1 = 0;in2 = 0;in3 = 0;#10

            S = 1;

            in0 = 1;in1 = 0;in2 = 1;in3 = 1;#10

            S = 2;

            in0 = 0;in1 = 0;in2 = 1;in3 = 0;#10

            S = 3;

            in0 = 1;in1 = 1;in2 = 1;in3 = 0;#10

            $finish;

        end
endmodule