module four_bit_comparator_tb;
 
reg [3:0]A;
reg [3:0]B;
wire A_eq_B,A_gt_B,A_lt_B;

fourbitcomparator uut(.A(A),.B(B),.A_eq_B(A_eq_B),.A_gt_B(A_gt_B),.A_lt_B(A_lt_B));
initial $monitor ("Time=%0t || A=%b B=%b|| A_eq_b=%b A_gt_b=%b A_lt_b=%b",$time,A,B,A_eq_B,A_gt_B,A_lt_B);

initial begin
 A=4'b0011;B=4'b1001;
#100;
A=4'b1000;B=4'b0111;
#100;
A=4'b1111;B=4'b1111;
#100;
end
endmodule
 
