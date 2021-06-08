module hamming_decode(Err, D, H);

    output Err;
    output [3:0]D;
    input [6:0]H;

    wire [2:0]error;
    wire [7:0]F;
    wire [6:0]F_cor;

    xor(error[2], H[6], H[5], H[4], H[3]);
    xor(error[1], H[1], H[6], H[5], H[2]);
    xor(error[0], H[0], H[6], H[4], H[2]);
    or(Err, error[2], error[1], error[0]);

    decoder3_8 decoder(F, error);

    xor(F_cor[6], H[6], F[7]);
    xor(F_cor[5], H[5], F[6]);
    xor(F_cor[4], H[4], F[5]);
    xor(F_cor[3], H[3], F[4]);
    xor(F_cor[2], H[2], F[3]);
    xor(F_cor[1], H[1], F[2]);
    xor(F_cor[0], H[0], F[1]);

    assign D = {F_cor[6], F_cor[5], F_cor[4], F_cor[2]};

endmodule