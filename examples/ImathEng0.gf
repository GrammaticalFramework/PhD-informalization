concrete ImathEng0 of Imath = {

param
  Number = Sg | Pl ;

lincat
  Prop = Str ;
  Exp = {s : Str ; n : Number} ;
  Adj = Str ;
  Noun = Str ;

lin
  AndProp a b = a ++ "and" ++ b ;
  OrProp a b = a ++ "or" ++ b ;
  IfProp a b = "if" ++ a ++ "then" ++ b ;

  AndAdj a b = a ++ "and" ++ b ;
  OrAdj a b = a ++ "or" ++ b ;

  AndExp a b = {
    s = a.s ++ "and" ++ b.s ;
    n = Pl
    } ;
    
  OrExp a b = {
    s = a.s ++ "or" ++ b.s ;
    n = b.n
    } ;


  AdjProp adj exp = case exp.n of {
    Sg => exp.s ++ "is" ++ adj ;
    Pl => exp.s ++ "are" ++ adj
    } ;

  everyNounExp noun = {
    s = "every" ++ noun ;
    n = Sg
    } ;

  IntExp int = {
    s = int.s ;
    n = Sg
    } ;
  
  even_Adj = "even" ;
  odd_Adj = "odd" ;

  number_Noun = "number" ;


}