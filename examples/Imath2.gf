abstract Imath2 = {

flags startcat = Jmt ;

cat
  Jmt ;
  Prop ;
  Exp ;
  Adj ;
  Noun ;
  Adj2 ;
  Fun ;
  Fun2 ;
  Ind ;

fun
  PropJmt : Prop -> Jmt ;
  NounJmt : Noun -> Jmt ;
  IndJmt : Ind -> Jmt ;

  AndProp : Prop -> Prop -> Prop ;
  OrProp : Prop -> Prop -> Prop ;
  IfProp : Prop -> Prop -> Prop ;

  AndAdj : Adj -> Adj -> Adj ;
  OrAdj : Adj -> Adj -> Adj ;
  
  AndExp : Exp -> Exp -> Exp ;
  OrExp : Exp -> Exp -> Exp ;

  IndExp : Ind -> Exp ;

  AdjProp : Adj -> Exp -> Prop ;

  everyNounExp : Noun -> Exp ;
  someNounExp : Noun -> Exp ;

  AdjNoun : Adj -> Noun -> Noun ;

  IntInd : Int -> Ind ;
  
  even_Adj : Adj ;
  odd_Adj : Adj ;

  number_Noun : Noun ;

  Adj2Adj : Adj2 -> Exp -> Adj ;

  divisible_Adj2 : Adj2 ;
  equal_Adj2 : Adj2 ;
  less_Adj2 : Adj2 ;
  greater_Adj2 : Adj2 ;

  FunInd : Fun -> Ind -> Ind ;
  Fun2Ind : Fun2 -> Ind -> Ind -> Ind ;

  successor_Fun : Fun ;
  square_Fun : Fun ;
  factorial_Fun : Fun ;
  sum_Fun2 : Fun2 ;
  product_Fun2 : Fun2 ;
  difference_Fun2 : Fun2 ;


}