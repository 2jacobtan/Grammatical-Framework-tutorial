resource StringOper = {
  param
    Number = Sg | Pl ;
    VerbForm = VPresent Number | VPast | VPastPart | VPresPart ;
  
  oper
    SS : Type = {s : Str} ;
    ss : Str -> SS = \x -> {s = x} ;
    cc : SS -> SS -> SS = \x,y -> ss (x.s ++ y.s) ;
    infix : Str -> SS -> SS -> SS = \inf, a, b -> ss (a.s ++ inf ++ b.s) ;

    regNoun : Str -> {s : Number => Str} = \dog -> {
      s = table {
        Sg => dog ;
        Pl => dog + "s"
        }
      } ;

    regVerb : Str -> {s : VerbForm => Str} = \talk -> {
      s = table {
        VPresent Sg => talk + "s" ;
        VPresent Pl => talk ;
        VPresPart   => talk + "ing" ;
        _           => talk + "ed"
        }
      } ;

    copula : Number -> Str = \n ->
      case n of {
        Sg => "is" ;
        Pl => "are"
        } ;
}