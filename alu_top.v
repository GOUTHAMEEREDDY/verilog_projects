module alutop(
   input [7:0]A,
   input [7:0]B,
   input [4:0]choice,
   output [7:0] result,
   output carry_out,
   output borrow_out,
   output zero,
   output negative,
   output overflow
);

  

alu_core core(.A(A),
              .B(B),
              .choice(choice),
              .result(result),
              .carry_out(carry_out),
              .borrow_out(borrow_out));

flag flags(.A(A),
           .B(B),
           .choice(choice),
           .result(result),
           .carry_out(carry_out),
           .zero(zero),
           .negative(negative),
           .overflow(overflow));
endmodule
