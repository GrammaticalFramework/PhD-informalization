abstract Imath = {

cat
  Prop ;
  Exp ;
  Adj ;
  Noun ;

fun
  AndProp : Prop -> Prop -> Prop ;
  OrProp : Prop -> Prop -> Prop ;
  IfProp : Prop -> Prop -> Prop ;

  AndAdj : Adj -> Adj -> Adj ;
  OrAdj : Adj -> Adj -> Adj ;
  
  AndExp : Exp -> Exp -> Exp ;
  OrExp : Exp -> Exp -> Exp ;

  AdjProp : Adj -> Exp -> Prop ;

  everyNounExp : Noun -> Exp ;
  someNounExp : Noun -> Exp ;

  AdjNoun : Adj -> Noun -> Noun ;

  IntExp : Int -> Exp ;
  
  even_Adj : Adj ;
  odd_Adj : Adj ;

  number_Noun : Noun ;


}