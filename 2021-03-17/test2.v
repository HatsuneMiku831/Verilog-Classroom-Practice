module test2(finv,a,b,c,d); 
 input a,b,c,d; 
 output finv; 
 not inv1(ainv,a); 
 not inv2(binv,b); 
 not inv3(dinv,d); 
 not inv4(cinv,c); 
 and and1(abdinvc,ainv,binv,c,dinv); 
 and and2(inv1,a,binv,cinv,d); 
 or or1(finv,abdinvc,inv1); 
endmodule 
