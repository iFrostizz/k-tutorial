module EXERCISE-06-A
  imports BOOL

  syntax Fruit ::= Blueberry() | Banana()
  
  syntax Bool ::= isBlue(Fruit) [function]

  rule isBlue(Blueberry()) => true
  rule isBlue(Banana()) => false

  syntax Bool ::= isYellow(Fruit) [function]
                | isBlueAndNotYellow(Fruit) [function]

  rule isYellow(Banana()) => true
  rule isYellow(Blueberry()) => false

  rule isBlueAndNotYellow(F) => isBlue(F) andBool notBool isYellow(F)
endmodule
