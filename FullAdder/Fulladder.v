module fulladder(
  input A,B,Cin,
  output reg S,
  output reg Cout
);

always @(*) begin

 S    = A^B^Cin;
 Cout = ((A&B)|(B&Cin))|(A&Cin);

end
endmodule
