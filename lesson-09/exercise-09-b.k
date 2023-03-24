module EXERCISE-09-B
  imports BOOL

  syntax IfCondition ::= "(" Bool ")" [color(red)]

  syntax Stmt ::= "{" Stmt "}" [format(%1%i%n%2%d%n%3)] | "{" "}" [format(%1%n%2)]
                > right:
                  Stmt Stmt [format(%1%n%2)]
                | "if" IfCondition Stmt [format(%1 %2%n%3)]
                | "if" IfCondition Stmt "else" Stmt [avoid, format(%1 %2%n%3%n%4%n%5)]
endmodule
