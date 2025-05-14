module halfadder_tb;
reg A,B;
wire S,C;

halfadder uut(.A(A),.B(B),.S(S),.C(C));

initial $monitor("Time=%0t || A=%b B=%b || S=%b C=%b",$time,A,B,S,C);

initial begin

A=1'b0;B=1'b0;
#100;
A=1'b0;B=1'b1;
#100;
A=1'b1;B=1'b0;
#100;
A=1'b1;B=1'b1;
#100;
$finish;
end
endmodule
