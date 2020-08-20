resource StringOper = {
  oper
    SS : Type = {s : Str} ;
    ss : Str -> SS = \x -> {s = x} ;
    cc : SS -> SS -> SS = \x,y -> ss (x.s ++ y.s) ;
    infix : Str -> SS -> SS -> SS = \inf, a, b -> ss (a.s ++ inf ++ b.s) ;
}