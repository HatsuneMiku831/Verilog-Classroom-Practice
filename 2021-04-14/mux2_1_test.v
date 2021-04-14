module mux_2_1_test;

    reg in0, in1;
    reg S;

    wire res;

    mux2_1 mux2_1_g1(res, in0, in1,S);

    initial

        begin

            in0=0;in1=1;S=0;
            #10
            
            in0=1;in1=0;
            #10
            
            S=1;
            
            in0=1;in1=0;
            #10
            
            in0=0;in1=1;
            #10

            in0 = 1;in1 = 1;S = 0;
            #10

            in0 = 0;in1 = 0;S = 1;
            #10

            in0 = 0;in1 = 1;S = 0;
            #10

            in0 = 1;in1 = 0;S = 1;
            #10
    
            $finish;

        end
endmodule