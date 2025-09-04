module CLA(
   input [3:0]A,
   input [3:0]B,
   input Cin,
   output reg [3:0]Sum,
   output reg Cout
);

wire [3:0] Pi;
wire [3:0] Gi;
wire [4:1] Ci;

//P and G values
 assign Pi=A^B;
 assign Gi=A&B;

//Carry Values
 assign Ci[1]=Gi[0]| (Pi[0]&Cin);
 assign Ci[2]=Gi[1]| (Pi[1]&Ci[1]);
 assign Ci[3]=Gi[2]| (Pi[2]&Ci[2]);
 assign Ci[4]= Gi[3]| (Pi[3]&Ci[3]); //Cout;

always @(*) begin
//Sum values
Sum[0]=Pi[0]^Cin;     //or directly Sum[0]=A[0]^B[0]^Cin
Sum[1]=Pi[1]^Ci[1];   //or directly Sum[1]=A[1]^B[1]^Ci[1]
Sum[2]=Pi[2]^Ci[2];   //or directly Sum[2]=A[2]^B[2]^Ci[2]
Sum[3]=Pi[3]^Ci[3];   //or directly Sum[3]=A[3]^B[3]^Ci[3]
Cout=Ci[4];
end

endmodule

