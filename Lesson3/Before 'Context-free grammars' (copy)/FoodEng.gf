concrete FoodEng of Food = open StringOper in {

  lincat
    Phrase, Quality = SS ;
    Kind = {s : Number => Str} ;
    Item = {s : Str; n : Number} ;

  lin
    -- Is item quality = {s = item.s ++ "is" ++ quality.s} ;
    -- Is = infix "is" ;
    Is item qual = {s = item.s ++ copula item.n ++ qual.s} ;

    This kind = {s = "this" ++ kind.s ! Sg; n = Sg} ;
    That kind = {s = "that" ++ kind.s ! Sg; n = Sg} ;
    These kind = {s = "these" ++ kind.s ! Pl; n = Pl} ;
    Those kind = {s = "those" ++ kind.s ! Pl; n = Pl} ;
    -- QKind quality kind = {s = quality.s ++ kind.s} ;
    QKind qual kind = {
      s = table {
        Sg => qual.s ++ (kind.s ! Sg) ;
        Pl => qual.s ++ (kind.s ! Pl)
        }
      } ;
    Wine = regNoun "wine" ;
    Cheese = regNoun "cheese" ;
    Fish = regNoun "fish" ;
    Pizza = regNoun "pizza" ;
    Very quality = {s = "very" ++ quality.s} ;
    Fresh = {s = "fresh"} ;
    Warm = {s = "warm"} ;
    Italian = {s = "Italian"} ;
    Expensive = {s = "expensive"} ;
    Delicious = {s = "delicious"} ;
    Boring = {s = "boring"} ;
}