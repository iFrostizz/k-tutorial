module EXERCISE-10
    imports INT
    imports STRING
    imports K-EQUAL

    syntax String ::= firstWord(String) [function]
    syntax String ::= removeSentence(String) [function]
    syntax String ::= makeWords(String) [function]

    // get the first word of a sentence
    rule firstWord(S) => substrString(S, 0, findChar(S, " ", 1))
    // remove the first sentence of the paragraph (don't include last period)
    rule removeSentence(S) => substrString(S, findChar(S, ".", 0) +Int 1, lengthString(S))

    syntax Bool ::= notEmpty(String) [function]

    rule notEmpty(S) => lengthString(S) >Int 0

    // recursively get the first word and remove the first sentence while the paragraph length is > 0
    rule makeWords(S) => 
        #if notEmpty(S) #then 
            firstWord(S) +String makeWords(removeSentence(S))
        #else 
            ""
        #fi
endmodule

