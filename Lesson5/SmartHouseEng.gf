concrete SmartHouseEng of SmartHouse = open Prelude in {
  lincat
    Command, Action, Device, Kind = SS ;
  
  lin
    CAction _ act dev = {s = act.s ++ dev.s} ;
    light = ss "light" ;
    fan = ss "fan" ;
    dim = ss "dim" ;

    DKindOne k = ss2 "the" k.s ;
}