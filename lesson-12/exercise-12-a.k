module EXERCISE-12-A
    imports STRING
    imports INT
    imports K-EQUAL
    imports LIST

    // "Strings" is a list of String
    syntax Strings ::= String "," Strings | ".Strings"
    // syntax Strings ::= List{String,","}
    syntax String ::= concat(Strings) [function]

    rule concat(.Strings) => ""
    rule concat(S:String, Ss:Strings) => 
        S +String " " +String concat(Ss)
endmodule

