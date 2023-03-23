```k
module LESSON-08
    imports INT
    
    syntax Int ::= Int "+" Int [function]
    rule I1 + I2 => I1 +Int I2
endmodule
```