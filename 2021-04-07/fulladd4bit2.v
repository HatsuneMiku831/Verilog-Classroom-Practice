module fulladd4bit2(gt, ls, error, a, b, c_in);

    output error, gt, ls;
    input [3:0] a, b;
    input c_in;

    wire c1, c2, c3, cout;
    wire [3:0] sum;

    xor(b0xor, b[0], c_in);
    xor(b1xor, b[1], c_in);
    xor(b2xor, b[2], c_in);
    xor(b3xor, b[3], c_in);

    fulladd fa0(sum[0], c1, a[0], b0xor, c_in);
    fulladd fa1(sum[1], c2, a[1], b1xor, c1);
    fulladd fa2(sum[2], c3, a[2], b2xor, c2);
    fulladd fa3(sum[3], cout, a[3], b3xor, c3);

    xor(error, cout, c3);

    nor(gt, sum[3], error);
    
    not(noterror, error);
    and(ls, sum[3], noterror);

endmodule