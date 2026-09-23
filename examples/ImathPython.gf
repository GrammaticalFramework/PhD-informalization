concrete ImathPython of Imath = {

lincat
  Prop = Str ;
  Exp = Str ;
  Adj = Str ;
  Noun = Str ;

lin
  AndProp a b = parenth (a ++ "and" ++ b) ;
  OrProp a b = parenth (a ++ "or" ++ b) ;
  IfProp a b = parenth ("not" ++ a ++ "or" ++ b) ;


  AndAdj a b =
    parenth ("lambda x:" ++ apply a "x" ++ "and" ++ apply b "x") ;
  OrAdj a b = 
    parenth ("lambda x:" ++ apply a "x" ++ "or" ++ apply b "x") ;

  AndExp a b = parenth ("lambda p:" ++ apply a "p" ++ "and" ++ apply b "p") ;
  OrExp a b = parenth ("lambda p:" ++ apply a "p" ++ "or" ++ apply b "p") ;

  AdjNoun adj noun = "{x for x in" ++ noun ++ "if" ++ apply adj "x" ++ "}" ;

  AdjProp adj exp = apply exp adj ;

  everyNounExp noun =
    parenth ("lambda p:" ++ apply "all" (apply "p" "x" ++ "for x in" ++ noun)) ;
    
  someNounExp noun =
    parenth ("lambda p:" ++ apply "any" (apply "p" "x" ++ "for x in" ++ noun)) ; 

  IntExp int = parenth ("lambda p:" ++ apply "p" int.s) ;
  
  even_Adj = parenth ("lambda x: x%2 == 0") ;
  odd_Adj = parenth ("lambda x: x%2 == 1") ;

  number_Noun = apply "range" "10000" ;

oper
  parenth : Str -> Str = \s -> "(" ++ s ++ ")" ;
  apply : Str -> Str -> Str = \f, x -> f ++ parenth x ;


}

