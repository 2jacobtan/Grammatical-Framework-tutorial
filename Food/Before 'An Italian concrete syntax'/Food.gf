    abstract Food = {
  
      flags startcat = ExcuseMeButPhrase ;
  
      cat
        Phrase ; Item ; Kind ; Quality ; ExcuseMeBut ; ExcuseMeButPhrase ;
  
      fun
        ExcuseMeButPhraseFunc : ExcuseMeBut -> Phrase -> ExcuseMeButPhrase ;
        Is, QuestionIs : Item -> Quality -> Phrase ;
        This, That : Kind -> Item ;
        QKind : Quality -> Kind -> Kind ;
        Wine, Cheese, Fish : Kind ;
        Very : Quality -> Quality ;
        Fresh, Warm, Italian, Expensive, Delicious, Boring : Quality ;
        VeryFreshQuality, VeryDeliciousQuality : Quality ; --added ambiguity 
        WithExcuse, WithoutExcuse : ExcuseMeBut ;
    }