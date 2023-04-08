module K-RESULT
    imports BOOL

    syntax Bool ::= isKResult(K) [function, symbol]
endmodule

module EXERCISE-14-C
    imports K-RESULT

    syntax IfCondition ::= "(" Bool ")" [color(red)]

    syntax Stmt ::= "{" Stmt "}" [format(%1%i%n%2%d%n%3)] 
    | "{" "}" [format(%1%n%2)]
    > right:
    Stmt Stmt [format(%1%n%2), seqstrict]
    | "if" IfCondition Stmt [format(%1 %2%n%3), seqstrict]
    | "if" IfCondition Stmt "else" Stmt [avoid, format(%1 %2%n%3%n%4%n%5), seqstrict]

    rule isKResult(_:IfCondition) => true
    rule isKResult(_:Stmt) => true
    rule isKResult(_) => false [owise]
endmodule
