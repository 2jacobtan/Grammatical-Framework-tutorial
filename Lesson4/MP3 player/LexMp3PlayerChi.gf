instance LexMp3PlayerChi of LexMp3Player = open SyntaxChi, ParadigmsChi in {
  oper
    remove_V2 = mkV2 "remove" ; -- not in Lexicon
    artist_N = mkN "artist" ; -- not in Lexicon
    
    thePrevious_Det = <mkDet : Quant -> Ord -> Det> the_Quant (<SyntaxChi.mkOrd : A -> Ord > (<mkA "previous" : A>)) ; -- not in Lexicon

    pause_V = mkV "pause" ; -- not in Lexicon 
}