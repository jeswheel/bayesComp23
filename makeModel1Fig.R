grViz("

digraph model1 {
  rankdir = LR

  node [shape = circle]
  subgraph{
    rank = same; S; Sv [label = <S<SUB>v</SUB>>]
  }
  
  subgraph{
    rank = same; E; Ev [label = <E<SUB>v</SUB>>]
  }
  
  subgraph{
    rank = same; I; A; Iv [label = <I<SUB>v</SUB>>]; Av [label = <A<SUB>v</SUB>>]
  }
  
  subgraph{
    rank = same; R; Rv [label = <R<SUB>v</SUB>>]
  }
  
  E; I; A; R;
  
  S->E [xlabel = '\U03BB']
  E->A
  E->I 
  I->R
  A->R
  R->S [headport='n', tailport='n']
  Sv->Ev
  Ev->{Iv Av}
  {Iv Av}->Rv
  Rv->Sv [headport='s', tailport='s']
  
  edge [style='dashed', minlen = 2]
  S->Sv [minlen = 3]
  E->Ev
  I->Iv
  R->Rv 
  A->Av
  
}
      
", width = 205)