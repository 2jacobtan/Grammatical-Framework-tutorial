instance LexMp3PlayerEng of LexMp3Player = open SyntaxEng, ParadigmsEng in {
  oper
    remove_V2 = mkV2 "remove" ; -- not in Lexicon
    artist_N = mkN "artist" ; -- not in Lexicon
    thePrevious_Det = mkDet the_Quant (ParadigmsEng.mkOrd (mkA "previous")) ; -- not in Lexicon
    pause_V = mkV "pause" ; -- not in Lexicon 
}