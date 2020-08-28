concrete Concrete of Abstract = open Prelude in {
  lincat
    WholePhrase = SS ;
    Phrase = {a : Str ; b : Str ; c : Str} ;
    Triple = Str * Str * Str ;

  lin
    MkWholePhrase phrase = {
      s = phrase.a ++ phrase.b ++ phrase.c
    } ;

    Repeated triple phrase = {
      a = phrase.a ++ triple.p1 ;
      b = phrase.b ++ triple.p2 ;
      c = phrase.c ++ triple.p3
      } ;

    TriplePhrase triple = {
      a = triple.p1 ;
      b = triple.p2 ;
      c = triple.p3
      } ;

    Triple0 = <"a","b","c"> ;
}