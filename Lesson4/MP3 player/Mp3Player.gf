abstract Mp3Player = {
  flags startcat = Utterance ;

  cat
    Utterance ;
    Command ;
    Verb2 ; -- transitive
    Obj ;
    Determ ;
    Verb1 ; -- intransitive
    Item ; -- Determ + Obj

  fun
    CommandToUtterance : Command -> Utterance ;
    Verb2ItemToCommand : Verb2 -> Item -> Command ;
    Verb1ToCommand : Verb1 -> Command ;
    DetermObjToItem : Determ -> Obj -> Item ;
    
    Play, Remove : Verb2 ;
    Song, Artist : Obj ;
    This, ThePrevious : Determ ;
    Stop, Pause : Verb1 ;
}