abstract Copy = {

    flags startcat = Doubled ;

    cat
        Doubled ; Itamz ; Item ;

    fun
        Double : Itamz -> Doubled ;
        AddItem : Itamz -> Item -> Itamz ;
        ItemToItamz : Item -> Itamz ;
        EmptyItamz : Itamz ;
        Item0 : Item ;
}