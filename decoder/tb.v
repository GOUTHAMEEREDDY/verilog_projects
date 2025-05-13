module decoder_tb;
reg [2:0]a;
reg e;
wire [7:0]D;

decoder uut(.a(a),.D(D),.e(e)); 

initial $monitor("Time=%0t || e=%b || a=%b || D=%b",$time,e,a,D);

initial begin
e=1'b1;
a=3'b000;
#100;
a=3'b001;
#100;
a=3'b010;
#100;
a=3'b011;
#100;
a=3'b100;
#100;
a=3'b101;
#100;
a=3'b110;
#100;
a=3'b111;
#100;
e=1'b0;
a=3'b000;
#100;
a=3'b001;
#100;
a=3'b010;
#100;
a=3'b011;
#100;
a=3'b100;
#100;
a=3'b101;
#100;
a=3'b110;
#100;
a=3'b111;
#100;
$finish;
end
endmodule
