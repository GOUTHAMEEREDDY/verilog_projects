module fourbitcomparator(
  input [3:0]A,
  input [3:0]B,
  output reg A_eq_B,A_gt_B,A_lt_B
);

always @(*) begin
 //default values
     A_eq_B=0;
     A_gt_B=0;
     A_lt_B=0;
 if (A==B) begin
     A_eq_B=1;
 end
 if (A>B) begin
     A_gt_B=1;
 end
 if (A<B) begin
     A_lt_B=1;
 end
end
endmodule

 
