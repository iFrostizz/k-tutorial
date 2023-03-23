requires "exercise-05-int.k"

module EXERCISE-05-CALC
    imports EXERCISE-05-INT

    syntax Arithmetics ::= left: "-" IntConstant [function]
                        > left: Arithmetics "*" Arithmetics [function]
                        > left: Arithmetics "/" Arithmetics [function]
                        > left: Arithmetics "-" Arithmetics [function]
                        > left: Arithmetics "+" Arithmetics [function]
endmodule
