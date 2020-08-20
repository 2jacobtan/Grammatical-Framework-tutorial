    concrete FoodJap of Food = {
  
      lincat
        Phrase, Item, Kind, Quality = {s : Str} ;
  
      lin
        Is item quality = {s = item.s ++ "ha" ++ quality.s ++ "da"} ;
        This kind = {s = "kono" ++ kind.s} ;
        That kind = {s = "sono" ++ kind.s} ;
        QKind quality kind = {s = quality.s ++ kind.s} ;
        Wine = {s = "budousyu"} ;
        Cheese = {s = "chi-zu"} ;
        Fish = {s = "sakana"} ;
        Very quality = {s = "totemo" ++ quality.s} ;
        Fresh = {s = "shinsen"} ;
        Warm = {s = "atatakai"} ;
        Italian = {s = "itarian"} ;
        Expensive = {s = "takai"} ;
        Delicious = {s = "oishii"} ;
        Boring = {s = "tsumaranai"} ;
    }