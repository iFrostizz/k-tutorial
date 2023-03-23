module EXERCISE-07-B
  imports BOOL
  imports INT

  syntax Num ::= Bool
                 | isEven(Int) [function]

  rule isEven(I) => true requires I %Int 2 ==Int 0
  rule isEven(_) => false [owise]
endmodule
