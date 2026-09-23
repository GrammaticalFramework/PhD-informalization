concrete ImathFin of Imath =
  open
    SyntaxFin,
    ParadigmsFin,
    SymbolicFin

in {

lincat
  Prop = S ;
  Exp = NP ;
  Adj = AP ;
  Noun = CN ;

lin
  AndProp a b = mkS and_Conj a b ;
  OrProp a b = mkS or_Conj a b ;
  IfProp a b = mkS if_then_Conj a b ;

  AndAdj a b = mkAP and_Conj a b ;
  OrAdj a b = mkAP or_Conj a b ;
  
  AndExp a b = mkNP and_Conj a b ;
  OrExp a b = mkNP or_Conj a b ;

  AdjProp adj exp = mkS (mkCl exp adj) ;

  everyNounExp noun = mkNP every_Det noun ;

  IntExp int = symb int ;
  
  even_Adj = mkAP (mkA "parillinen") ;
  odd_Adj = mkAP (mkA "pariton") ;

  number_Noun = mkCN (mkN "luku") ;


}