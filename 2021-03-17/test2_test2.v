module test2_test2; 
 reg[3:0]a; 
 wire out,outinv; 
 
 test2 f1(out,a[3],a[2],a[1],a[0]); 
 test2_2 f1(outinv,a[3],a[2],a[1],a[0]); 
initial begin 
 a=0; 
 #80$finish; 
 end 
 always begin 
 #5 a=a+1; 
 end 
endmodule 
