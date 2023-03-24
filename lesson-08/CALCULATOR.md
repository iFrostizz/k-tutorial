# K BNF Calculator

## Introduction

Hi, today we are presenting a super cool calculator ! [...]

In the lesson 1.5, we have written some useful things like the definition for "int", an signed integer as well as "calc", useful for common operations that will be used by our calculator. We first import them into the calculator file.

```k
requires "../lesson-05/exercise-05-int.k"
requires "../lesson-05/exercise-05-calc.k"
```

## Syntax

Then we should declare some syntax for the calculator, 1 + 2 is more human-readable than 1 +Int 2.

```k
module EXERCISE-07-C-SYNTAX
  imports INT

  syntax Int ::= left: "-" Int [function]
                      > left: Int "*" Int [function]
                      > left: Int "/" Int [function]
                      > left: Int "-" Int [function]
                      > left: Int "+" Int [function]
endmodule
```

## Calculator

Now that we have everything set up, we can wrap it and make the calculator module.

```k
module EXERCISE-07-C
  imports EXERCISE-07-C-SYNTAX
  imports INT

  rule A + B => A +Int B
  rule A - B => A -Int B
  rule A * B => A *Int B
  rule A / B => A /Int B requires B =/=Int 0
endmodule
```

## Usage

First **k**ompile the modules:

```sh
kompile lesson-08/CALCULATOR.md --main-module EXERCISE-07-C
```

Then, do some basic calculations:

```sh
krun --definition CALCULATOR-kompiled/ -cPGM="1 + 2"

> 3

krun --definition CALCULATOR-kompiled/ -cPGM="2 * 6"

> 12
```
