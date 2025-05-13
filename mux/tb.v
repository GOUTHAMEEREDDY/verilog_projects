module mux_tb;
reg a,b,c,d,s1,s0;
wire e;

mux uut(.a(a),.b(b),.c(c),.d(d),.e(e),.s1(s1),.s0(s0));
initial $monitor("Time=%0t || s1=%b s0=%b || e=%b",$time,s1,s0,e);
initial begin

a=1'b1;
b=1'b0;
c=1'b1;
d=1'b0;

s1=0;s0=0;
#100;
s1=0;s0=1;
#100;
s1=1;s0=0;
#100;
s1=1;s0=1;
#100;
$finish;

end
endmodule
