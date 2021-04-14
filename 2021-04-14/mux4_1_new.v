module mux4_1_new(res,in0,in1,in2,in3,S);

    output res;
    input in0, in1, in2, in3;
    input [1:0] S;

    assign res = (S == 2'b11) ? in3:
                 (S == 2'b10) ? in2:
                 (S == 2'b01) ? in1:
                 in0;
    
endmodule