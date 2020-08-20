concrete FoodEng of Food = open StringOper in {

  lincat
    Phrase, Item, Kind, Quality = SS ;

  lin
    -- Is item quality = {s = item.s ++ "is" ++ quality.s} ;
    Is = infix "is" ;
    This kind = {s = "this" ++ kind.s} ;
    That kind = {s = "that" ++ kind.s} ;
    -- QKind quality kind = {s = quality.s ++ kind.s} ;
    QKind = cc ;
    Wine = {s = "wine"} ;
    Cheese = {s = "cheese"} ;
    Fish = {s = "fish"} ;
    Very quality = {s = "very" ++ quality.s} ;
    Fresh = {s = "fresh"} ;
    Warm = {s = "warm"} ;
    Italian = {s = "Italian"} ;
    Expensive = {s = "expensive"} ;
    Delicious = {s = "delicious"} ;
    Boring = {s = "boring"} ;
}