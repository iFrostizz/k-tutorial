module LESSON-05-E-1
  imports LESSON-05-E-2
  rule not true => false
  rule not false => true
endmodule

module LESSON-05-E-2
  syntax Boolean ::= "true" | "false"
  syntax Boolean ::= "not" Boolean [function]
endmodule

module LESSON-05-E
  imports LESSON-05-E-1
  imports LESSON-05-E-2
endmodule