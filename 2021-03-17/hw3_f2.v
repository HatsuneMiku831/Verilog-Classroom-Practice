module hw3_f2(f2, a, b, c, d);

    input a, b, c, d;
    output f2;

    not not_b(notb, b);
    not not_c(notc, c);
    not not_d(notd, d);

    and and1(a_and_b, a, b);
    and and2(a_and_b_and_c, a_and_b, c);
    and and3(a_and_b_and_c_and_d, a_and_b_and_c, d);

    and and4(a_and_notc, a, notc);

    and and5(notb_and_notd, notb, notd);

    or or1(and_1_or_and_2, a_and_b_and_c_and_d, a_and_notc);
    or or2(f2, and_1_or_and_2, notb_and_notd);
    
endmodule