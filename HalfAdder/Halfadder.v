module halfadder(A,B,S,C);
input A,B;
output reg S;
output reg C;

always @(*) begin

  S=A^B;
  C=A&B;
end
endmodule
