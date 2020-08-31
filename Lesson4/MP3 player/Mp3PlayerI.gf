incomplete concrete Mp3PlayerI of Mp3Player = open Syntax, Lexicon, LexMp3Player in {
  lincat
    Command = VP ;
    Verb2 = V2 ;
    Obj = N ;
    Determ = Det ;
    Verb1 = V ;
    Item = NP ; -- Det + Obj

  lin
    -- Verb2ItemToCommand : Verb2 -> Item -> Command ;
    Verb2ItemToCommand = mkVP ;

    -- Verb1ToCommand : Verb1 -> Command ;
    Verb1ToCommand = mkVP ;

    -- DetermObjToItem : Determ -> Obj -> Item ;
    DetermObjToItem = mkNP ;
    
    
    -- Play, Remove : Verb2 ;
    Play = play_V2 ;
    Remove = remove_V2 ; -- not in Lexicon
    
    -- Song, Artist : Obj ;
    Song = song_N ;
    Artist = artist_N ; -- not in Lexicon
    
    -- This, ThePrevious : Determ ;
    This = this_Det ;
    ThePrevious = thePrevious_Det ; -- not in Lexicon
    -- Stop, Pause : Verb1 ;
    Stop = stop_V ;
    Pause = pause_V ; -- not in Lexicon 
}