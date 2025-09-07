module flag(
input [7:0]A,
input [7:0]B,
input [7:0]result,
input [4:0]choice,
input carry_out,
output reg zero,
output reg negative,
output reg overflow
);

always @(*) begin
//zero flag
 zero=(result==8'b00000000)?1:0;

//Negative flag for signed numbers
  negative=result[7];

//overflow flag
 
    case(choice)

    5'b00000: begin    //ADD
    overflow=(A[7]==B[7])&&(result[7]!=A[7]);
    end
  
    5'b00001: begin    //SUB
    overflow=(A[7]!=B[7])&&(result[7]!=A[7]);
    end

    5'b00010: begin    //MUL
    overflow=|carry_out;
    end
 
    5'b01111: begin    //INCREMENT BY 1
    overflow=(A==8'b11111111)?1:0;
    end

    5'b10000: begin    //DECREMENT BY 1
    overflow=(A==8'b00000000)?1:0;
    end
    
    default: begin
    overflow=0;
    end

 endcase
 end
 endmodule
 



