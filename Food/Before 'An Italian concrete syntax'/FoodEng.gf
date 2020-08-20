    concrete FoodEng of Food = {
  
      lincat
        Phrase, Item, Kind, Quality, ExcuseMeBut, ExcuseMeButPhrase = {s : Str} ;
  
      lin
        ExcuseMeButPhraseFunc excuseMeBut phrase = {s = excuseMeBut.s ++ phrase.s} ;
        QuestionIs item quality = {s = "is" ++ item.s ++ quality.s} ;
        Is item quality = {s = item.s ++ "is" ++ quality.s} ;
        This kind = {s = "this" ++ kind.s} ;
        That kind = {s = "that" ++ kind.s} ;
        QKind quality kind = {s = quality.s ++ kind.s} ;
        Wine = {s = "wine"} ;
        Cheese = {s = "cheese"} ;
        Fish = {s = "fish"} ;
        Very quality = {s = "very" ++ quality.s} ;
        VeryFreshQuality = {s = "very fresh"} ; --added ambiguity
        VeryDeliciousQuality = {s = "very delicious"} ; --added ambiguity
        Fresh = {s = "fresh"} ;
        Warm = {s = "warm"} ;
        Italian = {s = "Italian"} ;
        Expensive = {s = "expensive"} ;
        Delicious = {s = "delicious"} ;
        Boring = {s = "boring"} ;
        WithExcuse = {s = "excuse me but"} ;
        WithoutExcuse = {s = ""} ;
    }