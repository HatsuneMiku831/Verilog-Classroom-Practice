module Seq_101_mealy(z, w, Reset, clk);

    input w, Reset, clk;
    output z;
    reg z;

    reg [1:0] y;
    parameter A = 2'b00, B = 2'b01, C = 2'b10;

    always @(posedge clk or negedge Reset)

        if(!Reset) begin
            
            y = A;
            z = 0;

        end
        else

            case(y)

                A:
                    if(w == 1) begin
                    
                        y = B;
                        z = 0;

                    end
                    else begin
                        
                        y = A;
                        z = 0;

                    end

                B:
                    if(w == 1) begin
                        
                        y = B;
                        z = 0;

                    end
                    else begin
                        
                        y = C;
                        z = 0;

                    end

                C:
                    if(w == 1) begin
                        
                        y = B;
                        z = 1;

                    end
                    else begin
                        
                        y = A;
                        z = 0;

                    end

            endcase

endmodule