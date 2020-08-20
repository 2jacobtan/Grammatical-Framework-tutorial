resource Lesson3 = {

    param Number = Sg | Pl ;

    param VerbForm = VPresent Number | VPast | VPastPart | VPresPart ;

    oper
        drinkTable : VerbForm => Str =
            table {
                VPresent Sg => "drinks" ;
                VPresent Pl => "drink" ;
                VPast       => "drank" ;
                VPastPart   => "drunk" ;
                VPresPart   => "drinking"
            } ;

        drinkVerb : VerbForm -> Str =
            \e -> case e of {
                VPresent Sg => "drinks" ;
                VPresent Pl => "drink" ;
                VPast       => "drank" ;
                VPastPart   => "drunk" ;
                VPresPart   => "drinking"
            } ;
}