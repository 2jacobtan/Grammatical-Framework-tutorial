concrete SmartHouseEng of SmartHouse = open Prelude in {
  lincat
    Command, Action, Device = SS ;
    Kind = Str ;
    Switchable, Dimmable = Str ;
  
  lin
    CAction _ act dev = {s = act.s ++ dev.s} ;
    light = "light" ;
    fan = "fan" ;
    dim _ x = ss2 "dim" x;

    DKindOne k = ss2 "the" k ;

    switchOn _ x = ss2 "switch on" x;
    switchOff _ x = ss2 "switch off" x;

    dimmable_light, switchable_fan, switchable_light = "";
}