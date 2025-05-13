module mux(a,b,c,d,e,s1,s0);
input a,b,c,d,s1,s0;
output reg e;

always @(*) begin

case({s1,s0})
  2'b00: e=a;
  2'b01: e=b;
  2'b10: e=c;
  2'b11: e=d;
  default: e=0;
endcase
end
endmodule
