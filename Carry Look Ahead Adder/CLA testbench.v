module CLA_tb;

reg [3:0]A;
reg [3:0]B;
reg Cin;
wire [3:0] Sum;
wire Cout;

CLA uut(.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Cout(Cout));

initial begin
//Test Case 1
A=4'b0001;B=4'b1001;Cin=1'b0;
#100;

//Test Case 2;
A=4'b1011;B=4'b1101;Cin=1'b1;
#100;
$finish;
end
endmodule

