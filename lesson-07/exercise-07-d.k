module EXERCISE-07-D-SYNTAX
  imports INT

  syntax Boolean ::= "true" | "false" 
                  | Int "eq" Int [function]
                  | Int "lt" Int [function]
                  | Int "lte" Int [function]
                  | Int "gt" Int [function]
                  | Int "gte" Int [function]
endmodule

module EXERCISE-07-D
  imports EXERCISE-07-D-SYNTAX
  imports INT

  rule A eq B => true requires A ==Int B
  rule _ eq _ => false [owise]

  rule A lte B => true requires A <=Int B
  rule _ lte _ => false [owise]

  rule A lt B => true requires A <Int B
  rule _ lt _ => false [owise]

  rule A gte B => true requires A >=Int B
  rule _ gte _ => false [owise]

  rule A gt B => true requires A >Int B
  rule _ gt _ => false [owise]
endmodule
