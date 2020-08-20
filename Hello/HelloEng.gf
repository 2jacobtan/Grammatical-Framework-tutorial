concrete HelloEng of Hello = {

    lincat Greeting, Recipient = {s : Str} ;

    lin
        Hello recip = {s = "hello" ++ recip.s} ;
        World = {s = "world"} ;
        Mum = {s = "mum"} ;
        Friends = {s = "friends"} ;

        GoodMorn recip = {s = "good morning" ++ recip.s} ;
        GoodAft recip = {s = "good afternoon" ++ recip.s} ;
}