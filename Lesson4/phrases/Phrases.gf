--# -path=.:../phrases:alltenses

abstract Phrases = {
    flags startcat = Phrase ;

    cat Phrase ; Sentence ; Determ ; NPhrase ; Cardinality ; CNoun ; VPhrase ;

    fun
        SentenceToPhrase : Sentence -> Phrase ;
        DetermCNounToNPhrase : Det -> CNoun -> NPhrase ;



}