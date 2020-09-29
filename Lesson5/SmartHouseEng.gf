concrete SmartHouseEng of SmartHouse = open Prelude in {
  lincat
    Command, Action, Device = SS ;
    Kind = Str ;
  
  lin
    CAction _ act dev = {s = act.s ++ dev.s} ;
    light = "light" ;
    fan = "fan" ;
    dim = ss "dim" ;

    DKindOne k = ss2 "the" k ;

    switchOn _ = ss "switch on" ;
    switchOff _ = ss "switch off" ;
}