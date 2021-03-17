module test2_2(finv,a,b,c,d); 
 input a,b,c,d;  output finv; 
 not inv1(ainv,a); 
 not inv3(dinv,d); 
 not inv4(cinv,c); 
 or or1(ab,a,b); 
 or or2(abcinv,ab,cinv); 
 or or3(cinvabd,abcinv,d); 
 or or4(ainvb,ainv,b); 
 or or5(ainvbc,ainvb,c); 
 or or6(adinvbc,ainvbc,dinv); 
 and and1(finv,cinvabd,adinvbc); 
endmodule
