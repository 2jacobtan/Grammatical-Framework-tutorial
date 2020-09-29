abstract Proof = {
  cat Nat ;
  fun
    Zero : Nat ;
    Succ : Nat -> Nat ;
  
  cat Less Nat Nat ;
  fun
    lessZ : (y : Nat) -> Less Zero (Succ y) ;
    lessS : (x,y : Nat) -> Less x y -> Less (Succ x) (Succ y) ;

  --  lessS 1 3
  --       (lessS 0 2 (lessZ 1))
  --  : Less 2 4  


  cat
    City ;
    Flight City City ;
  fun
    Gothenburg, Frankfurt, Prague : City ;
    LH3043 : Flight Gothenburg Frankfurt ;
    OK0537 : Flight Frankfurt Prague ;

  cat IsPossible (x,y,z : City) (Flight x y) (Flight y z) ;

  fun Connect : (x,y,z : City) -> (u : Flight x y) -> (v : Flight y z) -> IsPossible x y z u v -> Flight x z ;
}