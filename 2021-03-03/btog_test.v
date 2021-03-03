module btog_test;
reg[3:0]b;
wire[3:0]g;
btog b1(g,b);
initial begin
 b=4'b0001;
 #10
 b=4'b0011;
 #10
b=4'b0111;
 #10
 b=4'b0000;
 #10
$finish;
end
endmodule