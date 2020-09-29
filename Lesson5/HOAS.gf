abstract HOAS = {
  flags startcat = Prop ;

  cat Ind ; Prop ;
  
  fun
    All : (Ind -> Prop) -> Prop ;
    Eq : Ind -> Ind -> Prop ;

}
