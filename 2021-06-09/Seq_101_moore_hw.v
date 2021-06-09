module Seq_101_moore_hw(z, w, Reset, clk);

    input w, Reset, clk;
    output z;

    reg [1:0] y;

    parameter A=2'b00, B=2'b01, C=2'b10, D=2'b11;

    always @(posedge clk or negedge Reset)

        if (!Reset) y <= A;
        else

            case (y)

                A:
                    if(w) y <= B;
                    else y <= A;

                B:
                    if(w) y <= B;
                    else y <= C;

                C:
                    if(w) y <= D;
                    else y <= A;

                D:
                    if(w) y <= B;
                    else y <= A;

                default:
                
                    y <= 2'bxx;

            endcase

    assign z = (y == D) ? 1:0;

endmodule