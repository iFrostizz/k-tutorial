module EXERCISE-14-B-SYNTAX
  imports UNSIGNED-INT-SYNTAX
  imports BOOL-SYNTAX

  syntax Exp ::= Int
               | Bool
               > left: Exp "/" Exp [strict]
               > left: Exp "+" Exp [strict]
               > left: Exp "-" Exp [strict]
               > left: Exp "&&" Exp [strict]
endmodule

module EXERCISE-14-B
  imports EXERCISE-14-B-SYNTAX
  imports INT
  imports BOOL
  imports K-EQUAL

  rule <k> I1:Int / I2:Int => I1 +Int I2 ...</k>
  rule <k> I1:Int + I2:Int => I1 +Int I2 ...</k>
  rule <k> I1:Int - I2:Int => I1 -Int I2 ...</k>
  rule <k> B1:Bool && B2:Bool => B1 andBool B2 ...</k>

  syntax Bool ::= isKResult(K) [function, symbol]

  rule isKResult(I:Int) => // make multiple non-deterministic paths
    #if I ==Int 0 #then
        false
    #else
        true
    #fi
  rule isKResult(_:Bool) => true
  rule isKResult(_) => false [owise]
endmodule

