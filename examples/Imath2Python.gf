concrete Imath2Python of Imath2 = {

lincat
  Jmt = Str ;
  Prop = Str ;
  Exp = Str ;
  Adj = Str ;
  Noun = Str ;
  Adj2 = Str ;
  Fun = Str ;
  Fun2 = Str ;
  Ind = Str ;

lin
  PropJmt prop = prop ;
  NounJmt noun = apply "list" noun ;
  IndJmt ind = ind ;

  AndProp a b = parenth (a ++ "and" ++ b) ;
  OrProp a b = parenth (a ++ "or" ++ b) ;
  IfProp a b = parenth ("not" ++ a ++ "or" ++ b) ;

  AndAdj a b =
    parenth ("lambda x:" ++ apply a "x" ++ "and" ++ apply b "x") ;
  OrAdj a b = 
    parenth ("lambda x:" ++ apply a "x" ++ "or" ++ apply b "x") ;

  AndExp a b = parenth ("lambda p:" ++ apply a "p" ++ "and" ++ apply b "p") ;
  OrExp a b = parenth ("lambda p:" ++ apply a "p" ++ "or" ++ apply b "p") ;

  AdjNoun adj noun = "[x for x in" ++ noun ++ "if" ++ apply adj "x" ++ "]" ;

  IndExp ind = parenth ("lambda p:" ++ apply "p" ind) ;
  
  AdjProp adj exp = apply exp adj ;

  everyNounExp noun =
    parenth ("lambda p:" ++ apply "all" (apply "p" "x" ++ "for x in" ++ noun)) ;
    
  someNounExp noun =
    parenth ("lambda p:" ++ apply "any" (apply "p" "x" ++ "for x in" ++ noun)) ; 

  IntInd i = i.s ;
  
  even_Adj = parenth ("lambda x: x%2 == 0") ;
  odd_Adj = parenth ("lambda x: x%2 == 1") ;

  number_Noun = apply "range" "10000" ;

  Adj2Adj adj exp = parenth ("lambda x:" ++ apply exp ("lambda y:" ++ apply adj "x" "y")) ;

  divisible_Adj2 = parenth ("lambda x, y: x % y == 0") ;
  equal_Adj2 = parenth ("lambda x, y: x == y") ;
  less_Adj2 = parenth ("lambda x, y: x < y") ;
  greater_Adj2 = parenth ("lambda x, y: x > y") ;

  FunInd f x = apply f x ;
  Fun2Ind f x y = apply f x y ;

  successor_Fun = parenth ("lambda x: x + 1") ;
  square_Fun = parenth ("lambda x: x * x") ;
  factorial_Fun = "factorial" ;              -- needs "from math import *"
  sum_Fun2 = parenth ("lambda x, y: x + y") ;
  product_Fun2 = parenth ("lambda x, y: x * y") ;
  difference_Fun2 = parenth ("lambda x, y: x - y") ;


oper
  parenth : Str -> Str = \s -> "(" ++ s ++ ")" ;
  apply = overload {
    apply : Str -> (x : Str) -> Str = \f, x -> f ++ parenth x ;
    apply : Str -> (x, y : Str) -> Str = \f, x, y -> f ++ parenth (x ++ "," ++ y) ;
    } ;

}

