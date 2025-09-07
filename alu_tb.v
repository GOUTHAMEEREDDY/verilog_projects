module alutb;
  reg [7:0] A, B;
  reg [4:0] choice;
  wire [7:0] result;
  wire carry_out, borrow_out;
  wire zero, negative, overflow;

  alutop uut(
    .A(A), .B(B), .result(result), .choice(choice),
    .carry_out(carry_out), .borrow_out(borrow_out),
    .zero(zero), .negative(negative), .overflow(overflow)
  );

  initial begin

    // ADD
    A = 8'b00101010; B = 8'b00010101; choice = 5'b00000;   // testcase 1
    #50;
    $display("Testcase 1  | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    A = 8'b01111111; B = 8'b00000001; choice = 5'b00000;   // testcase 2
    #50;
    $display("Testcase 2  | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    A = 8'b10000000; B = 8'b10000000; choice = 5'b00000;   // testcase 3
    #50;
    $display("Testcase 3  | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    // SUB
    A = 8'b00101010; B = 8'b00010101; choice = 5'b00001;   // testcase 4
    #50;
    $display("Testcase 4  | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    A = 8'b01111111; B = 8'b10000000; choice = 5'b00001;   // testcase 5
    #50;
    $display("Testcase 5  | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    A = 8'b10000000; B = 8'b01111111; choice = 5'b00001;   // testcase 6
    #50;
    $display("Testcase 6  | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    // MUL
    A = 8'b00000101; B = 8'b00010110; choice = 5'b00010;   // testcase 7
    #50;
    $display("Testcase 7  | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    A = 8'b10000001; B = 8'b01111110; choice = 5'b00010;   // testcase 8
    #50;
    $display("Testcase 8  | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    // AND
    A = 8'b01100110; B = 8'b11011010; choice = 5'b00011;   // testcase 9
    #50;
    $display("Testcase 9  | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    // OR
    A = 8'b10110101; B = 8'b01001010; choice = 5'b00100;   // testcase 10
    #50;
    $display("Testcase 10 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    // XOR
    A = 8'b10010010; B = 8'b10100100; choice = 5'b00101;   // testcase 11
    #50;
    $display("Testcase 11 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    // NOT
    A = 8'b00001111; B = 8'bxxxxxxxx; choice = 5'b00110;   // testcase 12
    #50;
    $display("Testcase 12 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    // Shift Left
    A = 8'b01010101; B = 8'bxxxxxxxx; choice = 5'b00111;   // testcase 13
    #50;
    $display("Testcase 13 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    // Shift Right
    A = 8'b11001100; B = 8'bxxxxxxxx; choice = 5'b01000;   // testcase 14
    #50;
    $display("Testcase 14 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    // Circular Left Rotate
    A = 8'b11110000; B = 8'bxxxxxxxx; choice = 5'b01001;   // testcase 15
    #50;
    $display("Testcase 15 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    // Circular Right Rotate
    A = 8'b00001111; B = 8'bxxxxxxxx; choice = 5'b01010;   // testcase 16
    #50;
    $display("Testcase 16 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    // Signed LT
    A = 8'b01001100; B = 8'b11001100; choice = 5'b01011;   // testcase 17
    #50;
    $display("Testcase 17 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    A = 8'b01001000; B = 8'b01001001; choice = 5'b01011;   // testcase 18
    #50;
    $display("Testcase 18 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    // Unsigned LT
    A = 8'b01001100; B = 8'b11001100; choice = 5'b01100;   // testcase 19
    #50;
    $display("Testcase 19 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    A = 8'b01001001; B = 8'b01001000; choice = 5'b01100;   // testcase 20
    #50;
    $display("Testcase 20 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    // Equality
    A = 8'b10101010; B = 8'b10101010; choice = 5'b01101;   // testcase 21
    #50;
    $display("Testcase 21 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    A = 8'b11110000; B = 8'b00001111; choice = 5'b01101;   // testcase 22
    #50;
    $display("Testcase 22 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    // Inequality
    A = 8'b11001100; B = 8'b11001100; choice = 5'b01110;   // testcase 23
    #50;
    $display("Testcase 23 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    A = 8'b10101010; B = 8'b01010101; choice = 5'b01110;   // testcase 24
    #50;
    $display("Testcase 24 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    // Increment A
    A = 8'b00000000; B = 8'bxxxxxxxx; choice = 5'b01111;   // testcase 25
    #50;
    $display("Testcase 25 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    A = 8'b11111111; B = 8'bxxxxxxxx; choice = 5'b01111;   // testcase 26
    #50;
    $display("Testcase 26 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    // Decrement A
    A = 8'b00000000; B = 8'bxxxxxxxx; choice = 5'b10000;   // testcase 27
    #50;
    $display("Testcase 27 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    A = 8'b11111111; B = 8'bxxxxxxxx; choice = 5'b10000;   // testcase 28
    #50;
    $display("Testcase 28 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    // Absolute A
    A = 8'b11110110; B = 8'bxxxxxxxx; choice = 5'b10001;   // testcase 29
    #50;
    $display("Testcase 29 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    A = 8'b00101101; B = 8'bxxxxxxxx; choice = 5'b10001;   // testcase 30
    #50;
    $display("Testcase 30 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    // Pass A
    A = 8'b11100011; B = 8'bxxxxxxxx; choice = 5'b10010;   // testcase 31
    #50;
    $display("Testcase 31 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    // Pass B
    A = 8'bxxxxxxxx; B = 8'b10110011; choice = 5'b10011;   // testcase 32
    #50;
    $display("Testcase 32 | A = %b, B = %b, Choice = %b | Result = %b, Carry = %b, Borrow = %b, Zero = %b, Negative = %b, Overflow = %b",
              A, B, choice, result, carry_out, borrow_out, zero, negative, overflow);

    $finish;
  end
endmodule

