concrete CopyConc of Copy = {

    lincat
        Doubled, Itamz, Item = {s : Str} ;

    lin
        Double itamz = {s = itamz.s ++ itamz.s} ;

        AddItem itamz item = {s = itamz.s ++ item.s} ;

        ItemToItamz item = {s = item.s} ;

        EmptyItamz = {s = ""} ;

        Item0 = {s = "a" | "b"} ;
}