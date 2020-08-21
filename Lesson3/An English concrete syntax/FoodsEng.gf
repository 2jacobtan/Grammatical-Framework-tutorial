concrete FoodsEng of Foods = open Prelude in {

  lincat
    Phrase, Quality = SS ;
    Kind = {s : Number => Str} ;
    Item = {s : Str ; n : Number} ;

  lin
    Is item quality = ss (item.s ++ copula item.n ++ quality.s) ;
    This  = det Sg "this" ;
    That  = det Sg "that" ;
    These = det Pl "these" ;
    Those = det Pl "those" ;
    QKind quality kind = {s = table {n => quality.s ++ kind.s ! n}} ;
    Wine = regNoun "wine" ;
    Cheese = regNoun "cheese" ;
    Fish = mkNoun "fish" "fish" ;
    Pizza = regNoun "pizza" ;
    Very = prefixSS "very" ;
    Fresh = ss "fresh" ;
    Warm = ss "warm" ;
    Italian = ss "Italian" ;
    Expensive = ss "expensive" ;
    Delicious = ss "delicious" ;
    Boring = ss "boring" ;
  param
    Number = Sg | Pl ;

  oper
    Noun : Type = {s: Number => Str} ;

    det : Number -> Str -> {s : Number => Str} -> {s : Str ; n : Number} =
      \n,d,cn -> {
        s = d ++ cn.s ! n ;
        n = n
      } ;
    mkNoun : Str -> Str -> {s : Number => Str} =
      \man,men -> {s = table {
        Sg => man ;
        Pl => men
        }
      } ;

    sForm : Str -> Str = \w ->
      case w of {
        _ + ("a" | "e" | "i" | "o") + "o" => w + "s" ;  -- bamboo
        _ + ("s" | "x" | "sh" | "o")      => w + "es" ; -- bus, hero
        _ + "z"                           => w + "zes" ;-- quiz
        _ + ("a" | "e" | "o" | "u") + "y" => w + "s" ;  -- boy
        x + "y"                           => x + "ies" ;-- fly
        _                                 => w + "s"    -- car
        } ;

    regNoun : Str -> Noun = \w ->
      mkNoun w (sForm w);      

    -- regNoun : Str -> {s : Number => Str} =
    --   \car -> mkNoun car (car + "s") ;
    
    copula : Number -> Str =
      \n -> case n of {
        Sg => "is" ;
        Pl => "are"
        } ;
  }