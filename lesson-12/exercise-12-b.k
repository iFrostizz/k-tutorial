module EXERCISE-12-B
  imports INT

  syntax Ints ::= NeList{Int,","}
  // or: syntax Ints ::= Int | Int "," Ints
  syntax Int ::= sum(Ints) [function]
  rule sum(I:Int) => I
  rule sum(I1:Int, I2:Int, Is:Ints) => sum(I1 +Int I2, Is)
endmodule

