module EXERCISE-12-A
  imports STRING

  syntax Strings ::= String "," Strings | ".Strings"
  // syntax Strings ::= List{String,","}
  // syntax Strings ::= concat(Strings) [function]

  // rule concat(S) => S
endmodule

