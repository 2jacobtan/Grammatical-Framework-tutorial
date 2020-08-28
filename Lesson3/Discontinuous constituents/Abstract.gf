abstract Abstract = {

  flags startcat = WholePhrase ;

  cat
    WholePhrase ; Phrase ; Triple ;

  fun
    MkWholePhrase : Phrase -> WholePhrase ;
    Repeated : Triple -> Phrase -> Phrase ;
    TriplePhrase : Triple -> Phrase ;
    Triple0 : Triple ;
}