abstract Mp3Player = {
  cat
    Command ;
    Verb2 ; -- transitive
    Obj ;
    Determ ;
    Verb1 ; -- intransitive
    Item ; -- Determ + Obj

  fun
    Verb2ItemToCommand : Verb2 -> Item -> Command ;
    Verb1ToCommand : Verb1 -> Command ;
    DetermObjToItem : Determ -> Obj -> Item ;
    
    Play, Remove : Verb2 ;
    Song, Artist : Obj ;
    This, ThePrevious : Determ ;
    Stop, Pause : Verb1 ;
}