abstract SmartHouse = {
  flags startcat = Command ;

  cat
    Command ;
    Kind ;
    Device Kind ; -- argument type Kind
    Action Kind ;

  fun
    CAction : (k : Kind) -> Action k -> Device k -> Command ;

    light, fan : Kind ;
    dim : Action light ;
    
    DKindOne : (k : Kind) -> Device k ; -- the light

    switchOn, switchOff : (k : Kind) -> Action k ;

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

}