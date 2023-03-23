requires "../lesson-05/exercise-05-int.k"
requires "../lesson-05/exercise-05-calc.k"

module EXERCISE-07-C-SYNTAX
  imports INT

  syntax Int ::= left: "-" Int [function]
                      > left: Int "*" Int [function]
                      > left: Int "/" Int [function]
                      > left: Int "-" Int [function]
                      > left: Int "+" Int [function]
endmodule

module EXERCISE-07-C
  imports EXERCISE-07-C-SYNTAX
  imports INT

  rule A + B => A +Int B
  rule A - B => A -Int B
  rule A * B => A *Int B
  rule A / B => A /Int B requires B =/=Int 0
endmodule
