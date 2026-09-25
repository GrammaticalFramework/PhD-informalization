concrete Imath2Eng of Imath2 =
  open
    SyntaxEng,
    ParadigmsEng,
    SymbolicEng

in {

lincat
  Jmt = Utt ;
  Prop = S ;
  Exp = NP ;
  Adj = AP ;
  Noun = CN ;
  Adj2 = A2 ;
  Fun = {cn : CN ; prep : Prep} ;
  Fun2 = {cn : CN ; prep : Prep} ;
  Ind = NP ;

lin
  PropJmt prop = mkUtt prop ;
  NounJmt noun = mkUtt (mkNP aPl_Det noun) ;
  IndJmt ind = mkUtt ind ;

  AndProp a b = mkS and_Conj a b ;
  OrProp a b = mkS or_Conj a b ;
  IfProp a b = mkS if_then_Conj a b ;

  AndAdj a b = mkAP and_Conj a b ;
  OrAdj a b = mkAP or_Conj a b ;
  
  AndExp a b = mkNP and_Conj a b ;
  OrExp a b = mkNP or_Conj a b ;

  IndExp ind = ind ;

  AdjProp adj exp = mkS (mkCl exp adj) ;

  everyNounExp noun = mkNP every_Det noun ;
  someNounExp noun = mkNP someSg_Det noun ;

  AdjNoun adj noun = mkCN adj noun ;

  IntInd int = symb int ;
  
  even_Adj = mkAP (mkA "even") ;
  odd_Adj = mkAP (mkA "odd") ;

  number_Noun = mkCN (mkN "number") ;

  Adj2Adj adj exp = mkAP adj exp ;

  divisible_Adj2 = mkA2 (mkA "divisible") (mkPrep "by") ;
  equal_Adj2 = mkA2 (mkA "equal") (mkPrep "to") ;
  less_Adj2 = mkA2 (mkA "less") (mkPrep "than") ;
  greater_Adj2 = mkA2 (mkA "greater") (mkPrep "than") ;

  FunInd f x = mkNP the_Det (mkCN f.cn (SyntaxEng.mkAdv f.prep x)) ; 
  Fun2Ind f x y = mkNP the_Det (mkCN f.cn (SyntaxEng.mkAdv f.prep (mkNP and_Conj x y))) ; 

  successor_Fun = mkFun "successor" "of" ;
  square_Fun = mkFun "square" "of" ;
  factorial_Fun = mkFun "factorial" "of" ;
  sum_Fun2 = mkFun "sum" "of" ;
  product_Fun2 = mkFun "product" "of" ;
  difference_Fun2 = mkFun "difference" "between" ;

oper
  mkFun : Str -> Str -> {cn : CN ; prep : Prep} = \cn, prep -> {
    cn = mkCN (mkN cn) ;
    prep = mkPrep prep
    } ;


}