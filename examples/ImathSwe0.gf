concrete ImathSwe of Imath = {

lincat
  Prop = Str ;
  Exp = Str ;
  Adj = Str ;
  Noun = Str ;

lin
  AndProp a b = a ++ "och" ++ b ;
  OrProp a b = a ++ "eller" ++ b ;
  IfProp a b = "om" ++ a ++ "så" ++ b ;

  AndAdj a b = a ++ "och" ++ b ;
  OrAdj a b = a ++ "eller" ++ b ;


  AdjProp adj exp = exp ++ "är" ++ adj ;

  everyNounExp noun = "varje" ++ noun ;

  IntExp int = int.s ;
  
  even_Adj = "jämnt" ;
  odd_Adj = "udda" ;

  number_Noun = "tal" ;


}