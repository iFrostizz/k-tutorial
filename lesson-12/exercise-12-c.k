module EXERCISE-12-C
  imports INT

  syntax Ints ::= List{Int,","}
  syntax Int ::= sum(Ints) [function]

  rule sum(.Ints) => 0
  rule sum(I:Int) => I
  rule sum(I1:Int, I2:Int, Is:Ints) => sum(I1 +Int I2, Is)
endmodule

