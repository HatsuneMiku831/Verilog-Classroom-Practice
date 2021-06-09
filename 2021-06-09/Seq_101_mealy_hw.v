module Seq_101_mealy_hw(z, w, Reset, clk);

    input w, Reset, clk;
    output z;
    reg z;

    reg [1:0] x;

    parameter A = 2'b00, B = 2'b01, C = 2'b10;

    always @(posedge clk or negedge Reset)

        if(!Reset) begin
            
            x = A;
            z = 0;

        end
        else

            case(x)

                A:
                    if(w == 1) begin
                        
                        x = B;
                        z = 0;

                    end
                    else begin
                        
                        x = A;
                        z = 0;

                    end

                B:
                    if(w == 1) begin

                        x = B;
                        z = 0;

                    end
                    else begin

                        x = C;
                        z = 0;

                    end

                C:
                    if(w == 1) begin

                        x = A;
                        z = 1;

                    end
                    else begin

                        x = A;
                        z = 0;

                    end

            endcase

endmodule