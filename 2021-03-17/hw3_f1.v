module hw3_f1(f1, a, b, c, d);

    input a, b, c, d;
    output f1;

    not not_a(nota, a);
    not not_c(notc, c);
    not not_d(notd, d);

    and left_and1(and_a_b, a, b);
    and left_and2(and_a_b_notc, and_a_b, notc);
    and left_and3(and_a_b_notc_notd, and_a_b_notc, notd);

    and right_and(and_nota_notc, nota, notc);

    or or1(f1, and_a_b_notc_notd, and_nota_notc);

endmodule
