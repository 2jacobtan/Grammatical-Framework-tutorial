concrete HOASEng of HOAS = open Prelude in {
  
  lincat Prop, Ind = SS ;
  
  lin
    All B = {s = "(" ++ "All" ++ B.$0 ++ ")" ++ B.s} ;
    Eq a b = {s = "(" ++ a.s ++ "=" ++ b.s ++ ")"} ;
}