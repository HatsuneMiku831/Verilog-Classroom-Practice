module hw3_notf1(notf1, a, b, c, d);

    input a, b, c, d;
    output notf1;

    not not_a(nota, a);
    not not_b(notb, b);

    or left_or1(nota_or_notb, nota, notb);
    or left_or2(nota_or_notb_or_c, nota_or_notb, c);
    or left_or3(nota_or_notb_or_c_or_d, nota_or_notb_or_c, d);

    or right_or(a_or_c, a, c);

    and left_and_right(notf1, nota_or_notb_or_c_or_d, a_or_c);

endmodule