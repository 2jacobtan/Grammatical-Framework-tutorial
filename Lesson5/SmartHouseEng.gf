concrete SmartHouseEng of SmartHouse = open Prelude in {
  lincat
    Command, Action, Device = SS ;
    Kind = Str ;
  
  lin
    CAction _ act dev = {s = act.s ++ dev.s} ;
    light = "light" ;
    fan = "fan" ;
    dim  _ _ = ss "dim" ;

    DKindOne k = ss2 "the" k ;

    switchOn _ _ = ss "switch on" ;
    switchOff _ _ = ss "switch off" ;

    dimmable_light, switchable_fan, switchable_light = ss "";
}