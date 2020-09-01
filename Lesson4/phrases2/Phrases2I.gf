incomplete concrete Phrases2I of Phrases2 = open Syntax, Lexicon in {
  lincat Phrase = Phr ;

  lin
    EveryManLovesAWoman = mkPhr (mkCl
      (mkNP every_Det man_N)
      (mkVP love_V2
        (mkNP a_Det woman_N))
      ) ;

    ThisGrammarSpeaks = mkPhr (mkCl
      (mkNP this_Det grammar_N)
      (mkVP speak_V2
        (mkNP
          (mkCard (mkAdN more_CAdv) (mkCard (mkDigits "10")))
          language_N))
      ) ;
    WhichLanguagesArent = mkPhr (mkQS negativePol (mkQCl
      (mkIP which_IQuant pluralNum (mkCN language_N))
      (mkAdv in_Prep (mkNP the_Det grammar_N))
    )) ;

    WhichLanguagesDid = mkPhr (mkQS pastTense (mkQCl
      (mkIP which_IQuant pluralNum (mkCN language_N))
      (mkClSlash you_NP want_VV speak_V2)
    )) ;
}