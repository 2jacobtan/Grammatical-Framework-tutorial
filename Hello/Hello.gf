-- a "Hello World" grammar
abstract Hello = {

    flags startcat = Greeting ;

    cat Greeting ; Recipient ;

    fun
        Hello : Recipient -> Greeting ;
        GoodMorn : Recipient -> Greeting ;
        GoodAft : Recipient -> Greeting ;
        World, Mum, Friends : Recipient ;
}