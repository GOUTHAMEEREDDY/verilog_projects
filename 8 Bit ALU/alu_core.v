 module alu_core(
input 	[7:0]A,
input   [7:0]B,
input   [4:0]choice,
output reg [7:0]result,
output reg carry_out,
output reg borrow_out
);
 
  reg [8:0]temp;
  reg [15:0] mul_temp;

always @(*) begin

  case(choice)
    
     5'b00000: begin              //ADD
       temp=A+B;
       result=temp[7:0];
       carry_out=temp[8];
       borrow_out=0;
     end
     
     5'b00001: begin 
       temp=A-B;                   //SUB
       result=temp[7:0];
       borrow_out=(A<B) ? 1 :0 ;
       carry_out=0;
     end
    
     5'b00010: begin
       mul_temp=A*B;                //MUL
       result=mul_temp[7:0];
       carry_out= |mul_temp[15:8]; 
       borrow_out=0;
     end 

     5'b00011: begin
       result=A&B;                  //AND
       carry_out=0;
       borrow_out=0;
     end

     5'b00100: begin
       result=A|B;                 //OR
       carry_out=0;
       borrow_out=0;
     end
     
     5'b00101: begin
       result=A^B;                //XOR
       carry_out=0;
       borrow_out=0;
     end
   
     5'b00110: begin
        result=~A;                  //NOT
        carry_out=0;
        borrow_out=0;
     end

     5'b00111: begin
        result=A<<1;                 //Shift Left     
        carry_out=0;
        borrow_out=0;
     end

     5'b01000: begin
         result=A>>1;                 //Shift Right
         carry_out=0; 
         borrow_out=0;
     end

     5'b01001: begin
         result={A[6:0],A[7]};            // Circular Left Rotate by 1 bit
         carry_out=0;
         borrow_out=0;
     end
  
     5'b01010: begin
         result={A[0],A[7:1]};            // Circular Right Rotate by 1 bit
         carry_out=0;
     end

        5'b01011: begin
         if ($signed(A)<$signed(B)) begin  // SIGNED LESS THAN COMPARISON     
            result=8'd1;
            carry_out=0;
            borrow_out=0;
         end
         else begin
            result=8'd0;
            carry_out=0;
            borrow_out=0;
         end
     end

     5'b01100: begin
         if(A<B) begin                     // UNSIGNED LESS THAN COMPARISON
          result=8'd1;
          carry_out=0;
          borrow_out=0;
         end
         else begin
           result=8'd0;
           carry_out=0;
           borrow_out=0;
         end
     end
   
     5'b01101: begin
         if(A==B) begin                  // EQUALITY CHECK
         result=1;
         carry_out=0;
         borrow_out=0;
         end
         else begin
         result=0;
         carry_out=0;
         borrow_out=0;
         end
     end
    
     5'b01110: begin
          if(A!=B) begin                 // INEQUALITY CHECK
           result =1;
           carry_out=0;
           borrow_out=0;
          end
          else begin
          result=0;
          carry_out=0;
          borrow_out=0;
          end
      end
 
     5'b01111: begin
          temp=A+1;                     // INCREMENT A BY 1
          result=temp[7:0];
          carry_out=temp[8];
          borrow_out=0;
     end

     5'b10000: begin
           if (A!=0) begin         // DECREMENT A BY 1 
           result=A-1;
           carry_out=0;
           borrow_out=0;
           end
           else begin
           result=8'b11111111;
           carry_out=0;
           borrow_out=1;
           end
     end
     
     5'b10001: begin
           if(A[7]==1) begin        // Absolute Value of A
            result=~A+1;
            carry_out=0;
            borrow_out=0;
           end
           else begin
            result=A;
            carry_out=0;
            borrow_out=0;
           end
     end

     5'b10010: begin
            result=A;             // PASS THROUGH A
            carry_out=0;
            borrow_out=0;
     end
 
     5'b10011: begin
             result=B;          // PASS THROUGH B
             carry_out=0;
             borrow_out=0;
      end

      
     default:  begin
               result=0;
               carry_out=0;
               borrow_out=0;
     end
 endcase
end
endmodule
         

     

     
