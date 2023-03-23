module LESSON-02-E
  syntax Clothes ::= Hat() | Shirt() | Pants() | Shoes()

  syntax Boolean ::= True() | False()
  syntax Boolean ::= isBlack(Clothes) [function]

  syntax Full ::= Outfit(Clothes, Clothes, Clothes, Clothes)

  rule isBlack(Hat()) => True()
  rule isBlack(Shirt()) => True()
  rule isBlack(Pants()) => True()
  rule isBlack(Shoes()) => True()

  syntax Matching ::= outfitMatching(Full)

  rule outfitMatching(Outfit(Clothes, Clothes, Clothes, Clothes)) => True()
endmodule
