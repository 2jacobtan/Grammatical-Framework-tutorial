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
    -- dim : Action light ;
    
    DKindOne : (k : Kind) -> Device k ; -- the light

    -- switchOn, switchOff : (k : Kind) -> Action k ;

  -- Restricted polymorphism
  cat
    Switchable Kind ;
    Dimmable Kind ;
  fun
    switchable_light : Switchable light ;
    switchable_fan : Switchable fan ;
    dimmable_light : Dimmable light ;

    switchOn, switchOff : (k : Kind) -> Switchable k -> Action k ;
    dim : (k : Kind) -> Dimmable k -> Action k ;

}