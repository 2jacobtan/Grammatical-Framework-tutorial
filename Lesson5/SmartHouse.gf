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
}