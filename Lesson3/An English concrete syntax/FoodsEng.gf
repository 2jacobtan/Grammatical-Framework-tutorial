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
    Tense = Pr | Pr3 | PrPart | Pst | PstPart ;

  oper
    Noun : Type = {s: Number => Str} ;
    Verb : Type = {s: Tense => Str} ;

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

    mkVerb = overload {
      mkVerb : Str -> {s : Tense => Str} =
        \walk -> {s = table {
            Pr => walk ;
            Pr3 => walk + "s" ;
            PrPart => walk + "ing" ;
            Pst => walk + "ed" ;
            PstPart => walk + "ed"
          }
        } ;

      mkVerb : Str -> Str -> Str -> Str -> Str -> {s : Tense => Str} =
        \drink,drinks,drinking,drank,drunk -> {s = table {
          Pr => drink ;
          Pr3 => drinks ;
          PrPart => drinking ;
          Pst => drank ;
          PstPart => drunk
          }
        } ;
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

    prPart : Str -> Str = \w ->
      case w of {
        _ + ("pp") => w + "ing" ; -- no need extra 'p' if already double
        _ + "p" => w + "ping" ; -- tripping
        _ => w + "ing"
      } ;

    pst : Str -> Str = \w ->
      case w of {
        _ + ("pp") => w + "ed" ; -- no need extra 'p' if already double
        _ + "p" => w + "ped" ; -- tripped
        _ => w + "ed"
      } ;
    
    -- not yet implemented
    pstPart : Str -> Str = \w ->
      case w of {
        _ => w + "ed"
      } ;

    regNoun : Str -> Noun = \w ->
      mkNoun w (sForm w) ;

    regVerb : Str -> Verb = \w ->
      mkVerb w (sForm w) (prPart w) (pst w) (pstPart w) ;

    -- regNoun : Str -> {s : Number => Str} =
    --   \car -> mkNoun car (car + "s") ;
    
    copula : Number -> Str =
      \n -> case n of {
        Sg => "is" ;
        Pl => "are"
        } ;

    umlaut : Str -> Str = \w ->
      case w of {
        -- Added a 'z' because Windows Powershell fails to display accent.
        start + "a" + end => start + "äz" + end ;
        start + "o" + end => start + "öz" + end ;
        start + "u" + end => start + "üz" + end ;
        _ => w -- default (no change)
      } ;
  }