module fulladder_tb;
reg A,B,Cin;
wire S,Cout;

fulladder uut(.A(A),.B(B),.Cin(Cin),.S(S),.Cout(Cout));

initial $monitor("Time=%0t || A=%b B=%b C=%b || S=%b Cout=%b",$time,A,B,Cin,S,Cout);

initial begin

A=1'b0;B=1'b0;Cin=1'b0;
#100;
A=1'b0;B=1'b0;Cin=1'b1;
#100;
A=1'b0;B=1'b1;Cin=1'b0;
#100;
A=1'b0;B=1'b1;Cin=1'b1;
#100;
A=1'b1;B=1'b0;Cin=1'b0;
#100;
A=1'b1;B=1'b0;Cin=1'b1;
#100;
A=1'b1;B=1'b1;Cin=1'b0;
#100;
A=1'b1;B=1'b1;Cin=1'b1;
#100;

end
endmodule
